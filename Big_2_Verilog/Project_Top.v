module Project_Top(in_clka, in_clkb, in_restart, in_start, seed, P1_no, P1_decision, num_cards, P1_out, max_card, P2_num_cards, winner);
//-------------Input Ports-----------------------------
input in_clka, in_clkb, in_restart, in_start, P1_no;
input [2:0] P1_decision;
input [2:0] num_cards; 
input [3:0] seed; 
//-------------Output Ports----------------------------
output [1:0] winner; 
output [23:0] P1_out;
output [5:0] max_card;
output [2:0] P2_num_cards;
//-------------Test Output Ports-----------------------
/*
output [2:0] P1_num_cards, P2_num_cards; 
output [3:0] state;
output [2:0] gen_state;
output [5:0] max_card;
output [23:0] P1_out, P2_out; 
output card_done, card_gen;
*/
//-------------Input ports Data Type-------------------
wire in_clka, in_clkb, in_restart, in_start;
wire [2:0] P1_decision;
wire [2:0] num_cards;
wire [3:0] seed; 
//-------------Output Ports Data Type------------------
wire [1:0] winner; 
wire [23:0] P1_out;
wire [5:0] max_card;
//-------------Output Test Data Type (Also internal variables) ------------------
//wire [2:0] P1_num_cards, P2_num_cards; 
wire [3:0] state;
//wire [2:0] gen_state;
//wire [5:0] max_card;
//wire [23:0] P1_out, P2_out; 
//wire card_done, card_gen;
//------------Internal Variables--------
wire [23:0] P1_cards, P2_cards; 
wire [2:0] P1_num_cards, P2_num_cards; 
wire out_load, out_compare_1, out_compare_2, out_update_1, out_update_2, out_reset_top, out_is_larger, out_P2_put, out_done, card_done, card_gen;

    Project_FSM main (.clka (in_clka),
           .clkb (in_clkb),
           .RESTART (in_restart),
           .START (in_start),
           .CARD_DONE(card_done),
           .is_larger (out_is_larger),
           .P1_NO_CARD (P1_no),
           .P1_CARD_PUT (P1_decision),
           .P2_PUT_CARD (out_P2_put),
           .DONE (out_done),
           .P1_NUM_CARDS (P1_num_cards),
           .P2_NUM_CARDS (P2_num_cards),
           .LOAD (out_load),
           .CARD_GEN(card_gen),
           .COMPARE_1 (out_compare_1),
           .COMPARE_2 (out_compare_2),
           .UPDATE_1 (out_update_1),
           .UPDATE_2 (out_update_2),
           .RESET_TOP (out_reset_top),
           .WINNER(winner)
        );
    Project_DP  dp(.clka (in_clka),
           .clkb (in_clkb),
           .RESTART (in_restart),
           .LOAD (out_load),
           .COMPARE_1 (out_compare_1),
           .COMPARE_2 (out_compare_2),
           .UPDATE_1 (out_update_1),
           .UPDATE_2 (out_update_2),
           .RESET_TOP (out_reset_top),
           .P1_CARD_PUT (P1_decision),
           .P1_IN_CARDS (P1_cards),
           .P2_IN_CARDS (P2_cards),
           .WINNER(winner),
           .NUM_CARDS (num_cards),
           .P1_OUT_CARDS (P1_out),
//           .P2_OUT_CARDS (P2_out),
           .TOP_OUT_CARD (max_card),
           .P1_OUT_NUM (P1_num_cards),
           .P2_OUT_NUM (P2_num_cards),
           .is_larger (out_is_larger),
           .P2_PUT_CARD (out_P2_put),
           .DONE (out_done)
           );
       
       Project_Card c1(.clka (in_clka),
           .clkb (in_clkb),
           .restart (in_restart),
           .card_gen(card_gen),
           .seed(seed),
           .player_cards(P1_cards),
           .comp_cards(P2_cards),
           .done(card_done)
    );
    

endmodule