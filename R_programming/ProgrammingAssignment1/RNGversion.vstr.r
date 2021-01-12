vstr <- "3.5.1"  ## This choice works, you do not
## need to have this version of R on your computer

RNGversion(vstr)  ## do this once in your R session
# and do the above line BEFORE doing set.seed(42)

## before taking any quiz questions using the sample function

## This "tells" R to run the random number generators
## from that version of R
## It returns a warning saying that version of sample is
## not "best"
Warning message:
      In RNGkind("Mersenne-Twister", "Inversion", "Rounding") :
      non-uniform 'Rounding' sampler used

set.seed(42)
use <- sample(332, 10)
use
