# Introduction

This repository is used to reconstruct the data with partial occlusion in NLOS-Passive using traditional physics-based methods. It is forked from [Computational-Periscopy/Ordinary-Camera](https://github.com/Computational-Periscopy/Ordinary-Camera).

# Readme file in [Computational-Periscopy/Ordinary-Camera](https://github.com/Computational-Periscopy/Ordinary-Camera)

The contents of this folder inlude MATLAB scripts for reproducing results in the manuscript [1] (and its supplementary document).
[1] Saunders, C. and Murray-Bruce, J. and Goyal, V.K., 'Computational Periscopy with and Ordinary Digital Camera', Nature, 2018.

To reproduce reconstructions run the corresponding MATLAB scripts as described below. You will need MATLAB version 2017b or above.

Main manuscript results:
1. For Figure 4 column C, run script 'fig4_column_c.m'
2. For Figure 4 column D, run script 'fig4_column_d.m'
3. For Figure 4 column E, run script 'fig4_column_e.m'

Supplementary material results:
1. For Table S1, run script 'table_S1.m'
2. For Figure S1 and S2, run script 'fig_S1_S2.m'
3. For Figure S9, run script'fig_S9.m'
4. For Figure S14, run script'fig_S14.m'
5. For Figure S15, run script'fig_S15.m'
6. For Figure S16, run script'fig_S16.m'

% a small modification

# How to use this repository

For Figure R6 column (a), run script 'fig4_column_c.m' and imagesc(imresize(simA,[2560,2560])); cond(simA)
```matlab
fig4_column_c   % run the manuscript to estimate matrix A (and solve TV regularized optimization).
imagesc(imresize(simA,[2560,2560]));    % show the matrix A; resize is to make the image size appropriate.
cond(simA)  % calculate the 2-norm condition number of simA
```

