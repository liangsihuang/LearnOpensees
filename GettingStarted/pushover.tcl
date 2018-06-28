wipe
source model.tcl
pattern Plain 2 Linear {
    load 3 100 0 0
    load 4 100 0 0
}
integrator DisplacementControl 3 1 0.1
analyze 10
