//-----------------------------------------------------
// File Name   : Project_FSM, verilog code implementing project's FSM model
// For this example, RNG + Distribute section is ignored, and only 4 set of ordered cards are given to both players
// Assume P1 = human player, and P2 = computer player
//-----------------------------------------------------
module Project_FSM (clka, clkb, RESTART, START, CARD_DONE, is_larger, P1_NO_CARD, P1_CARD_PUT, P2_PUT_CARD, DONE, P1_NUM_CARDS, P2_NUM_CARDS, LOAD, CARD_GEN, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, WINNER);
//-------------Input Ports-----------------------------
input   clka, clkb, RESTART, START, CARD_DONE, is_larger, P1_NO_CARD, P2_PUT_CARD, DONE;
input [2:0] P1_NUM_CARDS, P2_NUM_CARDS, P1_CARD_PUT;
//-------------Output Ports----------------------------
output LOAD, CARD_GEN, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP; 
output [1:0] WINNER;
//-------------Input ports Data Type-------------------
wire clka, clkb, RESTART, START, CARD_DONE, is_larger, P1_NO_CARD, P2_PUT_CARD, DONE;
wire [2:0] P1_NUM_CARDS, P2_NUM_CARDS, P1_CARD_PUT;
//-------------Output Ports Data Type------------------
reg LOAD, CARD_GEN, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP; 
reg [1:0] WINNER;
//——————Internal Constants--------------------------
parameter SIZE = 4;
parameter IDLE = 4'b0000, CARD_WAIT = 4'b0001, P1 = 4'b0010, COMP = 4'b0011,  UPDATE_P1 = 4'b0100, RESET_STACK_1 = 4'b0101, P2 = 4'b0110, UPDATE_P2 = 4'b0111;
parameter RESET_STACK_2 = 4'b1000, P1_WIN = 4'b1001, P2_WIN = 4'b1010;
//-------------Internal Variables---------------------------
wire   [SIZE-1:0]          temp_state   ;// Internal state reg
reg   [SIZE-1:0]          next_state   ;// combo part of FSM
reg [SIZE-1:0] state;
//----------Code startes Here------------------------
assign temp_state = fsm_function(state, RESTART, START, CARD_DONE, P1_NO_CARD, is_larger, P2_PUT_CARD, DONE, P1_CARD_PUT, P1_NUM_CARDS, P2_NUM_CARDS);  
//----------Function for Combo Logic-----------------
function [SIZE-1:0] fsm_function;
  input  [SIZE-1:0] state;
  input  RESTART, START, CARD_DONE, P1_NO_CARD, is_larger, P2_PUT_CARD, DONE;
  input  [2:0] P1_CARD_PUT;
  input  [2:0] P1_NUM_CARDS;
  input  [2:0] P2_NUM_CARDS;
case(state)
   IDLE: begin
        if (START == 1)
            fsm_function = CARD_WAIT; 
        else 
            fsm_function = IDLE;
         end 
    CARD_WAIT: begin
      if (CARD_DONE == 1)
        fsm_function = P1;
      else
        fsm_function = CARD_WAIT;
    end
   P1: begin
          if (P1_CARD_PUT > 3'b000)
            fsm_function = COMP;
          else if (P1_NO_CARD == 1)
            fsm_function = RESET_STACK_1;
          else
            fsm_function = P1;
         end
   COMP: begin
         if (DONE == 1)
          if (is_larger == 1)
              fsm_function = UPDATE_P1;
          else    
              fsm_function = P1;
        else
          fsm_function = COMP; // Wait till return signal is done
         end
   UPDATE_P1: begin
          if (DONE == 1)
            if (P1_NUM_CARDS == 0) begin
              fsm_function = P1_WIN;   
            end else
              fsm_function = P2;
          else
            fsm_function = UPDATE_P1;
         end
    RESET_STACK_1: begin
          if (DONE == 1)
            if (P2_NUM_CARDS == 1)
              fsm_function = P2_WIN;    
            else
              fsm_function = P2;
          else
            fsm_function = RESET_STACK_1;
    	 end
    P2: begin
          if (DONE == 1)
            if (P2_PUT_CARD == 1) 
              fsm_function = UPDATE_P2;
            else 
              fsm_function = RESET_STACK_2;
          else
            fsm_function = P2;
    	 end
    UPDATE_P2: begin
      if (DONE == 1)
        if (P2_NUM_CARDS == 0) begin
              fsm_function = P2_WIN;    
        end else
              fsm_function = P1;
        else
          fsm_function = UPDATE_P2; 
    	 end
    RESET_STACK_2: begin
        if (DONE == 1)
          if (P1_NUM_CARDS == 1) begin
            fsm_function = P1_WIN;    
          end else
            fsm_function = P1;
        else
          fsm_function = RESET_STACK_2;
    	 end
    P1_WIN: begin
    	   fsm_function = IDLE;
    	 end
    P2_WIN: begin
          fsm_function = IDLE;
    	 end
   default : fsm_function = IDLE;
  endcase
endfunction
//----------Seq Logic-----------------------------
always @ (negedge clka)
begin : FSM_SEQ
  if (RESTART == 1'b1) begin
    next_state <= IDLE;
  end else begin
    next_state <= temp_state;
  end
end
//----------Output Logic——————————————
always @ (negedge clkb)
begin : OUTPUT_LOGIC
  case(next_state)
  IDLE: begin
        state <= next_state;
        {LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, CARD_GEN} <= 7'b0;
        WINNER <= 2'b00;
        end
  CARD_WAIT: begin
        state <= next_state;
        {LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, CARD_GEN} <= 7'b0000001;
  end
  P1: begin 
        state <= next_state;
        {LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, CARD_GEN} <= 7'b1000000;
        end
  COMP: begin
        state <= next_state;
        {LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, CARD_GEN} <= 7'b0100000;
          end
  UPDATE_P1: begin
          state <= next_state;
          {LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, CARD_GEN} <= 7'b0001000;
         end
  RESET_STACK_1: begin
          state <= next_state;
          {LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, CARD_GEN} <= 7'b0000010;
        end
  P2: begin
        state <= next_state;
        {LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, CARD_GEN} <= 7'b0010000;
        end
  UPDATE_P2: begin
        state <= next_state;
        {LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, CARD_GEN} <= 7'b0000100;
        end
  RESET_STACK_2: begin
        state <= next_state;
        {LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, CARD_GEN} <= 7'b0000010;
         end
  P1_WIN: begin
    	state <= next_state; 
        WINNER <= 2'b01;     // Indicate player 1 is winner
    	 end
  P2_WIN: begin
        state <= next_state;
        WINNER <= 2'b10;     // Indicate player 2 is winner
  end
  endcase
end // End Of Block OUTPUT_LOGIC

endmodule // End of Module FSM_2_23

