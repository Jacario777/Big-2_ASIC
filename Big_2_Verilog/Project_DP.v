//-----------------------------------------------------
// Design Name : Project_DP
// File Name   : Project_DP.v
// Function    : Data path for card deck, card number, and current top card
//-----------------------------------------------------
//
//
module Project_DP(clka, clkb, RESTART, LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP, P1_CARD_PUT, P1_IN_CARDS, P2_IN_CARDS, WINNER, NUM_CARDS, P1_OUT_CARDS, TOP_OUT_CARD, P1_OUT_NUM, P2_OUT_NUM, is_larger, P2_PUT_CARD, DONE);
    //-----------Input Ports---------------
    input clka, clkb, RESTART, LOAD, COMPARE_1, COMPARE_2, UPDATE_1, UPDATE_2, RESET_TOP;
    input [1:0] WINNER;
    input [2:0] P1_CARD_PUT;
    input [2:0] NUM_CARDS;
    input [23:0] P1_IN_CARDS, P2_IN_CARDS;
    //-----------Output Ports---------------
    output is_larger, P2_PUT_CARD, DONE;
    output [2:0] P1_OUT_NUM, P2_OUT_NUM;
    output [23:0] P1_OUT_CARDS;
    output [5:0] TOP_OUT_CARD;
    //-------------Output Ports Data Type---
    reg is_larger, P2_PUT_CARD, DONE; 
    reg [2:0] P1_OUT_NUM, P2_OUT_NUM;
    reg [5:0] TOP_OUT_CARD;
    reg [23:0] P1_OUT_CARDS, P2_OUT_CARDS;
    //------------Internal Variables--------
    reg temp_larger, p2_put_temp, block_p1, block_state;
    reg [2:0] p1_temp;
    reg [2:0] P1_NUM, P2_NUM;
    reg [2:0] count;
    reg [5:0] TOP_CARD;
    reg [23:0] P1_CARDS, P2_CARDS;

    always @ (negedge clka) begin
        if (RESTART == 1 || WINNER > 2'b00) begin
            P1_CARDS = 24'b0;
            P2_CARDS = 24'b0;
            TOP_CARD = 6'b0;
            P1_NUM = 3'b0;
            P2_NUM = 3'b0; 
            p2_put_temp = 1'b0;
            temp_larger = 1'b0;
            block_p1 = 1'b0;
        end
        else if (LOAD == 1 && block_p1 == 0) begin
            P1_CARDS = P1_IN_CARDS;
            P2_CARDS = P2_IN_CARDS;
            P1_NUM = NUM_CARDS;
            P2_NUM = NUM_CARDS;
            block_p1 = 1'b1;    // P1 can only read input once per game
        end 
        else if (LOAD == 1) begin
            p1_temp = P1_CARD_PUT;  // Store Player 1's choice for COMP to use
        end
        else if (COMPARE_1 == 1 && block_state == 0) begin
            if ((P1_CARDS[6*(p1_temp-1) +: 6] > TOP_CARD) && (P1_CARDS[6*(p1_temp-1) +: 6] != 6'b0)) begin
                temp_larger = 1'b1;
                TOP_CARD = P1_CARDS[6*(p1_temp-1) +: 6];
            end else
                temp_larger = 1'b0;
            block_state = 1'b1;
        end 
        else if (COMPARE_2 == 1 && block_state == 0) begin
            count = 3'b000;
            while ((P2_CARDS[6*count +: 6] <= TOP_CARD) && (count < 4)) begin   //While loop to enable P2 to search for a bigger card, starting from LSB
                count = count + 1;
            end
            if (count == 4) 
                p2_put_temp = 1'b0;
            else begin
                p2_put_temp = 1'b1;
                TOP_CARD = P2_CARDS[6*count +: 6];
            end
            block_state = 1'b1;
        end
        else if (UPDATE_1 == 1 && block_state == 0) begin
            P1_CARDS[6*(p1_temp-1) +: 6] = 6'b0;
            P1_NUM = P1_NUM - 1;
            block_state = 1'b1;
        end
        else if (UPDATE_2 == 1 && block_state == 0) begin
            P2_CARDS[6*count +: 6] = 6'b0;
            P2_NUM = P2_NUM - 1;
            block_state = 1'b1;
        end
        else if (RESET_TOP == 1 && block_state == 0) begin
            TOP_CARD = 6'b0;
            block_state = 1'b1;
        end else
            block_state = 1'b0;     // Assume every state beside P1 will have at most 1 re-cycle
    end
    always @ (negedge clkb) begin
        if (RESTART == 1 || WINNER > 2'b00) begin
            P1_OUT_CARDS = 24'b0;
            P2_OUT_CARDS = 24'b0;
            TOP_OUT_CARD = 6'b0;
            P1_OUT_NUM = 3'b0;
            P2_OUT_NUM = 3'b0;
            is_larger = 1'b0;
            P2_PUT_CARD = 1'b0;
            DONE = 1'b0;
        end
        else if (LOAD == 1) begin
            P1_OUT_CARDS = P1_CARDS;
            P2_OUT_CARDS = P2_CARDS;
            P1_OUT_NUM = P1_NUM;
            P2_OUT_NUM = P2_NUM;
        end
        else if (COMPARE_1 == 1 && block_state == 1) begin
            is_larger = temp_larger;
            DONE = 1'b1;
        end
        else if (COMPARE_2 == 1 && block_state == 1) begin
            P2_PUT_CARD = p2_put_temp;
            DONE = 1'b1;
        end
        else if (UPDATE_1 == 1 && block_state == 1) begin
            P1_OUT_CARDS = P1_CARDS;
            P1_OUT_NUM = P1_NUM;
            TOP_OUT_CARD = TOP_CARD;
            DONE = 1'b1;
        end
        else if (UPDATE_2 == 1 && block_state == 1) begin
            P2_OUT_CARDS = P2_CARDS;
            P2_OUT_NUM = P2_NUM;
            TOP_OUT_CARD = TOP_CARD;
            DONE = 1'b1;
        end
        else if (RESET_TOP == 1 && block_state == 1) begin
            TOP_OUT_CARD = TOP_CARD;
            DONE = 1'b1;
        end else
            DONE = 1'b0;
    end
endmodule
