wipe
source model.tcl
pattern Plain 2 Linear {
    load 3 100 0 0
    load 4 100 0 0
}
integrator DisplacementControl 3 1 0.1
analyze 10
integrator DisplacementControl 3 1 -0.2
analyze 10
integrator DisplacementControl 3 1 0.1
analyze 10
# 或者用一个for loop
# foreach DisplacementControl {0.1 -0.2 0.1} {
#     intergrator DisplacementControl 3 1 $Dincr
#     analyze 10
# }