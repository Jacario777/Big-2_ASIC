//-----------------------------------------------------
// File Name   : 2 Phase Clock fsm_using_function.v  0 - 3 - 1 - 2 
// with count hold input and odd output
//-----------------------------------------------------
module Project_Card (clka, clkb, restart, card_gen, seed, player_cards, comp_cards, done);
//-------------Input Ports-----------------------------
input   clka, clkb, restart, card_gen;
input [3:0] seed;
//-------------Output Ports----------------------------
output player_cards[23:0], comp_cards[23:0], done;
//-------------Input ports Data Type-------------------
wire    clka, clkb, restart, card_gen; // seed;
wire [3:0] seed; // Starting point seed in an LFSR
//-------------Output Ports Data Type------------------
reg [23:0] player_cards, comp_cards;
reg [2:0] state;
reg done;

parameter INIT = 3'b000; // Will be using for the INITial card generation
parameter GEN = 3'b001;
parameter PLAYER = 3'b010;
parameter COMPUTER = 3'b011;
// parameter translate = 3'b011;
parameter DISTRIBUTE = 3'b100;
parameter SIZE = 3;
//-------------Internal Variables---------------------------
reg   [41:0]              deck         ; // The deck excluding the low card
reg   [23:0]              player_deck  ; // Currently only defined as 4 cards for ease of demonstration
reg   [23:0]              comp_deck    ;
wire  [SIZE-1:0]          temp_state   ; // Internal state reg
reg   [SIZE-1:0]          next_state   ; // combo part of FSM
reg   [5:0]               curr_card    ;
reg                       turn         ; // Distinguishes which player's turn it is to be dealt a card
reg   [2:0]               count        ;
reg   [2:0]               p_count      ;
reg   [2:0]               c_count      ;
reg                       gen_flag     ;
reg   [2:0]               card_num     ;
reg   [2:0]               trans_num    ; // Counter to generate values from seed
reg   [3:0]               lfsr         ; // 4-bit select for lfsr prng
reg   [27:0]              trans_reg    ; // Register to hold the look-up table values for each card

//----------Code starts Here------------------------
assign temp_state = fsm_function(state, restart, card_gen, seed, player_deck, comp_deck, curr_card, deck, count, p_count, c_count, card_num, trans_num, lfsr, trans_reg, gen_flag, done);
//----------Function for Combo Logic-----------------
function [SIZE-1:0] fsm_function;
  input  [SIZE-1:0] state;
  input restart;
  input card_gen;
  input  [3:0] seed;
  input [23:0] player_deck; // Register of the player's deck
  input [23:0] comp_deck; // Register of the computer's deck
  input  [5:0] curr_card;
  input [41:0] deck; // Register of the deck to be formed from seed + LFSR + look-up
  input [2:0] count;
  input [2:0] p_count;
  input [2:0] c_count;
  input [2:0] card_num;
  input [2:0] trans_num;
  input [3:0] lfsr;
  input [27:0] trans_reg; // Register for the LFSR output
  input       gen_flag;
  input       done;

begin

case(state)
   INIT: begin // Wait for card_gen flag in overall system
    if (card_gen == 1)
	    fsm_function = GEN;
    end
   GEN: begin // Wait for cards to finish generating
	if (gen_flag == 1'b1) begin
	    fsm_function = COMPUTER;
	end else begin
	    fsm_function = GEN;
	end
     end

   PLAYER: begin
	if (c_count == 3'b100) begin    // Do not use p_count, as it will arrive to 4 before c_count!
	    fsm_function = DISTRIBUTE;
	end else begin
	    fsm_function = COMPUTER; // Deal in alternating order
      end
     end

   COMPUTER: begin
	if (c_count == 3'b100) begin // Each player has 4 cards at this point
	    fsm_function = DISTRIBUTE;
	end else begin
	    fsm_function = PLAYER;
      end
     end
	
   DISTRIBUTE: begin
      fsm_function = INIT;  
     end

   default : fsm_function = INIT;
   
   endcase
  end
endfunction
//----------Seq Logic-----------------------------
always @ (negedge clka)
begin : FSM_SEQ
  if (restart == 1'b1) begin
    next_state <= INIT;
  end else begin
    next_state <= temp_state;
  end
end
//----------Output Logic——————————————
always @ (negedge clkb)
begin: OUTPUT_LOGIC
  case(next_state)
    INIT: begin // Initialize registers
        state <= next_state;
        trans_num <= 3'b000;
        lfsr <= seed;
        trans_reg <= 28'b0;
        done <= 1'b0;
        gen_flag <= 1'b0;
    end
    
    GEN: begin // Generate deck from seed
    	state <= next_state;  
        card_num = 3'b000;
        if (trans_num < 7) begin // LFSR phased with clock
            lfsr <= {lfsr[2:0], lfsr[3] ^ lfsr[0]};
            trans_reg[4*trans_num+:4] <= lfsr;
            trans_num <= trans_num + 1;
        end
        
        if (trans_num == 7) begin
        while (card_num < 7) begin // Generate Deck from Look-up
            if (trans_reg[4*card_num+:4] == 4'b0001) begin
            deck[6*card_num+:6] <= 6'b000110;
            end else if (trans_reg[4*card_num+:4] == 4'b0010) begin
            deck[6*card_num+:6] <= 6'b110101;
            end else if (trans_reg[4*card_num+:4] == 4'b0011) begin
            deck[6*card_num+:6] <= 6'b001100;
            end else if (trans_reg[4*card_num+:4] == 4'b0100) begin
            deck[6*card_num+:6] <= 6'b001110;
            end else if (trans_reg[4*card_num+:4] == 4'b0101) begin
            deck[6*card_num+:6] <= 6'b101010;
            end else if (trans_reg[4*card_num+:4] == 4'b0110) begin
            deck[6*card_num+:6] <= 6'b101000;
            end else if (trans_reg[4*card_num+:4] == 4'b0111) begin
            deck[6*card_num+:6] <= 6'b100111;
            end else if (trans_reg[4*card_num+:4] == 4'b1000) begin
            deck[6*card_num+:6] <= 6'b011000;
            end else if (trans_reg[4*card_num+:4] == 4'b1001) begin
            deck[6*card_num+:6] <= 6'b100110;
            end else if (trans_reg[4*card_num+:4] == 4'b1010) begin
            deck[6*card_num+:6] <= 6'b010110;
            end else if (trans_reg[4*card_num+:4] == 4'b1011) begin
            deck[6*card_num+:6] <= 6'b011000;
            end else if (trans_reg[4*card_num+:4] == 4'b1100) begin
            deck[6*card_num+:6] <= 6'b001000;
            end else if (trans_reg[4*card_num+:4] == 4'b1101) begin
            deck[6*card_num+:6] <= 6'b101001;
            end else if (trans_reg[4*card_num+:4] == 4'b1110) begin
            deck[6*card_num+:6] <= 6'b011100;
            end else begin
            deck[6*card_num+:6] <= 6'b110011;
            end
            card_num = card_num + 1;
        end
        end // trans_num conditional only proceeds then

        player_deck <= {18'b0, 6'b000000}; // Assign player cards
        comp_deck <= 24'b0;
        if (card_num == 7) begin // Trigger flags and counters
            gen_flag <= 1'b1;
            count <= 3'b000; 
            c_count <= 3'b000; 
            p_count <= 3'b001;
        end
        done <= 1'b0;
     end

    PLAYER: begin // Bit-select deal
      state <= next_state;
      player_deck[p_count*6+:6] <= deck[count*6+:6];
      p_count <= p_count + 1;
      count <= count + 1;
     end

    COMPUTER: begin
      state <= next_state;
      comp_deck[c_count*6+:6] <= deck[count*6+:6];
      c_count <= c_count + 1;
      count <= count + 1;
     end

    DISTRIBUTE: begin
      state <= next_state;
      player_cards <= player_deck;
      comp_cards <= comp_deck;
      done <= 1'b1;
    end
	
endcase

end


endmodule // End of Module twoP_FSM
