
q
Command: %s
53*	vivadotcl2@
,synth_design -top top -part xc7a100tcsg324-32default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 378.379 ; gain = 95.938
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
top2default:default2b
LC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/sources_1/imports/lab10/7-seg.v2default:default2
12default:default8@Z8-638h px? 
?
default block is never used226*oasys2b
LC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/sources_1/imports/lab10/7-seg.v2default:default2
1962default:default8@Z8-226h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
shift_cnt_reg2default:default2b
LC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/sources_1/imports/lab10/7-seg.v2default:default2
472default:default8@Z8-6014h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
top2default:default2
12default:default2
12default:default2b
LC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/sources_1/imports/lab10/7-seg.v2default:default2
12default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 419.461 ; gain = 137.020
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 419.461 ; gain = 137.020
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
Loading part %s157*device2$
xc7a100tcsg324-32default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2e
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
LED_a2default:default2e
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default2
382default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2e
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default2
382default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED_b2default:default2e
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default2
392default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2e
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default2
392default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	LED_start2default:default2e
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default2
402default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2e
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default2
402default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
en_m182default:default2e
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default2
552default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2e
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default2
552default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2e
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2c
OC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/constrs_1/imports/lab10/Nexys4.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
741.7152default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 741.715 ; gain = 459.273
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-3
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 741.715 ; gain = 459.273
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 741.715 ; gain = 459.273
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
state02default:defaultZ8-5546h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
p17Counter_reg2default:default2b
LC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/sources_1/imports/lab10/7-seg.v2default:default2
1332default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
m17Counter_reg2default:default2b
LC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/sources_1/imports/lab10/7-seg.v2default:default2
1452default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
counter_reg2default:default2b
LC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/sources_1/imports/lab10/7-seg.v2default:default2
1572default:default8@Z8-6014h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 741.715 ; gain = 459.273
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|1     |top__GB0      |           1|     17206|
2default:defaulth p
x
? 
\
%s
*synth2D
0|2     |top__GB1      |           1|     13196|
2default:defaulth p
x
? 
\
%s
*synth2D
0|3     |top__GB2      |           1|      6336|
2default:defaulth p
x
? 
\
%s
*synth2D
0|4     |top__GB3      |           1|     16168|
2default:defaulth p
x
? 
\
%s
*synth2D
0|5     |top__GB4      |           1|     15683|
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit       Adders := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                 2x64  Multipliers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                 3x64  Multipliers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit        Muxes := 35    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 11    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
8
%s
*synth2 
Module top 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit       Adders := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                 2x64  Multipliers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                 3x64  Multipliers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     64 Bit        Muxes := 35    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 11    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
state02default:defaultZ8-5546h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
p17Counter_reg2default:default2b
LC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/sources_1/imports/lab10/7-seg.v2default:default2
1332default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
m17Counter_reg2default:default2b
LC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/sources_1/imports/lab10/7-seg.v2default:default2
1452default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
counter_reg2default:default2b
LC:/Users/chihyu/Desktop/Lab10HW/Lab10HW.srcs/sources_1/imports/lab10/7-seg.v2default:default2
1572default:default8@Z8-6014h px? 
q
%s
*synth2Y
EDSP Report: Generating DSP fp_num1, operation Mode is: (A:0x2710)*B.
2default:defaulth p
x
? 
g
%s
*synth2O
;DSP Report: operator fp_num1 is absorbed into DSP fp_num1.
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:53 ; elapsed = 00:01:54 . Memory (MB): peak = 969.438 ; gain = 686.996
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
}+------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
~|Module Name | DSP Mapping  | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
}+------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
~|top         | (A:0x2710)*B | 9      | 15     | -      | -      | 24     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
~+------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|1     |top__GB0      |           1|     27464|
2default:defaulth p
x
? 
\
%s
*synth2D
0|2     |top__GB1      |           1|     20032|
2default:defaulth p
x
? 
\
%s
*synth2D
0|3     |top__GB2      |           1|      8382|
2default:defaulth p
x
? 
\
%s
*synth2D
0|4     |top__GB3      |           1|     18979|
2default:defaulth p
x
? 
\
%s
*synth2D
0|5     |top__GB4      |           1|     31567|
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:13 ; elapsed = 00:02:14 . Memory (MB): peak = 1089.492 ; gain = 807.051
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:02:13 ; elapsed = 00:02:15 . Memory (MB): peak = 1089.492 ; gain = 807.051
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|1     |top__GB0      |           1|     27464|
2default:defaulth p
x
? 
\
%s
*synth2D
0|2     |top__GB1      |           1|     20032|
2default:defaulth p
x
? 
\
%s
*synth2D
0|3     |top__GB2      |           1|      8382|
2default:defaulth p
x
? 
\
%s
*synth2D
0|4     |top__GB3      |           1|     18979|
2default:defaulth p
x
? 
\
%s
*synth2D
0|5     |top__GB4      |           1|     31567|
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:02:26 ; elapsed = 00:02:28 . Memory (MB): peak = 1164.637 ; gain = 882.195
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:02:31 ; elapsed = 00:02:33 . Memory (MB): peak = 1164.637 ; gain = 882.195
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:02:32 ; elapsed = 00:02:34 . Memory (MB): peak = 1164.637 ; gain = 882.195
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:02:33 ; elapsed = 00:02:35 . Memory (MB): peak = 1164.637 ; gain = 882.195
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:02:33 ; elapsed = 00:02:35 . Memory (MB): peak = 1164.637 ; gain = 882.195
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:02:33 ; elapsed = 00:02:35 . Memory (MB): peak = 1164.637 ; gain = 882.195
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:02:33 ; elapsed = 00:02:35 . Memory (MB): peak = 1164.637 ; gain = 882.195
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|1     |BUFG    |     1|
2default:defaulth px? 
E
%s*synth2-
|2     |CARRY4  |  6111|
2default:defaulth px? 
E
%s*synth2-
|3     |DSP48E1 |     1|
2default:defaulth px? 
E
%s*synth2-
|4     |LUT1    |  1381|
2default:defaulth px? 
E
%s*synth2-
|5     |LUT2    |  5039|
2default:defaulth px? 
E
%s*synth2-
|6     |LUT3    | 10551|
2default:defaulth px? 
E
%s*synth2-
|7     |LUT4    |  8255|
2default:defaulth px? 
E
%s*synth2-
|8     |LUT5    |  3614|
2default:defaulth px? 
E
%s*synth2-
|9     |LUT6    | 10995|
2default:defaulth px? 
E
%s*synth2-
|10    |MUXF7   |     1|
2default:defaulth px? 
E
%s*synth2-
|11    |FDRE    |   147|
2default:defaulth px? 
E
%s*synth2-
|12    |FDSE    |     7|
2default:defaulth px? 
E
%s*synth2-
|13    |IBUF    |    20|
2default:defaulth px? 
E
%s*synth2-
|14    |OBUF    |    15|
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|1     |top      |       | 46138|
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:02:33 ; elapsed = 00:02:35 . Memory (MB): peak = 1164.637 ; gain = 882.195
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:02:18 ; elapsed = 00:02:28 . Memory (MB): peak = 1164.637 ; gain = 559.941
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:02:34 ; elapsed = 00:02:36 . Memory (MB): peak = 1164.637 ; gain = 882.195
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
61332default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
?
?Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
top2default:default2
top2default:defaultZ29-101h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
172default:default2
122default:default2
42default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:02:472default:default2
00:02:482default:default2
1164.6372default:default2
894.7232default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2P
<C:/Users/chihyu/Desktop/Lab10HW/Lab10HW.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:122default:default2
00:00:092default:default2
1164.6372default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.308 . Memory (MB): peak = 1164.637 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Jun 12 23:41:48 20202default:defaultZ17-206h px? 


End Record