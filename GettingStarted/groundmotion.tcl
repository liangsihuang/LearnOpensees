wipe
source model.tcl
source ReadSMDFile.tcl
ReadSMDFile RSN6_IMPVALL.I_I-ELC180.AT2 ElCentro4OO.acc dt
set accelSeries "Series -dt $dt -filePath ElCentro4OO.acc -factor 1"
pattern UniformExcitation 2 1 -accel $accelSeries

rayleigh 0 0 0 [expr 2*0.02*/pow([eigen 1], 0.5)]

wipeAnalysis
constraints Plain
numberer RCM
system UmfPack
test NormDispIncr 1.0e-8 10
algorithm Newton
integrator Newmark 0.5 0.25
analysis Transient
# 时间间隔dt=0.02s，分析10s
analyze [expr 10/0.02] 0.02
