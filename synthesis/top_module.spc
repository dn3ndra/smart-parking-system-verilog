*SPICE netlist created from BLIF module top_module by blif2BSpice
.include /usr/local/share/qflow/tech/osu035/osu035_stdcells.sp
.subckt top_module vdd gnd clk rst car_detected_in car_detected_out digit1_in[0] digit1_in[1] digit1_in[2] digit1_in[3] digit2_in[0] digit2_in[1] digit2_in[2] digit2_in[3] digit3_in[0] digit3_in[1] digit3_in[2] digit3_in[3] digit1_out[0] digit1_out[1] digit1_out[2] digit1_out[3] digit2_out[0] digit2_out[1] digit2_out[2] digit2_out[3] digit3_out[0] digit3_out[1] digit3_out[2] digit3_out[3] led_slot[0] led_slot[1] led_slot[2] led_slot[3] led_slot[4] led_slot[5] led_slot[6] led_slot[7] led_slot[8] led_slot[9] led_slot[10] led_slot[11] led_slot[12] led_slot[13] led_slot[14] led_slot[15] led_slot[16] led_slot[17] led_slot[18] led_slot[19] servo_pwm_in servo_pwm_out 
XCLKBUF1_1 clk vdd gnd clk_bF$buf4 CLKBUF1
XCLKBUF1_2 clk vdd gnd clk_bF$buf3 CLKBUF1
XCLKBUF1_3 clk vdd gnd clk_bF$buf2 CLKBUF1
XCLKBUF1_4 clk vdd gnd clk_bF$buf1 CLKBUF1
XCLKBUF1_5 clk vdd gnd clk_bF$buf0 CLKBUF1
XBUFX4_1 vdd gnd _0_ _0__bF$buf3 BUFX4
XBUFX4_2 vdd gnd _0_ _0__bF$buf2 BUFX4
XBUFX4_3 vdd gnd _0_ _0__bF$buf1 BUFX4
XBUFX4_4 vdd gnd _0_ _0__bF$buf0 BUFX4
XINVX8_1 vdd gnd rst _0_ INVX8
XNAND2X1_1 vdd _23_ gnd parking_controller_inst.uut_counterpark.count[0] parking_controller_inst.uut_counterpark.count[1] NAND2X1
XNAND2X1_2 vdd _24_ gnd parking_controller_inst.uut_counterpark.count[3] parking_controller_inst.uut_counterpark.count[2] NAND2X1
XOR2X2_1 _25_ _24_ vdd gnd _23_ OR2X2
XNAND2X1_3 vdd _26_ gnd parking_controller_inst.uut_counterpark.count[5] parking_controller_inst.uut_counterpark.count[4] NAND2X1
XNAND2X1_4 vdd _27_ gnd parking_controller_inst.uut_counterpark.count[6] parking_controller_inst.uut_counterpark.count[7] NAND2X1
XOR2X2_2 _28_ _27_ vdd gnd _26_ OR2X2
XINVX1_1 parking_controller_inst.uut_counterpark.db_a_d _29_ vdd gnd INVX1
XNAND2X1_5 vdd _30_ gnd parking_controller_inst.uut_counterpark.db_a _29_ NAND2X1
XINVX1_2 _30_ _31_ vdd gnd INVX1
XOAI21X1_1 gnd vdd _25_ _28_ _32_ _31_ OAI21X1
XINVX1_3 parking_controller_inst.uut_counterpark.db_b _33_ vdd gnd INVX1
XNOR2X1_1 vdd _33_ gnd _34_ parking_controller_inst.uut_counterpark.db_b_d NOR2X1
XOAI21X1_2 gnd vdd _25_ _28_ _35_ _34_ OAI21X1
XNOR2X1_2 vdd parking_controller_inst.uut_counterpark.count[1] gnd _36_ parking_controller_inst.uut_counterpark.count[0] NOR2X1
XNOR2X1_3 vdd parking_controller_inst.uut_counterpark.count[2] gnd _37_ parking_controller_inst.uut_counterpark.count[3] NOR2X1
XNAND2X1_6 vdd _38_ gnd _36_ _37_ NAND2X1
XNOR2X1_4 vdd parking_controller_inst.uut_counterpark.count[7] gnd _39_ parking_controller_inst.uut_counterpark.count[6] NOR2X1
XNOR2X1_5 vdd parking_controller_inst.uut_counterpark.count[4] gnd _40_ parking_controller_inst.uut_counterpark.count[5] NOR2X1
XNAND2X1_7 vdd _41_ gnd _39_ _40_ NAND2X1
XINVX1_4 parking_controller_inst.uut_counterpark.db_b_d _42_ vdd gnd INVX1
XNOR2X1_6 vdd _42_ gnd _43_ parking_controller_inst.uut_counterpark.db_b NOR2X1
XNOR2X1_7 vdd _29_ gnd _44_ parking_controller_inst.uut_counterpark.db_a NOR2X1
XOAI22X1_1 gnd vdd _41_ _38_ _43_ _44_ _45_ OAI22X1
XNAND3X1_1 _32_ vdd gnd _45_ _35_ _46_ NAND3X1
XOAI21X1_3 gnd vdd parking_controller_inst.uut_counterpark.db_b_d parking_controller_inst.uut_counterpark.db_b _47_ _46_ OAI21X1
XNAND2X1_8 vdd _48_ gnd parking_controller_inst.uut_counterpark.count[0] _47_ NAND2X1
XINVX1_5 parking_controller_inst.uut_counterpark.count[0] _49_ vdd gnd INVX1
XNAND2X1_9 vdd _50_ gnd _42_ _33_ NAND2X1
XNAND3X1_2 _50_ vdd gnd _49_ _46_ _51_ NAND3X1
XNAND2X1_10 vdd _1_ gnd _51_ _48_ NAND2X1
XINVX1_6 _36_ _52_ vdd gnd INVX1
XAND2X2_1 vdd gnd _52_ _23_ _53_ AND2X2
XNOR2X1_8 vdd _24_ gnd _54_ _23_ NOR2X1
XNOR2X1_9 vdd _27_ gnd _55_ _26_ NOR2X1
XNAND2X1_11 vdd _56_ gnd _54_ _55_ NAND2X1
XAOI21X1_1 gnd vdd _54_ _55_ _57_ _30_ AOI21X1
XOAI21X1_4 gnd vdd _38_ _41_ _58_ _43_ OAI21X1
XAOI22X1_1 gnd vdd _58_ _57_ _59_ _56_ _34_ AOI22X1
XNOR2X1_10 vdd _59_ gnd _60_ _53_ NOR2X1
XNAND2X1_12 vdd _61_ gnd parking_controller_inst.uut_counterpark.count[1] _47_ NAND2X1
XNAND2X1_13 vdd _62_ gnd _58_ _57_ NAND2X1
XNAND3X1_3 _53_ vdd gnd _35_ _62_ _63_ NAND3X1
XNAND3X1_4 _50_ vdd gnd _46_ _63_ _64_ NAND3X1
XOAI21X1_5 gnd vdd _60_ _64_ _2_ _61_ OAI21X1
XXNOR2X1_1 _23_ parking_controller_inst.uut_counterpark.count[2] gnd vdd _65_ XNOR2X1
XINVX1_7 parking_controller_inst.uut_counterpark.count[2] _66_ vdd gnd INVX1
XXNOR2X1_2 _36_ _66_ gnd vdd _67_ XNOR2X1
XMUX2X1_1 _59_ vdd gnd _68_ _67_ _65_ MUX2X1
XNAND2X1_14 vdd _69_ gnd parking_controller_inst.uut_counterpark.count[2] _47_ NAND2X1
XOAI21X1_6 gnd vdd _47_ _68_ _3_ _69_ OAI21X1
XINVX1_8 parking_controller_inst.uut_counterpark.count[3] _70_ vdd gnd INVX1
XOAI21X1_7 gnd vdd _66_ _23_ _71_ _70_ OAI21X1
XAND2X2_2 vdd gnd _25_ _71_ _72_ AND2X2
XOAI21X1_8 gnd vdd parking_controller_inst.uut_counterpark.count[2] _52_ _73_ parking_controller_inst.uut_counterpark.count[3] OAI21X1
XNAND2X1_15 vdd _74_ gnd _38_ _73_ NAND2X1
XMUX2X1_2 _59_ vdd gnd _75_ _74_ _72_ MUX2X1
XNAND2X1_16 vdd _76_ gnd parking_controller_inst.uut_counterpark.count[3] _47_ NAND2X1
XOAI21X1_9 gnd vdd _47_ _75_ _4_ _76_ OAI21X1
XNAND2X1_17 vdd _77_ gnd parking_controller_inst.uut_counterpark.count[4] _47_ NAND2X1
XINVX1_9 parking_controller_inst.uut_counterpark.count[4] _78_ vdd gnd INVX1
XNAND3X1_5 _36_ vdd gnd _78_ _37_ _79_ NAND3X1
XNAND2X1_18 vdd _80_ gnd parking_controller_inst.uut_counterpark.count[4] _38_ NAND2X1
XNAND2X1_19 vdd _81_ gnd _79_ _80_ NAND2X1
XNAND2X1_20 vdd _82_ gnd parking_controller_inst.uut_counterpark.count[4] _54_ NAND2X1
XOAI21X1_10 gnd vdd _23_ _24_ _83_ _78_ OAI21X1
XAND2X2_3 vdd gnd _82_ _83_ _84_ AND2X2
XMUX2X1_3 _59_ vdd gnd _85_ _81_ _84_ MUX2X1
XOAI21X1_11 gnd vdd _47_ _85_ _5_ _77_ OAI21X1
XNAND2X1_21 vdd _86_ gnd parking_controller_inst.uut_counterpark.count[5] _47_ NAND2X1
XXNOR2X1_3 _79_ parking_controller_inst.uut_counterpark.count[5] gnd vdd _87_ XNOR2X1
XXNOR2X1_4 _82_ parking_controller_inst.uut_counterpark.count[5] gnd vdd _88_ XNOR2X1
XMUX2X1_4 _59_ vdd gnd _89_ _87_ _88_ MUX2X1
XOAI21X1_12 gnd vdd _47_ _89_ _6_ _86_ OAI21X1
XNAND2X1_22 vdd _90_ gnd parking_controller_inst.uut_counterpark.count[6] _47_ NAND2X1
XOAI21X1_13 gnd vdd parking_controller_inst.uut_counterpark.count[5] _79_ _91_ parking_controller_inst.uut_counterpark.count[6] OAI21X1
XINVX1_10 parking_controller_inst.uut_counterpark.count[6] _92_ vdd gnd INVX1
XNOR2X1_11 vdd _79_ gnd _9_ parking_controller_inst.uut_counterpark.count[5] NOR2X1
XNAND2X1_23 vdd _10_ gnd _92_ _9_ NAND2X1
XNAND2X1_24 vdd _11_ gnd _91_ _10_ NAND2X1
XNAND3X1_6 parking_controller_inst.uut_counterpark.count[0] vdd gnd parking_controller_inst.uut_counterpark.count[2] parking_controller_inst.uut_counterpark.count[1] _12_ NAND3X1
XNOR3X1_1 vdd gnd _26_ _12_ _70_ _13_ NOR3X1
XXNOR2X1_5 _13_ _92_ gnd vdd _14_ XNOR2X1
XMUX2X1_5 _59_ vdd gnd _15_ _11_ _14_ MUX2X1
XOAI21X1_14 gnd vdd _47_ _15_ _7_ _90_ OAI21X1
XNAND2X1_25 vdd _16_ gnd parking_controller_inst.uut_counterpark.count[7] _47_ NAND2X1
XINVX1_11 parking_controller_inst.uut_counterpark.count[7] _17_ vdd gnd INVX1
XNOR3X1_2 vdd gnd parking_controller_inst.uut_counterpark.count[5] _79_ parking_controller_inst.uut_counterpark.count[6] _18_ NOR3X1
XOAI22X1_2 gnd vdd _18_ _17_ _38_ _41_ _19_ OAI22X1
XAOI21X1_2 gnd vdd _13_ parking_controller_inst.uut_counterpark.count[6] _20_ parking_controller_inst.uut_counterpark.count[7] AOI21X1
XAOI21X1_3 gnd vdd _54_ _55_ _21_ _20_ AOI21X1
XMUX2X1_6 _59_ vdd gnd _22_ _19_ _21_ MUX2X1
XOAI21X1_15 gnd vdd _47_ _22_ _8_ _16_ OAI21X1
XDFFSR_1 gnd vdd _1_ vdd _0__bF$buf0 parking_controller_inst.uut_counterpark.count[0] clk_bF$buf1 DFFSR
XDFFSR_2 gnd vdd _2_ vdd _0__bF$buf0 parking_controller_inst.uut_counterpark.count[1] clk_bF$buf1 DFFSR
XDFFSR_3 gnd vdd _3_ vdd _0__bF$buf1 parking_controller_inst.uut_counterpark.count[2] clk_bF$buf3 DFFSR
XDFFSR_4 gnd vdd _4_ vdd _0__bF$buf0 parking_controller_inst.uut_counterpark.count[3] clk_bF$buf1 DFFSR
XDFFSR_5 gnd vdd _5_ vdd _0__bF$buf2 parking_controller_inst.uut_counterpark.count[4] clk_bF$buf3 DFFSR
XDFFSR_6 gnd vdd _6_ vdd _0__bF$buf2 parking_controller_inst.uut_counterpark.count[5] clk_bF$buf3 DFFSR
XDFFSR_7 gnd vdd _7_ vdd _0__bF$buf0 parking_controller_inst.uut_counterpark.count[6] clk_bF$buf2 DFFSR
XDFFSR_8 gnd vdd _8_ vdd _0__bF$buf3 parking_controller_inst.uut_counterpark.count[7] clk_bF$buf2 DFFSR
XDFFSR_9 gnd vdd parking_controller_inst.uut_counterpark.count[0] vdd _0__bF$buf0 parking_controller_inst.occupancy[0] clk_bF$buf1 DFFSR
XDFFSR_10 gnd vdd parking_controller_inst.uut_counterpark.count[1] vdd _0__bF$buf3 parking_controller_inst.occupancy[1] clk_bF$buf2 DFFSR
XDFFSR_11 gnd vdd parking_controller_inst.uut_counterpark.count[2] vdd _0__bF$buf3 parking_controller_inst.occupancy[2] clk_bF$buf2 DFFSR
XDFFSR_12 gnd vdd parking_controller_inst.uut_counterpark.count[3] vdd _0__bF$buf2 parking_controller_inst.occupancy[3] clk_bF$buf0 DFFSR
XDFFSR_13 gnd vdd parking_controller_inst.uut_counterpark.count[4] vdd _0__bF$buf2 parking_controller_inst.occupancy[4] clk_bF$buf0 DFFSR
XDFFSR_14 gnd vdd parking_controller_inst.uut_counterpark.count[5] vdd _0__bF$buf2 parking_controller_inst.occupancy[5] clk_bF$buf0 DFFSR
XDFFSR_15 gnd vdd parking_controller_inst.uut_counterpark.count[6] vdd _0__bF$buf3 parking_controller_inst.occupancy[6] clk_bF$buf2 DFFSR
XDFFSR_16 gnd vdd parking_controller_inst.uut_counterpark.count[7] vdd _0__bF$buf3 parking_controller_inst.occupancy[7] clk_bF$buf2 DFFSR
XDFFSR_17 gnd vdd _175_ vdd _0__bF$buf1 parking_controller_inst.uut_counterpark.db_a clk_bF$buf3 DFFSR
XDFFSR_18 gnd vdd _176_ vdd _0__bF$buf1 parking_controller_inst.uut_counterpark.db_b clk_bF$buf4 DFFSR
XDFFSR_19 gnd vdd parking_controller_inst.uut_counterpark.db_a vdd _0__bF$buf1 parking_controller_inst.uut_counterpark.db_a_d clk_bF$buf1 DFFSR
XDFFSR_20 gnd vdd parking_controller_inst.uut_counterpark.db_b vdd _0__bF$buf1 parking_controller_inst.uut_counterpark.db_b_d clk_bF$buf1 DFFSR
XINVX2_1 vdd gnd _93_ parking_controller_inst.occupancy[3] INVX2
XINVX2_2 vdd gnd _94_ parking_controller_inst.occupancy[2] INVX2
XNOR2X1_12 vdd parking_controller_inst.occupancy[7] gnd _95_ parking_controller_inst.occupancy[6] NOR2X1
XNOR2X1_13 vdd parking_controller_inst.occupancy[4] gnd _96_ parking_controller_inst.occupancy[5] NOR2X1
XNAND2X1_26 vdd _174_[15] gnd _95_ _96_ NAND2X1
XINVX2_3 vdd gnd _97_ _174_[15] INVX2
XOAI21X1_16 gnd vdd _93_ _94_ _174_[11] _97_ OAI21X1
XNAND2X1_27 vdd _98_ gnd parking_controller_inst.occupancy[0] parking_controller_inst.occupancy[1] NAND2X1
XINVX1_12 _98_ _99_ vdd gnd INVX1
XOAI21X1_17 gnd vdd parking_controller_inst.occupancy[2] _99_ _100_ parking_controller_inst.occupancy[3] OAI21X1
XNAND2X1_28 vdd _174_[10] gnd _97_ _100_ NAND2X1
XINVX1_13 parking_controller_inst.occupancy[1] _101_ vdd gnd INVX1
XNAND2X1_29 vdd _102_ gnd _94_ _101_ NAND2X1
XINVX1_14 _102_ _103_ vdd gnd INVX1
XOAI21X1_18 gnd vdd _93_ _103_ _174_[9] _97_ OAI21X1
XNOR2X1_14 vdd parking_controller_inst.occupancy[1] gnd _104_ parking_controller_inst.occupancy[0] NOR2X1
XAOI21X1_4 gnd vdd _104_ _94_ _105_ _93_ AOI21X1
XOR2X2_3 _174_[8] _174_[15] vdd gnd _105_ OR2X2
XOR2X2_4 _106_ parking_controller_inst.occupancy[7] vdd gnd parking_controller_inst.occupancy[6] OR2X2
XNOR2X1_15 vdd _106_ gnd _107_ parking_controller_inst.occupancy[5] NOR2X1
XNOR2X1_16 vdd parking_controller_inst.occupancy[3] gnd _108_ parking_controller_inst.occupancy[4] NOR2X1
XNAND2X1_30 vdd _174_[7] gnd _108_ _107_ NAND2X1
XOAI21X1_19 gnd vdd _94_ _98_ _109_ _93_ OAI21X1
XOR2X2_5 _174_[6] _174_[15] vdd gnd _109_ OR2X2
XNAND2X1_31 vdd _110_ gnd parking_controller_inst.occupancy[2] parking_controller_inst.occupancy[1] NAND2X1
XNAND3X1_7 _110_ vdd gnd _108_ _107_ _174_[5] NAND3X1
XOAI21X1_20 gnd vdd _94_ _104_ _111_ _93_ OAI21X1
XOR2X2_6 _174_[4] _174_[15] vdd gnd _111_ OR2X2
XNOR2X1_17 vdd parking_controller_inst.occupancy[2] gnd _112_ parking_controller_inst.occupancy[3] NOR2X1
XNAND2X1_32 vdd _174_[3] gnd _112_ _97_ NAND2X1
XAND2X2_4 vdd gnd _112_ _98_ _113_ AND2X2
XNAND2X1_33 vdd _174_[2] gnd _113_ _97_ NAND2X1
XNAND3X1_8 _108_ vdd gnd _103_ _107_ _174_[1] NAND3X1
XAND2X2_5 vdd gnd _104_ _112_ _114_ AND2X2
XNAND2X1_34 vdd _174_[0] gnd _114_ _97_ NAND2X1
XNAND2X1_35 vdd _115_ gnd parking_controller_inst.occupancy[3] parking_controller_inst.occupancy[2] NAND2X1
XOAI21X1_21 gnd vdd _115_ _104_ _174_[12] _97_ OAI21X1
XOAI21X1_22 gnd vdd _101_ _115_ _174_[13] _97_ OAI21X1
XOAI21X1_23 gnd vdd _115_ _98_ _174_[14] _97_ OAI21X1
XINVX1_15 parking_controller_inst.occupancy[5] _116_ vdd gnd INVX1
XNAND2X1_36 vdd _117_ gnd parking_controller_inst.occupancy[4] _116_ NAND2X1
XNOR2X1_18 vdd _117_ gnd _118_ _106_ NOR2X1
XAOI22X1_2 gnd vdd _114_ _118_ _174_[16] _95_ _96_ AOI22X1
XOAI21X1_24 gnd vdd parking_controller_inst.occupancy[3] _102_ _119_ parking_controller_inst.occupancy[4] OAI21X1
XNAND2X1_37 vdd _174_[17] gnd _107_ _119_ NAND2X1
XAOI22X1_3 gnd vdd _113_ _118_ _174_[18] _95_ _96_ AOI22X1
XAOI22X1_4 gnd vdd _112_ _118_ _174_[19] _95_ _96_ AOI22X1
XNAND3X1_9 car_detected_in vdd gnd servo_handling_inst.keypad_handling_in.lock_input_in servo_handling_inst.keypad_handling_in.keypad_in.unlock _122_ NAND3X1
XINVX1_16 _122_ _120_ vdd gnd INVX1
XINVX1_17 rst _121_ vdd gnd INVX1
XDFFSR_21 gnd vdd _120_ vdd _121_ servo_handling_inst.keypad_handling_in.unlock_in clk_bF$buf3 DFFSR
XDFFSR_22 gnd vdd servo_handling_inst.keypad_handling_in.motion_sensor_in.motion_out vdd _121_ servo_handling_inst.keypad_handling_in.lock_input_in clk_bF$buf0 DFFSR
XINVX1_18 digit3_in[2] _125_ vdd gnd INVX1
XINVX1_19 digit1_in[1] _126_ vdd gnd INVX1
XNAND2X1_38 vdd _127_ gnd digit1_in[0] _126_ NAND2X1
XINVX1_20 digit2_in[0] _128_ vdd gnd INVX1
XNAND3X1_10 digit3_in[0] vdd gnd digit3_in[1] _128_ _129_ NAND3X1
XOAI21X1_25 gnd vdd _127_ _129_ _130_ _125_ OAI21X1
XINVX1_21 digit1_in[0] _131_ vdd gnd INVX1
XNAND2X1_39 vdd _132_ gnd digit1_in[1] _131_ NAND2X1
XINVX1_22 digit3_in[1] _133_ vdd gnd INVX1
XINVX1_23 digit3_in[0] _134_ vdd gnd INVX1
XNAND3X1_11 _133_ vdd gnd digit2_in[0] _134_ _135_ NAND3X1
XOAI21X1_26 gnd vdd _132_ _135_ _136_ digit3_in[2] OAI21X1
XINVX1_24 digit2_in[2] _137_ vdd gnd INVX1
XINVX1_25 digit3_in[3] _138_ vdd gnd INVX1
XNAND3X1_12 _137_ vdd gnd servo_handling_inst.keypad_handling_in.motion_sensor_in.motion_out _138_ _139_ NAND3X1
XOR2X2_7 _140_ digit1_in[2] vdd gnd digit1_in[3] OR2X2
XINVX1_26 digit2_in[3] _141_ vdd gnd INVX1
XNAND2X1_40 vdd _142_ gnd digit2_in[1] _141_ NAND2X1
XNOR3X1_3 vdd gnd _142_ _139_ _140_ _143_ NOR3X1
XNAND3X1_13 _136_ vdd gnd _130_ _143_ _144_ NAND3X1
XINVX1_27 _144_ _123_ vdd gnd INVX1
XINVX1_28 rst _124_ vdd gnd INVX1
XDFFSR_23 gnd vdd _123_ vdd _124_ servo_handling_inst.keypad_handling_in.keypad_in.unlock clk_bF$buf0 DFFSR
XINVX1_29 rst _145_ vdd gnd INVX1
XDFFSR_24 gnd vdd car_detected_in vdd _145_ servo_handling_inst.keypad_handling_in.motion_sensor_in.motion_out clk_bF$buf0 DFFSR
XNAND3X1_14 car_detected_out vdd gnd servo_handling_inst.keypad_handling_out.lock_input_out servo_handling_inst.keypad_handling_out.keypad_out.unlock _148_ NAND3X1
XINVX1_30 _148_ _146_ vdd gnd INVX1
XINVX1_31 rst _147_ vdd gnd INVX1
XDFFSR_25 gnd vdd _146_ vdd _147_ servo_handling_inst.keypad_handling_out.unlock_out clk_bF$buf4 DFFSR
XDFFSR_26 gnd vdd servo_handling_inst.keypad_handling_out.motion_sensor_out.motion_out vdd _147_ servo_handling_inst.keypad_handling_out.lock_input_out clk_bF$buf4 DFFSR
XINVX1_32 digit3_out[2] _151_ vdd gnd INVX1
XINVX1_33 digit1_out[1] _152_ vdd gnd INVX1
XNAND2X1_41 vdd _153_ gnd digit1_out[0] _152_ NAND2X1
XINVX1_34 digit2_out[0] _154_ vdd gnd INVX1
XNAND3X1_15 digit3_out[0] vdd gnd digit3_out[1] _154_ _155_ NAND3X1
XOAI21X1_27 gnd vdd _153_ _155_ _156_ _151_ OAI21X1
XINVX1_35 digit1_out[0] _157_ vdd gnd INVX1
XNAND2X1_42 vdd _158_ gnd digit1_out[1] _157_ NAND2X1
XINVX1_36 digit3_out[1] _159_ vdd gnd INVX1
XINVX1_37 digit3_out[0] _160_ vdd gnd INVX1
XNAND3X1_16 _159_ vdd gnd digit2_out[0] _160_ _161_ NAND3X1
XOAI21X1_28 gnd vdd _158_ _161_ _162_ digit3_out[2] OAI21X1
XINVX1_38 digit2_out[2] _163_ vdd gnd INVX1
XINVX1_39 digit3_out[3] _164_ vdd gnd INVX1
XNAND3X1_17 _163_ vdd gnd servo_handling_inst.keypad_handling_out.motion_sensor_out.motion_out _164_ _165_ NAND3X1
XOR2X2_8 _166_ digit1_out[2] vdd gnd digit1_out[3] OR2X2
XINVX1_40 digit2_out[3] _167_ vdd gnd INVX1
XNAND2X1_43 vdd _168_ gnd digit2_out[1] _167_ NAND2X1
XNOR3X1_4 vdd gnd _168_ _165_ _166_ _169_ NOR3X1
XNAND3X1_18 _162_ vdd gnd _156_ _169_ _170_ NAND3X1
XINVX1_41 _170_ _149_ vdd gnd INVX1
XINVX1_42 rst _150_ vdd gnd INVX1
XDFFSR_27 gnd vdd _149_ vdd _150_ servo_handling_inst.keypad_handling_out.keypad_out.unlock clk_bF$buf4 DFFSR
XINVX1_43 rst _171_ vdd gnd INVX1
XDFFSR_28 gnd vdd car_detected_out vdd _171_ servo_handling_inst.keypad_handling_out.motion_sensor_out.motion_out clk_bF$buf4 DFFSR
XINVX1_44 rst _172_ vdd gnd INVX1
XDFFSR_29 gnd vdd servo_handling_inst.keypad_handling_in.unlock_in vdd _172_ _175_ clk_bF$buf3 DFFSR
XINVX1_45 rst _173_ vdd gnd INVX1
XDFFSR_30 gnd vdd servo_handling_inst.keypad_handling_out.unlock_out vdd _173_ _176_ clk_bF$buf4 DFFSR
XBUFX2_1 vdd gnd _174_[0] led_slot[0] BUFX2
XBUFX2_2 vdd gnd _174_[1] led_slot[1] BUFX2
XBUFX2_3 vdd gnd _174_[10] led_slot[10] BUFX2
XBUFX2_4 vdd gnd _174_[11] led_slot[11] BUFX2
XBUFX2_5 vdd gnd _174_[12] led_slot[12] BUFX2
XBUFX2_6 vdd gnd _174_[13] led_slot[13] BUFX2
XBUFX2_7 vdd gnd _174_[14] led_slot[14] BUFX2
XBUFX2_8 vdd gnd _174_[15] led_slot[15] BUFX2
XBUFX2_9 vdd gnd _174_[16] led_slot[16] BUFX2
XBUFX2_10 vdd gnd _174_[17] led_slot[17] BUFX2
XBUFX2_11 vdd gnd _174_[18] led_slot[18] BUFX2
XBUFX2_12 vdd gnd _174_[19] led_slot[19] BUFX2
XBUFX2_13 vdd gnd _174_[2] led_slot[2] BUFX2
XBUFX2_14 vdd gnd _174_[3] led_slot[3] BUFX2
XBUFX2_15 vdd gnd _174_[4] led_slot[4] BUFX2
XBUFX2_16 vdd gnd _174_[5] led_slot[5] BUFX2
XBUFX2_17 vdd gnd _174_[6] led_slot[6] BUFX2
XBUFX2_18 vdd gnd _174_[7] led_slot[7] BUFX2
XBUFX2_19 vdd gnd _174_[8] led_slot[8] BUFX2
XBUFX2_20 vdd gnd _174_[9] led_slot[9] BUFX2
XBUFX2_21 vdd gnd _175_ servo_pwm_in BUFX2
XBUFX2_22 vdd gnd _176_ servo_pwm_out BUFX2
XFILL_0_0_0 vdd gnd FILL
XFILL_0_0_1 vdd gnd FILL
XFILL_0_0_2 vdd gnd FILL
XFILL_0_1_0 vdd gnd FILL
XFILL_0_1_1 vdd gnd FILL
XFILL_0_1_2 vdd gnd FILL
XFILL_1_0_0 vdd gnd FILL
XFILL_1_0_1 vdd gnd FILL
XFILL_1_0_2 vdd gnd FILL
XFILL_1_1_0 vdd gnd FILL
XFILL_1_1_1 vdd gnd FILL
XFILL_1_1_2 vdd gnd FILL
XFILL_2_1 vdd gnd FILL
XFILL_2_2 vdd gnd FILL
XFILL_2_0_0 vdd gnd FILL
XFILL_2_0_1 vdd gnd FILL
XFILL_2_0_2 vdd gnd FILL
XFILL_2_1_0 vdd gnd FILL
XFILL_2_1_1 vdd gnd FILL
XFILL_2_1_2 vdd gnd FILL
XFILL_3_1 vdd gnd FILL
XFILL_3_0_0 vdd gnd FILL
XFILL_3_0_1 vdd gnd FILL
XFILL_3_0_2 vdd gnd FILL
XFILL_3_1_0 vdd gnd FILL
XFILL_3_1_1 vdd gnd FILL
XFILL_3_1_2 vdd gnd FILL
XFILL_4_1 vdd gnd FILL
XFILL_4_0_0 vdd gnd FILL
XFILL_4_0_1 vdd gnd FILL
XFILL_4_0_2 vdd gnd FILL
XFILL_4_1_0 vdd gnd FILL
XFILL_4_1_1 vdd gnd FILL
XFILL_4_1_2 vdd gnd FILL
XFILL_5_1 vdd gnd FILL
XFILL_5_2 vdd gnd FILL
XFILL_5_0_0 vdd gnd FILL
XFILL_5_0_1 vdd gnd FILL
XFILL_5_0_2 vdd gnd FILL
XFILL_5_1_0 vdd gnd FILL
XFILL_5_1_1 vdd gnd FILL
XFILL_5_1_2 vdd gnd FILL
XFILL_6_0_0 vdd gnd FILL
XFILL_6_0_1 vdd gnd FILL
XFILL_6_0_2 vdd gnd FILL
XFILL_6_1_0 vdd gnd FILL
XFILL_6_1_1 vdd gnd FILL
XFILL_6_1_2 vdd gnd FILL
XFILL_7_1 vdd gnd FILL
XFILL_7_2 vdd gnd FILL
XFILL_7_0_0 vdd gnd FILL
XFILL_7_0_1 vdd gnd FILL
XFILL_7_0_2 vdd gnd FILL
XFILL_7_1_0 vdd gnd FILL
XFILL_7_1_1 vdd gnd FILL
XFILL_7_1_2 vdd gnd FILL
XFILL_8_1 vdd gnd FILL
XFILL_8_2 vdd gnd FILL
XFILL_8_0_0 vdd gnd FILL
XFILL_8_0_1 vdd gnd FILL
XFILL_8_0_2 vdd gnd FILL
XFILL_8_1_0 vdd gnd FILL
XFILL_8_1_1 vdd gnd FILL
XFILL_8_1_2 vdd gnd FILL
XFILL_9_1 vdd gnd FILL
.ends top_module
 
