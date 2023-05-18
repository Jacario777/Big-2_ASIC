/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : N-2017.09-SP2
// Date      : Fri Apr 14 15:27:06 2023
/////////////////////////////////////////////////////////////


module Project_Top ( in_clka, in_clkb, in_restart, in_start, seed, P1_no, 
        P1_decision, num_cards, P1_out, max_card, P2_num_cards, winner );
  input [3:0] seed;
  input [2:0] P1_decision;
  input [2:0] num_cards;
  output [23:0] P1_out;
  output [5:0] max_card;
  output [2:0] P2_num_cards;
  output [1:0] winner;
  input in_clka, in_clkb, in_restart, in_start, P1_no;
  wire   card_done, out_is_larger, out_P2_put, out_done, out_load, card_gen,
         out_compare_1, out_compare_2, out_update_1, out_update_2,
         out_reset_top, \main/n129 , \main/n128 , \main/n127 , \main/n126 ,
         \main/n125 , \main/n124 , \main/n123 , \main/n122 , \main/n121 ,
         \main/n120 , \main/n119 , \main/n118 , \main/n117 , \main/n116 ,
         \main/n115 , \main/n114 , \main/n113 , \main/n112 , \main/n111 ,
         \main/n110 , \main/n109 , \main/n108 , \main/n107 , \main/n106 ,
         \main/n105 , \main/n104 , \main/n103 , \main/n102 , \main/n101 ,
         \main/n100 , \main/n99 , \main/n98 , \main/n97 , \main/n96 ,
         \main/n95 , \main/n94 , \main/n93 , \main/n92 , \main/n91 ,
         \main/n90 , \main/n89 , \main/n88 , \main/n87 , \main/n86 ,
         \main/n85 , \main/n84 , \main/n83 , \main/n82 , \main/n81 ,
         \main/n80 , \main/n79 , \main/n78 , \main/n77 , \main/n76 ,
         \main/n75 , \main/n74 , \main/n73 , \main/n72 , \main/n71 ,
         \main/n70 , \main/n69 , \main/n68 , \main/n67 , \main/n66 ,
         \main/n65 , \main/n64 , \main/n63 , \main/n62 , \main/n61 ,
         \main/n60 , \main/n59 , \main/n58 , \main/n57 , \main/n56 ,
         \main/n55 , \main/n54 , \main/n53 , \main/n52 , \main/n51 ,
         \main/n50 , \main/n49 , \main/n48 , \main/n47 , \main/n46 ,
         \main/N110 , \main/N108 , \main/N107 , \main/state[0]1 ,
         \main/state[1]1 , \main/state[2]1 , \main/state[3]1 , \dp/n453 ,
         \dp/n452 , \dp/n451 , \dp/n450 , \dp/n449 , \dp/n448 , \dp/n447 ,
         \dp/n446 , \dp/n445 , \dp/n444 , \dp/n443 , \dp/n442 , \dp/n441 ,
         \dp/n440 , \dp/n439 , \dp/n438 , \dp/n437 , \dp/n436 , \dp/n435 ,
         \dp/n434 , \dp/n433 , \dp/n432 , \dp/n431 , \dp/n430 , \dp/n429 ,
         \dp/n428 , \dp/n427 , \dp/n426 , \dp/n425 , \dp/n424 , \dp/n423 ,
         \dp/n422 , \dp/n421 , \dp/n420 , \dp/n419 , \dp/n418 , \dp/n417 ,
         \dp/n416 , \dp/n415 , \dp/n414 , \dp/n413 , \dp/n412 , \dp/n411 ,
         \dp/n410 , \dp/n409 , \dp/n408 , \dp/n407 , \dp/n406 , \dp/n405 ,
         \dp/n404 , \dp/n403 , \dp/n402 , \dp/n401 , \dp/n400 , \dp/n399 ,
         \dp/n398 , \dp/n397 , \dp/n396 , \dp/n395 , \dp/n394 , \dp/n393 ,
         \dp/n392 , \dp/n391 , \dp/n390 , \dp/n389 , \dp/n388 , \dp/n387 ,
         \dp/n386 , \dp/n385 , \dp/n384 , \dp/n383 , \dp/n382 , \dp/n381 ,
         \dp/n380 , \dp/n379 , \dp/n378 , \dp/n377 , \dp/n376 , \dp/n375 ,
         \dp/n374 , \dp/n373 , \dp/n372 , \dp/n371 , \dp/n370 , \dp/n369 ,
         \dp/n368 , \dp/n367 , \dp/n366 , \dp/n365 , \dp/n364 , \dp/n363 ,
         \dp/n362 , \dp/n361 , \dp/n360 , \dp/n359 , \dp/n358 , \dp/n357 ,
         \dp/n356 , \dp/n355 , \dp/n354 , \dp/n353 , \dp/n352 , \dp/n351 ,
         \dp/n350 , \dp/n349 , \dp/n348 , \dp/n347 , \dp/n346 , \dp/n345 ,
         \dp/n344 , \dp/n343 , \dp/n342 , \dp/n341 , \dp/n340 , \dp/n339 ,
         \dp/n338 , \dp/n337 , \dp/n336 , \dp/n335 , \dp/n334 , \dp/n333 ,
         \dp/n332 , \dp/n331 , \dp/n330 , \dp/n329 , \dp/n328 , \dp/n327 ,
         \dp/n326 , \dp/n325 , \dp/n324 , \dp/n323 , \dp/n322 , \dp/n321 ,
         \dp/n320 , \dp/n319 , \dp/n318 , \dp/n317 , \dp/n316 , \dp/n315 ,
         \dp/n314 , \dp/n313 , \dp/n312 , \dp/n311 , \dp/n310 , \dp/n309 ,
         \dp/n308 , \dp/n307 , \dp/n306 , \dp/n305 , \dp/n304 , \dp/n303 ,
         \dp/n302 , \dp/n301 , \dp/n300 , \dp/n299 , \dp/n298 , \dp/n297 ,
         \dp/n296 , \dp/n295 , \dp/n294 , \dp/n293 , \dp/n292 , \dp/n291 ,
         \dp/n290 , \dp/n289 , \dp/n288 , \dp/n287 , \dp/n286 , \dp/n285 ,
         \dp/n284 , \dp/n283 , \dp/n282 , \dp/n281 , \dp/n280 , \dp/n279 ,
         \dp/n278 , \dp/n277 , \dp/n276 , \dp/n275 , \dp/n274 , \dp/n273 ,
         \dp/n272 , \dp/n271 , \dp/n270 , \dp/n269 , \dp/n268 , \dp/n267 ,
         \dp/n266 , \dp/n265 , \dp/n264 , \dp/n263 , \dp/n262 , \dp/n261 ,
         \dp/n260 , \dp/n259 , \dp/n258 , \dp/n257 , \dp/n256 , \dp/n255 ,
         \dp/n254 , \dp/n253 , \dp/n252 , \dp/n251 , \dp/n250 , \dp/n249 ,
         \dp/n248 , \dp/n247 , \dp/n246 , \dp/n245 , \dp/n244 , \dp/n243 ,
         \dp/n242 , \dp/n241 , \dp/n240 , \dp/n239 , \dp/n238 , \dp/n237 ,
         \dp/n236 , \dp/n235 , \dp/n234 , \dp/n233 , \dp/n232 , \dp/n231 ,
         \dp/n230 , \dp/n229 , \dp/n228 , \dp/n227 , \dp/n226 , \dp/n225 ,
         \dp/n224 , \dp/n223 , \dp/n222 , \dp/n221 , \dp/n220 , \dp/n219 ,
         \dp/n218 , \dp/n217 , \dp/n216 , \dp/n215 , \dp/n214 , \dp/n213 ,
         \dp/n212 , \dp/n211 , \dp/n210 , \dp/n209 , \dp/n208 , \dp/n207 ,
         \dp/n206 , \dp/n205 , \dp/n204 , \dp/n203 , \dp/n202 , \dp/n201 ,
         \dp/n200 , \dp/n199 , \dp/n198 , \dp/n197 , \dp/n196 , \dp/n195 ,
         \dp/n194 , \dp/n193 , \dp/n192 , \dp/n191 , \dp/n190 , \dp/n188 ,
         \dp/n187 , \dp/n186 , \dp/n185 , \dp/n184 , \dp/n183 , \dp/n182 ,
         \dp/n181 , \dp/n180 , \dp/n179 , \dp/n178 , \dp/n177 , \dp/n176 ,
         \dp/n175 , \dp/n174 , \dp/n173 , \dp/n172 , \dp/n171 , \dp/n170 ,
         \dp/n169 , \dp/n168 , \dp/n167 , \dp/n166 , \dp/n165 , \dp/n164 ,
         \dp/n163 , \dp/n162 , \dp/n161 , \dp/n160 , \dp/n159 , \dp/n158 ,
         \dp/n157 , \dp/n156 , \dp/n155 , \dp/n154 , \dp/n153 , \dp/n152 ,
         \dp/n151 , \dp/n150 , \dp/n149 , \dp/n148 , \dp/n147 , \dp/n146 ,
         \dp/n145 , \dp/n144 , \dp/n143 , \dp/n142 , \dp/n141 , \dp/n140 ,
         \dp/n139 , \dp/n138 , \dp/n137 , \dp/n136 , \dp/n135 , \dp/n134 ,
         \dp/n133 , \dp/n132 , \dp/n131 , \dp/n130 , \dp/n129 , \dp/n128 ,
         \dp/n127 , \dp/n126 , \dp/n125 , \dp/n124 , \dp/n122 , \dp/N90 ,
         \dp/N89 , \dp/N87 , \dp/N85 , \dp/N73 , \dp/N72 , \dp/N71 , \dp/N69 ,
         \dp/N67 , \dp/temp_larger , \dp/p2_put_temp , \dp/block_p1 ,
         \dp/block_state , \c1/n898 , \c1/n897 , \c1/n896 , \c1/n895 ,
         \c1/n894 , \c1/n893 , \c1/n892 , \c1/n891 , \c1/n890 , \c1/n889 ,
         \c1/n888 , \c1/n887 , \c1/n886 , \c1/n885 , \c1/n884 , \c1/n883 ,
         \c1/n882 , \c1/n881 , \c1/n880 , \c1/n879 , \c1/n878 , \c1/n877 ,
         \c1/n876 , \c1/n875 , \c1/n874 , \c1/n873 , \c1/n872 , \c1/n871 ,
         \c1/n870 , \c1/n869 , \c1/n868 , \c1/n867 , \c1/n866 , \c1/n865 ,
         \c1/n864 , \c1/n863 , \c1/n862 , \c1/n861 , \c1/n860 , \c1/n859 ,
         \c1/n858 , \c1/n857 , \c1/n856 , \c1/n855 , \c1/n854 , \c1/n853 ,
         \c1/n852 , \c1/n851 , \c1/n850 , \c1/n849 , \c1/n848 , \c1/n847 ,
         \c1/n846 , \c1/n845 , \c1/n844 , \c1/n843 , \c1/n842 , \c1/n841 ,
         \c1/n840 , \c1/n839 , \c1/n838 , \c1/n837 , \c1/n836 , \c1/n835 ,
         \c1/n834 , \c1/n833 , \c1/n832 , \c1/n831 , \c1/n830 , \c1/n829 ,
         \c1/n828 , \c1/n827 , \c1/n826 , \c1/n825 , \c1/n824 , \c1/n823 ,
         \c1/n822 , \c1/n821 , \c1/n820 , \c1/n819 , \c1/n818 , \c1/n817 ,
         \c1/n816 , \c1/n815 , \c1/n814 , \c1/n813 , \c1/n812 , \c1/n811 ,
         \c1/n810 , \c1/n809 , \c1/n808 , \c1/n807 , \c1/n806 , \c1/n805 ,
         \c1/n804 , \c1/n803 , \c1/n802 , \c1/n801 , \c1/n800 , \c1/n799 ,
         \c1/n798 , \c1/n797 , \c1/n796 , \c1/n795 , \c1/n794 , \c1/n793 ,
         \c1/n792 , \c1/n791 , \c1/n790 , \c1/n789 , \c1/n788 , \c1/n787 ,
         \c1/n786 , \c1/n785 , \c1/n784 , \c1/n783 , \c1/n782 , \c1/n781 ,
         \c1/n780 , \c1/n779 , \c1/n778 , \c1/n777 , \c1/n776 , \c1/n775 ,
         \c1/n774 , \c1/n773 , \c1/n772 , \c1/n771 , \c1/n770 , \c1/n769 ,
         \c1/n768 , \c1/n767 , \c1/n766 , \c1/n765 , \c1/n764 , \c1/n763 ,
         \c1/n762 , \c1/n761 , \c1/n760 , \c1/n759 , \c1/n758 , \c1/n757 ,
         \c1/n756 , \c1/n755 , \c1/n754 , \c1/n753 , \c1/n752 , \c1/n751 ,
         \c1/n750 , \c1/n749 , \c1/n748 , \c1/n747 , \c1/n746 , \c1/n745 ,
         \c1/n744 , \c1/n743 , \c1/n742 , \c1/n741 , \c1/n740 , \c1/n739 ,
         \c1/n738 , \c1/n737 , \c1/n736 , \c1/n735 , \c1/n734 , \c1/n733 ,
         \c1/n732 , \c1/n731 , \c1/n730 , \c1/n729 , \c1/n728 , \c1/n727 ,
         \c1/n726 , \c1/n725 , \c1/n724 , \c1/n723 , \c1/n722 , \c1/n721 ,
         \c1/n720 , \c1/n719 , \c1/n718 , \c1/n717 , \c1/n716 , \c1/n715 ,
         \c1/n714 , \c1/n713 , \c1/n712 , \c1/n711 , \c1/n710 , \c1/n709 ,
         \c1/n708 , \c1/n707 , \c1/n706 , \c1/n705 , \c1/n704 , \c1/n703 ,
         \c1/n701 , \c1/n700 , \c1/n699 , \c1/n698 , \c1/n697 , \c1/n696 ,
         \c1/n695 , \c1/n694 , \c1/n693 , \c1/n692 , \c1/n691 , \c1/n690 ,
         \c1/n689 , \c1/n688 , \c1/n687 , \c1/n686 , \c1/n685 , \c1/n684 ,
         \c1/n683 , \c1/n682 , \c1/n681 , \c1/n680 , \c1/n679 , \c1/n678 ,
         \c1/n677 , \c1/n676 , \c1/n675 , \c1/n674 , \c1/n673 , \c1/n672 ,
         \c1/n671 , \c1/n670 , \c1/n669 , \c1/n668 , \c1/n667 , \c1/n666 ,
         \c1/n665 , \c1/n664 , \c1/n663 , \c1/n662 , \c1/n661 , \c1/n660 ,
         \c1/n659 , \c1/n658 , \c1/n657 , \c1/n656 , \c1/n655 , \c1/n654 ,
         \c1/n653 , \c1/n652 , \c1/n651 , \c1/n650 , \c1/n649 , \c1/n648 ,
         \c1/n647 , \c1/n646 , \c1/n645 , \c1/n644 , \c1/n643 , \c1/n642 ,
         \c1/n641 , \c1/n640 , \c1/n639 , \c1/n638 , \c1/n637 , \c1/n636 ,
         \c1/n635 , \c1/n634 , \c1/n633 , \c1/n632 , \c1/n631 , \c1/n630 ,
         \c1/n629 , \c1/n628 , \c1/n627 , \c1/n626 , \c1/n625 , \c1/n624 ,
         \c1/n623 , \c1/n622 , \c1/n621 , \c1/n620 , \c1/n619 , \c1/n618 ,
         \c1/n617 , \c1/n616 , \c1/n615 , \c1/n614 , \c1/n613 , \c1/n612 ,
         \c1/n611 , \c1/n610 , \c1/n609 , \c1/n608 , \c1/n607 , \c1/n606 ,
         \c1/n605 , \c1/n604 , \c1/n603 , \c1/n602 , \c1/n601 , \c1/n600 ,
         \c1/n599 , \c1/n598 , \c1/n597 , \c1/n596 , \c1/n595 , \c1/n594 ,
         \c1/n593 , \c1/n592 , \c1/n591 , \c1/n590 , \c1/n589 , \c1/n588 ,
         \c1/n587 , \c1/n586 , \c1/n585 , \c1/n584 , \c1/n583 , \c1/n582 ,
         \c1/n581 , \c1/n580 , \c1/n579 , \c1/n578 , \c1/n577 , \c1/n576 ,
         \c1/n575 , \c1/n574 , \c1/n573 , \c1/n572 , \c1/n571 , \c1/n570 ,
         \c1/n569 , \c1/n568 , \c1/n567 , \c1/n566 , \c1/n565 , \c1/n564 ,
         \c1/n563 , \c1/n562 , \c1/n561 , \c1/n560 , \c1/n559 , \c1/n558 ,
         \c1/n557 , \c1/n556 , \c1/n555 , \c1/n554 , \c1/n553 , \c1/n552 ,
         \c1/n551 , \c1/n550 , \c1/n549 , \c1/n548 , \c1/n547 , \c1/n546 ,
         \c1/n545 , \c1/n544 , \c1/n543 , \c1/n542 , \c1/n541 , \c1/n540 ,
         \c1/n539 , \c1/n538 , \c1/n537 , \c1/n536 , \c1/n535 , \c1/n534 ,
         \c1/n533 , \c1/n532 , \c1/n531 , \c1/n530 , \c1/n529 , \c1/n528 ,
         \c1/n527 , \c1/n526 , \c1/n525 , \c1/n524 , \c1/n523 , \c1/n522 ,
         \c1/n521 , \c1/n520 , \c1/n519 , \c1/n518 , \c1/n517 , \c1/n516 ,
         \c1/n515 , \c1/n514 , \c1/n513 , \c1/n512 , \c1/n511 , \c1/n510 ,
         \c1/n509 , \c1/n508 , \c1/n507 , \c1/n506 , \c1/n505 , \c1/n504 ,
         \c1/n503 , \c1/n502 , \c1/n501 , \c1/n500 , \c1/n499 , \c1/n498 ,
         \c1/n497 , \c1/n496 , \c1/n495 , \c1/n494 , \c1/n493 , \c1/n492 ,
         \c1/n491 , \c1/n490 , \c1/n489 , \c1/n488 , \c1/n487 , \c1/n486 ,
         \c1/n485 , \c1/n484 , \c1/n483 , \c1/n482 , \c1/n481 , \c1/n480 ,
         \c1/n479 , \c1/n478 , \c1/n477 , \c1/n476 , \c1/n475 , \c1/n474 ,
         \c1/n473 , \c1/n472 , \c1/n471 , \c1/n470 , \c1/n469 , \c1/n468 ,
         \c1/n467 , \c1/n466 , \c1/n465 , \c1/n464 , \c1/n463 , \c1/n462 ,
         \c1/n461 , \c1/n460 , \c1/n459 , \c1/n458 , \c1/n457 , \c1/n456 ,
         \c1/n455 , \c1/n454 , \c1/n453 , \c1/n452 , \c1/n451 , \c1/n450 ,
         \c1/n449 , \c1/n448 , \c1/n447 , \c1/n446 , \c1/n445 , \c1/n444 ,
         \c1/n443 , \c1/n442 , \c1/n441 , \c1/n440 , \c1/n439 , \c1/n438 ,
         \c1/n437 , \c1/n436 , \c1/n435 , \c1/n434 , \c1/n433 , \c1/n432 ,
         \c1/n431 , \c1/n430 , \c1/n429 , \c1/n428 , \c1/n427 , \c1/n426 ,
         \c1/n425 , \c1/n424 , \c1/n423 , \c1/n422 , \c1/n421 , \c1/n420 ,
         \c1/n419 , \c1/n418 , \c1/n417 , \c1/n416 , \c1/n415 , \c1/n414 ,
         \c1/n413 , \c1/n412 , \c1/n411 , \c1/n410 , \c1/n409 , \c1/n408 ,
         \c1/n407 , \c1/n406 , \c1/n405 , \c1/n404 , \c1/n403 , \c1/n402 ,
         \c1/n401 , \c1/n400 , \c1/n399 , \c1/n398 , \c1/n397 , \c1/n396 ,
         \c1/n395 , \c1/n394 , \c1/n393 , \c1/n392 , \c1/n391 , \c1/n390 ,
         \c1/n389 , \c1/n388 , \c1/n387 , \c1/n386 , \c1/n385 , \c1/n384 ,
         \c1/n383 , \c1/n382 , \c1/n381 , \c1/n380 , \c1/n379 , \c1/n378 ,
         \c1/n377 , \c1/n376 , \c1/n375 , \c1/n374 , \c1/n373 , \c1/n372 ,
         \c1/n371 , \c1/n370 , \c1/n369 , \c1/n368 , \c1/n367 , \c1/n366 ,
         \c1/n365 , \c1/n364 , \c1/n363 , \c1/n362 , \c1/n361 , \c1/n360 ,
         \c1/n359 , \c1/n358 , \c1/n357 , \c1/n356 , \c1/n355 , \c1/n354 ,
         \c1/n352 , \c1/n351 , \c1/n350 , \c1/n349 , \c1/n348 , \c1/n347 ,
         \c1/n346 , \c1/n345 , \c1/n344 , \c1/n343 , \c1/n342 , \c1/n341 ,
         \c1/n340 , \c1/n339 , \c1/n338 , \c1/n337 , \c1/n336 , \c1/n335 ,
         \c1/n334 , \c1/n333 , \c1/n332 , \c1/n331 , \c1/n330 , \c1/n329 ,
         \c1/n328 , \c1/n327 , \c1/n326 , \c1/n325 , \c1/n324 , \c1/n323 ,
         \c1/n322 , \c1/n321 , \c1/n320 , \c1/n319 , \c1/n318 , \c1/n317 ,
         \c1/n316 , \c1/n315 , \c1/n314 , \c1/n313 , \c1/n312 , \c1/n311 ,
         \c1/n310 , \c1/n309 , \c1/n308 , \c1/n307 , \c1/n306 , \c1/n305 ,
         \c1/n304 , \c1/n303 , \c1/n302 , \c1/n301 , \c1/n300 , \c1/n299 ,
         \c1/n298 , \c1/n297 , \c1/n296 , \c1/n295 , \c1/n294 , \c1/n293 ,
         \c1/n292 , \c1/n291 , \c1/n290 , \c1/n289 , \c1/n288 , \c1/n287 ,
         \c1/n286 , \c1/n285 , \c1/n284 , \c1/n283 , \c1/n282 , \c1/n281 ,
         \c1/n280 , \c1/n279 , \c1/n278 , \c1/n277 , \c1/n276 , \c1/n275 ,
         \c1/n274 , \c1/n273 , \c1/n272 , \c1/n271 , \c1/n270 , \c1/n269 ,
         \c1/n268 , \c1/n267 , \c1/n266 , \c1/n265 , \c1/n264 , \c1/n263 ,
         \c1/n262 , \c1/n261 , \c1/n260 , \c1/n259 , \c1/n258 , \c1/n257 ,
         \c1/n256 , \c1/n255 , \c1/n254 , \c1/n253 , \c1/n252 , \c1/n251 ,
         \c1/n250 , \c1/n249 , \c1/n248 , \c1/n247 , \c1/n246 , \c1/n245 ,
         \c1/n244 , \c1/n243 , \c1/n242 , \c1/n241 , \c1/n240 , \c1/n239 ,
         \c1/n238 , \c1/n237 , \c1/n236 , \c1/n235 , \c1/n234 , \c1/n233 ,
         \c1/n232 , \c1/n231 , \c1/n230 , \c1/n229 , \c1/n228 , \c1/n227 ,
         \c1/n226 , \c1/n225 , \c1/N278 , \c1/N277 , \c1/N276 , \c1/gen_flag1 ,
         \c1/c_count[0]1 , \c1/c_count[1]1 , \c1/c_count[2]1 , \c1/state[0]1 ,
         \c1/state[1]1 , \c1/state[2]1 , n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495;
  wire   [2:0] P1_num_cards;
  wire   [23:0] P1_cards;
  wire   [23:0] P2_cards;
  wire   [3:0] \main/next_state ;
  wire   [2:0] \dp/count ;
  wire   [2:0] \dp/P2_NUM ;
  wire   [2:0] \dp/P1_NUM ;
  wire   [23:0] \dp/P2_CARDS ;
  wire   [5:0] \dp/TOP_CARD ;
  wire   [2:0] \dp/p1_temp ;
  wire   [23:0] \dp/P1_CARDS ;
  wire   [23:0] \c1/comp_deck ;
  wire   [23:0] \c1/player_deck ;
  wire   [2:0] \c1/count ;
  wire   [41:0] \c1/deck ;
  wire   [2:0] \c1/p_count ;
  wire   [27:0] \c1/trans_reg ;
  wire   [2:0] \c1/trans_num ;
  wire   [3:0] \c1/lfsr ;
  wire   [2:0] \c1/next_state ;

  NAND3X1 \main/U130  ( .A(n108), .B(n103), .C(\main/state[2]1 ), .Y(
        \main/n114 ) );
  NOR2X1 \main/U129  ( .A(\main/n114 ), .B(n112), .Y(\main/n82 ) );
  NOR2X1 \main/U128  ( .A(n108), .B(\main/state[3]1 ), .Y(\main/n106 ) );
  NAND3X1 \main/U127  ( .A(\main/state[0]1 ), .B(\main/state[2]1 ), .C(
        \main/n106 ), .Y(\main/n76 ) );
  NAND2X1 \main/U126  ( .A(n99), .B(\main/n76 ), .Y(\main/n89 ) );
  NAND3X1 \main/U125  ( .A(n110), .B(n103), .C(n108), .Y(\main/n116 ) );
  NAND2X1 \main/U124  ( .A(in_start), .B(n112), .Y(\main/n115 ) );
  OAI21X1 \main/U123  ( .A(card_done), .B(n112), .C(\main/n115 ), .Y(
        \main/n109 ) );
  NOR2X1 \main/U122  ( .A(\main/n114 ), .B(\main/state[0]1 ), .Y(\main/n88 )
         );
  NAND3X1 \main/U121  ( .A(n118), .B(n119), .C(n116), .Y(\main/n77 ) );
  NAND3X1 \main/U120  ( .A(n118), .B(n119), .C(P1_num_cards[0]), .Y(
        \main/n113 ) );
  NOR2X1 \main/U119  ( .A(\main/state[0]1 ), .B(n103), .Y(\main/n112 ) );
  NAND3X1 \main/U118  ( .A(n108), .B(n110), .C(\main/n112 ), .Y(\main/n99 ) );
  NAND3X1 \main/U117  ( .A(\main/state[2]1 ), .B(n112), .C(\main/n106 ), .Y(
        \main/n73 ) );
  AOI22X1 \main/U116  ( .A(n117), .B(n102), .C(out_P2_put), .D(n104), .Y(
        \main/n111 ) );
  OAI21X1 \main/U115  ( .A(n100), .B(\main/n77 ), .C(\main/n111 ), .Y(
        \main/n110 ) );
  AOI22X1 \main/U114  ( .A(n101), .B(\main/n109 ), .C(out_done), .D(
        \main/n110 ), .Y(\main/n108 ) );
  AOI21X1 \main/U113  ( .A(n114), .B(\main/n89 ), .C(n78), .Y(\main/n104 ) );
  NAND3X1 \main/U112  ( .A(n112), .B(n110), .C(\main/n106 ), .Y(\main/n103 )
         );
  OR2X1 \main/U111  ( .A(P1_decision[2]), .B(P1_decision[1]), .Y(\main/n107 )
         );
  NOR2X1 \main/U110  ( .A(P1_decision[0]), .B(\main/n107 ), .Y(\main/n91 ) );
  NAND3X1 \main/U109  ( .A(\main/state[0]1 ), .B(n110), .C(\main/n106 ), .Y(
        \main/n90 ) );
  OAI22X1 \main/U108  ( .A(\main/n91 ), .B(\main/n103 ), .C(out_done), .D(
        \main/n90 ), .Y(\main/n101 ) );
  AOI21X1 \main/U107  ( .A(n105), .B(P1_no), .C(\main/n101 ), .Y(\main/n105 )
         );
  AOI21X1 \main/U106  ( .A(\main/n104 ), .B(\main/n105 ), .C(in_restart), .Y(
        \main/N107 ) );
  OAI22X1 \main/U105  ( .A(P1_no), .B(\main/n103 ), .C(out_is_larger), .D(
        \main/n90 ), .Y(\main/n102 ) );
  NOR2X1 \main/U104  ( .A(\main/n101 ), .B(\main/n102 ), .Y(\main/n92 ) );
  NAND2X1 \main/U103  ( .A(n101), .B(\main/state[0]1 ), .Y(\main/n100 ) );
  OAI21X1 \main/U102  ( .A(n285), .B(\main/n100 ), .C(\main/n76 ), .Y(
        \main/n94 ) );
  NOR2X1 \main/U101  ( .A(n114), .B(out_P2_put), .Y(\main/n84 ) );
  NOR2X1 \main/U100  ( .A(n115), .B(n100), .Y(\main/n97 ) );
  OAI21X1 \main/U99  ( .A(n117), .B(\main/n99 ), .C(n99), .Y(\main/n98 ) );
  OAI21X1 \main/U98  ( .A(\main/n97 ), .B(\main/n98 ), .C(out_done), .Y(
        \main/n96 ) );
  OAI21X1 \main/U97  ( .A(\main/n84 ), .B(\main/n73 ), .C(\main/n96 ), .Y(
        \main/n95 ) );
  NOR2X1 \main/U96  ( .A(\main/n94 ), .B(\main/n95 ), .Y(\main/n93 ) );
  AOI21X1 \main/U95  ( .A(\main/n92 ), .B(\main/n93 ), .C(in_restart), .Y(
        \main/N108 ) );
  NAND3X1 \main/U94  ( .A(\main/n91 ), .B(n105), .C(P1_no), .Y(\main/n85 ) );
  NAND3X1 \main/U93  ( .A(n106), .B(out_done), .C(out_is_larger), .Y(
        \main/n86 ) );
  OAI21X1 \main/U92  ( .A(\main/n88 ), .B(\main/n89 ), .C(n114), .Y(\main/n87 ) );
  NAND3X1 \main/U91  ( .A(\main/n85 ), .B(\main/n86 ), .C(\main/n87 ), .Y(
        \main/n79 ) );
  NAND3X1 \main/U90  ( .A(n121), .B(n122), .C(P2_num_cards[0]), .Y(\main/n83 )
         );
  AOI22X1 \main/U89  ( .A(\main/n82 ), .B(\main/n83 ), .C(n104), .D(n113), .Y(
        \main/n81 ) );
  OAI21X1 \main/U88  ( .A(n115), .B(n100), .C(\main/n81 ), .Y(\main/n80 ) );
  OAI21X1 \main/U87  ( .A(\main/n79 ), .B(\main/n80 ), .C(n67), .Y(\main/n78 )
         );
  NOR2X1 \main/U86  ( .A(n100), .B(\main/n77 ), .Y(\main/n71 ) );
  OAI22X1 \main/U85  ( .A(n99), .B(n120), .C(P2_num_cards[0]), .D(\main/n76 ), 
        .Y(\main/n75 ) );
  NAND3X1 \main/U84  ( .A(n121), .B(n122), .C(\main/n75 ), .Y(\main/n74 ) );
  OAI21X1 \main/U83  ( .A(out_P2_put), .B(\main/n73 ), .C(\main/n74 ), .Y(
        \main/n72 ) );
  OAI21X1 \main/U82  ( .A(\main/n71 ), .B(\main/n72 ), .C(out_done), .Y(
        \main/n69 ) );
  OAI21X1 \main/U81  ( .A(n117), .B(n114), .C(n102), .Y(\main/n70 ) );
  AOI21X1 \main/U80  ( .A(\main/n69 ), .B(\main/n70 ), .C(in_restart), .Y(
        \main/N110 ) );
  NOR2X1 \main/U79  ( .A(\main/next_state [2]), .B(\main/next_state [1]), .Y(
        \main/n67 ) );
  NAND3X1 \main/U78  ( .A(\main/n67 ), .B(\main/next_state [0]), .C(
        \main/next_state [3]), .Y(\main/n54 ) );
  NOR2X1 \main/U77  ( .A(n98), .B(\main/next_state [2]), .Y(\main/n62 ) );
  NAND3X1 \main/U76  ( .A(\main/n62 ), .B(n109), .C(\main/next_state [3]), .Y(
        \main/n53 ) );
  NOR2X1 \main/U75  ( .A(n109), .B(\main/next_state [3]), .Y(\main/n63 ) );
  NAND3X1 \main/U74  ( .A(\main/next_state [1]), .B(\main/n63 ), .C(
        \main/next_state [2]), .Y(\main/n46 ) );
  NOR2X1 \main/U73  ( .A(\main/next_state [3]), .B(\main/next_state [0]), .Y(
        \main/n61 ) );
  NAND2X1 \main/U72  ( .A(\main/n61 ), .B(\main/n67 ), .Y(\main/n55 ) );
  NAND2X1 \main/U71  ( .A(\main/n67 ), .B(\main/n63 ), .Y(\main/n51 ) );
  NAND2X1 \main/U70  ( .A(\main/n62 ), .B(\main/n61 ), .Y(\main/n50 ) );
  NAND3X1 \main/U69  ( .A(\main/n46 ), .B(\main/n55 ), .C(\main/n68 ), .Y(
        \main/n58 ) );
  NAND2X1 \main/U68  ( .A(\main/n63 ), .B(n98), .Y(\main/n65 ) );
  NAND3X1 \main/U67  ( .A(\main/n67 ), .B(n109), .C(\main/next_state [3]), .Y(
        \main/n66 ) );
  OAI21X1 \main/U66  ( .A(n111), .B(\main/n65 ), .C(\main/n66 ), .Y(\main/n64 ) );
  NAND3X1 \main/U65  ( .A(\main/next_state [2]), .B(\main/next_state [1]), .C(
        \main/n61 ), .Y(\main/n48 ) );
  NAND2X1 \main/U64  ( .A(\main/n62 ), .B(\main/n63 ), .Y(\main/n49 ) );
  NAND3X1 \main/U63  ( .A(\main/next_state [2]), .B(n98), .C(\main/n61 ), .Y(
        \main/n47 ) );
  NAND3X1 \main/U62  ( .A(n97), .B(\main/n48 ), .C(\main/n60 ), .Y(\main/n59 )
         );
  NOR2X1 \main/U61  ( .A(\main/n58 ), .B(\main/n59 ), .Y(\main/n56 ) );
  NAND3X1 \main/U60  ( .A(\main/n54 ), .B(\main/n53 ), .C(\main/n56 ), .Y(
        \main/n57 ) );
  OAI22X1 \main/U59  ( .A(n95), .B(n109), .C(\main/n57 ), .D(n112), .Y(
        \main/n129 ) );
  OAI22X1 \main/U58  ( .A(n95), .B(n107), .C(\main/n57 ), .D(n103), .Y(
        \main/n128 ) );
  OAI22X1 \main/U57  ( .A(n95), .B(n111), .C(\main/n57 ), .D(n110), .Y(
        \main/n127 ) );
  OAI22X1 \main/U56  ( .A(n95), .B(n98), .C(\main/n57 ), .D(n108), .Y(
        \main/n126 ) );
  OAI21X1 \main/U55  ( .A(n96), .B(n92), .C(n97), .Y(\main/n125 ) );
  NAND3X1 \main/U54  ( .A(\main/n53 ), .B(\main/n55 ), .C(\main/n54 ), .Y(
        \main/n52 ) );
  OAI21X1 \main/U53  ( .A(\main/n52 ), .B(n93), .C(\main/n54 ), .Y(\main/n124 ) );
  OAI21X1 \main/U52  ( .A(\main/n52 ), .B(n94), .C(\main/n53 ), .Y(\main/n123 ) );
  OAI21X1 \main/U51  ( .A(n96), .B(n91), .C(\main/n51 ), .Y(\main/n122 ) );
  OAI21X1 \main/U50  ( .A(n96), .B(n90), .C(\main/n50 ), .Y(\main/n121 ) );
  OAI21X1 \main/U49  ( .A(n96), .B(n87), .C(\main/n49 ), .Y(\main/n120 ) );
  OAI21X1 \main/U48  ( .A(n96), .B(n85), .C(\main/n48 ), .Y(\main/n119 ) );
  OAI21X1 \main/U47  ( .A(n96), .B(n81), .C(\main/n47 ), .Y(\main/n118 ) );
  OAI21X1 \main/U46  ( .A(n96), .B(n80), .C(\main/n46 ), .Y(\main/n117 ) );
  AND2X2 \main/U4  ( .A(\main/n51 ), .B(\main/n50 ), .Y(\main/n68 ) );
  AND2X2 \main/U3  ( .A(\main/n49 ), .B(\main/n47 ), .Y(\main/n60 ) );
  DFFNEGX1 \main/UPDATE_2_reg  ( .D(\main/n117 ), .CLK(n50), .Q(out_update_2)
         );
  DFFNEGX1 \main/UPDATE_1_reg  ( .D(\main/n118 ), .CLK(n50), .Q(out_update_1)
         );
  DFFNEGX1 \main/COMPARE_2_reg  ( .D(\main/n119 ), .CLK(n50), .Q(out_compare_2) );
  DFFNEGX1 \main/COMPARE_1_reg  ( .D(\main/n120 ), .CLK(n50), .Q(out_compare_1) );
  DFFNEGX1 \main/LOAD_reg  ( .D(\main/n121 ), .CLK(n50), .Q(out_load) );
  DFFNEGX1 \main/CARD_GEN_reg  ( .D(\main/n122 ), .CLK(n49), .Q(card_gen) );
  DFFNEGX1 \main/RESET_TOP_reg  ( .D(\main/n125 ), .CLK(n49), .Q(out_reset_top) );
  DFFNEGX1 \main/WINNER_reg[0]  ( .D(\main/n124 ), .CLK(n49), .Q(winner[0]) );
  DFFNEGX1 \main/WINNER_reg[1]  ( .D(\main/n123 ), .CLK(n49), .Q(winner[1]) );
  DFFNEGX1 \main/next_state_reg[1]  ( .D(\main/N108 ), .CLK(n65), .Q(
        \main/next_state [1]) );
  DFFNEGX1 \main/state_reg[3]  ( .D(\main/n128 ), .CLK(n49), .Q(
        \main/state[3]1 ) );
  DFFNEGX1 \main/next_state_reg[3]  ( .D(\main/N110 ), .CLK(n65), .Q(
        \main/next_state [3]) );
  DFFNEGX1 \main/state_reg[1]  ( .D(\main/n126 ), .CLK(n49), .Q(
        \main/state[1]1 ) );
  DFFNEGX1 \main/next_state_reg[0]  ( .D(\main/N107 ), .CLK(n65), .Q(
        \main/next_state [0]) );
  DFFNEGX1 \main/state_reg[2]  ( .D(\main/n127 ), .CLK(n49), .Q(
        \main/state[2]1 ) );
  DFFNEGX1 \main/next_state_reg[2]  ( .D(n66), .CLK(n65), .Q(
        \main/next_state [2]) );
  DFFNEGX1 \main/state_reg[0]  ( .D(\main/n129 ), .CLK(n49), .Q(
        \main/state[0]1 ) );
  NAND3X1 \dp/U451  ( .A(\dp/p1_temp [0]), .B(n216), .C(\dp/p1_temp [1]), .Y(
        \dp/n300 ) );
  NAND3X1 \dp/U450  ( .A(n213), .B(n217), .C(\dp/p1_temp [2]), .Y(\dp/n292 )
         );
  AOI22X1 \dp/U449  ( .A(n215), .B(\dp/P1_CARDS [12]), .C(n211), .D(
        \dp/P1_CARDS [18]), .Y(\dp/n343 ) );
  NAND3X1 \dp/U448  ( .A(n217), .B(n216), .C(\dp/p1_temp [0]), .Y(\dp/n316 )
         );
  NAND3X1 \dp/U447  ( .A(n213), .B(n216), .C(\dp/p1_temp [1]), .Y(\dp/n308 )
         );
  AOI22X1 \dp/U446  ( .A(n214), .B(\dp/P1_CARDS [0]), .C(n212), .D(
        \dp/P1_CARDS [6]), .Y(\dp/n344 ) );
  NAND2X1 \dp/U445  ( .A(\dp/n343 ), .B(\dp/n344 ), .Y(\dp/N67 ) );
  AOI22X1 \dp/U444  ( .A(n215), .B(\dp/P1_CARDS [13]), .C(n211), .D(
        \dp/P1_CARDS [19]), .Y(\dp/n341 ) );
  AOI22X1 \dp/U443  ( .A(n214), .B(\dp/P1_CARDS [1]), .C(n212), .D(
        \dp/P1_CARDS [7]), .Y(\dp/n342 ) );
  AOI22X1 \dp/U441  ( .A(n215), .B(\dp/P1_CARDS [14]), .C(n211), .D(
        \dp/P1_CARDS [20]), .Y(\dp/n339 ) );
  AOI22X1 \dp/U440  ( .A(n214), .B(\dp/P1_CARDS [2]), .C(n212), .D(
        \dp/P1_CARDS [8]), .Y(\dp/n340 ) );
  NAND2X1 \dp/U439  ( .A(\dp/n339 ), .B(\dp/n340 ), .Y(\dp/N69 ) );
  AOI22X1 \dp/U438  ( .A(n215), .B(\dp/P1_CARDS [15]), .C(n211), .D(
        \dp/P1_CARDS [21]), .Y(\dp/n337 ) );
  AOI22X1 \dp/U437  ( .A(n214), .B(\dp/P1_CARDS [3]), .C(n212), .D(
        \dp/P1_CARDS [9]), .Y(\dp/n338 ) );
  AOI22X1 \dp/U435  ( .A(n215), .B(\dp/P1_CARDS [16]), .C(n211), .D(
        \dp/P1_CARDS [22]), .Y(\dp/n335 ) );
  AOI22X1 \dp/U434  ( .A(n214), .B(\dp/P1_CARDS [4]), .C(n212), .D(
        \dp/P1_CARDS [10]), .Y(\dp/n336 ) );
  NAND2X1 \dp/U433  ( .A(\dp/n335 ), .B(\dp/n336 ), .Y(\dp/N71 ) );
  AOI22X1 \dp/U432  ( .A(n215), .B(\dp/P1_CARDS [17]), .C(n211), .D(
        \dp/P1_CARDS [23]), .Y(\dp/n333 ) );
  AOI22X1 \dp/U431  ( .A(n214), .B(\dp/P1_CARDS [5]), .C(n212), .D(
        \dp/P1_CARDS [11]), .Y(\dp/n334 ) );
  NAND2X1 \dp/U430  ( .A(\dp/n333 ), .B(\dp/n334 ), .Y(\dp/N72 ) );
  OR2X1 \dp/U429  ( .A(winner[1]), .B(winner[0]), .Y(\dp/n332 ) );
  NOR2X1 \dp/U428  ( .A(in_restart), .B(\dp/n332 ), .Y(\dp/n156 ) );
  NAND2X1 \dp/U427  ( .A(out_load), .B(n224), .Y(\dp/n321 ) );
  OAI21X1 \dp/U425  ( .A(n77), .B(n224), .C(n28), .Y(\dp/n453 ) );
  NAND2X1 \dp/U424  ( .A(out_compare_2), .B(n225), .Y(\dp/n329 ) );
  NOR2X1 \dp/U423  ( .A(n77), .B(out_load), .Y(\dp/n168 ) );
  NAND2X1 \dp/U422  ( .A(out_compare_1), .B(n225), .Y(\dp/n331 ) );
  NAND2X1 \dp/U421  ( .A(\dp/n168 ), .B(\dp/n331 ), .Y(\dp/n330 ) );
  NOR2X1 \dp/U420  ( .A(\dp/n329 ), .B(\dp/n330 ), .Y(\dp/n213 ) );
  NAND2X1 \dp/U419  ( .A(n88), .B(\dp/n168 ), .Y(\dp/n205 ) );
  NAND2X1 \dp/U418  ( .A(out_update_1), .B(n225), .Y(\dp/n328 ) );
  NAND3X1 \dp/U417  ( .A(n72), .B(\dp/n329 ), .C(n82), .Y(\dp/n198 ) );
  NAND3X1 \dp/U416  ( .A(n73), .B(\dp/n205 ), .C(\dp/n198 ), .Y(\dp/n322 ) );
  NAND3X1 \dp/U415  ( .A(\dp/n328 ), .B(\dp/n329 ), .C(n72), .Y(\dp/n327 ) );
  NAND2X1 \dp/U414  ( .A(\dp/n326 ), .B(n71), .Y(\dp/n187 ) );
  NOR2X1 \dp/U413  ( .A(\dp/block_state ), .B(\dp/n326 ), .Y(\dp/n325 ) );
  NAND3X1 \dp/U412  ( .A(n71), .B(out_reset_top), .C(\dp/n325 ), .Y(\dp/n283 )
         );
  OAI21X1 \dp/U411  ( .A(n71), .B(n225), .C(\dp/n324 ), .Y(\dp/n323 ) );
  OR2X1 \dp/U410  ( .A(\dp/n322 ), .B(\dp/n323 ), .Y(\dp/n452 ) );
  NAND2X1 \dp/U409  ( .A(P1_decision[0]), .B(\dp/n317 ), .Y(\dp/n320 ) );
  OAI21X1 \dp/U408  ( .A(\dp/n317 ), .B(n213), .C(\dp/n320 ), .Y(\dp/n451 ) );
  NAND2X1 \dp/U407  ( .A(P1_decision[2]), .B(\dp/n317 ), .Y(\dp/n319 ) );
  OAI21X1 \dp/U406  ( .A(\dp/n317 ), .B(n216), .C(\dp/n319 ), .Y(\dp/n450 ) );
  NAND2X1 \dp/U405  ( .A(P1_decision[1]), .B(\dp/n317 ), .Y(\dp/n318 ) );
  OAI21X1 \dp/U404  ( .A(\dp/n317 ), .B(n217), .C(\dp/n318 ), .Y(\dp/n449 ) );
  NOR2X1 \dp/U403  ( .A(n77), .B(n26), .Y(\dp/n193 ) );
  OAI21X1 \dp/U402  ( .A(\dp/n198 ), .B(\dp/n316 ), .C(\dp/n193 ), .Y(
        \dp/n309 ) );
  NAND2X1 \dp/U401  ( .A(P1_cards[0]), .B(n26), .Y(\dp/n315 ) );
  OAI21X1 \dp/U400  ( .A(n199), .B(\dp/n309 ), .C(\dp/n315 ), .Y(\dp/n448 ) );
  NAND2X1 \dp/U399  ( .A(P1_cards[5]), .B(n26), .Y(\dp/n314 ) );
  OAI21X1 \dp/U398  ( .A(n200), .B(\dp/n309 ), .C(\dp/n314 ), .Y(\dp/n447 ) );
  NAND2X1 \dp/U397  ( .A(P1_cards[4]), .B(n27), .Y(\dp/n313 ) );
  OAI21X1 \dp/U396  ( .A(n201), .B(\dp/n309 ), .C(\dp/n313 ), .Y(\dp/n446 ) );
  NAND2X1 \dp/U395  ( .A(P1_cards[3]), .B(n26), .Y(\dp/n312 ) );
  OAI21X1 \dp/U394  ( .A(n202), .B(\dp/n309 ), .C(\dp/n312 ), .Y(\dp/n445 ) );
  NAND2X1 \dp/U393  ( .A(P1_cards[2]), .B(n27), .Y(\dp/n311 ) );
  OAI21X1 \dp/U392  ( .A(n203), .B(\dp/n309 ), .C(\dp/n311 ), .Y(\dp/n444 ) );
  NAND2X1 \dp/U391  ( .A(P1_cards[1]), .B(n26), .Y(\dp/n310 ) );
  OAI21X1 \dp/U390  ( .A(n204), .B(\dp/n309 ), .C(\dp/n310 ), .Y(\dp/n443 ) );
  OAI21X1 \dp/U389  ( .A(\dp/n198 ), .B(\dp/n308 ), .C(\dp/n193 ), .Y(
        \dp/n301 ) );
  NAND2X1 \dp/U388  ( .A(P1_cards[6]), .B(n27), .Y(\dp/n307 ) );
  OAI21X1 \dp/U387  ( .A(n183), .B(\dp/n301 ), .C(\dp/n307 ), .Y(\dp/n442 ) );
  NAND2X1 \dp/U386  ( .A(P1_cards[11]), .B(n26), .Y(\dp/n306 ) );
  OAI21X1 \dp/U385  ( .A(n185), .B(\dp/n301 ), .C(\dp/n306 ), .Y(\dp/n441 ) );
  NAND2X1 \dp/U384  ( .A(P1_cards[10]), .B(n27), .Y(\dp/n305 ) );
  OAI21X1 \dp/U383  ( .A(n187), .B(\dp/n301 ), .C(\dp/n305 ), .Y(\dp/n440 ) );
  NAND2X1 \dp/U382  ( .A(P1_cards[9]), .B(n26), .Y(\dp/n304 ) );
  OAI21X1 \dp/U381  ( .A(n189), .B(\dp/n301 ), .C(\dp/n304 ), .Y(\dp/n439 ) );
  NAND2X1 \dp/U380  ( .A(P1_cards[8]), .B(n27), .Y(\dp/n303 ) );
  OAI21X1 \dp/U379  ( .A(n190), .B(\dp/n301 ), .C(\dp/n303 ), .Y(\dp/n438 ) );
  NAND2X1 \dp/U378  ( .A(P1_cards[7]), .B(n26), .Y(\dp/n302 ) );
  OAI21X1 \dp/U377  ( .A(n192), .B(\dp/n301 ), .C(\dp/n302 ), .Y(\dp/n437 ) );
  OAI21X1 \dp/U376  ( .A(\dp/n198 ), .B(\dp/n300 ), .C(\dp/n193 ), .Y(
        \dp/n293 ) );
  NAND2X1 \dp/U375  ( .A(P1_cards[12]), .B(n27), .Y(\dp/n299 ) );
  OAI21X1 \dp/U374  ( .A(n205), .B(\dp/n293 ), .C(\dp/n299 ), .Y(\dp/n436 ) );
  NAND2X1 \dp/U373  ( .A(P1_cards[17]), .B(n26), .Y(\dp/n298 ) );
  OAI21X1 \dp/U372  ( .A(n206), .B(\dp/n293 ), .C(\dp/n298 ), .Y(\dp/n435 ) );
  NAND2X1 \dp/U371  ( .A(P1_cards[16]), .B(n27), .Y(\dp/n297 ) );
  OAI21X1 \dp/U370  ( .A(n207), .B(\dp/n293 ), .C(\dp/n297 ), .Y(\dp/n434 ) );
  NAND2X1 \dp/U369  ( .A(P1_cards[15]), .B(n26), .Y(\dp/n296 ) );
  OAI21X1 \dp/U368  ( .A(n208), .B(\dp/n293 ), .C(\dp/n296 ), .Y(\dp/n433 ) );
  NAND2X1 \dp/U367  ( .A(P1_cards[14]), .B(n27), .Y(\dp/n295 ) );
  OAI21X1 \dp/U366  ( .A(n209), .B(\dp/n293 ), .C(\dp/n295 ), .Y(\dp/n432 ) );
  NAND2X1 \dp/U365  ( .A(P1_cards[13]), .B(n26), .Y(\dp/n294 ) );
  OAI21X1 \dp/U364  ( .A(n210), .B(\dp/n293 ), .C(\dp/n294 ), .Y(\dp/n431 ) );
  OAI21X1 \dp/U363  ( .A(\dp/n198 ), .B(\dp/n292 ), .C(\dp/n193 ), .Y(
        \dp/n285 ) );
  NAND2X1 \dp/U362  ( .A(P1_cards[18]), .B(n27), .Y(\dp/n291 ) );
  OAI21X1 \dp/U361  ( .A(n193), .B(\dp/n285 ), .C(\dp/n291 ), .Y(\dp/n430 ) );
  NAND2X1 \dp/U360  ( .A(P1_cards[23]), .B(n27), .Y(\dp/n290 ) );
  OAI21X1 \dp/U359  ( .A(n194), .B(\dp/n285 ), .C(\dp/n290 ), .Y(\dp/n429 ) );
  NAND2X1 \dp/U358  ( .A(P1_cards[22]), .B(n27), .Y(\dp/n289 ) );
  OAI21X1 \dp/U357  ( .A(n195), .B(\dp/n285 ), .C(\dp/n289 ), .Y(\dp/n428 ) );
  NAND2X1 \dp/U356  ( .A(P1_cards[21]), .B(n27), .Y(\dp/n288 ) );
  OAI21X1 \dp/U355  ( .A(n196), .B(\dp/n285 ), .C(\dp/n288 ), .Y(\dp/n427 ) );
  NAND2X1 \dp/U354  ( .A(P1_cards[20]), .B(n27), .Y(\dp/n287 ) );
  OAI21X1 \dp/U353  ( .A(n197), .B(\dp/n285 ), .C(\dp/n287 ), .Y(\dp/n426 ) );
  NAND2X1 \dp/U352  ( .A(P1_cards[19]), .B(n27), .Y(\dp/n286 ) );
  OAI21X1 \dp/U351  ( .A(n198), .B(\dp/n285 ), .C(\dp/n286 ), .Y(\dp/n425 ) );
  OAI21X1 \dp/U350  ( .A(\dp/N90 ), .B(n129), .C(\dp/N87 ), .Y(\dp/n284 ) );
  NAND2X1 \dp/U349  ( .A(\dp/N85 ), .B(\dp/n284 ), .Y(\dp/n275 ) );
  NAND2X1 \dp/U348  ( .A(\dp/N90 ), .B(\dp/N89 ), .Y(\dp/n273 ) );
  NAND3X1 \dp/U347  ( .A(\dp/N85 ), .B(\dp/n273 ), .C(\dp/N87 ), .Y(\dp/n274 )
         );
  NAND2X1 \dp/U346  ( .A(\dp/n275 ), .B(\dp/n274 ), .Y(\dp/n217 ) );
  NOR2X1 \dp/U345  ( .A(\dp/n217 ), .B(n134), .Y(\dp/n203 ) );
  OAI21X1 \dp/U344  ( .A(\dp/n203 ), .B(n73), .C(\dp/n283 ), .Y(\dp/n281 ) );
  OAI21X1 \dp/U343  ( .A(\dp/n205 ), .B(n137), .C(\dp/n156 ), .Y(\dp/n282 ) );
  NAND2X1 \dp/U341  ( .A(n126), .B(\dp/n274 ), .Y(\dp/n216 ) );
  OAI22X1 \dp/U340  ( .A(\dp/n216 ), .B(n163), .C(\dp/n217 ), .D(n175), .Y(
        \dp/n279 ) );
  NAND2X1 \dp/U339  ( .A(n125), .B(n126), .Y(\dp/n214 ) );
  NAND2X1 \dp/U338  ( .A(n125), .B(\dp/n275 ), .Y(\dp/n215 ) );
  OAI22X1 \dp/U337  ( .A(\dp/n214 ), .B(n147), .C(\dp/n215 ), .D(n155), .Y(
        \dp/n280 ) );
  OAI21X1 \dp/U336  ( .A(\dp/n279 ), .B(\dp/n280 ), .C(n11), .Y(\dp/n278 ) );
  OAI21X1 \dp/U335  ( .A(n186), .B(\dp/n205 ), .C(\dp/n278 ), .Y(\dp/n277 ) );
  NAND2X1 \dp/U334  ( .A(\dp/n277 ), .B(\dp/n207 ), .Y(\dp/n276 ) );
  OAI21X1 \dp/U333  ( .A(n182), .B(\dp/n207 ), .C(\dp/n276 ), .Y(\dp/n424 ) );
  OAI22X1 \dp/U332  ( .A(n11), .B(n171), .C(n73), .D(\dp/n275 ), .Y(\dp/n423 )
         );
  OAI22X1 \dp/U331  ( .A(n11), .B(n168), .C(n73), .D(\dp/n274 ), .Y(\dp/n422 )
         );
  NAND3X1 \dp/U330  ( .A(n124), .B(n11), .C(\dp/n272 ), .Y(\dp/n271 ) );
  OAI21X1 \dp/U329  ( .A(n11), .B(n180), .C(\dp/n271 ), .Y(\dp/n421 ) );
  NOR2X1 \dp/U328  ( .A(\dp/n187 ), .B(\dp/count [2]), .Y(\dp/n246 ) );
  NAND2X1 \dp/U327  ( .A(n171), .B(n168), .Y(\dp/n270 ) );
  OAI21X1 \dp/U326  ( .A(n70), .B(\dp/n270 ), .C(\dp/n193 ), .Y(\dp/n263 ) );
  NAND2X1 \dp/U325  ( .A(P2_cards[0]), .B(n27), .Y(\dp/n269 ) );
  OAI21X1 \dp/U324  ( .A(n173), .B(\dp/n263 ), .C(\dp/n269 ), .Y(\dp/n420 ) );
  NAND2X1 \dp/U323  ( .A(P2_cards[5]), .B(n27), .Y(\dp/n268 ) );
  OAI21X1 \dp/U322  ( .A(\dp/n263 ), .B(n175), .C(\dp/n268 ), .Y(\dp/n419 ) );
  NAND2X1 \dp/U321  ( .A(P2_cards[4]), .B(n27), .Y(\dp/n267 ) );
  OAI21X1 \dp/U320  ( .A(n176), .B(\dp/n263 ), .C(\dp/n267 ), .Y(\dp/n418 ) );
  NAND2X1 \dp/U319  ( .A(P2_cards[3]), .B(n27), .Y(\dp/n266 ) );
  OAI21X1 \dp/U318  ( .A(n177), .B(\dp/n263 ), .C(\dp/n266 ), .Y(\dp/n417 ) );
  NAND2X1 \dp/U317  ( .A(P2_cards[2]), .B(n27), .Y(\dp/n265 ) );
  OAI21X1 \dp/U316  ( .A(n178), .B(\dp/n263 ), .C(\dp/n265 ), .Y(\dp/n416 ) );
  NAND2X1 \dp/U315  ( .A(P2_cards[1]), .B(n27), .Y(\dp/n264 ) );
  OAI21X1 \dp/U314  ( .A(n179), .B(\dp/n263 ), .C(\dp/n264 ), .Y(\dp/n415 ) );
  NAND2X1 \dp/U313  ( .A(\dp/n246 ), .B(n168), .Y(\dp/n262 ) );
  OAI21X1 \dp/U312  ( .A(n171), .B(\dp/n262 ), .C(\dp/n193 ), .Y(\dp/n255 ) );
  NAND2X1 \dp/U311  ( .A(P2_cards[6]), .B(n27), .Y(\dp/n261 ) );
  OAI21X1 \dp/U310  ( .A(n161), .B(\dp/n255 ), .C(\dp/n261 ), .Y(\dp/n414 ) );
  NAND2X1 \dp/U309  ( .A(P2_cards[11]), .B(n27), .Y(\dp/n260 ) );
  OAI21X1 \dp/U308  ( .A(\dp/n255 ), .B(n163), .C(\dp/n260 ), .Y(\dp/n413 ) );
  NAND2X1 \dp/U307  ( .A(P2_cards[10]), .B(n27), .Y(\dp/n259 ) );
  OAI21X1 \dp/U306  ( .A(n164), .B(\dp/n255 ), .C(\dp/n259 ), .Y(\dp/n412 ) );
  NAND2X1 \dp/U305  ( .A(P2_cards[9]), .B(n27), .Y(\dp/n258 ) );
  OAI21X1 \dp/U304  ( .A(n165), .B(\dp/n255 ), .C(\dp/n258 ), .Y(\dp/n411 ) );
  NAND2X1 \dp/U303  ( .A(P2_cards[8]), .B(n27), .Y(\dp/n257 ) );
  OAI21X1 \dp/U302  ( .A(n166), .B(\dp/n255 ), .C(\dp/n257 ), .Y(\dp/n410 ) );
  NAND2X1 \dp/U301  ( .A(P2_cards[7]), .B(n27), .Y(\dp/n256 ) );
  OAI21X1 \dp/U300  ( .A(n167), .B(\dp/n255 ), .C(\dp/n256 ), .Y(\dp/n409 ) );
  NAND2X1 \dp/U299  ( .A(\dp/n246 ), .B(n171), .Y(\dp/n254 ) );
  OAI21X1 \dp/U298  ( .A(n168), .B(\dp/n254 ), .C(\dp/n193 ), .Y(\dp/n247 ) );
  NAND2X1 \dp/U297  ( .A(P2_cards[12]), .B(n27), .Y(\dp/n253 ) );
  OAI21X1 \dp/U296  ( .A(n153), .B(\dp/n247 ), .C(\dp/n253 ), .Y(\dp/n408 ) );
  NAND2X1 \dp/U295  ( .A(P2_cards[17]), .B(n26), .Y(\dp/n252 ) );
  OAI21X1 \dp/U294  ( .A(\dp/n247 ), .B(n155), .C(\dp/n252 ), .Y(\dp/n407 ) );
  NAND2X1 \dp/U293  ( .A(P2_cards[16]), .B(n26), .Y(\dp/n251 ) );
  OAI21X1 \dp/U292  ( .A(n156), .B(\dp/n247 ), .C(\dp/n251 ), .Y(\dp/n406 ) );
  NAND2X1 \dp/U291  ( .A(P2_cards[15]), .B(n27), .Y(\dp/n250 ) );
  OAI21X1 \dp/U290  ( .A(n157), .B(\dp/n247 ), .C(\dp/n250 ), .Y(\dp/n405 ) );
  NAND2X1 \dp/U289  ( .A(P2_cards[14]), .B(n26), .Y(\dp/n249 ) );
  OAI21X1 \dp/U288  ( .A(n158), .B(\dp/n247 ), .C(\dp/n249 ), .Y(\dp/n404 ) );
  NAND2X1 \dp/U287  ( .A(P2_cards[13]), .B(n26), .Y(\dp/n248 ) );
  OAI21X1 \dp/U286  ( .A(n159), .B(\dp/n247 ), .C(\dp/n248 ), .Y(\dp/n403 ) );
  NAND2X1 \dp/U285  ( .A(\dp/count [0]), .B(\dp/n246 ), .Y(\dp/n245 ) );
  OAI21X1 \dp/U284  ( .A(n168), .B(\dp/n245 ), .C(\dp/n193 ), .Y(\dp/n238 ) );
  NAND2X1 \dp/U283  ( .A(P2_cards[18]), .B(n26), .Y(\dp/n244 ) );
  OAI21X1 \dp/U282  ( .A(n145), .B(\dp/n238 ), .C(\dp/n244 ), .Y(\dp/n402 ) );
  NAND2X1 \dp/U281  ( .A(P2_cards[23]), .B(n26), .Y(\dp/n243 ) );
  OAI21X1 \dp/U280  ( .A(\dp/n238 ), .B(n147), .C(\dp/n243 ), .Y(\dp/n401 ) );
  NAND2X1 \dp/U279  ( .A(P2_cards[22]), .B(n26), .Y(\dp/n242 ) );
  OAI21X1 \dp/U278  ( .A(n148), .B(\dp/n238 ), .C(\dp/n242 ), .Y(\dp/n400 ) );
  NAND2X1 \dp/U277  ( .A(P2_cards[21]), .B(n26), .Y(\dp/n241 ) );
  OAI21X1 \dp/U276  ( .A(n149), .B(\dp/n238 ), .C(\dp/n241 ), .Y(\dp/n399 ) );
  NAND2X1 \dp/U275  ( .A(P2_cards[20]), .B(n26), .Y(\dp/n240 ) );
  OAI21X1 \dp/U274  ( .A(n150), .B(\dp/n238 ), .C(\dp/n240 ), .Y(\dp/n398 ) );
  NAND2X1 \dp/U273  ( .A(P2_cards[19]), .B(n26), .Y(\dp/n239 ) );
  OAI21X1 \dp/U272  ( .A(n151), .B(\dp/n238 ), .C(\dp/n239 ), .Y(\dp/n397 ) );
  OAI22X1 \dp/U271  ( .A(\dp/n216 ), .B(n161), .C(\dp/n217 ), .D(n173), .Y(
        \dp/n236 ) );
  OAI22X1 \dp/U270  ( .A(\dp/n214 ), .B(n145), .C(\dp/n215 ), .D(n153), .Y(
        \dp/n237 ) );
  OAI21X1 \dp/U269  ( .A(\dp/n236 ), .B(\dp/n237 ), .C(n11), .Y(\dp/n235 ) );
  OAI21X1 \dp/U268  ( .A(n184), .B(\dp/n205 ), .C(\dp/n235 ), .Y(\dp/n234 ) );
  NAND2X1 \dp/U267  ( .A(\dp/n234 ), .B(\dp/n207 ), .Y(\dp/n233 ) );
  OAI21X1 \dp/U266  ( .A(n172), .B(\dp/n207 ), .C(\dp/n233 ), .Y(\dp/n396 ) );
  OAI22X1 \dp/U265  ( .A(\dp/n216 ), .B(n167), .C(\dp/n217 ), .D(n179), .Y(
        \dp/n231 ) );
  OAI22X1 \dp/U264  ( .A(\dp/n214 ), .B(n151), .C(\dp/n215 ), .D(n159), .Y(
        \dp/n232 ) );
  OAI21X1 \dp/U263  ( .A(\dp/n231 ), .B(\dp/n232 ), .C(n11), .Y(\dp/n230 ) );
  OAI21X1 \dp/U262  ( .A(n2), .B(\dp/n205 ), .C(\dp/n230 ), .Y(\dp/n229 ) );
  NAND2X1 \dp/U261  ( .A(\dp/n229 ), .B(\dp/n207 ), .Y(\dp/n228 ) );
  OAI21X1 \dp/U260  ( .A(n170), .B(\dp/n207 ), .C(\dp/n228 ), .Y(\dp/n395 ) );
  OAI22X1 \dp/U259  ( .A(\dp/n216 ), .B(n166), .C(\dp/n217 ), .D(n178), .Y(
        \dp/n226 ) );
  OAI22X1 \dp/U258  ( .A(\dp/n214 ), .B(n150), .C(\dp/n215 ), .D(n158), .Y(
        \dp/n227 ) );
  OAI21X1 \dp/U257  ( .A(\dp/n226 ), .B(\dp/n227 ), .C(n11), .Y(\dp/n225 ) );
  OAI21X1 \dp/U256  ( .A(n191), .B(\dp/n205 ), .C(\dp/n225 ), .Y(\dp/n224 ) );
  NAND2X1 \dp/U255  ( .A(\dp/n224 ), .B(\dp/n207 ), .Y(\dp/n223 ) );
  OAI21X1 \dp/U254  ( .A(n143), .B(\dp/n207 ), .C(\dp/n223 ), .Y(\dp/n394 ) );
  OAI22X1 \dp/U253  ( .A(\dp/n216 ), .B(n165), .C(\dp/n217 ), .D(n177), .Y(
        \dp/n221 ) );
  OAI22X1 \dp/U252  ( .A(\dp/n214 ), .B(n149), .C(\dp/n215 ), .D(n157), .Y(
        \dp/n222 ) );
  OAI21X1 \dp/U251  ( .A(\dp/n221 ), .B(\dp/n222 ), .C(n11), .Y(\dp/n220 ) );
  OAI21X1 \dp/U250  ( .A(n4), .B(\dp/n205 ), .C(\dp/n220 ), .Y(\dp/n219 ) );
  NAND2X1 \dp/U249  ( .A(\dp/n219 ), .B(\dp/n207 ), .Y(\dp/n218 ) );
  OAI21X1 \dp/U248  ( .A(n140), .B(\dp/n207 ), .C(\dp/n218 ), .Y(\dp/n393 ) );
  OAI22X1 \dp/U247  ( .A(\dp/n216 ), .B(n164), .C(\dp/n217 ), .D(n176), .Y(
        \dp/n211 ) );
  OAI22X1 \dp/U246  ( .A(\dp/n214 ), .B(n148), .C(\dp/n215 ), .D(n156), .Y(
        \dp/n212 ) );
  OAI21X1 \dp/U245  ( .A(\dp/n211 ), .B(\dp/n212 ), .C(n11), .Y(\dp/n210 ) );
  OAI21X1 \dp/U244  ( .A(n188), .B(\dp/n205 ), .C(\dp/n210 ), .Y(\dp/n209 ) );
  NAND2X1 \dp/U243  ( .A(\dp/n209 ), .B(\dp/n207 ), .Y(\dp/n208 ) );
  OAI21X1 \dp/U242  ( .A(n141), .B(\dp/n207 ), .C(\dp/n208 ), .Y(\dp/n392 ) );
  NAND3X1 \dp/U241  ( .A(\dp/n156 ), .B(\dp/n205 ), .C(\dp/temp_larger ), .Y(
        \dp/n206 ) );
  OAI21X1 \dp/U240  ( .A(\dp/n205 ), .B(n137), .C(\dp/n206 ), .Y(\dp/n391 ) );
  NAND3X1 \dp/U239  ( .A(\dp/n156 ), .B(n73), .C(\dp/p2_put_temp ), .Y(
        \dp/n204 ) );
  OAI21X1 \dp/U238  ( .A(\dp/n203 ), .B(n73), .C(\dp/n204 ), .Y(\dp/n390 ) );
  NAND2X1 \dp/U237  ( .A(\dp/n193 ), .B(\dp/n198 ), .Y(\dp/n201 ) );
  NOR2X1 \dp/U236  ( .A(\dp/n198 ), .B(\dp/P1_NUM [0]), .Y(\dp/n196 ) );
  AOI21X1 \dp/U235  ( .A(num_cards[0]), .B(n26), .C(\dp/n196 ), .Y(\dp/n202 )
         );
  OAI21X1 \dp/U234  ( .A(n221), .B(\dp/n201 ), .C(\dp/n202 ), .Y(\dp/n389 ) );
  OAI21X1 \dp/U233  ( .A(n221), .B(\dp/n198 ), .C(\dp/n201 ), .Y(\dp/n200 ) );
  AOI22X1 \dp/U232  ( .A(num_cards[1]), .B(n26), .C(\dp/n196 ), .D(n220), .Y(
        \dp/n199 ) );
  OAI21X1 \dp/U231  ( .A(n68), .B(n220), .C(\dp/n199 ), .Y(\dp/n388 ) );
  NOR2X1 \dp/U230  ( .A(\dp/P1_NUM [2]), .B(\dp/P1_NUM [1]), .Y(\dp/n195 ) );
  OAI21X1 \dp/U229  ( .A(n220), .B(\dp/n198 ), .C(n68), .Y(\dp/n197 ) );
  AOI22X1 \dp/U228  ( .A(\dp/n195 ), .B(\dp/n196 ), .C(\dp/P1_NUM [2]), .D(
        \dp/n197 ), .Y(\dp/n194 ) );
  OAI21X1 \dp/U227  ( .A(n28), .B(n79), .C(\dp/n194 ), .Y(\dp/n387 ) );
  NAND2X1 \dp/U226  ( .A(\dp/n193 ), .B(\dp/n187 ), .Y(\dp/n191 ) );
  NOR2X1 \dp/U225  ( .A(\dp/n187 ), .B(\dp/P2_NUM [0]), .Y(\dp/n185 ) );
  AOI21X1 \dp/U224  ( .A(num_cards[0]), .B(n26), .C(\dp/n185 ), .Y(\dp/n192 )
         );
  OAI21X1 \dp/U223  ( .A(n223), .B(\dp/n191 ), .C(\dp/n192 ), .Y(\dp/n386 ) );
  OAI21X1 \dp/U222  ( .A(n223), .B(\dp/n187 ), .C(\dp/n191 ), .Y(\dp/n190 ) );
  AOI22X1 \dp/U221  ( .A(num_cards[1]), .B(n26), .C(\dp/n185 ), .D(n222), .Y(
        \dp/n188 ) );
  OAI21X1 \dp/U220  ( .A(n69), .B(n222), .C(\dp/n188 ), .Y(\dp/n385 ) );
  NOR2X1 \dp/U219  ( .A(\dp/P2_NUM [2]), .B(\dp/P2_NUM [1]), .Y(\dp/n184 ) );
  OAI21X1 \dp/U218  ( .A(n222), .B(\dp/n187 ), .C(n69), .Y(\dp/n186 ) );
  AOI22X1 \dp/U217  ( .A(\dp/n184 ), .B(\dp/n185 ), .C(\dp/P2_NUM [2]), .D(
        \dp/n186 ), .Y(\dp/n183 ) );
  OAI21X1 \dp/U216  ( .A(n28), .B(n79), .C(\dp/n183 ), .Y(\dp/n384 ) );
  NAND2X1 \dp/U215  ( .A(\dp/block_state ), .B(out_compare_1), .Y(\dp/n180 )
         );
  NAND2X1 \dp/U214  ( .A(out_compare_2), .B(\dp/block_state ), .Y(\dp/n179 )
         );
  NAND3X1 \dp/U213  ( .A(\dp/n168 ), .B(\dp/n180 ), .C(n86), .Y(\dp/n148 ) );
  NAND3X1 \dp/U212  ( .A(\dp/n156 ), .B(\dp/n148 ), .C(out_P2_put), .Y(
        \dp/n182 ) );
  OAI21X1 \dp/U211  ( .A(\dp/n148 ), .B(n142), .C(\dp/n182 ), .Y(\dp/n383 ) );
  NAND2X1 \dp/U210  ( .A(n89), .B(\dp/n168 ), .Y(\dp/n147 ) );
  NAND3X1 \dp/U209  ( .A(\dp/n156 ), .B(\dp/n147 ), .C(out_is_larger), .Y(
        \dp/n181 ) );
  OAI21X1 \dp/U208  ( .A(\dp/n147 ), .B(n123), .C(\dp/n181 ), .Y(\dp/n382 ) );
  NAND2X1 \dp/U207  ( .A(out_update_1), .B(\dp/block_state ), .Y(\dp/n170 ) );
  NAND3X1 \dp/U206  ( .A(\dp/n179 ), .B(\dp/n180 ), .C(\dp/n170 ), .Y(
        \dp/n178 ) );
  NAND3X1 \dp/U205  ( .A(\dp/n168 ), .B(\dp/block_state ), .C(\dp/n177 ), .Y(
        \dp/n176 ) );
  NOR2X1 \dp/U204  ( .A(\dp/n157 ), .B(n75), .Y(\dp/n171 ) );
  NAND2X1 \dp/U203  ( .A(P2_num_cards[2]), .B(\dp/n173 ), .Y(\dp/n175 ) );
  OAI21X1 \dp/U202  ( .A(\dp/n171 ), .B(n218), .C(\dp/n175 ), .Y(\dp/n381 ) );
  NAND2X1 \dp/U201  ( .A(P2_num_cards[1]), .B(\dp/n173 ), .Y(\dp/n174 ) );
  OAI21X1 \dp/U200  ( .A(\dp/n171 ), .B(n222), .C(\dp/n174 ), .Y(\dp/n380 ) );
  NAND2X1 \dp/U199  ( .A(P2_num_cards[0]), .B(\dp/n173 ), .Y(\dp/n172 ) );
  OAI21X1 \dp/U198  ( .A(\dp/n171 ), .B(n223), .C(\dp/n172 ), .Y(\dp/n379 ) );
  NAND2X1 \dp/U197  ( .A(\dp/n168 ), .B(\dp/block_state ), .Y(\dp/n164 ) );
  NAND2X1 \dp/U196  ( .A(out_reset_top), .B(n84), .Y(\dp/n165 ) );
  NOR2X1 \dp/U195  ( .A(n89), .B(n86), .Y(\dp/n169 ) );
  NAND3X1 \dp/U194  ( .A(n83), .B(\dp/n168 ), .C(\dp/n169 ), .Y(\dp/n167 ) );
  NOR2X1 \dp/U193  ( .A(n76), .B(n75), .Y(\dp/n166 ) );
  OAI21X1 \dp/U192  ( .A(\dp/n164 ), .B(\dp/n165 ), .C(\dp/n166 ), .Y(
        \dp/n151 ) );
  NOR2X1 \dp/U191  ( .A(\dp/n151 ), .B(n77), .Y(\dp/n152 ) );
  NAND2X1 \dp/U190  ( .A(max_card[5]), .B(\dp/n152 ), .Y(\dp/n163 ) );
  OAI21X1 \dp/U189  ( .A(n74), .B(n182), .C(\dp/n163 ), .Y(\dp/n378 ) );
  NAND2X1 \dp/U188  ( .A(max_card[4]), .B(\dp/n152 ), .Y(\dp/n162 ) );
  OAI21X1 \dp/U187  ( .A(n74), .B(n141), .C(\dp/n162 ), .Y(\dp/n377 ) );
  NAND2X1 \dp/U186  ( .A(max_card[3]), .B(\dp/n152 ), .Y(\dp/n161 ) );
  OAI21X1 \dp/U185  ( .A(n74), .B(n140), .C(\dp/n161 ), .Y(\dp/n376 ) );
  NAND2X1 \dp/U184  ( .A(max_card[2]), .B(\dp/n152 ), .Y(\dp/n160 ) );
  OAI21X1 \dp/U183  ( .A(n74), .B(n143), .C(\dp/n160 ), .Y(\dp/n375 ) );
  NAND2X1 \dp/U182  ( .A(max_card[1]), .B(\dp/n152 ), .Y(\dp/n159 ) );
  OAI21X1 \dp/U181  ( .A(n74), .B(n170), .C(\dp/n159 ), .Y(\dp/n374 ) );
  NAND2X1 \dp/U180  ( .A(max_card[0]), .B(\dp/n152 ), .Y(\dp/n158 ) );
  OAI21X1 \dp/U179  ( .A(n74), .B(n172), .C(\dp/n158 ), .Y(\dp/n373 ) );
  NAND2X1 \dp/U177  ( .A(P1_num_cards[2]), .B(n1), .Y(\dp/n155 ) );
  OAI21X1 \dp/U176  ( .A(n25), .B(n219), .C(\dp/n155 ), .Y(\dp/n372 ) );
  NAND2X1 \dp/U175  ( .A(P1_num_cards[1]), .B(n1), .Y(\dp/n154 ) );
  OAI21X1 \dp/U174  ( .A(n25), .B(n220), .C(\dp/n154 ), .Y(\dp/n371 ) );
  NAND2X1 \dp/U173  ( .A(P1_num_cards[0]), .B(n1), .Y(\dp/n153 ) );
  OAI21X1 \dp/U172  ( .A(n25), .B(n221), .C(\dp/n153 ), .Y(\dp/n370 ) );
  AOI21X1 \dp/U171  ( .A(\dp/n150 ), .B(out_done), .C(\dp/n151 ), .Y(\dp/n149 ) );
  NAND3X1 \dp/U170  ( .A(\dp/n147 ), .B(\dp/n148 ), .C(\dp/n149 ), .Y(
        \dp/n369 ) );
  NAND2X1 \dp/U169  ( .A(P1_out[23]), .B(n1), .Y(\dp/n146 ) );
  OAI21X1 \dp/U168  ( .A(n25), .B(n194), .C(\dp/n146 ), .Y(\dp/n368 ) );
  NAND2X1 \dp/U167  ( .A(P1_out[22]), .B(n1), .Y(\dp/n145 ) );
  OAI21X1 \dp/U166  ( .A(n25), .B(n195), .C(\dp/n145 ), .Y(\dp/n367 ) );
  NAND2X1 \dp/U165  ( .A(P1_out[21]), .B(n1), .Y(\dp/n144 ) );
  OAI21X1 \dp/U164  ( .A(n25), .B(n196), .C(\dp/n144 ), .Y(\dp/n366 ) );
  NAND2X1 \dp/U163  ( .A(P1_out[20]), .B(n1), .Y(\dp/n143 ) );
  OAI21X1 \dp/U162  ( .A(n25), .B(n197), .C(\dp/n143 ), .Y(\dp/n365 ) );
  NAND2X1 \dp/U161  ( .A(P1_out[19]), .B(n1), .Y(\dp/n142 ) );
  OAI21X1 \dp/U160  ( .A(n25), .B(n198), .C(\dp/n142 ), .Y(\dp/n364 ) );
  NAND2X1 \dp/U159  ( .A(P1_out[18]), .B(n1), .Y(\dp/n141 ) );
  OAI21X1 \dp/U158  ( .A(n25), .B(n193), .C(\dp/n141 ), .Y(\dp/n363 ) );
  NAND2X1 \dp/U157  ( .A(P1_out[17]), .B(n1), .Y(\dp/n140 ) );
  OAI21X1 \dp/U156  ( .A(n25), .B(n206), .C(\dp/n140 ), .Y(\dp/n362 ) );
  NAND2X1 \dp/U155  ( .A(P1_out[16]), .B(n1), .Y(\dp/n139 ) );
  OAI21X1 \dp/U154  ( .A(n25), .B(n207), .C(\dp/n139 ), .Y(\dp/n361 ) );
  NAND2X1 \dp/U153  ( .A(P1_out[15]), .B(n1), .Y(\dp/n138 ) );
  OAI21X1 \dp/U152  ( .A(n25), .B(n208), .C(\dp/n138 ), .Y(\dp/n360 ) );
  NAND2X1 \dp/U151  ( .A(P1_out[14]), .B(n1), .Y(\dp/n137 ) );
  OAI21X1 \dp/U150  ( .A(n25), .B(n209), .C(\dp/n137 ), .Y(\dp/n359 ) );
  NAND2X1 \dp/U149  ( .A(P1_out[13]), .B(n1), .Y(\dp/n136 ) );
  OAI21X1 \dp/U148  ( .A(n25), .B(n210), .C(\dp/n136 ), .Y(\dp/n358 ) );
  NAND2X1 \dp/U147  ( .A(P1_out[12]), .B(n1), .Y(\dp/n135 ) );
  OAI21X1 \dp/U146  ( .A(n25), .B(n205), .C(\dp/n135 ), .Y(\dp/n357 ) );
  NAND2X1 \dp/U145  ( .A(P1_out[11]), .B(n1), .Y(\dp/n134 ) );
  OAI21X1 \dp/U144  ( .A(n25), .B(n185), .C(\dp/n134 ), .Y(\dp/n356 ) );
  NAND2X1 \dp/U143  ( .A(P1_out[10]), .B(n1), .Y(\dp/n133 ) );
  OAI21X1 \dp/U142  ( .A(n25), .B(n187), .C(\dp/n133 ), .Y(\dp/n355 ) );
  NAND2X1 \dp/U141  ( .A(P1_out[9]), .B(n1), .Y(\dp/n132 ) );
  OAI21X1 \dp/U140  ( .A(n25), .B(n189), .C(\dp/n132 ), .Y(\dp/n354 ) );
  NAND2X1 \dp/U139  ( .A(P1_out[8]), .B(n1), .Y(\dp/n131 ) );
  OAI21X1 \dp/U138  ( .A(n25), .B(n190), .C(\dp/n131 ), .Y(\dp/n353 ) );
  NAND2X1 \dp/U137  ( .A(P1_out[7]), .B(n1), .Y(\dp/n130 ) );
  OAI21X1 \dp/U136  ( .A(n25), .B(n192), .C(\dp/n130 ), .Y(\dp/n352 ) );
  NAND2X1 \dp/U135  ( .A(P1_out[6]), .B(n1), .Y(\dp/n129 ) );
  OAI21X1 \dp/U134  ( .A(n25), .B(n183), .C(\dp/n129 ), .Y(\dp/n351 ) );
  NAND2X1 \dp/U133  ( .A(P1_out[5]), .B(n1), .Y(\dp/n128 ) );
  OAI21X1 \dp/U132  ( .A(n25), .B(n200), .C(\dp/n128 ), .Y(\dp/n350 ) );
  NAND2X1 \dp/U131  ( .A(P1_out[4]), .B(n1), .Y(\dp/n127 ) );
  OAI21X1 \dp/U130  ( .A(n25), .B(n201), .C(\dp/n127 ), .Y(\dp/n349 ) );
  NAND2X1 \dp/U129  ( .A(P1_out[3]), .B(n1), .Y(\dp/n126 ) );
  OAI21X1 \dp/U128  ( .A(n25), .B(n202), .C(\dp/n126 ), .Y(\dp/n348 ) );
  NAND2X1 \dp/U127  ( .A(P1_out[2]), .B(n1), .Y(\dp/n125 ) );
  OAI21X1 \dp/U126  ( .A(n25), .B(n203), .C(\dp/n125 ), .Y(\dp/n347 ) );
  NAND2X1 \dp/U125  ( .A(P1_out[1]), .B(n1), .Y(\dp/n124 ) );
  OAI21X1 \dp/U124  ( .A(n25), .B(n204), .C(\dp/n124 ), .Y(\dp/n346 ) );
  NAND2X1 \dp/U123  ( .A(P1_out[0]), .B(n1), .Y(\dp/n122 ) );
  OAI21X1 \dp/U122  ( .A(n25), .B(n199), .C(\dp/n122 ), .Y(\dp/n345 ) );
  AND2X2 \dp/U17  ( .A(out_update_2), .B(n225), .Y(\dp/n326 ) );
  AND2X2 \dp/U16  ( .A(\dp/n187 ), .B(\dp/n283 ), .Y(\dp/n324 ) );
  AND2X2 \dp/U15  ( .A(out_load), .B(\dp/n156 ), .Y(\dp/n157 ) );
  AND2X2 \dp/U8  ( .A(\dp/n157 ), .B(\dp/n321 ), .Y(\dp/n317 ) );
  AND2X2 \dp/U7  ( .A(\dp/N85 ), .B(\dp/N87 ), .Y(\dp/n272 ) );
  AND2X2 \dp/U6  ( .A(out_update_2), .B(n84), .Y(\dp/n177 ) );
  AND2X2 \dp/U5  ( .A(\dp/n171 ), .B(\dp/n156 ), .Y(\dp/n173 ) );
  AND2X2 \dp/U3  ( .A(out_load), .B(\dp/n152 ), .Y(\dp/n150 ) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[0]  ( .D(\dp/n345 ), .CLK(n49), .Q(P1_out[0])
         );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[1]  ( .D(\dp/n346 ), .CLK(n49), .Q(P1_out[1])
         );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[2]  ( .D(\dp/n347 ), .CLK(n49), .Q(P1_out[2])
         );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[3]  ( .D(\dp/n348 ), .CLK(n49), .Q(P1_out[3])
         );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[4]  ( .D(\dp/n349 ), .CLK(n49), .Q(P1_out[4])
         );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[5]  ( .D(\dp/n350 ), .CLK(n48), .Q(P1_out[5])
         );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[6]  ( .D(\dp/n351 ), .CLK(n48), .Q(P1_out[6])
         );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[7]  ( .D(\dp/n352 ), .CLK(n48), .Q(P1_out[7])
         );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[8]  ( .D(\dp/n353 ), .CLK(n48), .Q(P1_out[8])
         );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[9]  ( .D(\dp/n354 ), .CLK(n48), .Q(P1_out[9])
         );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[10]  ( .D(\dp/n355 ), .CLK(n48), .Q(P1_out[10]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[11]  ( .D(\dp/n356 ), .CLK(n48), .Q(P1_out[11]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[12]  ( .D(\dp/n357 ), .CLK(n48), .Q(P1_out[12]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[13]  ( .D(\dp/n358 ), .CLK(n48), .Q(P1_out[13]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[14]  ( .D(\dp/n359 ), .CLK(n48), .Q(P1_out[14]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[15]  ( .D(\dp/n360 ), .CLK(n48), .Q(P1_out[15]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[16]  ( .D(\dp/n361 ), .CLK(n48), .Q(P1_out[16]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[17]  ( .D(\dp/n362 ), .CLK(n48), .Q(P1_out[17]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[18]  ( .D(\dp/n363 ), .CLK(n47), .Q(P1_out[18]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[19]  ( .D(\dp/n364 ), .CLK(n47), .Q(P1_out[19]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[20]  ( .D(\dp/n365 ), .CLK(n47), .Q(P1_out[20]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[21]  ( .D(\dp/n366 ), .CLK(n47), .Q(P1_out[21]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[22]  ( .D(\dp/n367 ), .CLK(n47), .Q(P1_out[22]) );
  DFFNEGX1 \dp/P1_OUT_CARDS_reg[23]  ( .D(\dp/n368 ), .CLK(n47), .Q(P1_out[23]) );
  DFFNEGX1 \dp/DONE_reg  ( .D(\dp/n369 ), .CLK(n47), .Q(out_done) );
  DFFNEGX1 \dp/P1_OUT_NUM_reg[0]  ( .D(\dp/n370 ), .CLK(n47), .Q(
        P1_num_cards[0]) );
  DFFNEGX1 \dp/P1_OUT_NUM_reg[1]  ( .D(\dp/n371 ), .CLK(n47), .Q(
        P1_num_cards[1]) );
  DFFNEGX1 \dp/P1_OUT_NUM_reg[2]  ( .D(\dp/n372 ), .CLK(n47), .Q(
        P1_num_cards[2]) );
  DFFNEGX1 \dp/TOP_OUT_CARD_reg[0]  ( .D(\dp/n373 ), .CLK(n47), .Q(max_card[0]) );
  DFFNEGX1 \dp/TOP_OUT_CARD_reg[1]  ( .D(\dp/n374 ), .CLK(n47), .Q(max_card[1]) );
  DFFNEGX1 \dp/TOP_OUT_CARD_reg[2]  ( .D(\dp/n375 ), .CLK(n47), .Q(max_card[2]) );
  DFFNEGX1 \dp/TOP_OUT_CARD_reg[3]  ( .D(\dp/n376 ), .CLK(n46), .Q(max_card[3]) );
  DFFNEGX1 \dp/TOP_OUT_CARD_reg[4]  ( .D(\dp/n377 ), .CLK(n46), .Q(max_card[4]) );
  DFFNEGX1 \dp/TOP_OUT_CARD_reg[5]  ( .D(\dp/n378 ), .CLK(n46), .Q(max_card[5]) );
  DFFNEGX1 \dp/P2_OUT_NUM_reg[0]  ( .D(\dp/n379 ), .CLK(n46), .Q(
        P2_num_cards[0]) );
  DFFNEGX1 \dp/P2_OUT_NUM_reg[1]  ( .D(\dp/n380 ), .CLK(n46), .Q(
        P2_num_cards[1]) );
  DFFNEGX1 \dp/P2_OUT_NUM_reg[2]  ( .D(\dp/n381 ), .CLK(n46), .Q(
        P2_num_cards[2]) );
  DFFNEGX1 \dp/is_larger_reg  ( .D(\dp/n382 ), .CLK(n46), .Q(out_is_larger) );
  DFFNEGX1 \dp/P2_PUT_CARD_reg  ( .D(\dp/n383 ), .CLK(n46), .Q(out_P2_put) );
  DFFNEGX1 \dp/temp_larger_reg  ( .D(\dp/n391 ), .CLK(n65), .Q(
        \dp/temp_larger ) );
  DFFNEGX1 \dp/TOP_CARD_reg[3]  ( .D(\dp/n393 ), .CLK(n65), .Q(
        \dp/TOP_CARD [3]) );
  DFFNEGX1 \dp/TOP_CARD_reg[4]  ( .D(\dp/n392 ), .CLK(n65), .Q(
        \dp/TOP_CARD [4]) );
  DFFNEGX1 \dp/p2_put_temp_reg  ( .D(\dp/n390 ), .CLK(n65), .Q(
        \dp/p2_put_temp ) );
  DFFNEGX1 \dp/TOP_CARD_reg[2]  ( .D(\dp/n394 ), .CLK(n65), .Q(
        \dp/TOP_CARD [2]) );
  DFFNEGX1 \dp/P2_CARDS_reg[18]  ( .D(\dp/n402 ), .CLK(n65), .Q(
        \dp/P2_CARDS [18]) );
  DFFNEGX1 \dp/P2_CARDS_reg[23]  ( .D(\dp/n401 ), .CLK(n65), .Q(
        \dp/P2_CARDS [23]) );
  DFFNEGX1 \dp/P2_CARDS_reg[22]  ( .D(\dp/n400 ), .CLK(n65), .Q(
        \dp/P2_CARDS [22]) );
  DFFNEGX1 \dp/P2_CARDS_reg[21]  ( .D(\dp/n399 ), .CLK(n64), .Q(
        \dp/P2_CARDS [21]) );
  DFFNEGX1 \dp/P2_CARDS_reg[20]  ( .D(\dp/n398 ), .CLK(n64), .Q(
        \dp/P2_CARDS [20]) );
  DFFNEGX1 \dp/P2_CARDS_reg[19]  ( .D(\dp/n397 ), .CLK(n64), .Q(
        \dp/P2_CARDS [19]) );
  DFFNEGX1 \dp/P2_CARDS_reg[12]  ( .D(\dp/n408 ), .CLK(n64), .Q(
        \dp/P2_CARDS [12]) );
  DFFNEGX1 \dp/P2_CARDS_reg[17]  ( .D(\dp/n407 ), .CLK(n64), .Q(
        \dp/P2_CARDS [17]) );
  DFFNEGX1 \dp/P2_CARDS_reg[16]  ( .D(\dp/n406 ), .CLK(n64), .Q(
        \dp/P2_CARDS [16]) );
  DFFNEGX1 \dp/P2_CARDS_reg[15]  ( .D(\dp/n405 ), .CLK(n64), .Q(
        \dp/P2_CARDS [15]) );
  DFFNEGX1 \dp/P2_CARDS_reg[14]  ( .D(\dp/n404 ), .CLK(n64), .Q(
        \dp/P2_CARDS [14]) );
  DFFNEGX1 \dp/P2_CARDS_reg[13]  ( .D(\dp/n403 ), .CLK(n64), .Q(
        \dp/P2_CARDS [13]) );
  DFFNEGX1 \dp/P2_CARDS_reg[6]  ( .D(\dp/n414 ), .CLK(n64), .Q(
        \dp/P2_CARDS [6]) );
  DFFNEGX1 \dp/P2_CARDS_reg[11]  ( .D(\dp/n413 ), .CLK(n64), .Q(
        \dp/P2_CARDS [11]) );
  DFFNEGX1 \dp/P2_CARDS_reg[10]  ( .D(\dp/n412 ), .CLK(n64), .Q(
        \dp/P2_CARDS [10]) );
  DFFNEGX1 \dp/P2_CARDS_reg[9]  ( .D(\dp/n411 ), .CLK(n64), .Q(
        \dp/P2_CARDS [9]) );
  DFFNEGX1 \dp/P2_CARDS_reg[8]  ( .D(\dp/n410 ), .CLK(n63), .Q(
        \dp/P2_CARDS [8]) );
  DFFNEGX1 \dp/P2_CARDS_reg[7]  ( .D(\dp/n409 ), .CLK(n63), .Q(
        \dp/P2_CARDS [7]) );
  DFFNEGX1 \dp/count_reg[1]  ( .D(\dp/n422 ), .CLK(n63), .Q(\dp/count [1]) );
  DFFNEGX1 \dp/TOP_CARD_reg[1]  ( .D(\dp/n395 ), .CLK(n63), .Q(
        \dp/TOP_CARD [1]) );
  DFFNEGX1 \dp/count_reg[0]  ( .D(\dp/n423 ), .CLK(n63), .Q(\dp/count [0]) );
  DFFNEGX1 \dp/TOP_CARD_reg[0]  ( .D(\dp/n396 ), .CLK(n63), .Q(
        \dp/TOP_CARD [0]) );
  DFFNEGX1 \dp/P2_CARDS_reg[0]  ( .D(\dp/n420 ), .CLK(n63), .Q(
        \dp/P2_CARDS [0]) );
  DFFNEGX1 \dp/P2_CARDS_reg[5]  ( .D(\dp/n419 ), .CLK(n63), .Q(
        \dp/P2_CARDS [5]) );
  DFFNEGX1 \dp/P2_CARDS_reg[4]  ( .D(\dp/n418 ), .CLK(n63), .Q(
        \dp/P2_CARDS [4]) );
  DFFNEGX1 \dp/P2_CARDS_reg[3]  ( .D(\dp/n417 ), .CLK(n63), .Q(
        \dp/P2_CARDS [3]) );
  DFFNEGX1 \dp/P2_CARDS_reg[2]  ( .D(\dp/n416 ), .CLK(n63), .Q(
        \dp/P2_CARDS [2]) );
  DFFNEGX1 \dp/P2_CARDS_reg[1]  ( .D(\dp/n415 ), .CLK(n63), .Q(
        \dp/P2_CARDS [1]) );
  DFFNEGX1 \dp/count_reg[2]  ( .D(\dp/n421 ), .CLK(n63), .Q(\dp/count [2]) );
  DFFNEGX1 \dp/TOP_CARD_reg[5]  ( .D(\dp/n424 ), .CLK(n62), .Q(
        \dp/TOP_CARD [5]) );
  DFFNEGX1 \dp/P1_CARDS_reg[6]  ( .D(\dp/n442 ), .CLK(n62), .Q(
        \dp/P1_CARDS [6]) );
  DFFNEGX1 \dp/P1_CARDS_reg[11]  ( .D(\dp/n441 ), .CLK(n62), .Q(
        \dp/P1_CARDS [11]) );
  DFFNEGX1 \dp/P1_CARDS_reg[10]  ( .D(\dp/n440 ), .CLK(n62), .Q(
        \dp/P1_CARDS [10]) );
  DFFNEGX1 \dp/P1_CARDS_reg[9]  ( .D(\dp/n439 ), .CLK(n62), .Q(
        \dp/P1_CARDS [9]) );
  DFFNEGX1 \dp/P1_CARDS_reg[8]  ( .D(\dp/n438 ), .CLK(n62), .Q(
        \dp/P1_CARDS [8]) );
  DFFNEGX1 \dp/P1_CARDS_reg[7]  ( .D(\dp/n437 ), .CLK(n62), .Q(
        \dp/P1_CARDS [7]) );
  DFFNEGX1 \dp/P1_CARDS_reg[18]  ( .D(\dp/n430 ), .CLK(n62), .Q(
        \dp/P1_CARDS [18]) );
  DFFNEGX1 \dp/P1_CARDS_reg[23]  ( .D(\dp/n429 ), .CLK(n62), .Q(
        \dp/P1_CARDS [23]) );
  DFFNEGX1 \dp/P1_CARDS_reg[22]  ( .D(\dp/n428 ), .CLK(n62), .Q(
        \dp/P1_CARDS [22]) );
  DFFNEGX1 \dp/P1_CARDS_reg[21]  ( .D(\dp/n427 ), .CLK(n62), .Q(
        \dp/P1_CARDS [21]) );
  DFFNEGX1 \dp/P1_CARDS_reg[20]  ( .D(\dp/n426 ), .CLK(n62), .Q(
        \dp/P1_CARDS [20]) );
  DFFNEGX1 \dp/P1_CARDS_reg[19]  ( .D(\dp/n425 ), .CLK(n62), .Q(
        \dp/P1_CARDS [19]) );
  DFFNEGX1 \dp/P1_CARDS_reg[0]  ( .D(\dp/n448 ), .CLK(n61), .Q(
        \dp/P1_CARDS [0]) );
  DFFNEGX1 \dp/P1_CARDS_reg[5]  ( .D(\dp/n447 ), .CLK(n61), .Q(
        \dp/P1_CARDS [5]) );
  DFFNEGX1 \dp/P1_CARDS_reg[4]  ( .D(\dp/n446 ), .CLK(n61), .Q(
        \dp/P1_CARDS [4]) );
  DFFNEGX1 \dp/P1_CARDS_reg[3]  ( .D(\dp/n445 ), .CLK(n61), .Q(
        \dp/P1_CARDS [3]) );
  DFFNEGX1 \dp/P1_CARDS_reg[2]  ( .D(\dp/n444 ), .CLK(n61), .Q(
        \dp/P1_CARDS [2]) );
  DFFNEGX1 \dp/P1_CARDS_reg[1]  ( .D(\dp/n443 ), .CLK(n61), .Q(
        \dp/P1_CARDS [1]) );
  DFFNEGX1 \dp/P1_CARDS_reg[12]  ( .D(\dp/n436 ), .CLK(n61), .Q(
        \dp/P1_CARDS [12]) );
  DFFNEGX1 \dp/P1_CARDS_reg[17]  ( .D(\dp/n435 ), .CLK(n61), .Q(
        \dp/P1_CARDS [17]) );
  DFFNEGX1 \dp/P1_CARDS_reg[16]  ( .D(\dp/n434 ), .CLK(n61), .Q(
        \dp/P1_CARDS [16]) );
  DFFNEGX1 \dp/P1_CARDS_reg[15]  ( .D(\dp/n433 ), .CLK(n61), .Q(
        \dp/P1_CARDS [15]) );
  DFFNEGX1 \dp/P1_CARDS_reg[14]  ( .D(\dp/n432 ), .CLK(n61), .Q(
        \dp/P1_CARDS [14]) );
  DFFNEGX1 \dp/P1_CARDS_reg[13]  ( .D(\dp/n431 ), .CLK(n61), .Q(
        \dp/P1_CARDS [13]) );
  DFFNEGX1 \dp/p1_temp_reg[0]  ( .D(\dp/n451 ), .CLK(n61), .Q(\dp/p1_temp [0])
         );
  DFFNEGX1 \dp/p1_temp_reg[2]  ( .D(\dp/n450 ), .CLK(n60), .Q(\dp/p1_temp [2])
         );
  DFFNEGX1 \dp/p1_temp_reg[1]  ( .D(\dp/n449 ), .CLK(n60), .Q(\dp/p1_temp [1])
         );
  DFFNEGX1 \dp/P2_NUM_reg[2]  ( .D(\dp/n384 ), .CLK(n60), .Q(\dp/P2_NUM [2])
         );
  DFFNEGX1 \dp/P1_NUM_reg[2]  ( .D(\dp/n387 ), .CLK(n60), .Q(\dp/P1_NUM [2])
         );
  DFFNEGX1 \dp/P1_NUM_reg[1]  ( .D(\dp/n388 ), .CLK(n60), .Q(\dp/P1_NUM [1])
         );
  DFFNEGX1 \dp/P1_NUM_reg[0]  ( .D(\dp/n389 ), .CLK(n60), .Q(\dp/P1_NUM [0])
         );
  DFFNEGX1 \dp/P2_NUM_reg[1]  ( .D(\dp/n385 ), .CLK(n60), .Q(\dp/P2_NUM [1])
         );
  DFFNEGX1 \dp/P2_NUM_reg[0]  ( .D(\dp/n386 ), .CLK(n60), .Q(\dp/P2_NUM [0])
         );
  DFFNEGX1 \dp/block_p1_reg  ( .D(\dp/n453 ), .CLK(n60), .Q(\dp/block_p1 ) );
  DFFNEGX1 \dp/block_state_reg  ( .D(\dp/n452 ), .CLK(n60), .Q(
        \dp/block_state ) );
  OAI21X1 \c1/U897  ( .A(card_gen), .B(\c1/state[0]1 ), .C(n437), .Y(\c1/n709 ) );
  NAND3X1 \c1/U896  ( .A(n413), .B(n412), .C(\c1/c_count[2]1 ), .Y(\c1/n703 )
         );
  NAND3X1 \c1/U895  ( .A(\c1/n703 ), .B(n226), .C(\c1/state[1]1 ), .Y(
        \c1/n710 ) );
  NAND2X1 \c1/U894  ( .A(n67), .B(n435), .Y(\c1/n711 ) );
  AOI21X1 \c1/U893  ( .A(\c1/n709 ), .B(\c1/n710 ), .C(\c1/n711 ), .Y(
        \c1/N276 ) );
  NOR2X1 \c1/U892  ( .A(n226), .B(n439), .Y(\c1/n707 ) );
  NOR2X1 \c1/U891  ( .A(\c1/state[2]1 ), .B(\c1/state[1]1 ), .Y(\c1/n708 ) );
  NOR2X1 \c1/U890  ( .A(n437), .B(\c1/state[2]1 ), .Y(\c1/n705 ) );
  AOI22X1 \c1/U889  ( .A(\c1/n707 ), .B(\c1/n708 ), .C(\c1/n705 ), .D(
        \c1/n703 ), .Y(\c1/n706 ) );
  NOR2X1 \c1/U888  ( .A(in_restart), .B(\c1/n706 ), .Y(\c1/N277 ) );
  NAND2X1 \c1/U887  ( .A(\c1/n705 ), .B(n67), .Y(\c1/n704 ) );
  NOR2X1 \c1/U886  ( .A(\c1/n703 ), .B(\c1/n704 ), .Y(\c1/N278 ) );
  NAND3X1 \c1/U885  ( .A(n438), .B(n436), .C(n433), .Y(\c1/n394 ) );
  NOR2X1 \c1/U883  ( .A(n425), .B(n3), .Y(\c1/n698 ) );
  NAND3X1 \c1/U882  ( .A(n438), .B(n436), .C(\c1/next_state [0]), .Y(\c1/n262 ) );
  OAI21X1 \c1/U880  ( .A(n429), .B(n439), .C(n23), .Y(\c1/n898 ) );
  NAND3X1 \c1/U879  ( .A(n433), .B(n438), .C(\c1/next_state [2]), .Y(\c1/n225 ) );
  NAND3X1 \c1/U878  ( .A(n433), .B(n436), .C(\c1/next_state [1]), .Y(\c1/n681 ) );
  NAND3X1 \c1/U877  ( .A(\c1/next_state [0]), .B(n436), .C(\c1/next_state [1]), 
        .Y(\c1/n693 ) );
  NOR2X1 \c1/U876  ( .A(n432), .B(n434), .Y(\c1/n685 ) );
  NOR2X1 \c1/U875  ( .A(n9), .B(n431), .Y(\c1/n701 ) );
  NAND3X1 \c1/U874  ( .A(n15), .B(\c1/n394 ), .C(\c1/n701 ), .Y(\c1/n700 ) );
  OAI22X1 \c1/U873  ( .A(n430), .B(n433), .C(\c1/n700 ), .D(n226), .Y(
        \c1/n897 ) );
  OAI22X1 \c1/U872  ( .A(n430), .B(n436), .C(\c1/n700 ), .D(n435), .Y(
        \c1/n896 ) );
  OAI22X1 \c1/U871  ( .A(n430), .B(n438), .C(\c1/n700 ), .D(n437), .Y(
        \c1/n895 ) );
  NAND3X1 \c1/U870  ( .A(n10), .B(\c1/n394 ), .C(card_done), .Y(\c1/n699 ) );
  NAND2X1 \c1/U869  ( .A(n18), .B(\c1/n699 ), .Y(\c1/n894 ) );
  NOR2X1 \c1/U868  ( .A(n10), .B(\c1/n698 ), .Y(\c1/n395 ) );
  NOR2X1 \c1/U867  ( .A(n429), .B(\c1/n395 ), .Y(\c1/n674 ) );
  AOI21X1 \c1/U866  ( .A(n428), .B(n9), .C(\c1/n674 ), .Y(\c1/n695 ) );
  NAND2X1 \c1/U865  ( .A(\c1/trans_num [2]), .B(n427), .Y(\c1/n441 ) );
  OAI22X1 \c1/U864  ( .A(n10), .B(n3), .C(\c1/n441 ), .D(n10), .Y(\c1/n697 )
         );
  OAI21X1 \c1/U863  ( .A(\c1/n695 ), .B(n425), .C(n426), .Y(\c1/n893 ) );
  NAND3X1 \c1/U862  ( .A(\c1/trans_num [0]), .B(n427), .C(n9), .Y(\c1/n696 )
         );
  OAI21X1 \c1/U861  ( .A(\c1/n695 ), .B(n427), .C(\c1/n696 ), .Y(\c1/n892 ) );
  OAI22X1 \c1/U860  ( .A(n428), .B(n418), .C(\c1/trans_num [0]), .D(n10), .Y(
        \c1/n891 ) );
  NAND2X1 \c1/U859  ( .A(\c1/n693 ), .B(n22), .Y(\c1/n692 ) );
  OAI21X1 \c1/U858  ( .A(\c1/c_count[0]1 ), .B(\c1/n693 ), .C(\c1/n692 ), .Y(
        \c1/n691 ) );
  AOI21X1 \c1/U857  ( .A(n434), .B(n412), .C(\c1/n691 ), .Y(\c1/n694 ) );
  NOR2X1 \c1/U856  ( .A(\c1/n693 ), .B(\c1/c_count[2]1 ), .Y(\c1/n263 ) );
  NAND3X1 \c1/U855  ( .A(\c1/c_count[0]1 ), .B(\c1/n263 ), .C(\c1/c_count[1]1 ), .Y(\c1/n267 ) );
  OAI21X1 \c1/U854  ( .A(\c1/n694 ), .B(n410), .C(\c1/n267 ), .Y(\c1/n890 ) );
  OAI22X1 \c1/U853  ( .A(n413), .B(\c1/n692 ), .C(\c1/c_count[0]1 ), .D(
        \c1/n693 ), .Y(\c1/n889 ) );
  NAND3X1 \c1/U852  ( .A(n434), .B(n412), .C(\c1/c_count[0]1 ), .Y(\c1/n690 )
         );
  OAI21X1 \c1/U851  ( .A(n414), .B(n412), .C(\c1/n690 ), .Y(\c1/n888 ) );
  NAND2X1 \c1/U850  ( .A(\c1/n681 ), .B(n21), .Y(\c1/n678 ) );
  OR2X1 \c1/U849  ( .A(\c1/n678 ), .B(n434), .Y(\c1/n682 ) );
  NOR2X1 \c1/U848  ( .A(\c1/count [0]), .B(n281), .Y(\c1/n687 ) );
  NAND2X1 \c1/U847  ( .A(\c1/count [1]), .B(n281), .Y(\c1/n689 ) );
  NOR2X1 \c1/U846  ( .A(n281), .B(\c1/count [1]), .Y(\c1/n298 ) );
  OAI21X1 \c1/U845  ( .A(n8), .B(\c1/n689 ), .C(n280), .Y(\c1/n688 ) );
  OAI21X1 \c1/U844  ( .A(\c1/n687 ), .B(\c1/n688 ), .C(n431), .Y(\c1/n686 ) );
  OAI21X1 \c1/U843  ( .A(n281), .B(\c1/n682 ), .C(\c1/n686 ), .Y(\c1/n887 ) );
  OAI22X1 \c1/U842  ( .A(n8), .B(\c1/n682 ), .C(\c1/count [0]), .D(\c1/n685 ), 
        .Y(\c1/n886 ) );
  NAND2X1 \c1/U841  ( .A(\c1/count [1]), .B(n8), .Y(\c1/n342 ) );
  OAI21X1 \c1/U840  ( .A(\c1/count [1]), .B(n8), .C(\c1/n342 ), .Y(\c1/n684 )
         );
  NAND2X1 \c1/U839  ( .A(\c1/n684 ), .B(n431), .Y(\c1/n683 ) );
  OAI21X1 \c1/U838  ( .A(n282), .B(\c1/n682 ), .C(\c1/n683 ), .Y(\c1/n885 ) );
  OAI21X1 \c1/U837  ( .A(\c1/p_count [0]), .B(\c1/n681 ), .C(\c1/n678 ), .Y(
        \c1/n677 ) );
  AOI21X1 \c1/U836  ( .A(n432), .B(n255), .C(\c1/n677 ), .Y(\c1/n680 ) );
  NOR2X1 \c1/U835  ( .A(\c1/n681 ), .B(\c1/p_count [2]), .Y(\c1/n319 ) );
  NAND3X1 \c1/U834  ( .A(\c1/p_count [1]), .B(\c1/n319 ), .C(\c1/p_count [0]), 
        .Y(\c1/n323 ) );
  OAI21X1 \c1/U833  ( .A(\c1/n680 ), .B(n251), .C(\c1/n323 ), .Y(\c1/n884 ) );
  OAI21X1 \c1/U832  ( .A(n9), .B(n283), .C(\c1/n678 ), .Y(\c1/n679 ) );
  OAI21X1 \c1/U831  ( .A(n283), .B(\c1/n678 ), .C(\c1/n679 ), .Y(\c1/n883 ) );
  NAND3X1 \c1/U830  ( .A(n432), .B(n255), .C(\c1/p_count [0]), .Y(\c1/n676 )
         );
  OAI21X1 \c1/U829  ( .A(n284), .B(n255), .C(\c1/n676 ), .Y(\c1/n882 ) );
  NAND2X1 \c1/U828  ( .A(\c1/lfsr [0]), .B(n9), .Y(\c1/n392 ) );
  AOI22X1 \c1/U827  ( .A(seed[1]), .B(n429), .C(n407), .D(n418), .Y(\c1/n675 )
         );
  OAI21X1 \c1/U826  ( .A(n399), .B(n418), .C(\c1/n675 ), .Y(\c1/n881 ) );
  AOI22X1 \c1/U825  ( .A(n407), .B(n409), .C(\c1/n674 ), .D(\c1/lfsr [0]), .Y(
        \c1/n671 ) );
  NOR2X1 \c1/U824  ( .A(\c1/lfsr [0]), .B(\c1/n674 ), .Y(\c1/n673 ) );
  NOR2X1 \c1/U823  ( .A(n409), .B(n10), .Y(\c1/n665 ) );
  AOI22X1 \c1/U822  ( .A(\c1/n673 ), .B(\c1/n665 ), .C(seed[0]), .D(n429), .Y(
        \c1/n672 ) );
  NAND2X1 \c1/U821  ( .A(\c1/n671 ), .B(\c1/n672 ), .Y(\c1/n880 ) );
  NOR2X1 \c1/U820  ( .A(n399), .B(n10), .Y(\c1/n667 ) );
  AOI22X1 \c1/U819  ( .A(seed[2]), .B(n429), .C(\c1/n667 ), .D(n418), .Y(
        \c1/n670 ) );
  OAI21X1 \c1/U818  ( .A(n397), .B(n418), .C(\c1/n670 ), .Y(\c1/n879 ) );
  NOR2X1 \c1/U817  ( .A(n397), .B(n10), .Y(\c1/n666 ) );
  AOI22X1 \c1/U816  ( .A(seed[3]), .B(n429), .C(\c1/n666 ), .D(n418), .Y(
        \c1/n669 ) );
  OAI21X1 \c1/U815  ( .A(n409), .B(n418), .C(\c1/n669 ), .Y(\c1/n878 ) );
  NAND2X1 \c1/U814  ( .A(\c1/n395 ), .B(n425), .Y(\c1/n534 ) );
  NAND2X1 \c1/U813  ( .A(n428), .B(n427), .Y(\c1/n668 ) );
  OAI21X1 \c1/U812  ( .A(\c1/n534 ), .B(\c1/n668 ), .C(\c1/n394 ), .Y(
        \c1/n664 ) );
  OAI22X1 \c1/U811  ( .A(n400), .B(\c1/n664 ), .C(n419), .D(\c1/n392 ), .Y(
        \c1/n877 ) );
  OAI22X1 \c1/U810  ( .A(n388), .B(\c1/n664 ), .C(n419), .D(n398), .Y(
        \c1/n876 ) );
  OAI22X1 \c1/U809  ( .A(n395), .B(\c1/n664 ), .C(n419), .D(n396), .Y(
        \c1/n875 ) );
  OAI22X1 \c1/U808  ( .A(n378), .B(\c1/n664 ), .C(n419), .D(n408), .Y(
        \c1/n874 ) );
  NOR2X1 \c1/U807  ( .A(\c1/trans_reg [2]), .B(\c1/trans_reg [0]), .Y(
        \c1/n658 ) );
  NOR2X1 \c1/U806  ( .A(n378), .B(\c1/trans_reg [1]), .Y(\c1/n656 ) );
  NAND2X1 \c1/U805  ( .A(\c1/n658 ), .B(\c1/n656 ), .Y(\c1/n625 ) );
  NOR2X1 \c1/U804  ( .A(n400), .B(\c1/trans_reg [2]), .Y(\c1/n661 ) );
  NAND2X1 \c1/U803  ( .A(\c1/n656 ), .B(\c1/n661 ), .Y(\c1/n629 ) );
  NOR2X1 \c1/U802  ( .A(n378), .B(n388), .Y(\c1/n654 ) );
  NOR2X1 \c1/U801  ( .A(n395), .B(\c1/trans_reg [0]), .Y(\c1/n655 ) );
  NAND2X1 \c1/U800  ( .A(\c1/n654 ), .B(\c1/n655 ), .Y(\c1/n642 ) );
  NAND2X1 \c1/U799  ( .A(\c1/n658 ), .B(\c1/n654 ), .Y(\c1/n645 ) );
  NAND2X1 \c1/U798  ( .A(\c1/n656 ), .B(\c1/n655 ), .Y(\c1/n633 ) );
  NAND2X1 \c1/U797  ( .A(\c1/n654 ), .B(\c1/n661 ), .Y(\c1/n652 ) );
  NAND3X1 \c1/U796  ( .A(\c1/n642 ), .B(\c1/n645 ), .C(\c1/n663 ), .Y(
        \c1/n662 ) );
  NAND3X1 \c1/U795  ( .A(\c1/n625 ), .B(\c1/n629 ), .C(n374), .Y(\c1/n659 ) );
  NOR2X1 \c1/U794  ( .A(\c1/trans_reg [3]), .B(\c1/trans_reg [1]), .Y(
        \c1/n660 ) );
  NAND2X1 \c1/U793  ( .A(\c1/n661 ), .B(\c1/n660 ), .Y(\c1/n626 ) );
  NOR2X1 \c1/U792  ( .A(n388), .B(\c1/trans_reg [3]), .Y(\c1/n647 ) );
  NAND2X1 \c1/U791  ( .A(\c1/n647 ), .B(\c1/n661 ), .Y(\c1/n657 ) );
  AOI21X1 \c1/U790  ( .A(\c1/n660 ), .B(\c1/n655 ), .C(n379), .Y(\c1/n624 ) );
  NOR2X1 \c1/U789  ( .A(n395), .B(n400), .Y(\c1/n646 ) );
  NAND2X1 \c1/U788  ( .A(\c1/n655 ), .B(\c1/n647 ), .Y(\c1/n650 ) );
  AOI21X1 \c1/U787  ( .A(\c1/n660 ), .B(\c1/n646 ), .C(n380), .Y(\c1/n638 ) );
  NAND3X1 \c1/U786  ( .A(\c1/n637 ), .B(\c1/n624 ), .C(\c1/n638 ), .Y(
        \c1/n628 ) );
  OAI22X1 \c1/U785  ( .A(n19), .B(n368), .C(\c1/n659 ), .D(\c1/n628 ), .Y(
        \c1/n873 ) );
  NAND2X1 \c1/U784  ( .A(\c1/n658 ), .B(\c1/n647 ), .Y(\c1/n643 ) );
  NAND3X1 \c1/U783  ( .A(\c1/n657 ), .B(\c1/n643 ), .C(\c1/n625 ), .Y(
        \c1/n648 ) );
  NAND2X1 \c1/U782  ( .A(\c1/n646 ), .B(\c1/n656 ), .Y(\c1/n630 ) );
  AOI21X1 \c1/U781  ( .A(\c1/n654 ), .B(\c1/n655 ), .C(n376), .Y(\c1/n653 ) );
  NAND3X1 \c1/U780  ( .A(\c1/n652 ), .B(\c1/n633 ), .C(\c1/n653 ), .Y(
        \c1/n651 ) );
  NAND3X1 \c1/U779  ( .A(n19), .B(\c1/n650 ), .C(n375), .Y(\c1/n649 ) );
  OAI22X1 \c1/U778  ( .A(n19), .B(n371), .C(\c1/n648 ), .D(\c1/n649 ), .Y(
        \c1/n872 ) );
  NOR2X1 \c1/U777  ( .A(\c1/n632 ), .B(n377), .Y(\c1/n644 ) );
  NAND3X1 \c1/U776  ( .A(\c1/n643 ), .B(\c1/n626 ), .C(\c1/n644 ), .Y(
        \c1/n640 ) );
  NAND3X1 \c1/U775  ( .A(\c1/n629 ), .B(\c1/n642 ), .C(\c1/n624 ), .Y(
        \c1/n641 ) );
  OAI21X1 \c1/U774  ( .A(\c1/n640 ), .B(\c1/n641 ), .C(n20), .Y(\c1/n639 ) );
  OAI21X1 \c1/U773  ( .A(n20), .B(n369), .C(\c1/n639 ), .Y(\c1/n871 ) );
  NAND2X1 \c1/U772  ( .A(\c1/n624 ), .B(\c1/n625 ), .Y(\c1/n635 ) );
  NAND2X1 \c1/U771  ( .A(n375), .B(\c1/n638 ), .Y(\c1/n636 ) );
  OAI21X1 \c1/U770  ( .A(\c1/n635 ), .B(\c1/n636 ), .C(\c1/n637 ), .Y(
        \c1/n634 ) );
  OAI21X1 \c1/U769  ( .A(n20), .B(n370), .C(\c1/n634 ), .Y(\c1/n870 ) );
  NOR2X1 \c1/U768  ( .A(\c1/n632 ), .B(n373), .Y(\c1/n631 ) );
  NAND3X1 \c1/U767  ( .A(\c1/n629 ), .B(\c1/n630 ), .C(\c1/n631 ), .Y(
        \c1/n627 ) );
  OAI22X1 \c1/U766  ( .A(n19), .B(n372), .C(\c1/n627 ), .D(\c1/n628 ), .Y(
        \c1/n869 ) );
  NAND3X1 \c1/U765  ( .A(\c1/n625 ), .B(\c1/n626 ), .C(n20), .Y(\c1/n622 ) );
  NAND2X1 \c1/U764  ( .A(\c1/n624 ), .B(n374), .Y(\c1/n623 ) );
  OAI22X1 \c1/U763  ( .A(n19), .B(n367), .C(\c1/n622 ), .D(\c1/n623 ), .Y(
        \c1/n868 ) );
  NAND2X1 \c1/U762  ( .A(\c1/trans_num [0]), .B(n427), .Y(\c1/n621 ) );
  OAI21X1 \c1/U761  ( .A(\c1/n534 ), .B(\c1/n621 ), .C(\c1/n394 ), .Y(
        \c1/n620 ) );
  OAI22X1 \c1/U760  ( .A(n401), .B(\c1/n620 ), .C(n420), .D(\c1/n392 ), .Y(
        \c1/n867 ) );
  OAI22X1 \c1/U759  ( .A(n387), .B(\c1/n620 ), .C(n420), .D(n398), .Y(
        \c1/n866 ) );
  OAI22X1 \c1/U758  ( .A(n394), .B(\c1/n620 ), .C(n420), .D(n396), .Y(
        \c1/n865 ) );
  OAI22X1 \c1/U757  ( .A(n362), .B(\c1/n620 ), .C(n420), .D(n408), .Y(
        \c1/n864 ) );
  NOR2X1 \c1/U756  ( .A(n362), .B(\c1/trans_reg [5]), .Y(\c1/n610 ) );
  NOR2X1 \c1/U755  ( .A(\c1/trans_reg [6]), .B(\c1/trans_reg [4]), .Y(
        \c1/n604 ) );
  NAND2X1 \c1/U754  ( .A(\c1/n610 ), .B(\c1/n604 ), .Y(\c1/n581 ) );
  NOR2X1 \c1/U753  ( .A(n401), .B(\c1/trans_reg [6]), .Y(\c1/n616 ) );
  NAND2X1 \c1/U752  ( .A(\c1/n610 ), .B(\c1/n616 ), .Y(\c1/n585 ) );
  NOR2X1 \c1/U751  ( .A(n362), .B(n387), .Y(\c1/n608 ) );
  NOR2X1 \c1/U750  ( .A(n394), .B(\c1/trans_reg [4]), .Y(\c1/n609 ) );
  NAND2X1 \c1/U749  ( .A(\c1/n608 ), .B(\c1/n609 ), .Y(\c1/n596 ) );
  NAND2X1 \c1/U748  ( .A(\c1/n608 ), .B(\c1/n604 ), .Y(\c1/n597 ) );
  NAND2X1 \c1/U747  ( .A(\c1/n610 ), .B(\c1/n609 ), .Y(\c1/n586 ) );
  NAND2X1 \c1/U746  ( .A(\c1/n608 ), .B(\c1/n616 ), .Y(\c1/n606 ) );
  NAND3X1 \c1/U745  ( .A(\c1/n596 ), .B(\c1/n597 ), .C(\c1/n619 ), .Y(
        \c1/n618 ) );
  NAND3X1 \c1/U744  ( .A(\c1/n581 ), .B(\c1/n585 ), .C(n359), .Y(\c1/n613 ) );
  NOR2X1 \c1/U743  ( .A(\c1/trans_reg [7]), .B(\c1/trans_reg [5]), .Y(
        \c1/n615 ) );
  NAND2X1 \c1/U742  ( .A(\c1/n615 ), .B(\c1/n616 ), .Y(\c1/n577 ) );
  NOR2X1 \c1/U741  ( .A(n394), .B(n401), .Y(\c1/n600 ) );
  NOR2X1 \c1/U740  ( .A(n387), .B(\c1/trans_reg [7]), .Y(\c1/n601 ) );
  NAND2X1 \c1/U739  ( .A(\c1/n609 ), .B(\c1/n601 ), .Y(\c1/n612 ) );
  AOI21X1 \c1/U738  ( .A(\c1/n615 ), .B(\c1/n600 ), .C(n364), .Y(\c1/n592 ) );
  NAND3X1 \c1/U737  ( .A(n19), .B(\c1/n577 ), .C(\c1/n592 ), .Y(\c1/n617 ) );
  NAND2X1 \c1/U736  ( .A(\c1/n616 ), .B(\c1/n601 ), .Y(\c1/n611 ) );
  AOI21X1 \c1/U735  ( .A(\c1/n609 ), .B(\c1/n615 ), .C(n366), .Y(\c1/n582 ) );
  NAND2X1 \c1/U734  ( .A(n363), .B(\c1/n582 ), .Y(\c1/n614 ) );
  OAI22X1 \c1/U733  ( .A(n19), .B(n354), .C(\c1/n613 ), .D(\c1/n614 ), .Y(
        \c1/n863 ) );
  NAND3X1 \c1/U732  ( .A(\c1/n581 ), .B(\c1/n611 ), .C(\c1/n612 ), .Y(
        \c1/n602 ) );
  NAND2X1 \c1/U731  ( .A(\c1/n600 ), .B(\c1/n610 ), .Y(\c1/n588 ) );
  AOI21X1 \c1/U730  ( .A(\c1/n608 ), .B(\c1/n609 ), .C(n361), .Y(\c1/n607 ) );
  NAND3X1 \c1/U729  ( .A(\c1/n606 ), .B(\c1/n586 ), .C(\c1/n607 ), .Y(
        \c1/n605 ) );
  NAND2X1 \c1/U728  ( .A(\c1/n601 ), .B(\c1/n604 ), .Y(\c1/n599 ) );
  NAND2X1 \c1/U727  ( .A(n360), .B(\c1/n580 ), .Y(\c1/n603 ) );
  OAI22X1 \c1/U726  ( .A(n19), .B(n357), .C(\c1/n602 ), .D(\c1/n603 ), .Y(
        \c1/n862 ) );
  NAND2X1 \c1/U725  ( .A(\c1/n600 ), .B(\c1/n601 ), .Y(\c1/n587 ) );
  NAND3X1 \c1/U724  ( .A(\c1/n597 ), .B(\c1/n587 ), .C(\c1/n598 ), .Y(
        \c1/n594 ) );
  NAND3X1 \c1/U723  ( .A(\c1/n585 ), .B(\c1/n596 ), .C(\c1/n582 ), .Y(
        \c1/n595 ) );
  OAI21X1 \c1/U722  ( .A(\c1/n594 ), .B(\c1/n595 ), .C(n19), .Y(\c1/n593 ) );
  OAI21X1 \c1/U721  ( .A(n20), .B(n355), .C(\c1/n593 ), .Y(\c1/n861 ) );
  NAND2X1 \c1/U720  ( .A(\c1/n582 ), .B(\c1/n581 ), .Y(\c1/n590 ) );
  NAND2X1 \c1/U719  ( .A(n360), .B(\c1/n592 ), .Y(\c1/n591 ) );
  OAI21X1 \c1/U718  ( .A(\c1/n590 ), .B(\c1/n591 ), .C(\c1/n580 ), .Y(
        \c1/n589 ) );
  OAI21X1 \c1/U717  ( .A(n20), .B(n356), .C(\c1/n589 ), .Y(\c1/n860 ) );
  NAND3X1 \c1/U716  ( .A(\c1/n586 ), .B(\c1/n587 ), .C(\c1/n588 ), .Y(
        \c1/n583 ) );
  NAND3X1 \c1/U715  ( .A(\c1/n582 ), .B(\c1/n585 ), .C(n363), .Y(\c1/n584 ) );
  OAI22X1 \c1/U714  ( .A(n20), .B(n358), .C(\c1/n583 ), .D(\c1/n584 ), .Y(
        \c1/n859 ) );
  NAND2X1 \c1/U713  ( .A(n359), .B(\c1/n581 ), .Y(\c1/n579 ) );
  OAI21X1 \c1/U712  ( .A(n365), .B(\c1/n579 ), .C(\c1/n580 ), .Y(\c1/n578 ) );
  OAI21X1 \c1/U711  ( .A(n24), .B(\c1/n577 ), .C(\c1/n578 ), .Y(\c1/n576 ) );
  AOI21X1 \c1/U710  ( .A(n21), .B(n353), .C(\c1/n576 ), .Y(\c1/n858 ) );
  NAND2X1 \c1/U709  ( .A(\c1/trans_num [1]), .B(n428), .Y(\c1/n575 ) );
  OAI21X1 \c1/U708  ( .A(\c1/n534 ), .B(\c1/n575 ), .C(\c1/n394 ), .Y(
        \c1/n574 ) );
  OAI22X1 \c1/U707  ( .A(n402), .B(\c1/n574 ), .C(n421), .D(\c1/n392 ), .Y(
        \c1/n857 ) );
  OAI22X1 \c1/U706  ( .A(n385), .B(\c1/n574 ), .C(n421), .D(n398), .Y(
        \c1/n856 ) );
  OAI22X1 \c1/U705  ( .A(n393), .B(\c1/n574 ), .C(n421), .D(n396), .Y(
        \c1/n855 ) );
  OAI22X1 \c1/U704  ( .A(n351), .B(\c1/n574 ), .C(n421), .D(n408), .Y(
        \c1/n854 ) );
  NOR2X1 \c1/U703  ( .A(n351), .B(\c1/trans_reg [8]), .Y(\c1/n573 ) );
  NAND2X1 \c1/U702  ( .A(\c1/n573 ), .B(n385), .Y(\c1/n542 ) );
  NOR2X1 \c1/U701  ( .A(n402), .B(\c1/trans_reg [9]), .Y(\c1/n543 ) );
  NAND2X1 \c1/U700  ( .A(\c1/n543 ), .B(n393), .Y(\c1/n549 ) );
  NOR2X1 \c1/U699  ( .A(n385), .B(\c1/trans_reg [10]), .Y(\c1/n564 ) );
  NAND2X1 \c1/U698  ( .A(\c1/n573 ), .B(\c1/n564 ), .Y(\c1/n559 ) );
  NAND2X1 \c1/U697  ( .A(\c1/trans_reg [8]), .B(\c1/n564 ), .Y(\c1/n567 ) );
  NAND3X1 \c1/U696  ( .A(\c1/trans_reg [10]), .B(\c1/trans_reg [9]), .C(
        \c1/n573 ), .Y(\c1/n557 ) );
  NAND3X1 \c1/U695  ( .A(\c1/n559 ), .B(\c1/n567 ), .C(\c1/n557 ), .Y(
        \c1/n572 ) );
  NAND3X1 \c1/U694  ( .A(\c1/n542 ), .B(\c1/n549 ), .C(n348), .Y(\c1/n568 ) );
  NOR2X1 \c1/U693  ( .A(n393), .B(\c1/trans_reg [11]), .Y(\c1/n560 ) );
  NAND3X1 \c1/U692  ( .A(\c1/trans_reg [9]), .B(n402), .C(\c1/n560 ), .Y(
        \c1/n563 ) );
  AOI21X1 \c1/U691  ( .A(\c1/n560 ), .B(\c1/n543 ), .C(n352), .Y(\c1/n553 ) );
  NAND2X1 \c1/U690  ( .A(\c1/n564 ), .B(n351), .Y(\c1/n570 ) );
  NAND3X1 \c1/U689  ( .A(n402), .B(n385), .C(\c1/n560 ), .Y(\c1/n571 ) );
  OAI21X1 \c1/U688  ( .A(n402), .B(\c1/n570 ), .C(\c1/n571 ), .Y(\c1/n539 ) );
  NAND2X1 \c1/U687  ( .A(\c1/n545 ), .B(n350), .Y(\c1/n569 ) );
  OAI22X1 \c1/U686  ( .A(n19), .B(n347), .C(\c1/n568 ), .D(\c1/n569 ), .Y(
        \c1/n853 ) );
  NAND3X1 \c1/U685  ( .A(\c1/trans_reg [11]), .B(\c1/trans_reg [10]), .C(
        \c1/n543 ), .Y(\c1/n566 ) );
  NAND3X1 \c1/U684  ( .A(\c1/n566 ), .B(\c1/n567 ), .C(\c1/n557 ), .Y(
        \c1/n565 ) );
  NAND3X1 \c1/U683  ( .A(n351), .B(n402), .C(\c1/n564 ), .Y(\c1/n558 ) );
  NAND3X1 \c1/U682  ( .A(n349), .B(\c1/n541 ), .C(\c1/n562 ), .Y(\c1/n561 ) );
  OAI21X1 \c1/U681  ( .A(n20), .B(n343), .C(\c1/n561 ), .Y(\c1/n852 ) );
  NAND3X1 \c1/U680  ( .A(\c1/trans_reg [8]), .B(\c1/trans_reg [9]), .C(
        \c1/n560 ), .Y(\c1/n548 ) );
  NAND3X1 \c1/U679  ( .A(\c1/n548 ), .B(\c1/n558 ), .C(\c1/n559 ), .Y(
        \c1/n555 ) );
  NAND3X1 \c1/U678  ( .A(\c1/n549 ), .B(\c1/n557 ), .C(n350), .Y(\c1/n556 ) );
  OAI21X1 \c1/U677  ( .A(\c1/n555 ), .B(\c1/n556 ), .C(n19), .Y(\c1/n554 ) );
  OAI21X1 \c1/U676  ( .A(n20), .B(n345), .C(\c1/n554 ), .Y(\c1/n851 ) );
  NAND2X1 \c1/U675  ( .A(n350), .B(\c1/n542 ), .Y(\c1/n551 ) );
  NAND2X1 \c1/U674  ( .A(n349), .B(\c1/n553 ), .Y(\c1/n552 ) );
  OAI21X1 \c1/U673  ( .A(\c1/n551 ), .B(\c1/n552 ), .C(\c1/n541 ), .Y(
        \c1/n550 ) );
  OAI21X1 \c1/U672  ( .A(n20), .B(n344), .C(\c1/n550 ), .Y(\c1/n850 ) );
  OAI21X1 \c1/U671  ( .A(\c1/trans_reg [9]), .B(n393), .C(\c1/n548 ), .Y(
        \c1/n547 ) );
  NOR2X1 \c1/U670  ( .A(n386), .B(\c1/n547 ), .Y(\c1/n546 ) );
  NAND3X1 \c1/U669  ( .A(\c1/n545 ), .B(n350), .C(\c1/n546 ), .Y(\c1/n544 ) );
  OAI21X1 \c1/U668  ( .A(n20), .B(n346), .C(\c1/n544 ), .Y(\c1/n849 ) );
  NAND2X1 \c1/U667  ( .A(n393), .B(n351), .Y(\c1/n536 ) );
  NAND2X1 \c1/U666  ( .A(\c1/n543 ), .B(n19), .Y(\c1/n537 ) );
  NAND2X1 \c1/U665  ( .A(n348), .B(\c1/n542 ), .Y(\c1/n540 ) );
  OAI21X1 \c1/U664  ( .A(\c1/n539 ), .B(\c1/n540 ), .C(\c1/n541 ), .Y(
        \c1/n538 ) );
  OAI21X1 \c1/U663  ( .A(\c1/n536 ), .B(\c1/n537 ), .C(\c1/n538 ), .Y(
        \c1/n535 ) );
  AOI21X1 \c1/U662  ( .A(n21), .B(n342), .C(\c1/n535 ), .Y(\c1/n848 ) );
  OAI21X1 \c1/U661  ( .A(n3), .B(\c1/n534 ), .C(\c1/n394 ), .Y(\c1/n533 ) );
  OAI22X1 \c1/U660  ( .A(n403), .B(\c1/n533 ), .C(n422), .D(\c1/n392 ), .Y(
        \c1/n847 ) );
  OAI22X1 \c1/U659  ( .A(n384), .B(\c1/n533 ), .C(n422), .D(n398), .Y(
        \c1/n846 ) );
  OAI22X1 \c1/U658  ( .A(n392), .B(\c1/n533 ), .C(n422), .D(n396), .Y(
        \c1/n845 ) );
  OAI22X1 \c1/U657  ( .A(n337), .B(\c1/n533 ), .C(n422), .D(n408), .Y(
        \c1/n844 ) );
  NOR2X1 \c1/U656  ( .A(n337), .B(\c1/trans_reg [13]), .Y(\c1/n523 ) );
  NOR2X1 \c1/U655  ( .A(\c1/trans_reg [14]), .B(\c1/trans_reg [12]), .Y(
        \c1/n517 ) );
  NAND2X1 \c1/U654  ( .A(\c1/n523 ), .B(\c1/n517 ), .Y(\c1/n494 ) );
  NOR2X1 \c1/U653  ( .A(n403), .B(\c1/trans_reg [14]), .Y(\c1/n529 ) );
  NAND2X1 \c1/U652  ( .A(\c1/n523 ), .B(\c1/n529 ), .Y(\c1/n498 ) );
  NOR2X1 \c1/U651  ( .A(n337), .B(n384), .Y(\c1/n521 ) );
  NOR2X1 \c1/U650  ( .A(n392), .B(\c1/trans_reg [12]), .Y(\c1/n522 ) );
  NAND2X1 \c1/U649  ( .A(\c1/n521 ), .B(\c1/n522 ), .Y(\c1/n509 ) );
  NAND2X1 \c1/U648  ( .A(\c1/n521 ), .B(\c1/n517 ), .Y(\c1/n510 ) );
  NAND2X1 \c1/U647  ( .A(\c1/n523 ), .B(\c1/n522 ), .Y(\c1/n499 ) );
  NAND2X1 \c1/U646  ( .A(\c1/n521 ), .B(\c1/n529 ), .Y(\c1/n519 ) );
  NAND3X1 \c1/U645  ( .A(\c1/n509 ), .B(\c1/n510 ), .C(\c1/n532 ), .Y(
        \c1/n531 ) );
  NAND3X1 \c1/U644  ( .A(\c1/n494 ), .B(\c1/n498 ), .C(n334), .Y(\c1/n526 ) );
  NOR2X1 \c1/U643  ( .A(\c1/trans_reg [15]), .B(\c1/trans_reg [13]), .Y(
        \c1/n528 ) );
  NAND2X1 \c1/U642  ( .A(\c1/n528 ), .B(\c1/n529 ), .Y(\c1/n490 ) );
  NOR2X1 \c1/U641  ( .A(n392), .B(n403), .Y(\c1/n513 ) );
  NOR2X1 \c1/U640  ( .A(n384), .B(\c1/trans_reg [15]), .Y(\c1/n514 ) );
  NAND2X1 \c1/U639  ( .A(\c1/n522 ), .B(\c1/n514 ), .Y(\c1/n525 ) );
  AOI21X1 \c1/U638  ( .A(\c1/n528 ), .B(\c1/n513 ), .C(n339), .Y(\c1/n505 ) );
  NAND3X1 \c1/U637  ( .A(n20), .B(\c1/n490 ), .C(\c1/n505 ), .Y(\c1/n530 ) );
  NAND2X1 \c1/U636  ( .A(\c1/n529 ), .B(\c1/n514 ), .Y(\c1/n524 ) );
  AOI21X1 \c1/U635  ( .A(\c1/n522 ), .B(\c1/n528 ), .C(n341), .Y(\c1/n495 ) );
  NAND2X1 \c1/U634  ( .A(n338), .B(\c1/n495 ), .Y(\c1/n527 ) );
  OAI22X1 \c1/U633  ( .A(n20), .B(n329), .C(\c1/n526 ), .D(\c1/n527 ), .Y(
        \c1/n843 ) );
  NAND3X1 \c1/U632  ( .A(\c1/n494 ), .B(\c1/n524 ), .C(\c1/n525 ), .Y(
        \c1/n515 ) );
  NAND2X1 \c1/U631  ( .A(\c1/n513 ), .B(\c1/n523 ), .Y(\c1/n501 ) );
  AOI21X1 \c1/U630  ( .A(\c1/n521 ), .B(\c1/n522 ), .C(n336), .Y(\c1/n520 ) );
  NAND3X1 \c1/U629  ( .A(\c1/n519 ), .B(\c1/n499 ), .C(\c1/n520 ), .Y(
        \c1/n518 ) );
  NAND2X1 \c1/U628  ( .A(\c1/n514 ), .B(\c1/n517 ), .Y(\c1/n512 ) );
  NAND2X1 \c1/U627  ( .A(n335), .B(\c1/n493 ), .Y(\c1/n516 ) );
  OAI22X1 \c1/U626  ( .A(n20), .B(n332), .C(\c1/n515 ), .D(\c1/n516 ), .Y(
        \c1/n842 ) );
  NAND2X1 \c1/U625  ( .A(\c1/n513 ), .B(\c1/n514 ), .Y(\c1/n500 ) );
  NAND3X1 \c1/U624  ( .A(\c1/n510 ), .B(\c1/n500 ), .C(\c1/n511 ), .Y(
        \c1/n507 ) );
  NAND3X1 \c1/U623  ( .A(\c1/n498 ), .B(\c1/n509 ), .C(\c1/n495 ), .Y(
        \c1/n508 ) );
  OAI21X1 \c1/U622  ( .A(\c1/n507 ), .B(\c1/n508 ), .C(n20), .Y(\c1/n506 ) );
  OAI21X1 \c1/U621  ( .A(n20), .B(n330), .C(\c1/n506 ), .Y(\c1/n841 ) );
  NAND2X1 \c1/U620  ( .A(\c1/n495 ), .B(\c1/n494 ), .Y(\c1/n503 ) );
  NAND2X1 \c1/U619  ( .A(n335), .B(\c1/n505 ), .Y(\c1/n504 ) );
  OAI21X1 \c1/U618  ( .A(\c1/n503 ), .B(\c1/n504 ), .C(\c1/n493 ), .Y(
        \c1/n502 ) );
  OAI21X1 \c1/U617  ( .A(n20), .B(n331), .C(\c1/n502 ), .Y(\c1/n840 ) );
  NAND3X1 \c1/U616  ( .A(\c1/n499 ), .B(\c1/n500 ), .C(\c1/n501 ), .Y(
        \c1/n496 ) );
  NAND3X1 \c1/U615  ( .A(\c1/n495 ), .B(\c1/n498 ), .C(n338), .Y(\c1/n497 ) );
  OAI22X1 \c1/U614  ( .A(n20), .B(n333), .C(\c1/n496 ), .D(\c1/n497 ), .Y(
        \c1/n839 ) );
  NAND2X1 \c1/U613  ( .A(n334), .B(\c1/n494 ), .Y(\c1/n492 ) );
  OAI21X1 \c1/U612  ( .A(n340), .B(\c1/n492 ), .C(\c1/n493 ), .Y(\c1/n491 ) );
  OAI21X1 \c1/U611  ( .A(n23), .B(\c1/n490 ), .C(\c1/n491 ), .Y(\c1/n489 ) );
  AOI21X1 \c1/U610  ( .A(n22), .B(n328), .C(\c1/n489 ), .Y(\c1/n838 ) );
  NAND2X1 \c1/U609  ( .A(\c1/n395 ), .B(n428), .Y(\c1/n488 ) );
  OAI21X1 \c1/U608  ( .A(\c1/n441 ), .B(\c1/n488 ), .C(\c1/n394 ), .Y(
        \c1/n487 ) );
  OAI22X1 \c1/U607  ( .A(n404), .B(\c1/n487 ), .C(n423), .D(\c1/n392 ), .Y(
        \c1/n837 ) );
  OAI22X1 \c1/U606  ( .A(n383), .B(\c1/n487 ), .C(n423), .D(n398), .Y(
        \c1/n836 ) );
  OAI22X1 \c1/U605  ( .A(n391), .B(\c1/n487 ), .C(n423), .D(n396), .Y(
        \c1/n835 ) );
  OAI22X1 \c1/U604  ( .A(n323), .B(\c1/n487 ), .C(n423), .D(n408), .Y(
        \c1/n834 ) );
  NOR2X1 \c1/U603  ( .A(n323), .B(\c1/trans_reg [17]), .Y(\c1/n477 ) );
  NOR2X1 \c1/U602  ( .A(\c1/trans_reg [18]), .B(\c1/trans_reg [16]), .Y(
        \c1/n471 ) );
  NAND2X1 \c1/U601  ( .A(\c1/n477 ), .B(\c1/n471 ), .Y(\c1/n448 ) );
  NOR2X1 \c1/U600  ( .A(n404), .B(\c1/trans_reg [18]), .Y(\c1/n483 ) );
  NAND2X1 \c1/U599  ( .A(\c1/n477 ), .B(\c1/n483 ), .Y(\c1/n452 ) );
  NOR2X1 \c1/U598  ( .A(n323), .B(n383), .Y(\c1/n475 ) );
  NOR2X1 \c1/U597  ( .A(n391), .B(\c1/trans_reg [16]), .Y(\c1/n476 ) );
  NAND2X1 \c1/U596  ( .A(\c1/n475 ), .B(\c1/n476 ), .Y(\c1/n463 ) );
  NAND2X1 \c1/U595  ( .A(\c1/n475 ), .B(\c1/n471 ), .Y(\c1/n464 ) );
  NAND2X1 \c1/U594  ( .A(\c1/n477 ), .B(\c1/n476 ), .Y(\c1/n453 ) );
  NAND2X1 \c1/U593  ( .A(\c1/n475 ), .B(\c1/n483 ), .Y(\c1/n473 ) );
  NAND3X1 \c1/U592  ( .A(\c1/n463 ), .B(\c1/n464 ), .C(\c1/n486 ), .Y(
        \c1/n485 ) );
  NAND3X1 \c1/U591  ( .A(\c1/n448 ), .B(\c1/n452 ), .C(n320), .Y(\c1/n480 ) );
  NOR2X1 \c1/U590  ( .A(\c1/trans_reg [19]), .B(\c1/trans_reg [17]), .Y(
        \c1/n482 ) );
  NAND2X1 \c1/U589  ( .A(\c1/n482 ), .B(\c1/n483 ), .Y(\c1/n444 ) );
  NOR2X1 \c1/U588  ( .A(n391), .B(n404), .Y(\c1/n467 ) );
  NOR2X1 \c1/U587  ( .A(n383), .B(\c1/trans_reg [19]), .Y(\c1/n468 ) );
  NAND2X1 \c1/U586  ( .A(\c1/n476 ), .B(\c1/n468 ), .Y(\c1/n479 ) );
  AOI21X1 \c1/U585  ( .A(\c1/n482 ), .B(\c1/n467 ), .C(n325), .Y(\c1/n459 ) );
  NAND3X1 \c1/U584  ( .A(n19), .B(\c1/n444 ), .C(\c1/n459 ), .Y(\c1/n484 ) );
  NAND2X1 \c1/U583  ( .A(\c1/n483 ), .B(\c1/n468 ), .Y(\c1/n478 ) );
  AOI21X1 \c1/U582  ( .A(\c1/n476 ), .B(\c1/n482 ), .C(n327), .Y(\c1/n449 ) );
  NAND2X1 \c1/U581  ( .A(n324), .B(\c1/n449 ), .Y(\c1/n481 ) );
  OAI22X1 \c1/U580  ( .A(n19), .B(n315), .C(\c1/n480 ), .D(\c1/n481 ), .Y(
        \c1/n833 ) );
  NAND3X1 \c1/U579  ( .A(\c1/n448 ), .B(\c1/n478 ), .C(\c1/n479 ), .Y(
        \c1/n469 ) );
  NAND2X1 \c1/U578  ( .A(\c1/n467 ), .B(\c1/n477 ), .Y(\c1/n455 ) );
  AOI21X1 \c1/U577  ( .A(\c1/n475 ), .B(\c1/n476 ), .C(n322), .Y(\c1/n474 ) );
  NAND3X1 \c1/U576  ( .A(\c1/n473 ), .B(\c1/n453 ), .C(\c1/n474 ), .Y(
        \c1/n472 ) );
  NAND2X1 \c1/U575  ( .A(\c1/n468 ), .B(\c1/n471 ), .Y(\c1/n466 ) );
  NAND2X1 \c1/U574  ( .A(n321), .B(\c1/n447 ), .Y(\c1/n470 ) );
  OAI22X1 \c1/U573  ( .A(n19), .B(n318), .C(\c1/n469 ), .D(\c1/n470 ), .Y(
        \c1/n832 ) );
  NAND2X1 \c1/U572  ( .A(\c1/n467 ), .B(\c1/n468 ), .Y(\c1/n454 ) );
  NAND3X1 \c1/U571  ( .A(\c1/n464 ), .B(\c1/n454 ), .C(\c1/n465 ), .Y(
        \c1/n461 ) );
  NAND3X1 \c1/U570  ( .A(\c1/n452 ), .B(\c1/n463 ), .C(\c1/n449 ), .Y(
        \c1/n462 ) );
  OAI21X1 \c1/U569  ( .A(\c1/n461 ), .B(\c1/n462 ), .C(n20), .Y(\c1/n460 ) );
  OAI21X1 \c1/U568  ( .A(n20), .B(n316), .C(\c1/n460 ), .Y(\c1/n831 ) );
  NAND2X1 \c1/U567  ( .A(\c1/n449 ), .B(\c1/n448 ), .Y(\c1/n457 ) );
  NAND2X1 \c1/U566  ( .A(n321), .B(\c1/n459 ), .Y(\c1/n458 ) );
  OAI21X1 \c1/U565  ( .A(\c1/n457 ), .B(\c1/n458 ), .C(\c1/n447 ), .Y(
        \c1/n456 ) );
  OAI21X1 \c1/U564  ( .A(n20), .B(n317), .C(\c1/n456 ), .Y(\c1/n830 ) );
  NAND3X1 \c1/U563  ( .A(\c1/n453 ), .B(\c1/n454 ), .C(\c1/n455 ), .Y(
        \c1/n450 ) );
  NAND3X1 \c1/U562  ( .A(\c1/n449 ), .B(\c1/n452 ), .C(n324), .Y(\c1/n451 ) );
  OAI22X1 \c1/U561  ( .A(n19), .B(n319), .C(\c1/n450 ), .D(\c1/n451 ), .Y(
        \c1/n829 ) );
  NAND2X1 \c1/U560  ( .A(n320), .B(\c1/n448 ), .Y(\c1/n446 ) );
  OAI21X1 \c1/U559  ( .A(n326), .B(\c1/n446 ), .C(\c1/n447 ), .Y(\c1/n445 ) );
  OAI21X1 \c1/U558  ( .A(n23), .B(\c1/n444 ), .C(\c1/n445 ), .Y(\c1/n443 ) );
  AOI21X1 \c1/U557  ( .A(n22), .B(n314), .C(\c1/n443 ), .Y(\c1/n828 ) );
  NAND2X1 \c1/U556  ( .A(\c1/n395 ), .B(\c1/trans_num [0]), .Y(\c1/n442 ) );
  OAI21X1 \c1/U555  ( .A(\c1/n441 ), .B(\c1/n442 ), .C(\c1/n394 ), .Y(
        \c1/n440 ) );
  OAI22X1 \c1/U554  ( .A(n405), .B(\c1/n440 ), .C(n424), .D(\c1/n392 ), .Y(
        \c1/n827 ) );
  OAI22X1 \c1/U553  ( .A(n382), .B(\c1/n440 ), .C(n424), .D(n398), .Y(
        \c1/n826 ) );
  OAI22X1 \c1/U552  ( .A(n390), .B(\c1/n440 ), .C(n424), .D(n396), .Y(
        \c1/n825 ) );
  OAI22X1 \c1/U551  ( .A(n309), .B(\c1/n440 ), .C(n424), .D(n408), .Y(
        \c1/n824 ) );
  NOR2X1 \c1/U550  ( .A(n309), .B(\c1/trans_reg [21]), .Y(\c1/n430 ) );
  NOR2X1 \c1/U549  ( .A(\c1/trans_reg [22]), .B(\c1/trans_reg [20]), .Y(
        \c1/n424 ) );
  NAND2X1 \c1/U548  ( .A(\c1/n430 ), .B(\c1/n424 ), .Y(\c1/n401 ) );
  NOR2X1 \c1/U547  ( .A(n405), .B(\c1/trans_reg [22]), .Y(\c1/n436 ) );
  NAND2X1 \c1/U546  ( .A(\c1/n430 ), .B(\c1/n436 ), .Y(\c1/n405 ) );
  NOR2X1 \c1/U545  ( .A(n309), .B(n382), .Y(\c1/n428 ) );
  NOR2X1 \c1/U544  ( .A(n390), .B(\c1/trans_reg [20]), .Y(\c1/n429 ) );
  NAND2X1 \c1/U543  ( .A(\c1/n428 ), .B(\c1/n429 ), .Y(\c1/n416 ) );
  NAND2X1 \c1/U542  ( .A(\c1/n428 ), .B(\c1/n424 ), .Y(\c1/n417 ) );
  NAND2X1 \c1/U541  ( .A(\c1/n430 ), .B(\c1/n429 ), .Y(\c1/n406 ) );
  NAND2X1 \c1/U540  ( .A(\c1/n428 ), .B(\c1/n436 ), .Y(\c1/n426 ) );
  NAND3X1 \c1/U539  ( .A(\c1/n416 ), .B(\c1/n417 ), .C(\c1/n439 ), .Y(
        \c1/n438 ) );
  NAND3X1 \c1/U538  ( .A(\c1/n401 ), .B(\c1/n405 ), .C(n306), .Y(\c1/n433 ) );
  NOR2X1 \c1/U537  ( .A(\c1/trans_reg [23]), .B(\c1/trans_reg [21]), .Y(
        \c1/n435 ) );
  NAND2X1 \c1/U536  ( .A(\c1/n435 ), .B(\c1/n436 ), .Y(\c1/n397 ) );
  NOR2X1 \c1/U535  ( .A(n390), .B(n405), .Y(\c1/n420 ) );
  NOR2X1 \c1/U534  ( .A(n382), .B(\c1/trans_reg [23]), .Y(\c1/n421 ) );
  NAND2X1 \c1/U533  ( .A(\c1/n429 ), .B(\c1/n421 ), .Y(\c1/n432 ) );
  AOI21X1 \c1/U532  ( .A(\c1/n435 ), .B(\c1/n420 ), .C(n311), .Y(\c1/n412 ) );
  NAND3X1 \c1/U531  ( .A(n19), .B(\c1/n397 ), .C(\c1/n412 ), .Y(\c1/n437 ) );
  NAND2X1 \c1/U530  ( .A(\c1/n436 ), .B(\c1/n421 ), .Y(\c1/n431 ) );
  AOI21X1 \c1/U529  ( .A(\c1/n429 ), .B(\c1/n435 ), .C(n313), .Y(\c1/n402 ) );
  NAND2X1 \c1/U528  ( .A(n310), .B(\c1/n402 ), .Y(\c1/n434 ) );
  OAI22X1 \c1/U527  ( .A(n19), .B(n301), .C(\c1/n433 ), .D(\c1/n434 ), .Y(
        \c1/n823 ) );
  NAND3X1 \c1/U526  ( .A(\c1/n401 ), .B(\c1/n431 ), .C(\c1/n432 ), .Y(
        \c1/n422 ) );
  NAND2X1 \c1/U525  ( .A(\c1/n420 ), .B(\c1/n430 ), .Y(\c1/n408 ) );
  AOI21X1 \c1/U524  ( .A(\c1/n428 ), .B(\c1/n429 ), .C(n308), .Y(\c1/n427 ) );
  NAND3X1 \c1/U523  ( .A(\c1/n426 ), .B(\c1/n406 ), .C(\c1/n427 ), .Y(
        \c1/n425 ) );
  NAND2X1 \c1/U522  ( .A(\c1/n421 ), .B(\c1/n424 ), .Y(\c1/n419 ) );
  NAND2X1 \c1/U521  ( .A(n307), .B(\c1/n400 ), .Y(\c1/n423 ) );
  OAI22X1 \c1/U520  ( .A(n19), .B(n304), .C(\c1/n422 ), .D(\c1/n423 ), .Y(
        \c1/n822 ) );
  NAND2X1 \c1/U519  ( .A(\c1/n420 ), .B(\c1/n421 ), .Y(\c1/n407 ) );
  NAND3X1 \c1/U518  ( .A(\c1/n417 ), .B(\c1/n407 ), .C(\c1/n418 ), .Y(
        \c1/n414 ) );
  NAND3X1 \c1/U517  ( .A(\c1/n405 ), .B(\c1/n416 ), .C(\c1/n402 ), .Y(
        \c1/n415 ) );
  OAI21X1 \c1/U516  ( .A(\c1/n414 ), .B(\c1/n415 ), .C(n19), .Y(\c1/n413 ) );
  OAI21X1 \c1/U515  ( .A(n19), .B(n302), .C(\c1/n413 ), .Y(\c1/n821 ) );
  NAND2X1 \c1/U514  ( .A(\c1/n402 ), .B(\c1/n401 ), .Y(\c1/n410 ) );
  NAND2X1 \c1/U513  ( .A(n307), .B(\c1/n412 ), .Y(\c1/n411 ) );
  OAI21X1 \c1/U512  ( .A(\c1/n410 ), .B(\c1/n411 ), .C(\c1/n400 ), .Y(
        \c1/n409 ) );
  OAI21X1 \c1/U511  ( .A(n19), .B(n303), .C(\c1/n409 ), .Y(\c1/n820 ) );
  NAND3X1 \c1/U510  ( .A(\c1/n406 ), .B(\c1/n407 ), .C(\c1/n408 ), .Y(
        \c1/n403 ) );
  NAND3X1 \c1/U509  ( .A(\c1/n402 ), .B(\c1/n405 ), .C(n310), .Y(\c1/n404 ) );
  OAI22X1 \c1/U508  ( .A(n19), .B(n305), .C(\c1/n403 ), .D(\c1/n404 ), .Y(
        \c1/n819 ) );
  NAND2X1 \c1/U507  ( .A(n306), .B(\c1/n401 ), .Y(\c1/n399 ) );
  OAI21X1 \c1/U506  ( .A(n312), .B(\c1/n399 ), .C(\c1/n400 ), .Y(\c1/n398 ) );
  OAI21X1 \c1/U505  ( .A(n23), .B(\c1/n397 ), .C(\c1/n398 ), .Y(\c1/n396 ) );
  AOI21X1 \c1/U504  ( .A(n22), .B(n300), .C(\c1/n396 ), .Y(\c1/n818 ) );
  NAND2X1 \c1/U503  ( .A(\c1/trans_num [2]), .B(\c1/trans_num [1]), .Y(
        \c1/n393 ) );
  OAI21X1 \c1/U502  ( .A(n417), .B(\c1/n393 ), .C(\c1/n394 ), .Y(\c1/n391 ) );
  OAI22X1 \c1/U501  ( .A(n406), .B(\c1/n391 ), .C(n416), .D(\c1/n392 ), .Y(
        \c1/n817 ) );
  OAI22X1 \c1/U500  ( .A(n381), .B(\c1/n391 ), .C(n416), .D(n398), .Y(
        \c1/n816 ) );
  OAI22X1 \c1/U499  ( .A(n389), .B(\c1/n391 ), .C(n416), .D(n396), .Y(
        \c1/n815 ) );
  OAI22X1 \c1/U498  ( .A(n295), .B(\c1/n391 ), .C(n416), .D(n408), .Y(
        \c1/n814 ) );
  NOR2X1 \c1/U497  ( .A(n295), .B(\c1/trans_reg [25]), .Y(\c1/n381 ) );
  NOR2X1 \c1/U496  ( .A(\c1/trans_reg [26]), .B(\c1/trans_reg [24]), .Y(
        \c1/n375 ) );
  NAND2X1 \c1/U495  ( .A(\c1/n381 ), .B(\c1/n375 ), .Y(\c1/n351 ) );
  NOR2X1 \c1/U494  ( .A(n406), .B(\c1/trans_reg [26]), .Y(\c1/n387 ) );
  NAND2X1 \c1/U493  ( .A(\c1/n381 ), .B(\c1/n387 ), .Y(\c1/n356 ) );
  NOR2X1 \c1/U492  ( .A(n295), .B(n381), .Y(\c1/n379 ) );
  NOR2X1 \c1/U491  ( .A(n389), .B(\c1/trans_reg [24]), .Y(\c1/n380 ) );
  NAND2X1 \c1/U490  ( .A(\c1/n379 ), .B(\c1/n380 ), .Y(\c1/n367 ) );
  NAND2X1 \c1/U489  ( .A(\c1/n379 ), .B(\c1/n375 ), .Y(\c1/n368 ) );
  NAND2X1 \c1/U488  ( .A(\c1/n381 ), .B(\c1/n380 ), .Y(\c1/n357 ) );
  NAND2X1 \c1/U487  ( .A(\c1/n379 ), .B(\c1/n387 ), .Y(\c1/n377 ) );
  NAND3X1 \c1/U486  ( .A(\c1/n367 ), .B(\c1/n368 ), .C(\c1/n390 ), .Y(
        \c1/n389 ) );
  NAND3X1 \c1/U485  ( .A(\c1/n351 ), .B(\c1/n356 ), .C(n292), .Y(\c1/n384 ) );
  NOR2X1 \c1/U484  ( .A(\c1/trans_reg [27]), .B(\c1/trans_reg [25]), .Y(
        \c1/n386 ) );
  NAND2X1 \c1/U483  ( .A(\c1/n386 ), .B(\c1/n387 ), .Y(\c1/n347 ) );
  NOR2X1 \c1/U482  ( .A(n389), .B(n406), .Y(\c1/n371 ) );
  NOR2X1 \c1/U481  ( .A(n381), .B(\c1/trans_reg [27]), .Y(\c1/n372 ) );
  NAND2X1 \c1/U480  ( .A(\c1/n380 ), .B(\c1/n372 ), .Y(\c1/n383 ) );
  AOI21X1 \c1/U479  ( .A(\c1/n386 ), .B(\c1/n371 ), .C(n297), .Y(\c1/n363 ) );
  NAND3X1 \c1/U478  ( .A(n20), .B(\c1/n347 ), .C(\c1/n363 ), .Y(\c1/n388 ) );
  NAND2X1 \c1/U477  ( .A(\c1/n387 ), .B(\c1/n372 ), .Y(\c1/n382 ) );
  AOI21X1 \c1/U476  ( .A(\c1/n380 ), .B(\c1/n386 ), .C(n299), .Y(\c1/n352 ) );
  NAND2X1 \c1/U475  ( .A(n296), .B(\c1/n352 ), .Y(\c1/n385 ) );
  OAI22X1 \c1/U474  ( .A(n19), .B(n287), .C(\c1/n384 ), .D(\c1/n385 ), .Y(
        \c1/n813 ) );
  NAND3X1 \c1/U473  ( .A(\c1/n351 ), .B(\c1/n382 ), .C(\c1/n383 ), .Y(
        \c1/n373 ) );
  NAND2X1 \c1/U472  ( .A(\c1/n371 ), .B(\c1/n381 ), .Y(\c1/n359 ) );
  AOI21X1 \c1/U471  ( .A(\c1/n379 ), .B(\c1/n380 ), .C(n294), .Y(\c1/n378 ) );
  NAND3X1 \c1/U470  ( .A(\c1/n377 ), .B(\c1/n357 ), .C(\c1/n378 ), .Y(
        \c1/n376 ) );
  NAND2X1 \c1/U469  ( .A(\c1/n372 ), .B(\c1/n375 ), .Y(\c1/n370 ) );
  NAND2X1 \c1/U468  ( .A(n293), .B(\c1/n350 ), .Y(\c1/n374 ) );
  OAI22X1 \c1/U467  ( .A(n19), .B(n290), .C(\c1/n373 ), .D(\c1/n374 ), .Y(
        \c1/n812 ) );
  NAND2X1 \c1/U466  ( .A(\c1/n371 ), .B(\c1/n372 ), .Y(\c1/n358 ) );
  NAND3X1 \c1/U465  ( .A(\c1/n368 ), .B(\c1/n358 ), .C(\c1/n369 ), .Y(
        \c1/n365 ) );
  NAND3X1 \c1/U464  ( .A(\c1/n356 ), .B(\c1/n367 ), .C(\c1/n352 ), .Y(
        \c1/n366 ) );
  OAI21X1 \c1/U463  ( .A(\c1/n365 ), .B(\c1/n366 ), .C(n20), .Y(\c1/n364 ) );
  OAI21X1 \c1/U462  ( .A(n20), .B(n288), .C(\c1/n364 ), .Y(\c1/n811 ) );
  NAND2X1 \c1/U461  ( .A(\c1/n352 ), .B(\c1/n351 ), .Y(\c1/n361 ) );
  NAND2X1 \c1/U460  ( .A(n293), .B(\c1/n363 ), .Y(\c1/n362 ) );
  OAI21X1 \c1/U459  ( .A(\c1/n361 ), .B(\c1/n362 ), .C(\c1/n350 ), .Y(
        \c1/n360 ) );
  OAI21X1 \c1/U458  ( .A(n20), .B(n289), .C(\c1/n360 ), .Y(\c1/n810 ) );
  NAND3X1 \c1/U457  ( .A(\c1/n357 ), .B(\c1/n358 ), .C(\c1/n359 ), .Y(
        \c1/n354 ) );
  NAND3X1 \c1/U456  ( .A(\c1/n352 ), .B(\c1/n356 ), .C(n296), .Y(\c1/n355 ) );
  OAI22X1 \c1/U455  ( .A(n19), .B(n291), .C(\c1/n354 ), .D(\c1/n355 ), .Y(
        \c1/n809 ) );
  NAND2X1 \c1/U454  ( .A(n292), .B(\c1/n351 ), .Y(\c1/n349 ) );
  OAI21X1 \c1/U453  ( .A(n298), .B(\c1/n349 ), .C(\c1/n350 ), .Y(\c1/n348 ) );
  OAI21X1 \c1/U452  ( .A(n24), .B(\c1/n347 ), .C(\c1/n348 ), .Y(\c1/n346 ) );
  AOI21X1 \c1/U451  ( .A(n21), .B(n286), .C(\c1/n346 ), .Y(\c1/n808 ) );
  NAND2X1 \c1/U450  ( .A(n283), .B(n255), .Y(\c1/n345 ) );
  OAI21X1 \c1/U449  ( .A(n254), .B(\c1/n345 ), .C(n10), .Y(\c1/n286 ) );
  NAND2X1 \c1/U448  ( .A(n432), .B(\c1/n286 ), .Y(\c1/n287 ) );
  NOR2X1 \c1/U447  ( .A(\c1/n342 ), .B(n281), .Y(\c1/n294 ) );
  NOR2X1 \c1/U446  ( .A(\c1/count [1]), .B(\c1/count [2]), .Y(\c1/n297 ) );
  AOI22X1 \c1/U445  ( .A(\c1/n297 ), .B(n354), .C(\c1/n298 ), .D(n301), .Y(
        \c1/n344 ) );
  OAI21X1 \c1/U444  ( .A(\c1/deck [18]), .B(n282), .C(\c1/n344 ), .Y(\c1/n343 ) );
  AOI22X1 \c1/U443  ( .A(\c1/n294 ), .B(n287), .C(\c1/count [0]), .D(\c1/n343 ), .Y(\c1/n339 ) );
  NOR2X1 \c1/U442  ( .A(\c1/n342 ), .B(\c1/count [2]), .Y(\c1/n290 ) );
  NAND2X1 \c1/U441  ( .A(\c1/n298 ), .B(n8), .Y(\c1/n292 ) );
  NAND2X1 \c1/U440  ( .A(\c1/n297 ), .B(n8), .Y(\c1/n293 ) );
  OAI22X1 \c1/U439  ( .A(\c1/deck [24]), .B(\c1/n292 ), .C(\c1/deck [0]), .D(
        \c1/n293 ), .Y(\c1/n341 ) );
  AOI21X1 \c1/U438  ( .A(\c1/n290 ), .B(n347), .C(\c1/n341 ), .Y(\c1/n340 ) );
  NAND2X1 \c1/U437  ( .A(\c1/n339 ), .B(\c1/n340 ), .Y(\c1/n260 ) );
  OAI21X1 \c1/U436  ( .A(\c1/n287 ), .B(\c1/n260 ), .C(n10), .Y(\c1/n338 ) );
  OAI21X1 \c1/U435  ( .A(\c1/n286 ), .B(n245), .C(n252), .Y(\c1/n807 ) );
  NAND2X1 \c1/U434  ( .A(P1_cards[0]), .B(n18), .Y(\c1/n337 ) );
  OAI21X1 \c1/U433  ( .A(n12), .B(n245), .C(\c1/n337 ), .Y(\c1/n806 ) );
  AOI22X1 \c1/U432  ( .A(\c1/n297 ), .B(n357), .C(\c1/n298 ), .D(n304), .Y(
        \c1/n336 ) );
  OAI21X1 \c1/U431  ( .A(\c1/deck [19]), .B(n282), .C(\c1/n336 ), .Y(\c1/n335 ) );
  AOI22X1 \c1/U430  ( .A(\c1/n294 ), .B(n290), .C(\c1/count [0]), .D(\c1/n335 ), .Y(\c1/n332 ) );
  OAI22X1 \c1/U429  ( .A(\c1/deck [25]), .B(\c1/n292 ), .C(\c1/deck [1]), .D(
        \c1/n293 ), .Y(\c1/n334 ) );
  AOI21X1 \c1/U428  ( .A(\c1/n290 ), .B(n343), .C(\c1/n334 ), .Y(\c1/n333 ) );
  NAND2X1 \c1/U427  ( .A(\c1/n332 ), .B(\c1/n333 ), .Y(\c1/n255 ) );
  OAI21X1 \c1/U426  ( .A(\c1/n287 ), .B(\c1/n255 ), .C(n10), .Y(\c1/n331 ) );
  OAI21X1 \c1/U425  ( .A(\c1/n286 ), .B(n246), .C(n253), .Y(\c1/n805 ) );
  NAND2X1 \c1/U424  ( .A(P1_cards[1]), .B(n18), .Y(\c1/n330 ) );
  OAI21X1 \c1/U423  ( .A(n12), .B(n246), .C(\c1/n330 ), .Y(\c1/n804 ) );
  AOI22X1 \c1/U422  ( .A(\c1/n297 ), .B(n355), .C(\c1/n298 ), .D(n302), .Y(
        \c1/n329 ) );
  OAI21X1 \c1/U421  ( .A(\c1/deck [20]), .B(n282), .C(\c1/n329 ), .Y(\c1/n328 ) );
  AOI22X1 \c1/U420  ( .A(\c1/n294 ), .B(n288), .C(\c1/count [0]), .D(\c1/n328 ), .Y(\c1/n325 ) );
  OAI22X1 \c1/U419  ( .A(\c1/deck [26]), .B(\c1/n292 ), .C(\c1/deck [2]), .D(
        \c1/n293 ), .Y(\c1/n327 ) );
  AOI21X1 \c1/U418  ( .A(\c1/n290 ), .B(n345), .C(\c1/n327 ), .Y(\c1/n326 ) );
  NAND2X1 \c1/U417  ( .A(\c1/n325 ), .B(\c1/n326 ), .Y(\c1/n250 ) );
  OAI22X1 \c1/U416  ( .A(\c1/n286 ), .B(n247), .C(\c1/n250 ), .D(\c1/n287 ), 
        .Y(\c1/n803 ) );
  NAND2X1 \c1/U415  ( .A(P1_cards[2]), .B(n18), .Y(\c1/n324 ) );
  OAI21X1 \c1/U414  ( .A(n12), .B(n247), .C(\c1/n324 ), .Y(\c1/n802 ) );
  NAND2X1 \c1/U413  ( .A(n10), .B(\c1/n323 ), .Y(\c1/n274 ) );
  NAND2X1 \c1/U412  ( .A(n432), .B(\c1/n274 ), .Y(\c1/n275 ) );
  OAI22X1 \c1/U411  ( .A(\c1/n274 ), .B(n239), .C(\c1/n250 ), .D(\c1/n275 ), 
        .Y(\c1/n801 ) );
  NAND2X1 \c1/U410  ( .A(P1_cards[20]), .B(n18), .Y(\c1/n322 ) );
  OAI21X1 \c1/U409  ( .A(n12), .B(n239), .C(\c1/n322 ), .Y(\c1/n800 ) );
  NAND2X1 \c1/U408  ( .A(\c1/n319 ), .B(n283), .Y(\c1/n321 ) );
  OAI21X1 \c1/U407  ( .A(n255), .B(\c1/n321 ), .C(n10), .Y(\c1/n271 ) );
  NAND2X1 \c1/U406  ( .A(n432), .B(\c1/n271 ), .Y(\c1/n272 ) );
  OAI22X1 \c1/U405  ( .A(\c1/n271 ), .B(n233), .C(\c1/n250 ), .D(\c1/n272 ), 
        .Y(\c1/n799 ) );
  NAND2X1 \c1/U404  ( .A(P1_cards[14]), .B(n18), .Y(\c1/n320 ) );
  OAI21X1 \c1/U403  ( .A(n12), .B(n233), .C(\c1/n320 ), .Y(\c1/n798 ) );
  NAND2X1 \c1/U402  ( .A(\c1/n319 ), .B(n255), .Y(\c1/n318 ) );
  OAI21X1 \c1/U401  ( .A(n283), .B(\c1/n318 ), .C(n10), .Y(\c1/n277 ) );
  NAND2X1 \c1/U400  ( .A(n432), .B(\c1/n277 ), .Y(\c1/n278 ) );
  OAI22X1 \c1/U399  ( .A(\c1/n277 ), .B(n227), .C(\c1/n250 ), .D(\c1/n278 ), 
        .Y(\c1/n797 ) );
  NAND2X1 \c1/U398  ( .A(P1_cards[8]), .B(n18), .Y(\c1/n317 ) );
  OAI21X1 \c1/U397  ( .A(n12), .B(n227), .C(\c1/n317 ), .Y(\c1/n796 ) );
  AOI22X1 \c1/U396  ( .A(\c1/n297 ), .B(n356), .C(\c1/n298 ), .D(n303), .Y(
        \c1/n316 ) );
  OAI21X1 \c1/U395  ( .A(\c1/deck [21]), .B(n282), .C(\c1/n316 ), .Y(\c1/n315 ) );
  AOI22X1 \c1/U394  ( .A(\c1/n294 ), .B(n289), .C(\c1/count [0]), .D(\c1/n315 ), .Y(\c1/n312 ) );
  OAI22X1 \c1/U393  ( .A(\c1/deck [27]), .B(\c1/n292 ), .C(\c1/deck [3]), .D(
        \c1/n293 ), .Y(\c1/n314 ) );
  AOI21X1 \c1/U392  ( .A(\c1/n290 ), .B(n344), .C(\c1/n314 ), .Y(\c1/n313 ) );
  NAND2X1 \c1/U391  ( .A(\c1/n312 ), .B(\c1/n313 ), .Y(\c1/n245 ) );
  OAI22X1 \c1/U390  ( .A(\c1/n286 ), .B(n248), .C(\c1/n245 ), .D(\c1/n287 ), 
        .Y(\c1/n795 ) );
  NAND2X1 \c1/U389  ( .A(P1_cards[3]), .B(n18), .Y(\c1/n311 ) );
  OAI21X1 \c1/U388  ( .A(n13), .B(n248), .C(\c1/n311 ), .Y(\c1/n794 ) );
  OAI22X1 \c1/U387  ( .A(\c1/n274 ), .B(n240), .C(\c1/n245 ), .D(\c1/n275 ), 
        .Y(\c1/n793 ) );
  NAND2X1 \c1/U386  ( .A(P1_cards[21]), .B(n18), .Y(\c1/n310 ) );
  OAI21X1 \c1/U385  ( .A(n13), .B(n240), .C(\c1/n310 ), .Y(\c1/n792 ) );
  OAI22X1 \c1/U384  ( .A(\c1/n271 ), .B(n234), .C(\c1/n245 ), .D(\c1/n272 ), 
        .Y(\c1/n791 ) );
  NAND2X1 \c1/U383  ( .A(P1_cards[15]), .B(n17), .Y(\c1/n309 ) );
  OAI21X1 \c1/U382  ( .A(n12), .B(n234), .C(\c1/n309 ), .Y(\c1/n790 ) );
  OAI22X1 \c1/U381  ( .A(\c1/n277 ), .B(n228), .C(\c1/n245 ), .D(\c1/n278 ), 
        .Y(\c1/n789 ) );
  NAND2X1 \c1/U380  ( .A(P1_cards[9]), .B(n17), .Y(\c1/n308 ) );
  OAI21X1 \c1/U379  ( .A(n13), .B(n228), .C(\c1/n308 ), .Y(\c1/n788 ) );
  AOI22X1 \c1/U378  ( .A(\c1/n297 ), .B(n358), .C(\c1/n298 ), .D(n305), .Y(
        \c1/n307 ) );
  OAI21X1 \c1/U377  ( .A(\c1/deck [22]), .B(n282), .C(\c1/n307 ), .Y(\c1/n306 ) );
  AOI22X1 \c1/U376  ( .A(\c1/n294 ), .B(n291), .C(\c1/count [0]), .D(\c1/n306 ), .Y(\c1/n303 ) );
  OAI22X1 \c1/U375  ( .A(\c1/deck [28]), .B(\c1/n292 ), .C(\c1/deck [4]), .D(
        \c1/n293 ), .Y(\c1/n305 ) );
  AOI21X1 \c1/U374  ( .A(\c1/n290 ), .B(n346), .C(\c1/n305 ), .Y(\c1/n304 ) );
  NAND2X1 \c1/U373  ( .A(\c1/n303 ), .B(\c1/n304 ), .Y(\c1/n240 ) );
  OAI22X1 \c1/U372  ( .A(\c1/n286 ), .B(n249), .C(\c1/n240 ), .D(\c1/n287 ), 
        .Y(\c1/n787 ) );
  NAND2X1 \c1/U371  ( .A(P1_cards[4]), .B(n17), .Y(\c1/n302 ) );
  OAI21X1 \c1/U370  ( .A(n13), .B(n249), .C(\c1/n302 ), .Y(\c1/n786 ) );
  OAI22X1 \c1/U369  ( .A(\c1/n274 ), .B(n241), .C(\c1/n240 ), .D(\c1/n275 ), 
        .Y(\c1/n785 ) );
  NAND2X1 \c1/U368  ( .A(P1_cards[22]), .B(n16), .Y(\c1/n301 ) );
  OAI21X1 \c1/U367  ( .A(n12), .B(n241), .C(\c1/n301 ), .Y(\c1/n784 ) );
  OAI22X1 \c1/U366  ( .A(\c1/n271 ), .B(n235), .C(\c1/n240 ), .D(\c1/n272 ), 
        .Y(\c1/n783 ) );
  NAND2X1 \c1/U365  ( .A(P1_cards[16]), .B(n17), .Y(\c1/n300 ) );
  OAI21X1 \c1/U364  ( .A(n14), .B(n235), .C(\c1/n300 ), .Y(\c1/n782 ) );
  OAI22X1 \c1/U363  ( .A(\c1/n277 ), .B(n229), .C(\c1/n240 ), .D(\c1/n278 ), 
        .Y(\c1/n781 ) );
  NAND2X1 \c1/U362  ( .A(P1_cards[10]), .B(n17), .Y(\c1/n299 ) );
  OAI21X1 \c1/U361  ( .A(n13), .B(n229), .C(\c1/n299 ), .Y(\c1/n780 ) );
  AOI22X1 \c1/U360  ( .A(\c1/n297 ), .B(n353), .C(\c1/n298 ), .D(n300), .Y(
        \c1/n296 ) );
  OAI21X1 \c1/U359  ( .A(\c1/deck [23]), .B(n282), .C(\c1/n296 ), .Y(\c1/n295 ) );
  AOI22X1 \c1/U358  ( .A(\c1/n294 ), .B(n286), .C(\c1/count [0]), .D(\c1/n295 ), .Y(\c1/n288 ) );
  OAI22X1 \c1/U357  ( .A(\c1/deck [29]), .B(\c1/n292 ), .C(\c1/deck [5]), .D(
        \c1/n293 ), .Y(\c1/n291 ) );
  AOI21X1 \c1/U356  ( .A(\c1/n290 ), .B(n342), .C(\c1/n291 ), .Y(\c1/n289 ) );
  NAND2X1 \c1/U355  ( .A(\c1/n288 ), .B(\c1/n289 ), .Y(\c1/n228 ) );
  OAI22X1 \c1/U354  ( .A(n250), .B(\c1/n286 ), .C(\c1/n228 ), .D(\c1/n287 ), 
        .Y(\c1/n779 ) );
  NAND2X1 \c1/U353  ( .A(P1_cards[5]), .B(n17), .Y(\c1/n285 ) );
  OAI21X1 \c1/U352  ( .A(n14), .B(n250), .C(\c1/n285 ), .Y(\c1/n778 ) );
  OAI22X1 \c1/U351  ( .A(\c1/n274 ), .B(n242), .C(\c1/n228 ), .D(\c1/n275 ), 
        .Y(\c1/n777 ) );
  NAND2X1 \c1/U350  ( .A(P1_cards[23]), .B(n17), .Y(\c1/n284 ) );
  OAI21X1 \c1/U349  ( .A(n14), .B(n242), .C(\c1/n284 ), .Y(\c1/n776 ) );
  OAI22X1 \c1/U348  ( .A(\c1/n271 ), .B(n236), .C(\c1/n228 ), .D(\c1/n272 ), 
        .Y(\c1/n775 ) );
  NAND2X1 \c1/U347  ( .A(P1_cards[17]), .B(n17), .Y(\c1/n283 ) );
  OAI21X1 \c1/U346  ( .A(n14), .B(n236), .C(\c1/n283 ), .Y(\c1/n774 ) );
  OAI22X1 \c1/U345  ( .A(\c1/n277 ), .B(n230), .C(\c1/n228 ), .D(\c1/n278 ), 
        .Y(\c1/n773 ) );
  NAND2X1 \c1/U344  ( .A(P1_cards[11]), .B(n17), .Y(\c1/n282 ) );
  OAI21X1 \c1/U343  ( .A(n14), .B(n230), .C(\c1/n282 ), .Y(\c1/n772 ) );
  OAI22X1 \c1/U342  ( .A(\c1/n277 ), .B(n231), .C(\c1/n260 ), .D(\c1/n278 ), 
        .Y(\c1/n771 ) );
  NAND2X1 \c1/U341  ( .A(P1_cards[6]), .B(n17), .Y(\c1/n281 ) );
  OAI21X1 \c1/U340  ( .A(n14), .B(n231), .C(\c1/n281 ), .Y(\c1/n770 ) );
  OAI22X1 \c1/U339  ( .A(\c1/n274 ), .B(n243), .C(\c1/n260 ), .D(\c1/n275 ), 
        .Y(\c1/n769 ) );
  NAND2X1 \c1/U338  ( .A(P1_cards[18]), .B(n17), .Y(\c1/n280 ) );
  OAI21X1 \c1/U337  ( .A(n15), .B(n243), .C(\c1/n280 ), .Y(\c1/n768 ) );
  OAI22X1 \c1/U336  ( .A(\c1/n271 ), .B(n237), .C(\c1/n260 ), .D(\c1/n272 ), 
        .Y(\c1/n767 ) );
  NAND2X1 \c1/U335  ( .A(P1_cards[12]), .B(n17), .Y(\c1/n279 ) );
  OAI21X1 \c1/U334  ( .A(n15), .B(n237), .C(\c1/n279 ), .Y(\c1/n766 ) );
  OAI22X1 \c1/U333  ( .A(n232), .B(\c1/n277 ), .C(\c1/n255 ), .D(\c1/n278 ), 
        .Y(\c1/n765 ) );
  NAND2X1 \c1/U332  ( .A(P1_cards[7]), .B(n17), .Y(\c1/n276 ) );
  OAI21X1 \c1/U331  ( .A(n15), .B(n232), .C(\c1/n276 ), .Y(\c1/n764 ) );
  OAI22X1 \c1/U330  ( .A(n244), .B(\c1/n274 ), .C(\c1/n255 ), .D(\c1/n275 ), 
        .Y(\c1/n763 ) );
  NAND2X1 \c1/U329  ( .A(P1_cards[19]), .B(n17), .Y(\c1/n273 ) );
  OAI21X1 \c1/U328  ( .A(n15), .B(n244), .C(\c1/n273 ), .Y(\c1/n762 ) );
  OAI22X1 \c1/U327  ( .A(n238), .B(\c1/n271 ), .C(\c1/n255 ), .D(\c1/n272 ), 
        .Y(\c1/n761 ) );
  NAND2X1 \c1/U326  ( .A(P1_cards[13]), .B(n17), .Y(\c1/n270 ) );
  OAI21X1 \c1/U325  ( .A(n14), .B(n238), .C(\c1/n270 ), .Y(\c1/n760 ) );
  NAND2X1 \c1/U324  ( .A(n413), .B(n412), .Y(\c1/n269 ) );
  OAI21X1 \c1/U323  ( .A(n411), .B(\c1/n269 ), .C(n10), .Y(\c1/n237 ) );
  NAND2X1 \c1/U322  ( .A(n434), .B(\c1/n237 ), .Y(\c1/n238 ) );
  OAI22X1 \c1/U321  ( .A(\c1/n237 ), .B(n276), .C(\c1/n238 ), .D(\c1/n260 ), 
        .Y(\c1/n759 ) );
  NAND2X1 \c1/U320  ( .A(P2_cards[0]), .B(n17), .Y(\c1/n268 ) );
  OAI21X1 \c1/U319  ( .A(n13), .B(n276), .C(\c1/n268 ), .Y(\c1/n758 ) );
  NAND2X1 \c1/U318  ( .A(n10), .B(\c1/n267 ), .Y(\c1/n234 ) );
  NAND2X1 \c1/U317  ( .A(n434), .B(\c1/n234 ), .Y(\c1/n235 ) );
  OAI22X1 \c1/U316  ( .A(\c1/n234 ), .B(n277), .C(\c1/n235 ), .D(\c1/n260 ), 
        .Y(\c1/n757 ) );
  NAND2X1 \c1/U315  ( .A(P2_cards[18]), .B(n17), .Y(\c1/n266 ) );
  OAI21X1 \c1/U314  ( .A(n15), .B(n277), .C(\c1/n266 ), .Y(\c1/n756 ) );
  NAND2X1 \c1/U313  ( .A(\c1/n263 ), .B(n413), .Y(\c1/n265 ) );
  OAI21X1 \c1/U312  ( .A(n412), .B(\c1/n265 ), .C(n10), .Y(\c1/n231 ) );
  NAND2X1 \c1/U311  ( .A(n434), .B(\c1/n231 ), .Y(\c1/n232 ) );
  OAI22X1 \c1/U310  ( .A(\c1/n231 ), .B(n278), .C(\c1/n232 ), .D(\c1/n260 ), 
        .Y(\c1/n755 ) );
  NAND2X1 \c1/U309  ( .A(P2_cards[12]), .B(n17), .Y(\c1/n264 ) );
  OAI21X1 \c1/U308  ( .A(n15), .B(n278), .C(\c1/n264 ), .Y(\c1/n754 ) );
  NAND2X1 \c1/U307  ( .A(\c1/n263 ), .B(n412), .Y(\c1/n261 ) );
  OAI21X1 \c1/U306  ( .A(n413), .B(\c1/n261 ), .C(n10), .Y(\c1/n227 ) );
  NAND2X1 \c1/U305  ( .A(n434), .B(\c1/n227 ), .Y(\c1/n229 ) );
  OAI22X1 \c1/U304  ( .A(\c1/n227 ), .B(n279), .C(\c1/n229 ), .D(\c1/n260 ), 
        .Y(\c1/n753 ) );
  NAND2X1 \c1/U303  ( .A(P2_cards[6]), .B(n16), .Y(\c1/n259 ) );
  OAI21X1 \c1/U302  ( .A(n15), .B(n279), .C(\c1/n259 ), .Y(\c1/n752 ) );
  OAI22X1 \c1/U301  ( .A(\c1/n237 ), .B(n272), .C(\c1/n238 ), .D(\c1/n255 ), 
        .Y(\c1/n751 ) );
  NAND2X1 \c1/U300  ( .A(P2_cards[1]), .B(n16), .Y(\c1/n258 ) );
  OAI21X1 \c1/U299  ( .A(n14), .B(n272), .C(\c1/n258 ), .Y(\c1/n750 ) );
  OAI22X1 \c1/U298  ( .A(\c1/n234 ), .B(n273), .C(\c1/n235 ), .D(\c1/n255 ), 
        .Y(\c1/n749 ) );
  NAND2X1 \c1/U297  ( .A(P2_cards[19]), .B(n16), .Y(\c1/n257 ) );
  OAI21X1 \c1/U296  ( .A(n15), .B(n273), .C(\c1/n257 ), .Y(\c1/n748 ) );
  OAI22X1 \c1/U295  ( .A(\c1/n231 ), .B(n274), .C(\c1/n232 ), .D(\c1/n255 ), 
        .Y(\c1/n747 ) );
  NAND2X1 \c1/U294  ( .A(P2_cards[13]), .B(n16), .Y(\c1/n256 ) );
  OAI21X1 \c1/U293  ( .A(n15), .B(n274), .C(\c1/n256 ), .Y(\c1/n746 ) );
  OAI22X1 \c1/U292  ( .A(\c1/n227 ), .B(n275), .C(\c1/n229 ), .D(\c1/n255 ), 
        .Y(\c1/n745 ) );
  NAND2X1 \c1/U291  ( .A(P2_cards[7]), .B(n16), .Y(\c1/n254 ) );
  OAI21X1 \c1/U290  ( .A(n13), .B(n275), .C(\c1/n254 ), .Y(\c1/n744 ) );
  OAI22X1 \c1/U289  ( .A(\c1/n237 ), .B(n268), .C(\c1/n238 ), .D(\c1/n250 ), 
        .Y(\c1/n743 ) );
  NAND2X1 \c1/U288  ( .A(P2_cards[2]), .B(n16), .Y(\c1/n253 ) );
  OAI21X1 \c1/U287  ( .A(n14), .B(n268), .C(\c1/n253 ), .Y(\c1/n742 ) );
  OAI22X1 \c1/U286  ( .A(\c1/n234 ), .B(n269), .C(\c1/n235 ), .D(\c1/n250 ), 
        .Y(\c1/n741 ) );
  NAND2X1 \c1/U285  ( .A(P2_cards[20]), .B(n16), .Y(\c1/n252 ) );
  OAI21X1 \c1/U284  ( .A(n14), .B(n269), .C(\c1/n252 ), .Y(\c1/n740 ) );
  OAI22X1 \c1/U283  ( .A(\c1/n231 ), .B(n270), .C(\c1/n232 ), .D(\c1/n250 ), 
        .Y(\c1/n739 ) );
  NAND2X1 \c1/U282  ( .A(P2_cards[14]), .B(n16), .Y(\c1/n251 ) );
  OAI21X1 \c1/U281  ( .A(n14), .B(n270), .C(\c1/n251 ), .Y(\c1/n738 ) );
  OAI22X1 \c1/U280  ( .A(\c1/n227 ), .B(n271), .C(\c1/n229 ), .D(\c1/n250 ), 
        .Y(\c1/n737 ) );
  NAND2X1 \c1/U279  ( .A(P2_cards[8]), .B(n16), .Y(\c1/n249 ) );
  OAI21X1 \c1/U278  ( .A(n14), .B(n271), .C(\c1/n249 ), .Y(\c1/n736 ) );
  OAI22X1 \c1/U277  ( .A(\c1/n237 ), .B(n264), .C(\c1/n238 ), .D(\c1/n245 ), 
        .Y(\c1/n735 ) );
  NAND2X1 \c1/U276  ( .A(P2_cards[3]), .B(n16), .Y(\c1/n248 ) );
  OAI21X1 \c1/U275  ( .A(n13), .B(n264), .C(\c1/n248 ), .Y(\c1/n734 ) );
  OAI22X1 \c1/U274  ( .A(\c1/n234 ), .B(n265), .C(\c1/n235 ), .D(\c1/n245 ), 
        .Y(\c1/n733 ) );
  NAND2X1 \c1/U273  ( .A(P2_cards[21]), .B(n16), .Y(\c1/n247 ) );
  OAI21X1 \c1/U272  ( .A(n14), .B(n265), .C(\c1/n247 ), .Y(\c1/n732 ) );
  OAI22X1 \c1/U271  ( .A(\c1/n231 ), .B(n266), .C(\c1/n232 ), .D(\c1/n245 ), 
        .Y(\c1/n731 ) );
  NAND2X1 \c1/U270  ( .A(P2_cards[15]), .B(n16), .Y(\c1/n246 ) );
  OAI21X1 \c1/U269  ( .A(n13), .B(n266), .C(\c1/n246 ), .Y(\c1/n730 ) );
  OAI22X1 \c1/U268  ( .A(\c1/n227 ), .B(n267), .C(\c1/n229 ), .D(\c1/n245 ), 
        .Y(\c1/n729 ) );
  NAND2X1 \c1/U267  ( .A(P2_cards[9]), .B(n16), .Y(\c1/n244 ) );
  OAI21X1 \c1/U266  ( .A(n13), .B(n267), .C(\c1/n244 ), .Y(\c1/n728 ) );
  OAI22X1 \c1/U265  ( .A(\c1/n237 ), .B(n260), .C(\c1/n238 ), .D(\c1/n240 ), 
        .Y(\c1/n727 ) );
  NAND2X1 \c1/U264  ( .A(P2_cards[4]), .B(n16), .Y(\c1/n243 ) );
  OAI21X1 \c1/U263  ( .A(n13), .B(n260), .C(\c1/n243 ), .Y(\c1/n726 ) );
  OAI22X1 \c1/U262  ( .A(\c1/n234 ), .B(n261), .C(\c1/n235 ), .D(\c1/n240 ), 
        .Y(\c1/n725 ) );
  NAND2X1 \c1/U261  ( .A(P2_cards[22]), .B(n16), .Y(\c1/n242 ) );
  OAI21X1 \c1/U260  ( .A(n13), .B(n261), .C(\c1/n242 ), .Y(\c1/n724 ) );
  OAI22X1 \c1/U259  ( .A(\c1/n231 ), .B(n262), .C(\c1/n232 ), .D(\c1/n240 ), 
        .Y(\c1/n723 ) );
  NAND2X1 \c1/U258  ( .A(P2_cards[16]), .B(n15), .Y(\c1/n241 ) );
  OAI21X1 \c1/U257  ( .A(n12), .B(n262), .C(\c1/n241 ), .Y(\c1/n722 ) );
  OAI22X1 \c1/U256  ( .A(\c1/n227 ), .B(n263), .C(\c1/n229 ), .D(\c1/n240 ), 
        .Y(\c1/n721 ) );
  NAND2X1 \c1/U255  ( .A(P2_cards[10]), .B(n15), .Y(\c1/n239 ) );
  OAI21X1 \c1/U254  ( .A(n12), .B(n263), .C(\c1/n239 ), .Y(\c1/n720 ) );
  OAI22X1 \c1/U253  ( .A(n256), .B(\c1/n237 ), .C(\c1/n228 ), .D(\c1/n238 ), 
        .Y(\c1/n719 ) );
  NAND2X1 \c1/U252  ( .A(P2_cards[5]), .B(n16), .Y(\c1/n236 ) );
  OAI21X1 \c1/U251  ( .A(n12), .B(n256), .C(\c1/n236 ), .Y(\c1/n718 ) );
  OAI22X1 \c1/U250  ( .A(n257), .B(\c1/n234 ), .C(\c1/n228 ), .D(\c1/n235 ), 
        .Y(\c1/n717 ) );
  NAND2X1 \c1/U249  ( .A(P2_cards[23]), .B(n15), .Y(\c1/n233 ) );
  OAI21X1 \c1/U248  ( .A(n12), .B(n257), .C(\c1/n233 ), .Y(\c1/n716 ) );
  OAI22X1 \c1/U247  ( .A(n258), .B(\c1/n231 ), .C(\c1/n228 ), .D(\c1/n232 ), 
        .Y(\c1/n715 ) );
  NAND2X1 \c1/U246  ( .A(P2_cards[17]), .B(n16), .Y(\c1/n230 ) );
  OAI21X1 \c1/U245  ( .A(n12), .B(n258), .C(\c1/n230 ), .Y(\c1/n714 ) );
  OAI22X1 \c1/U244  ( .A(n259), .B(\c1/n227 ), .C(\c1/n228 ), .D(\c1/n229 ), 
        .Y(\c1/n713 ) );
  NAND2X1 \c1/U243  ( .A(P2_cards[11]), .B(n15), .Y(\c1/n226 ) );
  OAI21X1 \c1/U242  ( .A(n13), .B(n259), .C(\c1/n226 ), .Y(\c1/n712 ) );
  AND2X2 \c1/U23  ( .A(\c1/n633 ), .B(\c1/n652 ), .Y(\c1/n663 ) );
  AND2X2 \c1/U22  ( .A(n20), .B(\c1/n626 ), .Y(\c1/n637 ) );
  AND2X2 \c1/U21  ( .A(\c1/n646 ), .B(\c1/n647 ), .Y(\c1/n632 ) );
  AND2X2 \c1/U20  ( .A(\c1/n586 ), .B(\c1/n606 ), .Y(\c1/n619 ) );
  AND2X2 \c1/U19  ( .A(n20), .B(\c1/n599 ), .Y(\c1/n580 ) );
  AND2X2 \c1/U18  ( .A(\c1/n577 ), .B(\c1/n599 ), .Y(\c1/n598 ) );
  AND2X2 \c1/U17  ( .A(\c1/n553 ), .B(n19), .Y(\c1/n545 ) );
  AND2X2 \c1/U16  ( .A(n19), .B(\c1/n558 ), .Y(\c1/n541 ) );
  AND2X2 \c1/U15  ( .A(\c1/n542 ), .B(\c1/n563 ), .Y(\c1/n562 ) );
  AND2X2 \c1/U14  ( .A(\c1/n499 ), .B(\c1/n519 ), .Y(\c1/n532 ) );
  AND2X2 \c1/U13  ( .A(n19), .B(\c1/n512 ), .Y(\c1/n493 ) );
  AND2X2 \c1/U12  ( .A(\c1/n490 ), .B(\c1/n512 ), .Y(\c1/n511 ) );
  AND2X2 \c1/U11  ( .A(\c1/n453 ), .B(\c1/n473 ), .Y(\c1/n486 ) );
  AND2X2 \c1/U10  ( .A(n20), .B(\c1/n466 ), .Y(\c1/n447 ) );
  AND2X2 \c1/U9  ( .A(\c1/n444 ), .B(\c1/n466 ), .Y(\c1/n465 ) );
  AND2X2 \c1/U8  ( .A(\c1/n406 ), .B(\c1/n426 ), .Y(\c1/n439 ) );
  AND2X2 \c1/U7  ( .A(n20), .B(\c1/n419 ), .Y(\c1/n400 ) );
  AND2X2 \c1/U6  ( .A(\c1/n397 ), .B(\c1/n419 ), .Y(\c1/n418 ) );
  AND2X2 \c1/U5  ( .A(\c1/n357 ), .B(\c1/n377 ), .Y(\c1/n390 ) );
  AND2X2 \c1/U4  ( .A(n20), .B(\c1/n370 ), .Y(\c1/n350 ) );
  AND2X2 \c1/U3  ( .A(\c1/n347 ), .B(\c1/n370 ), .Y(\c1/n369 ) );
  DFFNEGX1 \c1/state_reg[0]  ( .D(\c1/n897 ), .CLK(n46), .Q(\c1/state[0]1 ) );
  DFFNEGX1 \c1/player_cards_reg[8]  ( .D(\c1/n796 ), .CLK(n46), .Q(P1_cards[8]) );
  DFFNEGX1 \c1/player_deck_reg[8]  ( .D(\c1/n797 ), .CLK(n46), .Q(
        \c1/player_deck [8]) );
  DFFNEGX1 \c1/player_cards_reg[9]  ( .D(\c1/n788 ), .CLK(n46), .Q(P1_cards[9]) );
  DFFNEGX1 \c1/player_deck_reg[9]  ( .D(\c1/n789 ), .CLK(n46), .Q(
        \c1/player_deck [9]) );
  DFFNEGX1 \c1/player_cards_reg[10]  ( .D(\c1/n780 ), .CLK(n45), .Q(
        P1_cards[10]) );
  DFFNEGX1 \c1/player_deck_reg[10]  ( .D(\c1/n781 ), .CLK(n45), .Q(
        \c1/player_deck [10]) );
  DFFNEGX1 \c1/player_cards_reg[11]  ( .D(\c1/n772 ), .CLK(n45), .Q(
        P1_cards[11]) );
  DFFNEGX1 \c1/player_deck_reg[11]  ( .D(\c1/n773 ), .CLK(n45), .Q(
        \c1/player_deck [11]) );
  DFFNEGX1 \c1/player_cards_reg[6]  ( .D(\c1/n770 ), .CLK(n45), .Q(P1_cards[6]) );
  DFFNEGX1 \c1/player_deck_reg[6]  ( .D(\c1/n771 ), .CLK(n45), .Q(
        \c1/player_deck [6]) );
  DFFNEGX1 \c1/player_cards_reg[7]  ( .D(\c1/n764 ), .CLK(n45), .Q(P1_cards[7]) );
  DFFNEGX1 \c1/player_deck_reg[7]  ( .D(\c1/n765 ), .CLK(n45), .Q(
        \c1/player_deck [7]) );
  DFFNEGX1 \c1/player_cards_reg[14]  ( .D(\c1/n798 ), .CLK(n45), .Q(
        P1_cards[14]) );
  DFFNEGX1 \c1/player_deck_reg[14]  ( .D(\c1/n799 ), .CLK(n45), .Q(
        \c1/player_deck [14]) );
  DFFNEGX1 \c1/player_cards_reg[15]  ( .D(\c1/n790 ), .CLK(n45), .Q(
        P1_cards[15]) );
  DFFNEGX1 \c1/player_deck_reg[15]  ( .D(\c1/n791 ), .CLK(n45), .Q(
        \c1/player_deck [15]) );
  DFFNEGX1 \c1/player_cards_reg[16]  ( .D(\c1/n782 ), .CLK(n45), .Q(
        P1_cards[16]) );
  DFFNEGX1 \c1/player_deck_reg[16]  ( .D(\c1/n783 ), .CLK(n44), .Q(
        \c1/player_deck [16]) );
  DFFNEGX1 \c1/player_cards_reg[17]  ( .D(\c1/n774 ), .CLK(n44), .Q(
        P1_cards[17]) );
  DFFNEGX1 \c1/player_deck_reg[17]  ( .D(\c1/n775 ), .CLK(n44), .Q(
        \c1/player_deck [17]) );
  DFFNEGX1 \c1/player_cards_reg[12]  ( .D(\c1/n766 ), .CLK(n44), .Q(
        P1_cards[12]) );
  DFFNEGX1 \c1/player_deck_reg[12]  ( .D(\c1/n767 ), .CLK(n44), .Q(
        \c1/player_deck [12]) );
  DFFNEGX1 \c1/player_cards_reg[13]  ( .D(\c1/n760 ), .CLK(n44), .Q(
        P1_cards[13]) );
  DFFNEGX1 \c1/player_deck_reg[13]  ( .D(\c1/n761 ), .CLK(n44), .Q(
        \c1/player_deck [13]) );
  DFFNEGX1 \c1/player_cards_reg[20]  ( .D(\c1/n800 ), .CLK(n44), .Q(
        P1_cards[20]) );
  DFFNEGX1 \c1/player_deck_reg[20]  ( .D(\c1/n801 ), .CLK(n44), .Q(
        \c1/player_deck [20]) );
  DFFNEGX1 \c1/player_cards_reg[21]  ( .D(\c1/n792 ), .CLK(n44), .Q(
        P1_cards[21]) );
  DFFNEGX1 \c1/player_deck_reg[21]  ( .D(\c1/n793 ), .CLK(n44), .Q(
        \c1/player_deck [21]) );
  DFFNEGX1 \c1/player_cards_reg[22]  ( .D(\c1/n784 ), .CLK(n44), .Q(
        P1_cards[22]) );
  DFFNEGX1 \c1/player_deck_reg[22]  ( .D(\c1/n785 ), .CLK(n44), .Q(
        \c1/player_deck [22]) );
  DFFNEGX1 \c1/player_cards_reg[23]  ( .D(\c1/n776 ), .CLK(n43), .Q(
        P1_cards[23]) );
  DFFNEGX1 \c1/player_deck_reg[23]  ( .D(\c1/n777 ), .CLK(n43), .Q(
        \c1/player_deck [23]) );
  DFFNEGX1 \c1/player_cards_reg[18]  ( .D(\c1/n768 ), .CLK(n43), .Q(
        P1_cards[18]) );
  DFFNEGX1 \c1/player_deck_reg[18]  ( .D(\c1/n769 ), .CLK(n43), .Q(
        \c1/player_deck [18]) );
  DFFNEGX1 \c1/player_cards_reg[19]  ( .D(\c1/n762 ), .CLK(n43), .Q(
        P1_cards[19]) );
  DFFNEGX1 \c1/player_deck_reg[19]  ( .D(\c1/n763 ), .CLK(n43), .Q(
        \c1/player_deck [19]) );
  DFFNEGX1 \c1/player_cards_reg[0]  ( .D(\c1/n806 ), .CLK(n43), .Q(P1_cards[0]) );
  DFFNEGX1 \c1/player_deck_reg[0]  ( .D(\c1/n807 ), .CLK(n43), .Q(
        \c1/player_deck [0]) );
  DFFNEGX1 \c1/player_cards_reg[1]  ( .D(\c1/n804 ), .CLK(n43), .Q(P1_cards[1]) );
  DFFNEGX1 \c1/player_deck_reg[1]  ( .D(\c1/n805 ), .CLK(n43), .Q(
        \c1/player_deck [1]) );
  DFFNEGX1 \c1/player_cards_reg[2]  ( .D(\c1/n802 ), .CLK(n43), .Q(P1_cards[2]) );
  DFFNEGX1 \c1/player_deck_reg[2]  ( .D(\c1/n803 ), .CLK(n43), .Q(
        \c1/player_deck [2]) );
  DFFNEGX1 \c1/player_cards_reg[3]  ( .D(\c1/n794 ), .CLK(n43), .Q(P1_cards[3]) );
  DFFNEGX1 \c1/player_deck_reg[3]  ( .D(\c1/n795 ), .CLK(n42), .Q(
        \c1/player_deck [3]) );
  DFFNEGX1 \c1/player_cards_reg[4]  ( .D(\c1/n786 ), .CLK(n42), .Q(P1_cards[4]) );
  DFFNEGX1 \c1/player_deck_reg[4]  ( .D(\c1/n787 ), .CLK(n42), .Q(
        \c1/player_deck [4]) );
  DFFNEGX1 \c1/player_cards_reg[5]  ( .D(\c1/n778 ), .CLK(n42), .Q(P1_cards[5]) );
  DFFNEGX1 \c1/player_deck_reg[5]  ( .D(\c1/n779 ), .CLK(n42), .Q(
        \c1/player_deck [5]) );
  DFFNEGX1 \c1/p_count_reg[2]  ( .D(\c1/n884 ), .CLK(n42), .Q(\c1/p_count [2])
         );
  DFFNEGX1 \c1/p_count_reg[1]  ( .D(\c1/n882 ), .CLK(n42), .Q(\c1/p_count [1])
         );
  DFFNEGX1 \c1/comp_cards_reg[5]  ( .D(\c1/n718 ), .CLK(n42), .Q(P2_cards[5])
         );
  DFFNEGX1 \c1/comp_deck_reg[5]  ( .D(\c1/n719 ), .CLK(n42), .Q(
        \c1/comp_deck [5]) );
  DFFNEGX1 \c1/comp_cards_reg[23]  ( .D(\c1/n716 ), .CLK(n42), .Q(P2_cards[23]) );
  DFFNEGX1 \c1/comp_deck_reg[23]  ( .D(\c1/n717 ), .CLK(n42), .Q(
        \c1/comp_deck [23]) );
  DFFNEGX1 \c1/comp_cards_reg[17]  ( .D(\c1/n714 ), .CLK(n42), .Q(P2_cards[17]) );
  DFFNEGX1 \c1/comp_deck_reg[17]  ( .D(\c1/n715 ), .CLK(n42), .Q(
        \c1/comp_deck [17]) );
  DFFNEGX1 \c1/comp_cards_reg[11]  ( .D(\c1/n712 ), .CLK(n41), .Q(P2_cards[11]) );
  DFFNEGX1 \c1/comp_deck_reg[11]  ( .D(\c1/n713 ), .CLK(n41), .Q(
        \c1/comp_deck [11]) );
  DFFNEGX1 \c1/comp_cards_reg[4]  ( .D(\c1/n726 ), .CLK(n41), .Q(P2_cards[4])
         );
  DFFNEGX1 \c1/comp_deck_reg[4]  ( .D(\c1/n727 ), .CLK(n41), .Q(
        \c1/comp_deck [4]) );
  DFFNEGX1 \c1/comp_cards_reg[22]  ( .D(\c1/n724 ), .CLK(n41), .Q(P2_cards[22]) );
  DFFNEGX1 \c1/comp_deck_reg[22]  ( .D(\c1/n725 ), .CLK(n41), .Q(
        \c1/comp_deck [22]) );
  DFFNEGX1 \c1/comp_cards_reg[16]  ( .D(\c1/n722 ), .CLK(n41), .Q(P2_cards[16]) );
  DFFNEGX1 \c1/comp_deck_reg[16]  ( .D(\c1/n723 ), .CLK(n41), .Q(
        \c1/comp_deck [16]) );
  DFFNEGX1 \c1/comp_cards_reg[10]  ( .D(\c1/n720 ), .CLK(n41), .Q(P2_cards[10]) );
  DFFNEGX1 \c1/comp_deck_reg[10]  ( .D(\c1/n721 ), .CLK(n41), .Q(
        \c1/comp_deck [10]) );
  DFFNEGX1 \c1/comp_cards_reg[3]  ( .D(\c1/n734 ), .CLK(n41), .Q(P2_cards[3])
         );
  DFFNEGX1 \c1/comp_deck_reg[3]  ( .D(\c1/n735 ), .CLK(n41), .Q(
        \c1/comp_deck [3]) );
  DFFNEGX1 \c1/comp_cards_reg[21]  ( .D(\c1/n732 ), .CLK(n41), .Q(P2_cards[21]) );
  DFFNEGX1 \c1/comp_deck_reg[21]  ( .D(\c1/n733 ), .CLK(n40), .Q(
        \c1/comp_deck [21]) );
  DFFNEGX1 \c1/comp_cards_reg[15]  ( .D(\c1/n730 ), .CLK(n40), .Q(P2_cards[15]) );
  DFFNEGX1 \c1/comp_deck_reg[15]  ( .D(\c1/n731 ), .CLK(n40), .Q(
        \c1/comp_deck [15]) );
  DFFNEGX1 \c1/comp_cards_reg[9]  ( .D(\c1/n728 ), .CLK(n40), .Q(P2_cards[9])
         );
  DFFNEGX1 \c1/comp_deck_reg[9]  ( .D(\c1/n729 ), .CLK(n40), .Q(
        \c1/comp_deck [9]) );
  DFFNEGX1 \c1/comp_cards_reg[2]  ( .D(\c1/n742 ), .CLK(n40), .Q(P2_cards[2])
         );
  DFFNEGX1 \c1/comp_deck_reg[2]  ( .D(\c1/n743 ), .CLK(n40), .Q(
        \c1/comp_deck [2]) );
  DFFNEGX1 \c1/comp_cards_reg[20]  ( .D(\c1/n740 ), .CLK(n40), .Q(P2_cards[20]) );
  DFFNEGX1 \c1/comp_deck_reg[20]  ( .D(\c1/n741 ), .CLK(n40), .Q(
        \c1/comp_deck [20]) );
  DFFNEGX1 \c1/comp_cards_reg[14]  ( .D(\c1/n738 ), .CLK(n40), .Q(P2_cards[14]) );
  DFFNEGX1 \c1/comp_deck_reg[14]  ( .D(\c1/n739 ), .CLK(n40), .Q(
        \c1/comp_deck [14]) );
  DFFNEGX1 \c1/comp_cards_reg[8]  ( .D(\c1/n736 ), .CLK(n40), .Q(P2_cards[8])
         );
  DFFNEGX1 \c1/comp_deck_reg[8]  ( .D(\c1/n737 ), .CLK(n40), .Q(
        \c1/comp_deck [8]) );
  DFFNEGX1 \c1/comp_cards_reg[1]  ( .D(\c1/n750 ), .CLK(n39), .Q(P2_cards[1])
         );
  DFFNEGX1 \c1/comp_deck_reg[1]  ( .D(\c1/n751 ), .CLK(n39), .Q(
        \c1/comp_deck [1]) );
  DFFNEGX1 \c1/comp_cards_reg[19]  ( .D(\c1/n748 ), .CLK(n39), .Q(P2_cards[19]) );
  DFFNEGX1 \c1/comp_deck_reg[19]  ( .D(\c1/n749 ), .CLK(n39), .Q(
        \c1/comp_deck [19]) );
  DFFNEGX1 \c1/comp_cards_reg[13]  ( .D(\c1/n746 ), .CLK(n39), .Q(P2_cards[13]) );
  DFFNEGX1 \c1/comp_deck_reg[13]  ( .D(\c1/n747 ), .CLK(n39), .Q(
        \c1/comp_deck [13]) );
  DFFNEGX1 \c1/comp_cards_reg[7]  ( .D(\c1/n744 ), .CLK(n39), .Q(P2_cards[7])
         );
  DFFNEGX1 \c1/comp_deck_reg[7]  ( .D(\c1/n745 ), .CLK(n39), .Q(
        \c1/comp_deck [7]) );
  DFFNEGX1 \c1/comp_cards_reg[0]  ( .D(\c1/n758 ), .CLK(n39), .Q(P2_cards[0])
         );
  DFFNEGX1 \c1/comp_deck_reg[0]  ( .D(\c1/n759 ), .CLK(n39), .Q(
        \c1/comp_deck [0]) );
  DFFNEGX1 \c1/comp_cards_reg[18]  ( .D(\c1/n756 ), .CLK(n39), .Q(P2_cards[18]) );
  DFFNEGX1 \c1/comp_deck_reg[18]  ( .D(\c1/n757 ), .CLK(n39), .Q(
        \c1/comp_deck [18]) );
  DFFNEGX1 \c1/comp_cards_reg[12]  ( .D(\c1/n754 ), .CLK(n39), .Q(P2_cards[12]) );
  DFFNEGX1 \c1/comp_deck_reg[12]  ( .D(\c1/n755 ), .CLK(n38), .Q(
        \c1/comp_deck [12]) );
  DFFNEGX1 \c1/comp_cards_reg[6]  ( .D(\c1/n752 ), .CLK(n38), .Q(P2_cards[6])
         );
  DFFNEGX1 \c1/comp_deck_reg[6]  ( .D(\c1/n753 ), .CLK(n38), .Q(
        \c1/comp_deck [6]) );
  DFFNEGX1 \c1/count_reg[2]  ( .D(\c1/n887 ), .CLK(n38), .Q(\c1/count [2]) );
  DFFNEGX1 \c1/count_reg[1]  ( .D(\c1/n885 ), .CLK(n38), .Q(\c1/count [1]) );
  DFFNEGX1 \c1/count_reg[0]  ( .D(\c1/n886 ), .CLK(n38), .Q(\c1/count [0]) );
  DFFNEGX1 \c1/p_count_reg[0]  ( .D(\c1/n883 ), .CLK(n38), .Q(\c1/p_count [0])
         );
  DFFNEGX1 \c1/done_reg  ( .D(\c1/n894 ), .CLK(n38), .Q(card_done) );
  DFFNEGX1 \c1/deck_reg[41]  ( .D(\c1/n808 ), .CLK(n38), .Q(\c1/deck [41]) );
  DFFNEGX1 \c1/deck_reg[36]  ( .D(\c1/n813 ), .CLK(n38), .Q(\c1/deck [36]) );
  DFFNEGX1 \c1/deck_reg[38]  ( .D(\c1/n811 ), .CLK(n38), .Q(\c1/deck [38]) );
  DFFNEGX1 \c1/deck_reg[39]  ( .D(\c1/n810 ), .CLK(n38), .Q(\c1/deck [39]) );
  DFFNEGX1 \c1/deck_reg[37]  ( .D(\c1/n812 ), .CLK(n38), .Q(\c1/deck [37]) );
  DFFNEGX1 \c1/deck_reg[40]  ( .D(\c1/n809 ), .CLK(n37), .Q(\c1/deck [40]) );
  DFFNEGX1 \c1/trans_reg_reg[27]  ( .D(\c1/n814 ), .CLK(n37), .Q(
        \c1/trans_reg [27]) );
  DFFNEGX1 \c1/deck_reg[35]  ( .D(\c1/n818 ), .CLK(n37), .Q(\c1/deck [35]) );
  DFFNEGX1 \c1/deck_reg[30]  ( .D(\c1/n823 ), .CLK(n37), .Q(\c1/deck [30]) );
  DFFNEGX1 \c1/deck_reg[32]  ( .D(\c1/n821 ), .CLK(n37), .Q(\c1/deck [32]) );
  DFFNEGX1 \c1/deck_reg[33]  ( .D(\c1/n820 ), .CLK(n37), .Q(\c1/deck [33]) );
  DFFNEGX1 \c1/deck_reg[31]  ( .D(\c1/n822 ), .CLK(n37), .Q(\c1/deck [31]) );
  DFFNEGX1 \c1/deck_reg[34]  ( .D(\c1/n819 ), .CLK(n37), .Q(\c1/deck [34]) );
  DFFNEGX1 \c1/trans_reg_reg[23]  ( .D(\c1/n824 ), .CLK(n37), .Q(
        \c1/trans_reg [23]) );
  DFFNEGX1 \c1/deck_reg[29]  ( .D(\c1/n828 ), .CLK(n37), .Q(\c1/deck [29]) );
  DFFNEGX1 \c1/deck_reg[24]  ( .D(\c1/n833 ), .CLK(n37), .Q(\c1/deck [24]) );
  DFFNEGX1 \c1/deck_reg[26]  ( .D(\c1/n831 ), .CLK(n37), .Q(\c1/deck [26]) );
  DFFNEGX1 \c1/deck_reg[27]  ( .D(\c1/n830 ), .CLK(n37), .Q(\c1/deck [27]) );
  DFFNEGX1 \c1/deck_reg[25]  ( .D(\c1/n832 ), .CLK(n36), .Q(\c1/deck [25]) );
  DFFNEGX1 \c1/deck_reg[28]  ( .D(\c1/n829 ), .CLK(n36), .Q(\c1/deck [28]) );
  DFFNEGX1 \c1/trans_reg_reg[19]  ( .D(\c1/n834 ), .CLK(n36), .Q(
        \c1/trans_reg [19]) );
  DFFNEGX1 \c1/deck_reg[23]  ( .D(\c1/n838 ), .CLK(n36), .Q(\c1/deck [23]) );
  DFFNEGX1 \c1/deck_reg[18]  ( .D(\c1/n843 ), .CLK(n36), .Q(\c1/deck [18]) );
  DFFNEGX1 \c1/deck_reg[20]  ( .D(\c1/n841 ), .CLK(n36), .Q(\c1/deck [20]) );
  DFFNEGX1 \c1/deck_reg[21]  ( .D(\c1/n840 ), .CLK(n36), .Q(\c1/deck [21]) );
  DFFNEGX1 \c1/deck_reg[19]  ( .D(\c1/n842 ), .CLK(n36), .Q(\c1/deck [19]) );
  DFFNEGX1 \c1/deck_reg[22]  ( .D(\c1/n839 ), .CLK(n36), .Q(\c1/deck [22]) );
  DFFNEGX1 \c1/trans_reg_reg[15]  ( .D(\c1/n844 ), .CLK(n36), .Q(
        \c1/trans_reg [15]) );
  DFFNEGX1 \c1/deck_reg[17]  ( .D(\c1/n848 ), .CLK(n36), .Q(\c1/deck [17]) );
  DFFNEGX1 \c1/deck_reg[13]  ( .D(\c1/n852 ), .CLK(n36), .Q(\c1/deck [13]) );
  DFFNEGX1 \c1/deck_reg[15]  ( .D(\c1/n850 ), .CLK(n36), .Q(\c1/deck [15]) );
  DFFNEGX1 \c1/deck_reg[14]  ( .D(\c1/n851 ), .CLK(n35), .Q(\c1/deck [14]) );
  DFFNEGX1 \c1/deck_reg[16]  ( .D(\c1/n849 ), .CLK(n35), .Q(\c1/deck [16]) );
  DFFNEGX1 \c1/deck_reg[12]  ( .D(\c1/n853 ), .CLK(n35), .Q(\c1/deck [12]) );
  DFFNEGX1 \c1/trans_reg_reg[11]  ( .D(\c1/n854 ), .CLK(n35), .Q(
        \c1/trans_reg [11]) );
  DFFNEGX1 \c1/deck_reg[11]  ( .D(\c1/n858 ), .CLK(n35), .Q(\c1/deck [11]) );
  DFFNEGX1 \c1/deck_reg[6]  ( .D(\c1/n863 ), .CLK(n35), .Q(\c1/deck [6]) );
  DFFNEGX1 \c1/deck_reg[8]  ( .D(\c1/n861 ), .CLK(n35), .Q(\c1/deck [8]) );
  DFFNEGX1 \c1/deck_reg[9]  ( .D(\c1/n860 ), .CLK(n35), .Q(\c1/deck [9]) );
  DFFNEGX1 \c1/deck_reg[7]  ( .D(\c1/n862 ), .CLK(n35), .Q(\c1/deck [7]) );
  DFFNEGX1 \c1/deck_reg[10]  ( .D(\c1/n859 ), .CLK(n35), .Q(\c1/deck [10]) );
  DFFNEGX1 \c1/trans_reg_reg[7]  ( .D(\c1/n864 ), .CLK(n35), .Q(
        \c1/trans_reg [7]) );
  DFFNEGX1 \c1/deck_reg[5]  ( .D(\c1/n868 ), .CLK(n35), .Q(\c1/deck [5]) );
  DFFNEGX1 \c1/deck_reg[0]  ( .D(\c1/n873 ), .CLK(n35), .Q(\c1/deck [0]) );
  DFFNEGX1 \c1/deck_reg[2]  ( .D(\c1/n871 ), .CLK(n34), .Q(\c1/deck [2]) );
  DFFNEGX1 \c1/deck_reg[3]  ( .D(\c1/n870 ), .CLK(n34), .Q(\c1/deck [3]) );
  DFFNEGX1 \c1/deck_reg[1]  ( .D(\c1/n872 ), .CLK(n34), .Q(\c1/deck [1]) );
  DFFNEGX1 \c1/deck_reg[4]  ( .D(\c1/n869 ), .CLK(n34), .Q(\c1/deck [4]) );
  DFFNEGX1 \c1/trans_reg_reg[3]  ( .D(\c1/n874 ), .CLK(n34), .Q(
        \c1/trans_reg [3]) );
  DFFNEGX1 \c1/trans_reg_reg[25]  ( .D(\c1/n816 ), .CLK(n34), .Q(
        \c1/trans_reg [25]) );
  DFFNEGX1 \c1/trans_reg_reg[21]  ( .D(\c1/n826 ), .CLK(n34), .Q(
        \c1/trans_reg [21]) );
  DFFNEGX1 \c1/trans_reg_reg[17]  ( .D(\c1/n836 ), .CLK(n34), .Q(
        \c1/trans_reg [17]) );
  DFFNEGX1 \c1/trans_reg_reg[13]  ( .D(\c1/n846 ), .CLK(n34), .Q(
        \c1/trans_reg [13]) );
  DFFNEGX1 \c1/trans_reg_reg[9]  ( .D(\c1/n856 ), .CLK(n34), .Q(
        \c1/trans_reg [9]) );
  DFFNEGX1 \c1/trans_reg_reg[5]  ( .D(\c1/n866 ), .CLK(n34), .Q(
        \c1/trans_reg [5]) );
  DFFNEGX1 \c1/trans_reg_reg[1]  ( .D(\c1/n876 ), .CLK(n34), .Q(
        \c1/trans_reg [1]) );
  DFFNEGX1 \c1/trans_reg_reg[26]  ( .D(\c1/n815 ), .CLK(n34), .Q(
        \c1/trans_reg [26]) );
  DFFNEGX1 \c1/trans_reg_reg[22]  ( .D(\c1/n825 ), .CLK(n33), .Q(
        \c1/trans_reg [22]) );
  DFFNEGX1 \c1/trans_reg_reg[18]  ( .D(\c1/n835 ), .CLK(n33), .Q(
        \c1/trans_reg [18]) );
  DFFNEGX1 \c1/trans_reg_reg[14]  ( .D(\c1/n845 ), .CLK(n33), .Q(
        \c1/trans_reg [14]) );
  DFFNEGX1 \c1/trans_reg_reg[10]  ( .D(\c1/n855 ), .CLK(n33), .Q(
        \c1/trans_reg [10]) );
  DFFNEGX1 \c1/trans_reg_reg[6]  ( .D(\c1/n865 ), .CLK(n33), .Q(
        \c1/trans_reg [6]) );
  DFFNEGX1 \c1/trans_reg_reg[2]  ( .D(\c1/n875 ), .CLK(n33), .Q(
        \c1/trans_reg [2]) );
  DFFNEGX1 \c1/lfsr_reg[2]  ( .D(\c1/n879 ), .CLK(n33), .Q(\c1/lfsr [2]) );
  DFFNEGX1 \c1/lfsr_reg[1]  ( .D(\c1/n881 ), .CLK(n33), .Q(\c1/lfsr [1]) );
  DFFNEGX1 \c1/trans_reg_reg[0]  ( .D(\c1/n877 ), .CLK(n33), .Q(
        \c1/trans_reg [0]) );
  DFFNEGX1 \c1/trans_reg_reg[4]  ( .D(\c1/n867 ), .CLK(n33), .Q(
        \c1/trans_reg [4]) );
  DFFNEGX1 \c1/trans_reg_reg[8]  ( .D(\c1/n857 ), .CLK(n33), .Q(
        \c1/trans_reg [8]) );
  DFFNEGX1 \c1/trans_reg_reg[12]  ( .D(\c1/n847 ), .CLK(n33), .Q(
        \c1/trans_reg [12]) );
  DFFNEGX1 \c1/trans_reg_reg[16]  ( .D(\c1/n837 ), .CLK(n33), .Q(
        \c1/trans_reg [16]) );
  DFFNEGX1 \c1/trans_reg_reg[20]  ( .D(\c1/n827 ), .CLK(n32), .Q(
        \c1/trans_reg [20]) );
  DFFNEGX1 \c1/trans_reg_reg[24]  ( .D(\c1/n817 ), .CLK(n32), .Q(
        \c1/trans_reg [24]) );
  DFFNEGX1 \c1/lfsr_reg[0]  ( .D(\c1/n880 ), .CLK(n32), .Q(\c1/lfsr [0]) );
  DFFNEGX1 \c1/lfsr_reg[3]  ( .D(\c1/n878 ), .CLK(n32), .Q(\c1/lfsr [3]) );
  DFFNEGX1 \c1/c_count_reg[2]  ( .D(\c1/n890 ), .CLK(n32), .Q(\c1/c_count[2]1 ) );
  DFFNEGX1 \c1/c_count_reg[1]  ( .D(\c1/n888 ), .CLK(n32), .Q(\c1/c_count[1]1 ) );
  DFFNEGX1 \c1/c_count_reg[0]  ( .D(\c1/n889 ), .CLK(n32), .Q(\c1/c_count[0]1 ) );
  DFFNEGX1 \c1/trans_num_reg[2]  ( .D(\c1/n893 ), .CLK(n32), .Q(
        \c1/trans_num [2]) );
  DFFNEGX1 \c1/trans_num_reg[1]  ( .D(\c1/n892 ), .CLK(n32), .Q(
        \c1/trans_num [1]) );
  DFFNEGX1 \c1/trans_num_reg[0]  ( .D(\c1/n891 ), .CLK(n32), .Q(
        \c1/trans_num [0]) );
  DFFNEGX1 \c1/next_state_reg[0]  ( .D(\c1/N276 ), .CLK(n60), .Q(
        \c1/next_state [0]) );
  DFFNEGX1 \c1/state_reg[2]  ( .D(\c1/n896 ), .CLK(n32), .Q(\c1/state[2]1 ) );
  DFFNEGX1 \c1/next_state_reg[2]  ( .D(\c1/N278 ), .CLK(n60), .Q(
        \c1/next_state [2]) );
  DFFNEGX1 \c1/state_reg[1]  ( .D(\c1/n895 ), .CLK(n32), .Q(\c1/state[1]1 ) );
  DFFNEGX1 \c1/next_state_reg[1]  ( .D(\c1/N277 ), .CLK(n60), .Q(
        \c1/next_state [1]) );
  DFFNEGX1 \c1/gen_flag_reg  ( .D(\c1/n898 ), .CLK(n32), .Q(\c1/gen_flag1 ) );
  AND2X2 U1 ( .A(n25), .B(\dp/n156 ), .Y(n1) );
  AND2X2 U2 ( .A(\dp/n341 ), .B(\dp/n342 ), .Y(n2) );
  OR2X2 U3 ( .A(n427), .B(n428), .Y(n3) );
  AND2X2 U4 ( .A(\dp/n337 ), .B(\dp/n338 ), .Y(n4) );
  INVX2 U5 ( .A(n23), .Y(n20) );
  BUFX2 U6 ( .A(n56), .Y(n33) );
  BUFX2 U7 ( .A(n56), .Y(n34) );
  BUFX2 U8 ( .A(n56), .Y(n35) );
  BUFX2 U9 ( .A(n55), .Y(n36) );
  BUFX2 U10 ( .A(n55), .Y(n37) );
  BUFX2 U11 ( .A(n55), .Y(n38) );
  BUFX2 U12 ( .A(n54), .Y(n39) );
  BUFX2 U13 ( .A(n54), .Y(n40) );
  BUFX2 U14 ( .A(n54), .Y(n41) );
  BUFX2 U15 ( .A(n53), .Y(n42) );
  BUFX2 U16 ( .A(n53), .Y(n43) );
  BUFX2 U17 ( .A(n53), .Y(n44) );
  BUFX2 U18 ( .A(n52), .Y(n45) );
  BUFX2 U19 ( .A(n52), .Y(n46) );
  BUFX2 U20 ( .A(n52), .Y(n47) );
  BUFX2 U21 ( .A(n51), .Y(n48) );
  BUFX2 U22 ( .A(n51), .Y(n49) );
  BUFX2 U23 ( .A(n51), .Y(n50) );
  BUFX2 U24 ( .A(n6), .Y(n23) );
  BUFX2 U25 ( .A(n6), .Y(n22) );
  BUFX2 U26 ( .A(n6), .Y(n21) );
  INVX2 U27 ( .A(n5), .Y(n25) );
  BUFX2 U28 ( .A(n7), .Y(n28) );
  BUFX2 U29 ( .A(n6), .Y(n24) );
  INVX2 U30 ( .A(n7), .Y(n27) );
  INVX2 U31 ( .A(n7), .Y(n26) );
  INVX2 U32 ( .A(n6), .Y(n19) );
  BUFX2 U33 ( .A(n58), .Y(n60) );
  BUFX2 U34 ( .A(n58), .Y(n61) );
  BUFX2 U35 ( .A(n58), .Y(n62) );
  BUFX2 U36 ( .A(n59), .Y(n63) );
  BUFX2 U37 ( .A(n59), .Y(n64) );
  BUFX2 U38 ( .A(n59), .Y(n65) );
  BUFX2 U39 ( .A(\c1/n225 ), .Y(n14) );
  BUFX2 U40 ( .A(\c1/n225 ), .Y(n13) );
  BUFX2 U41 ( .A(\c1/n225 ), .Y(n12) );
  BUFX2 U42 ( .A(\c1/n225 ), .Y(n15) );
  BUFX2 U43 ( .A(\c1/n225 ), .Y(n16) );
  BUFX2 U44 ( .A(\c1/n225 ), .Y(n17) );
  OR2X1 U45 ( .A(\dp/n157 ), .B(n76), .Y(n5) );
  BUFX2 U46 ( .A(\dp/n213 ), .Y(n11) );
  BUFX2 U47 ( .A(\c1/n225 ), .Y(n18) );
  OR2X1 U48 ( .A(n415), .B(n10), .Y(n6) );
  OR2X1 U49 ( .A(\dp/n321 ), .B(n77), .Y(n7) );
  BUFX2 U50 ( .A(n30), .Y(n56) );
  BUFX2 U51 ( .A(n30), .Y(n55) );
  BUFX2 U52 ( .A(n30), .Y(n54) );
  BUFX2 U53 ( .A(n29), .Y(n53) );
  BUFX2 U54 ( .A(n29), .Y(n52) );
  BUFX2 U55 ( .A(n29), .Y(n51) );
  BUFX2 U56 ( .A(n57), .Y(n32) );
  BUFX2 U57 ( .A(n31), .Y(n57) );
  BUFX2 U58 ( .A(in_clkb), .Y(n31) );
  INVX2 U59 ( .A(\dp/TOP_CARD [3]), .Y(n140) );
  INVX2 U60 ( .A(n9), .Y(n10) );
  INVX2 U61 ( .A(\c1/n262 ), .Y(n9) );
  INVX2 U62 ( .A(\dp/TOP_CARD [1]), .Y(n170) );
  INVX2 U63 ( .A(\c1/count [0]), .Y(n8) );
  BUFX2 U64 ( .A(in_clka), .Y(n58) );
  BUFX2 U65 ( .A(in_clka), .Y(n59) );
  BUFX2 U66 ( .A(in_clkb), .Y(n30) );
  BUFX2 U67 ( .A(in_clkb), .Y(n29) );
  OR2X2 U68 ( .A(\dp/n281 ), .B(\dp/n282 ), .Y(\dp/n207 ) );
  INVX2 U69 ( .A(\main/n78 ), .Y(n66) );
  INVX2 U70 ( .A(in_restart), .Y(n67) );
  INVX2 U71 ( .A(\dp/n200 ), .Y(n68) );
  INVX2 U72 ( .A(\dp/n190 ), .Y(n69) );
  INVX2 U73 ( .A(\dp/n246 ), .Y(n70) );
  INVX2 U74 ( .A(\dp/n327 ), .Y(n71) );
  INVX2 U75 ( .A(\dp/n330 ), .Y(n72) );
  INVX2 U76 ( .A(n11), .Y(n73) );
  INVX2 U77 ( .A(\dp/n151 ), .Y(n74) );
  INVX2 U78 ( .A(\dp/n176 ), .Y(n75) );
  INVX2 U79 ( .A(\dp/n167 ), .Y(n76) );
  INVX2 U80 ( .A(\dp/n156 ), .Y(n77) );
  INVX2 U81 ( .A(\main/n108 ), .Y(n78) );
  INVX2 U82 ( .A(num_cards[2]), .Y(n79) );
  INVX2 U83 ( .A(out_update_2), .Y(n80) );
  INVX2 U84 ( .A(out_update_1), .Y(n81) );
  INVX2 U85 ( .A(\dp/n328 ), .Y(n82) );
  INVX2 U86 ( .A(\dp/n170 ), .Y(n83) );
  INVX2 U87 ( .A(\dp/n178 ), .Y(n84) );
  INVX2 U88 ( .A(out_compare_2), .Y(n85) );
  INVX2 U89 ( .A(\dp/n179 ), .Y(n86) );
  INVX2 U90 ( .A(out_compare_1), .Y(n87) );
  INVX2 U91 ( .A(\dp/n331 ), .Y(n88) );
  INVX2 U92 ( .A(\dp/n180 ), .Y(n89) );
  INVX2 U93 ( .A(out_load), .Y(n90) );
  INVX2 U94 ( .A(card_gen), .Y(n91) );
  INVX2 U95 ( .A(out_reset_top), .Y(n92) );
  INVX2 U96 ( .A(winner[0]), .Y(n93) );
  INVX2 U97 ( .A(winner[1]), .Y(n94) );
  INVX2 U98 ( .A(\main/n57 ), .Y(n95) );
  INVX2 U99 ( .A(\main/n56 ), .Y(n96) );
  INVX2 U100 ( .A(\main/n64 ), .Y(n97) );
  INVX2 U101 ( .A(\main/next_state [1]), .Y(n98) );
  INVX2 U102 ( .A(\main/n82 ), .Y(n99) );
  INVX2 U103 ( .A(\main/n88 ), .Y(n100) );
  INVX2 U104 ( .A(\main/n116 ), .Y(n101) );
  INVX2 U105 ( .A(\main/n99 ), .Y(n102) );
  INVX2 U106 ( .A(\main/state[3]1 ), .Y(n103) );
  INVX2 U107 ( .A(\main/n73 ), .Y(n104) );
  INVX2 U108 ( .A(\main/n103 ), .Y(n105) );
  INVX2 U109 ( .A(\main/n90 ), .Y(n106) );
  INVX2 U110 ( .A(\main/next_state [3]), .Y(n107) );
  INVX2 U111 ( .A(\main/state[1]1 ), .Y(n108) );
  INVX2 U112 ( .A(\main/next_state [0]), .Y(n109) );
  INVX2 U113 ( .A(\main/state[2]1 ), .Y(n110) );
  INVX2 U114 ( .A(\main/next_state [2]), .Y(n111) );
  INVX2 U115 ( .A(\main/state[0]1 ), .Y(n112) );
  INVX2 U116 ( .A(\main/n84 ), .Y(n113) );
  INVX2 U117 ( .A(out_done), .Y(n114) );
  INVX2 U118 ( .A(\main/n77 ), .Y(n115) );
  INVX2 U119 ( .A(P1_num_cards[0]), .Y(n116) );
  INVX2 U120 ( .A(\main/n113 ), .Y(n117) );
  INVX2 U121 ( .A(P1_num_cards[1]), .Y(n118) );
  INVX2 U122 ( .A(P1_num_cards[2]), .Y(n119) );
  INVX2 U123 ( .A(P2_num_cards[0]), .Y(n120) );
  INVX2 U124 ( .A(P2_num_cards[1]), .Y(n121) );
  INVX2 U125 ( .A(P2_num_cards[2]), .Y(n122) );
  INVX2 U126 ( .A(\dp/temp_larger ), .Y(n123) );
  INVX2 U127 ( .A(\dp/n273 ), .Y(n124) );
  INVX2 U128 ( .A(\dp/n274 ), .Y(n125) );
  INVX2 U129 ( .A(\dp/n275 ), .Y(n126) );
  INVX2 U130 ( .A(n446), .Y(n127) );
  INVX2 U131 ( .A(n442), .Y(n128) );
  INVX2 U132 ( .A(\dp/N89 ), .Y(n129) );
  INVX2 U133 ( .A(n457), .Y(n130) );
  INVX2 U134 ( .A(n453), .Y(n131) );
  INVX2 U135 ( .A(n468), .Y(n132) );
  INVX2 U136 ( .A(n464), .Y(n133) );
  INVX2 U137 ( .A(\dp/N85 ), .Y(n134) );
  INVX2 U138 ( .A(n479), .Y(n135) );
  INVX2 U139 ( .A(n475), .Y(n136) );
  INVX2 U140 ( .A(\dp/N73 ), .Y(n137) );
  INVX2 U141 ( .A(n491), .Y(n138) );
  INVX2 U142 ( .A(n487), .Y(n139) );
  INVX2 U143 ( .A(\dp/TOP_CARD [4]), .Y(n141) );
  INVX2 U144 ( .A(\dp/p2_put_temp ), .Y(n142) );
  INVX2 U145 ( .A(\dp/TOP_CARD [2]), .Y(n143) );
  INVX2 U146 ( .A(n441), .Y(n144) );
  INVX2 U147 ( .A(\dp/P2_CARDS [18]), .Y(n145) );
  INVX2 U148 ( .A(n450), .Y(n146) );
  INVX2 U149 ( .A(\dp/P2_CARDS [23]), .Y(n147) );
  INVX2 U150 ( .A(\dp/P2_CARDS [22]), .Y(n148) );
  INVX2 U151 ( .A(\dp/P2_CARDS [21]), .Y(n149) );
  INVX2 U152 ( .A(\dp/P2_CARDS [20]), .Y(n150) );
  INVX2 U153 ( .A(\dp/P2_CARDS [19]), .Y(n151) );
  INVX2 U154 ( .A(n452), .Y(n152) );
  INVX2 U155 ( .A(\dp/P2_CARDS [12]), .Y(n153) );
  INVX2 U156 ( .A(n461), .Y(n154) );
  INVX2 U157 ( .A(\dp/P2_CARDS [17]), .Y(n155) );
  INVX2 U158 ( .A(\dp/P2_CARDS [16]), .Y(n156) );
  INVX2 U159 ( .A(\dp/P2_CARDS [15]), .Y(n157) );
  INVX2 U160 ( .A(\dp/P2_CARDS [14]), .Y(n158) );
  INVX2 U161 ( .A(\dp/P2_CARDS [13]), .Y(n159) );
  INVX2 U162 ( .A(n463), .Y(n160) );
  INVX2 U163 ( .A(\dp/P2_CARDS [6]), .Y(n161) );
  INVX2 U164 ( .A(n472), .Y(n162) );
  INVX2 U165 ( .A(\dp/P2_CARDS [11]), .Y(n163) );
  INVX2 U166 ( .A(\dp/P2_CARDS [10]), .Y(n164) );
  INVX2 U167 ( .A(\dp/P2_CARDS [9]), .Y(n165) );
  INVX2 U168 ( .A(\dp/P2_CARDS [8]), .Y(n166) );
  INVX2 U169 ( .A(\dp/P2_CARDS [7]), .Y(n167) );
  INVX2 U170 ( .A(\dp/count [1]), .Y(n168) );
  INVX2 U171 ( .A(n474), .Y(n169) );
  INVX2 U172 ( .A(\dp/count [0]), .Y(n171) );
  INVX2 U173 ( .A(\dp/TOP_CARD [0]), .Y(n172) );
  INVX2 U174 ( .A(\dp/P2_CARDS [0]), .Y(n173) );
  INVX2 U175 ( .A(n483), .Y(n174) );
  INVX2 U176 ( .A(\dp/P2_CARDS [5]), .Y(n175) );
  INVX2 U177 ( .A(\dp/P2_CARDS [4]), .Y(n176) );
  INVX2 U178 ( .A(\dp/P2_CARDS [3]), .Y(n177) );
  INVX2 U179 ( .A(\dp/P2_CARDS [2]), .Y(n178) );
  INVX2 U180 ( .A(\dp/P2_CARDS [1]), .Y(n179) );
  INVX2 U181 ( .A(\dp/count [2]), .Y(n180) );
  INVX2 U182 ( .A(n495), .Y(n181) );
  INVX2 U183 ( .A(\dp/TOP_CARD [5]), .Y(n182) );
  INVX2 U184 ( .A(\dp/P1_CARDS [6]), .Y(n183) );
  INVX2 U185 ( .A(\dp/N67 ), .Y(n184) );
  INVX2 U186 ( .A(\dp/P1_CARDS [11]), .Y(n185) );
  INVX2 U187 ( .A(\dp/N72 ), .Y(n186) );
  INVX2 U188 ( .A(\dp/P1_CARDS [10]), .Y(n187) );
  INVX2 U189 ( .A(\dp/N71 ), .Y(n188) );
  INVX2 U190 ( .A(\dp/P1_CARDS [9]), .Y(n189) );
  INVX2 U191 ( .A(\dp/P1_CARDS [8]), .Y(n190) );
  INVX2 U192 ( .A(\dp/N69 ), .Y(n191) );
  INVX2 U193 ( .A(\dp/P1_CARDS [7]), .Y(n192) );
  INVX2 U194 ( .A(\dp/P1_CARDS [18]), .Y(n193) );
  INVX2 U195 ( .A(\dp/P1_CARDS [23]), .Y(n194) );
  INVX2 U196 ( .A(\dp/P1_CARDS [22]), .Y(n195) );
  INVX2 U197 ( .A(\dp/P1_CARDS [21]), .Y(n196) );
  INVX2 U198 ( .A(\dp/P1_CARDS [20]), .Y(n197) );
  INVX2 U199 ( .A(\dp/P1_CARDS [19]), .Y(n198) );
  INVX2 U200 ( .A(\dp/P1_CARDS [0]), .Y(n199) );
  INVX2 U201 ( .A(\dp/P1_CARDS [5]), .Y(n200) );
  INVX2 U202 ( .A(\dp/P1_CARDS [4]), .Y(n201) );
  INVX2 U203 ( .A(\dp/P1_CARDS [3]), .Y(n202) );
  INVX2 U204 ( .A(\dp/P1_CARDS [2]), .Y(n203) );
  INVX2 U205 ( .A(\dp/P1_CARDS [1]), .Y(n204) );
  INVX2 U206 ( .A(\dp/P1_CARDS [12]), .Y(n205) );
  INVX2 U207 ( .A(\dp/P1_CARDS [17]), .Y(n206) );
  INVX2 U208 ( .A(\dp/P1_CARDS [16]), .Y(n207) );
  INVX2 U209 ( .A(\dp/P1_CARDS [15]), .Y(n208) );
  INVX2 U210 ( .A(\dp/P1_CARDS [14]), .Y(n209) );
  INVX2 U211 ( .A(\dp/P1_CARDS [13]), .Y(n210) );
  INVX2 U212 ( .A(\dp/n292 ), .Y(n211) );
  INVX2 U213 ( .A(\dp/n308 ), .Y(n212) );
  INVX2 U214 ( .A(\dp/p1_temp [0]), .Y(n213) );
  INVX2 U215 ( .A(\dp/n316 ), .Y(n214) );
  INVX2 U216 ( .A(\dp/n300 ), .Y(n215) );
  INVX2 U217 ( .A(\dp/p1_temp [2]), .Y(n216) );
  INVX2 U218 ( .A(\dp/p1_temp [1]), .Y(n217) );
  INVX2 U219 ( .A(\dp/P2_NUM [2]), .Y(n218) );
  INVX2 U220 ( .A(\dp/P1_NUM [2]), .Y(n219) );
  INVX2 U221 ( .A(\dp/P1_NUM [1]), .Y(n220) );
  INVX2 U222 ( .A(\dp/P1_NUM [0]), .Y(n221) );
  INVX2 U223 ( .A(\dp/P2_NUM [1]), .Y(n222) );
  INVX2 U224 ( .A(\dp/P2_NUM [0]), .Y(n223) );
  INVX2 U225 ( .A(\dp/block_p1 ), .Y(n224) );
  INVX2 U226 ( .A(\dp/block_state ), .Y(n225) );
  INVX2 U227 ( .A(\c1/state[0]1 ), .Y(n226) );
  INVX2 U228 ( .A(\c1/player_deck [8]), .Y(n227) );
  INVX2 U229 ( .A(\c1/player_deck [9]), .Y(n228) );
  INVX2 U230 ( .A(\c1/player_deck [10]), .Y(n229) );
  INVX2 U231 ( .A(\c1/player_deck [11]), .Y(n230) );
  INVX2 U232 ( .A(\c1/player_deck [6]), .Y(n231) );
  INVX2 U233 ( .A(\c1/player_deck [7]), .Y(n232) );
  INVX2 U234 ( .A(\c1/player_deck [14]), .Y(n233) );
  INVX2 U235 ( .A(\c1/player_deck [15]), .Y(n234) );
  INVX2 U236 ( .A(\c1/player_deck [16]), .Y(n235) );
  INVX2 U237 ( .A(\c1/player_deck [17]), .Y(n236) );
  INVX2 U238 ( .A(\c1/player_deck [12]), .Y(n237) );
  INVX2 U239 ( .A(\c1/player_deck [13]), .Y(n238) );
  INVX2 U240 ( .A(\c1/player_deck [20]), .Y(n239) );
  INVX2 U241 ( .A(\c1/player_deck [21]), .Y(n240) );
  INVX2 U242 ( .A(\c1/player_deck [22]), .Y(n241) );
  INVX2 U243 ( .A(\c1/player_deck [23]), .Y(n242) );
  INVX2 U244 ( .A(\c1/player_deck [18]), .Y(n243) );
  INVX2 U245 ( .A(\c1/player_deck [19]), .Y(n244) );
  INVX2 U246 ( .A(\c1/player_deck [0]), .Y(n245) );
  INVX2 U247 ( .A(\c1/player_deck [1]), .Y(n246) );
  INVX2 U248 ( .A(\c1/player_deck [2]), .Y(n247) );
  INVX2 U249 ( .A(\c1/player_deck [3]), .Y(n248) );
  INVX2 U250 ( .A(\c1/player_deck [4]), .Y(n249) );
  INVX2 U251 ( .A(\c1/player_deck [5]), .Y(n250) );
  INVX2 U252 ( .A(\c1/p_count [2]), .Y(n251) );
  INVX2 U253 ( .A(\c1/n338 ), .Y(n252) );
  INVX2 U254 ( .A(\c1/n331 ), .Y(n253) );
  INVX2 U255 ( .A(\c1/n319 ), .Y(n254) );
  INVX2 U256 ( .A(\c1/p_count [1]), .Y(n255) );
  INVX2 U257 ( .A(\c1/comp_deck [5]), .Y(n256) );
  INVX2 U258 ( .A(\c1/comp_deck [23]), .Y(n257) );
  INVX2 U259 ( .A(\c1/comp_deck [17]), .Y(n258) );
  INVX2 U260 ( .A(\c1/comp_deck [11]), .Y(n259) );
  INVX2 U261 ( .A(\c1/comp_deck [4]), .Y(n260) );
  INVX2 U262 ( .A(\c1/comp_deck [22]), .Y(n261) );
  INVX2 U263 ( .A(\c1/comp_deck [16]), .Y(n262) );
  INVX2 U264 ( .A(\c1/comp_deck [10]), .Y(n263) );
  INVX2 U265 ( .A(\c1/comp_deck [3]), .Y(n264) );
  INVX2 U266 ( .A(\c1/comp_deck [21]), .Y(n265) );
  INVX2 U267 ( .A(\c1/comp_deck [15]), .Y(n266) );
  INVX2 U268 ( .A(\c1/comp_deck [9]), .Y(n267) );
  INVX2 U269 ( .A(\c1/comp_deck [2]), .Y(n268) );
  INVX2 U270 ( .A(\c1/comp_deck [20]), .Y(n269) );
  INVX2 U271 ( .A(\c1/comp_deck [14]), .Y(n270) );
  INVX2 U272 ( .A(\c1/comp_deck [8]), .Y(n271) );
  INVX2 U273 ( .A(\c1/comp_deck [1]), .Y(n272) );
  INVX2 U274 ( .A(\c1/comp_deck [19]), .Y(n273) );
  INVX2 U275 ( .A(\c1/comp_deck [13]), .Y(n274) );
  INVX2 U276 ( .A(\c1/comp_deck [7]), .Y(n275) );
  INVX2 U277 ( .A(\c1/comp_deck [0]), .Y(n276) );
  INVX2 U278 ( .A(\c1/comp_deck [18]), .Y(n277) );
  INVX2 U279 ( .A(\c1/comp_deck [12]), .Y(n278) );
  INVX2 U280 ( .A(\c1/comp_deck [6]), .Y(n279) );
  INVX2 U281 ( .A(\c1/n298 ), .Y(n280) );
  INVX2 U282 ( .A(\c1/count [2]), .Y(n281) );
  INVX2 U283 ( .A(\c1/count [1]), .Y(n282) );
  INVX2 U284 ( .A(\c1/p_count [0]), .Y(n283) );
  INVX2 U285 ( .A(\c1/n677 ), .Y(n284) );
  INVX2 U286 ( .A(card_done), .Y(n285) );
  INVX2 U287 ( .A(\c1/deck [41]), .Y(n286) );
  INVX2 U288 ( .A(\c1/deck [36]), .Y(n287) );
  INVX2 U289 ( .A(\c1/deck [38]), .Y(n288) );
  INVX2 U290 ( .A(\c1/deck [39]), .Y(n289) );
  INVX2 U291 ( .A(\c1/deck [37]), .Y(n290) );
  INVX2 U292 ( .A(\c1/deck [40]), .Y(n291) );
  INVX2 U293 ( .A(\c1/n389 ), .Y(n292) );
  INVX2 U294 ( .A(\c1/n376 ), .Y(n293) );
  INVX2 U295 ( .A(\c1/n359 ), .Y(n294) );
  INVX2 U296 ( .A(\c1/trans_reg [27]), .Y(n295) );
  INVX2 U297 ( .A(\c1/n388 ), .Y(n296) );
  INVX2 U298 ( .A(\c1/n383 ), .Y(n297) );
  INVX2 U299 ( .A(\c1/n352 ), .Y(n298) );
  INVX2 U300 ( .A(\c1/n382 ), .Y(n299) );
  INVX2 U301 ( .A(\c1/deck [35]), .Y(n300) );
  INVX2 U302 ( .A(\c1/deck [30]), .Y(n301) );
  INVX2 U303 ( .A(\c1/deck [32]), .Y(n302) );
  INVX2 U304 ( .A(\c1/deck [33]), .Y(n303) );
  INVX2 U305 ( .A(\c1/deck [31]), .Y(n304) );
  INVX2 U306 ( .A(\c1/deck [34]), .Y(n305) );
  INVX2 U307 ( .A(\c1/n438 ), .Y(n306) );
  INVX2 U308 ( .A(\c1/n425 ), .Y(n307) );
  INVX2 U309 ( .A(\c1/n408 ), .Y(n308) );
  INVX2 U310 ( .A(\c1/trans_reg [23]), .Y(n309) );
  INVX2 U311 ( .A(\c1/n437 ), .Y(n310) );
  INVX2 U312 ( .A(\c1/n432 ), .Y(n311) );
  INVX2 U313 ( .A(\c1/n402 ), .Y(n312) );
  INVX2 U314 ( .A(\c1/n431 ), .Y(n313) );
  INVX2 U315 ( .A(\c1/deck [29]), .Y(n314) );
  INVX2 U316 ( .A(\c1/deck [24]), .Y(n315) );
  INVX2 U317 ( .A(\c1/deck [26]), .Y(n316) );
  INVX2 U318 ( .A(\c1/deck [27]), .Y(n317) );
  INVX2 U319 ( .A(\c1/deck [25]), .Y(n318) );
  INVX2 U320 ( .A(\c1/deck [28]), .Y(n319) );
  INVX2 U321 ( .A(\c1/n485 ), .Y(n320) );
  INVX2 U322 ( .A(\c1/n472 ), .Y(n321) );
  INVX2 U323 ( .A(\c1/n455 ), .Y(n322) );
  INVX2 U324 ( .A(\c1/trans_reg [19]), .Y(n323) );
  INVX2 U325 ( .A(\c1/n484 ), .Y(n324) );
  INVX2 U326 ( .A(\c1/n479 ), .Y(n325) );
  INVX2 U327 ( .A(\c1/n449 ), .Y(n326) );
  INVX2 U328 ( .A(\c1/n478 ), .Y(n327) );
  INVX2 U329 ( .A(\c1/deck [23]), .Y(n328) );
  INVX2 U330 ( .A(\c1/deck [18]), .Y(n329) );
  INVX2 U331 ( .A(\c1/deck [20]), .Y(n330) );
  INVX2 U332 ( .A(\c1/deck [21]), .Y(n331) );
  INVX2 U333 ( .A(\c1/deck [19]), .Y(n332) );
  INVX2 U334 ( .A(\c1/deck [22]), .Y(n333) );
  INVX2 U335 ( .A(\c1/n531 ), .Y(n334) );
  INVX2 U336 ( .A(\c1/n518 ), .Y(n335) );
  INVX2 U337 ( .A(\c1/n501 ), .Y(n336) );
  INVX2 U338 ( .A(\c1/trans_reg [15]), .Y(n337) );
  INVX2 U339 ( .A(\c1/n530 ), .Y(n338) );
  INVX2 U340 ( .A(\c1/n525 ), .Y(n339) );
  INVX2 U341 ( .A(\c1/n495 ), .Y(n340) );
  INVX2 U342 ( .A(\c1/n524 ), .Y(n341) );
  INVX2 U343 ( .A(\c1/deck [17]), .Y(n342) );
  INVX2 U344 ( .A(\c1/deck [13]), .Y(n343) );
  INVX2 U345 ( .A(\c1/deck [15]), .Y(n344) );
  INVX2 U346 ( .A(\c1/deck [14]), .Y(n345) );
  INVX2 U347 ( .A(\c1/deck [16]), .Y(n346) );
  INVX2 U348 ( .A(\c1/deck [12]), .Y(n347) );
  INVX2 U349 ( .A(\c1/n572 ), .Y(n348) );
  INVX2 U350 ( .A(\c1/n565 ), .Y(n349) );
  INVX2 U351 ( .A(\c1/n539 ), .Y(n350) );
  INVX2 U352 ( .A(\c1/trans_reg [11]), .Y(n351) );
  INVX2 U353 ( .A(\c1/n563 ), .Y(n352) );
  INVX2 U354 ( .A(\c1/deck [11]), .Y(n353) );
  INVX2 U355 ( .A(\c1/deck [6]), .Y(n354) );
  INVX2 U356 ( .A(\c1/deck [8]), .Y(n355) );
  INVX2 U357 ( .A(\c1/deck [9]), .Y(n356) );
  INVX2 U358 ( .A(\c1/deck [7]), .Y(n357) );
  INVX2 U359 ( .A(\c1/deck [10]), .Y(n358) );
  INVX2 U360 ( .A(\c1/n618 ), .Y(n359) );
  INVX2 U361 ( .A(\c1/n605 ), .Y(n360) );
  INVX2 U362 ( .A(\c1/n588 ), .Y(n361) );
  INVX2 U363 ( .A(\c1/trans_reg [7]), .Y(n362) );
  INVX2 U364 ( .A(\c1/n617 ), .Y(n363) );
  INVX2 U365 ( .A(\c1/n612 ), .Y(n364) );
  INVX2 U366 ( .A(\c1/n582 ), .Y(n365) );
  INVX2 U367 ( .A(\c1/n611 ), .Y(n366) );
  INVX2 U368 ( .A(\c1/deck [5]), .Y(n367) );
  INVX2 U369 ( .A(\c1/deck [0]), .Y(n368) );
  INVX2 U370 ( .A(\c1/deck [2]), .Y(n369) );
  INVX2 U371 ( .A(\c1/deck [3]), .Y(n370) );
  INVX2 U372 ( .A(\c1/deck [1]), .Y(n371) );
  INVX2 U373 ( .A(\c1/deck [4]), .Y(n372) );
  INVX2 U374 ( .A(\c1/n633 ), .Y(n373) );
  INVX2 U375 ( .A(\c1/n662 ), .Y(n374) );
  INVX2 U376 ( .A(\c1/n651 ), .Y(n375) );
  INVX2 U377 ( .A(\c1/n630 ), .Y(n376) );
  INVX2 U378 ( .A(\c1/n645 ), .Y(n377) );
  INVX2 U379 ( .A(\c1/trans_reg [3]), .Y(n378) );
  INVX2 U380 ( .A(\c1/n657 ), .Y(n379) );
  INVX2 U381 ( .A(\c1/n650 ), .Y(n380) );
  INVX2 U382 ( .A(\c1/trans_reg [25]), .Y(n381) );
  INVX2 U383 ( .A(\c1/trans_reg [21]), .Y(n382) );
  INVX2 U384 ( .A(\c1/trans_reg [17]), .Y(n383) );
  INVX2 U385 ( .A(\c1/trans_reg [13]), .Y(n384) );
  INVX2 U386 ( .A(\c1/trans_reg [9]), .Y(n385) );
  INVX2 U387 ( .A(\c1/n549 ), .Y(n386) );
  INVX2 U388 ( .A(\c1/trans_reg [5]), .Y(n387) );
  INVX2 U389 ( .A(\c1/trans_reg [1]), .Y(n388) );
  INVX2 U390 ( .A(\c1/trans_reg [26]), .Y(n389) );
  INVX2 U391 ( .A(\c1/trans_reg [22]), .Y(n390) );
  INVX2 U392 ( .A(\c1/trans_reg [18]), .Y(n391) );
  INVX2 U393 ( .A(\c1/trans_reg [14]), .Y(n392) );
  INVX2 U394 ( .A(\c1/trans_reg [10]), .Y(n393) );
  INVX2 U395 ( .A(\c1/trans_reg [6]), .Y(n394) );
  INVX2 U396 ( .A(\c1/trans_reg [2]), .Y(n395) );
  INVX2 U397 ( .A(\c1/n666 ), .Y(n396) );
  INVX2 U398 ( .A(\c1/lfsr [2]), .Y(n397) );
  INVX2 U399 ( .A(\c1/n667 ), .Y(n398) );
  INVX2 U400 ( .A(\c1/lfsr [1]), .Y(n399) );
  INVX2 U401 ( .A(\c1/trans_reg [0]), .Y(n400) );
  INVX2 U402 ( .A(\c1/trans_reg [4]), .Y(n401) );
  INVX2 U403 ( .A(\c1/trans_reg [8]), .Y(n402) );
  INVX2 U404 ( .A(\c1/trans_reg [12]), .Y(n403) );
  INVX2 U405 ( .A(\c1/trans_reg [16]), .Y(n404) );
  INVX2 U406 ( .A(\c1/trans_reg [20]), .Y(n405) );
  INVX2 U407 ( .A(\c1/trans_reg [24]), .Y(n406) );
  INVX2 U408 ( .A(\c1/n392 ), .Y(n407) );
  INVX2 U409 ( .A(\c1/n665 ), .Y(n408) );
  INVX2 U410 ( .A(\c1/lfsr [3]), .Y(n409) );
  INVX2 U411 ( .A(\c1/c_count[2]1 ), .Y(n410) );
  INVX2 U412 ( .A(\c1/n263 ), .Y(n411) );
  INVX2 U413 ( .A(\c1/c_count[1]1 ), .Y(n412) );
  INVX2 U414 ( .A(\c1/c_count[0]1 ), .Y(n413) );
  INVX2 U415 ( .A(\c1/n691 ), .Y(n414) );
  INVX2 U416 ( .A(\c1/n698 ), .Y(n415) );
  INVX2 U417 ( .A(\c1/n391 ), .Y(n416) );
  INVX2 U418 ( .A(\c1/n395 ), .Y(n417) );
  INVX2 U419 ( .A(\c1/n674 ), .Y(n418) );
  INVX2 U420 ( .A(\c1/n664 ), .Y(n419) );
  INVX2 U421 ( .A(\c1/n620 ), .Y(n420) );
  INVX2 U422 ( .A(\c1/n574 ), .Y(n421) );
  INVX2 U423 ( .A(\c1/n533 ), .Y(n422) );
  INVX2 U424 ( .A(\c1/n487 ), .Y(n423) );
  INVX2 U425 ( .A(\c1/n440 ), .Y(n424) );
  INVX2 U426 ( .A(\c1/trans_num [2]), .Y(n425) );
  INVX2 U427 ( .A(\c1/n697 ), .Y(n426) );
  INVX2 U428 ( .A(\c1/trans_num [1]), .Y(n427) );
  INVX2 U429 ( .A(\c1/trans_num [0]), .Y(n428) );
  INVX2 U430 ( .A(\c1/n394 ), .Y(n429) );
  INVX2 U431 ( .A(\c1/n700 ), .Y(n430) );
  INVX2 U432 ( .A(\c1/n685 ), .Y(n431) );
  INVX2 U433 ( .A(\c1/n681 ), .Y(n432) );
  INVX2 U434 ( .A(\c1/next_state [0]), .Y(n433) );
  INVX2 U435 ( .A(\c1/n693 ), .Y(n434) );
  INVX2 U436 ( .A(\c1/state[2]1 ), .Y(n435) );
  INVX2 U437 ( .A(\c1/next_state [2]), .Y(n436) );
  INVX2 U438 ( .A(\c1/state[1]1 ), .Y(n437) );
  INVX2 U439 ( .A(\c1/next_state [1]), .Y(n438) );
  INVX2 U440 ( .A(\c1/gen_flag1 ), .Y(n439) );
  NOR2X1 U441 ( .A(n147), .B(\dp/TOP_CARD [5]), .Y(n450) );
  AOI22X1 U442 ( .A(\dp/TOP_CARD [4]), .B(n148), .C(\dp/TOP_CARD [5]), .D(n147), .Y(n449) );
  OAI21X1 U443 ( .A(\dp/TOP_CARD [4]), .B(n148), .C(n146), .Y(n448) );
  NAND2X1 U444 ( .A(\dp/P2_CARDS [21]), .B(n140), .Y(n442) );
  NAND3X1 U445 ( .A(n442), .B(n150), .C(\dp/TOP_CARD [2]), .Y(n440) );
  OAI21X1 U446 ( .A(\dp/P2_CARDS [21]), .B(n140), .C(n440), .Y(n446) );
  AOI22X1 U447 ( .A(n170), .B(\dp/P2_CARDS [19]), .C(n172), .D(
        \dp/P2_CARDS [18]), .Y(n441) );
  OAI21X1 U448 ( .A(\dp/P2_CARDS [19]), .B(n170), .C(n144), .Y(n445) );
  NOR2X1 U449 ( .A(\dp/TOP_CARD [2]), .B(n150), .Y(n443) );
  OAI21X1 U450 ( .A(n128), .B(n443), .C(n127), .Y(n444) );
  OAI21X1 U451 ( .A(n446), .B(n445), .C(n444), .Y(n447) );
  OAI22X1 U452 ( .A(n450), .B(n449), .C(n448), .D(n447), .Y(\dp/N90 ) );
  NOR2X1 U453 ( .A(n155), .B(\dp/TOP_CARD [5]), .Y(n461) );
  AOI22X1 U454 ( .A(\dp/TOP_CARD [4]), .B(n156), .C(\dp/TOP_CARD [5]), .D(n155), .Y(n460) );
  OAI21X1 U455 ( .A(\dp/TOP_CARD [4]), .B(n156), .C(n154), .Y(n459) );
  NAND2X1 U456 ( .A(\dp/P2_CARDS [15]), .B(n140), .Y(n453) );
  NAND3X1 U457 ( .A(n453), .B(n158), .C(\dp/TOP_CARD [2]), .Y(n451) );
  OAI21X1 U458 ( .A(\dp/P2_CARDS [15]), .B(n140), .C(n451), .Y(n457) );
  AOI22X1 U459 ( .A(n170), .B(\dp/P2_CARDS [13]), .C(n172), .D(
        \dp/P2_CARDS [12]), .Y(n452) );
  OAI21X1 U460 ( .A(\dp/P2_CARDS [13]), .B(n170), .C(n152), .Y(n456) );
  NOR2X1 U461 ( .A(\dp/TOP_CARD [2]), .B(n158), .Y(n454) );
  OAI21X1 U462 ( .A(n131), .B(n454), .C(n130), .Y(n455) );
  OAI21X1 U463 ( .A(n457), .B(n456), .C(n455), .Y(n458) );
  OAI22X1 U464 ( .A(n461), .B(n460), .C(n459), .D(n458), .Y(\dp/N89 ) );
  NOR2X1 U465 ( .A(n163), .B(\dp/TOP_CARD [5]), .Y(n472) );
  AOI22X1 U466 ( .A(\dp/TOP_CARD [4]), .B(n164), .C(\dp/TOP_CARD [5]), .D(n163), .Y(n471) );
  OAI21X1 U467 ( .A(\dp/TOP_CARD [4]), .B(n164), .C(n162), .Y(n470) );
  NAND2X1 U468 ( .A(\dp/P2_CARDS [9]), .B(n140), .Y(n464) );
  NAND3X1 U469 ( .A(n464), .B(n166), .C(\dp/TOP_CARD [2]), .Y(n462) );
  OAI21X1 U470 ( .A(\dp/P2_CARDS [9]), .B(n140), .C(n462), .Y(n468) );
  AOI22X1 U471 ( .A(n170), .B(\dp/P2_CARDS [7]), .C(n172), .D(\dp/P2_CARDS [6]), .Y(n463) );
  OAI21X1 U472 ( .A(\dp/P2_CARDS [7]), .B(n170), .C(n160), .Y(n467) );
  NOR2X1 U473 ( .A(\dp/TOP_CARD [2]), .B(n166), .Y(n465) );
  OAI21X1 U474 ( .A(n133), .B(n465), .C(n132), .Y(n466) );
  OAI21X1 U475 ( .A(n468), .B(n467), .C(n466), .Y(n469) );
  OAI22X1 U476 ( .A(n472), .B(n471), .C(n470), .D(n469), .Y(\dp/N87 ) );
  NOR2X1 U477 ( .A(n175), .B(\dp/TOP_CARD [5]), .Y(n483) );
  AOI22X1 U478 ( .A(\dp/TOP_CARD [4]), .B(n176), .C(\dp/TOP_CARD [5]), .D(n175), .Y(n482) );
  OAI21X1 U479 ( .A(\dp/TOP_CARD [4]), .B(n176), .C(n174), .Y(n481) );
  NAND2X1 U480 ( .A(\dp/P2_CARDS [3]), .B(n140), .Y(n475) );
  NAND3X1 U481 ( .A(n475), .B(n178), .C(\dp/TOP_CARD [2]), .Y(n473) );
  OAI21X1 U482 ( .A(\dp/P2_CARDS [3]), .B(n140), .C(n473), .Y(n479) );
  AOI22X1 U483 ( .A(n170), .B(\dp/P2_CARDS [1]), .C(n172), .D(\dp/P2_CARDS [0]), .Y(n474) );
  OAI21X1 U484 ( .A(\dp/P2_CARDS [1]), .B(n170), .C(n169), .Y(n478) );
  NOR2X1 U485 ( .A(\dp/TOP_CARD [2]), .B(n178), .Y(n476) );
  OAI21X1 U486 ( .A(n136), .B(n476), .C(n135), .Y(n477) );
  OAI21X1 U487 ( .A(n479), .B(n478), .C(n477), .Y(n480) );
  OAI22X1 U488 ( .A(n483), .B(n482), .C(n481), .D(n480), .Y(\dp/N85 ) );
  NOR2X1 U489 ( .A(n182), .B(\dp/N72 ), .Y(n495) );
  AOI22X1 U490 ( .A(\dp/N71 ), .B(n141), .C(\dp/N72 ), .D(n182), .Y(n494) );
  OAI21X1 U491 ( .A(\dp/N71 ), .B(n141), .C(n181), .Y(n493) );
  NAND2X1 U492 ( .A(\dp/TOP_CARD [3]), .B(n4), .Y(n487) );
  NAND3X1 U493 ( .A(n487), .B(n143), .C(\dp/N69 ), .Y(n484) );
  OAI21X1 U494 ( .A(\dp/TOP_CARD [3]), .B(n4), .C(n484), .Y(n491) );
  AOI21X1 U495 ( .A(\dp/TOP_CARD [1]), .B(n2), .C(\dp/TOP_CARD [0]), .Y(n485)
         );
  NAND2X1 U496 ( .A(n485), .B(\dp/N67 ), .Y(n486) );
  OAI21X1 U497 ( .A(\dp/TOP_CARD [1]), .B(n2), .C(n486), .Y(n490) );
  NOR2X1 U498 ( .A(\dp/N69 ), .B(n143), .Y(n488) );
  OAI21X1 U499 ( .A(n139), .B(n488), .C(n138), .Y(n489) );
  OAI21X1 U500 ( .A(n491), .B(n490), .C(n489), .Y(n492) );
  OAI22X1 U501 ( .A(n495), .B(n494), .C(n493), .D(n492), .Y(\dp/N73 ) );
endmodule

