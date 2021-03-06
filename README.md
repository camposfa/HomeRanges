HomeRanges
==========

This repository contains R source files used for analyzing white-faced capuchin home ranges.


>Campos, F.A., Bergstrom, M.L., Childers, A., Hogan, J.D., Jack, K.M., Melin, A.D., Mosdossy K.N., Myers, M.S., Parr, N.A., Sargeant, E., Schoof, V.A.M., and Fedigan, L.M. (2014). Drivers of home range characteristics across spatiotemporal scales in a neotropical primate, _Cebus capucinus_. _Animal Behaviour_ 91: 93-109. doi: [10.1016/j.anbehav.2014.03.007](http://dx.doi.org/10.1016/j.anbehav.2014.03.007)


![Picture](http://people.ucalgary.ca/~facampos/images/homerange2.jpg)

The raw data are not posted because I don't own them all.

[Contact me](mailto:camposfa@gmail.com) if you are interested in the data sets referred to in the source files.

Other files:
- **HomeRanges.R**: The primary R code for preparing and analyzing the data
- **Models.R**: R scripts for applying the linear-mixed effects model analysis
- **Plots.R**: R scripts for creating most of the plots
- **HomeRanges.Rmd**: R markdown file used to generate an HTML report (see below)
- **HRModels.Rmd**: R markdown file used to generate an HTML report (see below)
- **BRBMethod.R**: contains a function to batch-apply the biased random bridge home range method in the package adehabitatHR

Full instructions for reproducing the analysis can be found [here](http://camposfa.github.io/capuchin-home-ranges.html).
