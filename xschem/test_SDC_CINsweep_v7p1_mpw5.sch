v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 210 60 210 80 { lab=GND}
N 210 -50 210 0 { lab=VDD}
N 210 280 210 300 { lab=GND}
N 210 170 210 220 { lab=VSS}
N 460 150 460 190 { lab=VSS}
N 460 70 460 90 { lab=SENS_IN}
N 430 70 460 70 { lab=SENS_IN}
N 460 70 570 70 { lab=SENS_IN}
N 1265 0 1265 40 { lab=VDD}
N 1125 40 1185 40 { lab=VDD}
N 1185 40 1265 40 { lab=VDD}
N 1205 -40 1205 0 { lab=VSS}
N 1125 0 1205 0 { lab=VSS}
N 1125 260 1205 260 { lab=noConn[7:0],DOUT,SENS_IN,REF_IN}
N 1430 130 1430 170 { lab=VSS}
N 1430 50 1430 70 { lab=DOUT}
N 1400 50 1430 50 { lab=DOUT}
C {devices/vsource.sym} 210 30 0 0 {name=V1 value=VDD}
C {devices/gnd.sym} 210 80 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 200 -400 0 0 {name=SPICE only_toplevel=false value=".lib /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.param VDD = 1.8
.ic v(SENS_IN) = 0
.ic v(REF_IN) = 1.8
.control
*compose vin_var start=1.9p stop=2.11p step=0.02p
compose vin_var start=0p stop=0.31p step=0.02p
foreach val $&vin_var
  alter C_SENS $val
  tran 0.05n 6u
  run
end
*plot tran1.v(N2) tran2.v(N2) tran3.v(N2) tran4.v(N2) tran5.v(N2) tran6.v(N2) tran7.v(N2) tran8.v(N2) tran9.v(N2) tran10.v(N2) tran11.v(N2)
*wrdata ringosc_CINsweep_v2p1_Creal.txt tran1.v(N2) tran2.v(N2) tran3.v(N2) tran4.v(N2) tran5.v(N2) tran6.v(N2) tran7.v(N2) tran8.v(N2) tran9.v(N2) tran10.v(N2) tran11.v(N2)
wrdata /home/jorge/Documents/Postdoc/sky130_work_jm/SDC_SKY130_V1/SDC_CINsweep_v7p1_mpw5.txt tran1.v(DOUT) tran2.v(DOUT) tran3.v(DOUT) tran4.v(DOUT) tran5.v(DOUT) tran6.v(DOUT) tran7.v(DOUT) tran8.v(DOUT) tran9.v(DOUT) tran10.v(DOUT) tran11.v(DOUT) tran12.v(DOUT) tran13.v(DOUT) tran14.v(DOUT) tran15.v(DOUT) tran16.v(DOUT)
.endc"}
C {devices/capa.sym} 460 120 0 0 {name=C_SENS
m=1
value=0p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 430 70 0 0 {name=l5 sig_type=std_logic lab=SENS_IN}
C {devices/lab_pin.sym} 210 -50 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 210 250 0 0 {name=V2 value=0}
C {devices/gnd.sym} 210 300 0 0 {name=l23 lab=GND}
C {devices/lab_pin.sym} 210 170 0 0 {name=l24 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 190 0 0 {name=l8 sig_type=std_logic lab=VSS}
C {/home/jorge/Documents/Postdoc/github/caravel_user_project_analog/xschem/user_analog_project_wrapper.sym} 975 140 0 0 {name=x1}
C {devices/lab_pin.sym} 1265 0 0 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1205 -40 0 0 {name=l3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1205 260 2 0 {name=l4 sig_type=std_logic lab=noConn[7:0],DOUT,SENS_IN,REF_IN}
C {devices/capa.sym} 1430 100 0 0 {name=C_LOAD
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1400 50 0 0 {name=l9 sig_type=std_logic lab=DOUT}
C {devices/lab_pin.sym} 1430 170 0 0 {name=l10 sig_type=std_logic lab=VSS}
