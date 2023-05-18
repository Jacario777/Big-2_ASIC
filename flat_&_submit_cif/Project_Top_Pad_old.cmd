|
| Project_Top.cmd
|
| Comments
| Elec422/527 FSM_DP_timing
| CMOS two phase FSM with two input register data path and adder
|
stepsize 50
|
| define vectors for easier display
vector p_num_cards p_num_cards\[2\] p_num_cards\[1\] p_num_cards\[0\]
vector p_seed p_seed\[3\] p_seed\[2\] p_seed\[1\] p_seed\[0\]
vector p_winner p_winner\[1\] p_winner\[0\]
vector p_P2_num_cards p_P2_num_cards\[2\] p_P2_num_cards\[1\] p_P2_num_cards\[0\]
| vector state state\[3\] state\[2\] state\[1\] state\[0\]
vector p_max_card p_max_card\[5\] p_max_card\[4\] p_max_card\[3\] p_max_card\[2\] p_max_card\[1\] p_max_card\[0\]
vector p_P1_out1 p_P1_out\[23\] p_P1_out\[22\] p_P1_out\[21\] p_P1_out\[20\] p_P1_out\[19\] p_P1_out\[18\]
vector p_P1_out2 p_P1_out\[17\] p_P1_out\[16\] p_P1_out\[15\] p_P1_out\[14\] p_P1_out\[13\] p_P1_out\[12\] p_P1_out\[11\]
vector p_P1_out3 p_P1_out\[10\] p_P1_out\[9\] p_P1_out\[8\] p_P1_out\[7\] p_P1_out\[6\] p_P1_out\[5\] p_P1_out\[4\]
vector p_P1_out4 p_P1_out\[3\] p_P1_out\[2\] p_P1_out\[1\] p_P1_out\[0\]
vector p_P1_decision p_P1_decision\[2\] p_P1_decision\[1\] p_P1_decision\[0\]
| 
logfile Project_Top.log
ana p_in_clka p_in_clkb p_in_restart p_in_start p_P1_decision p_P1_no p_num_cards p_seed
ana p_P1_out1 p_P1_out2 p_P1_out3 p_P1_out4 p_winner p_P2_num_cards p_max_card
| First data set
|   cycle          0 1 2 3 4 5 6 7 8 9 1011121314151617181920212223242526272829303132333435
V   p_in_restart     0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V   p_in_start       0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V p_P1_decision\[2\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  0 0 0 0 0 
V p_P1_decision\[1\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V p_P1_decision\[0\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V   p_P1_no          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V   p_num_cards\[2\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
V   p_num_cards\[1\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V   p_num_cards\[0\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V   p_seed\[3\]      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V   p_seed\[2\]      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V   p_seed\[1\]      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V   p_seed\[0\]      0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 

| Two phase clock with non-overlap period - same as Modelsim testbench
clock p_in_clka 0 1 0 0
clock p_in_clkb 0 0 0 1
R

| Second data set
|   cycle          363738394041424344454647484950515253545556575859606162636465666768697071
V   p_in_restart     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
V   p_in_start       0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  
V p_P1_decision\[2\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  
V p_P1_decision\[1\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0     
V p_P1_decision\[0\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0    
V   p_P1_no          0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  
V   p_num_cards\[2\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0   
V   p_num_cards\[1\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  
V   p_num_cards\[0\] 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  
V   p_seed\[3\]      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  
V   p_seed\[2\]      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0   
V   p_seed\[1\]      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0   
V   p_seed\[0\]      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0   

| Two phase clock with non-overlap period - same as Modelsim testbench
clock in_clka 0 1 0 0
clock in_clkb 0 0 0 1
R