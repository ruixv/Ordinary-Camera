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

## The command to reproduce Figure R6 and Figure R7 (a), (c)

For Figure R6 column (a), run:
```matlab
fig4_column_c   % run the manuscript to estimate matrix A (and solve TV regularized optimization).
imagesc(imresize(simA,[2560,2560]));    % show the matrix A; resize is to make the image size appropriate.
cond(simA)  % calculate the 2-norm condition number of simA
```


For Figure R6 column (b) and Figure R7 (a), (c), run:
```matlab
NLOS_Passive   % run the manuscript to estimate matrix A (and solve TV regularized optimization).
imagesc(imresize(simA,[2560,2560]));    % show the matrix A; resize is to make the image size appropriate.
cond(simA)  % calculate the 2-norm condition number of simA
```

> Line 81: scene = 'rgb';
can be changed to bu, mushroom, tommy to reconstruct other scenes.

## About the occluder
In the program, occ_corner(1,:,i); occ_corner(2,:,i); occ_corner(3,:,i); occ_corner(4,:,i) respectively represent the positions of the four vertices of the i-th occluder. Therefore, according to Figure R5's estimation of occluder 2, we approximate occluder 2 as
```matlab
% occluder 2
occ_corner(1,:,1) = Occ_LLcorner;
occ_corner(2,:,1) = Occ_LLcorner + [0.05, 0, 0];
occ_corner(3,:,1) = Occ_LLcorner + [0, 0, 0.01];
occ_corner(4,:,1) = Occ_LLcorner + [0.05, 0, 0.01];
%
occ_corner(1,:,2) = Occ_LLcorner + [0.005, 0, 0.01];
occ_corner(2,:,2) = Occ_LLcorner + [0, 0, 0.01];
occ_corner(3,:,2) = Occ_LLcorner + [0.005, 0, 0.075];
occ_corner(4,:,2) = Occ_LLcorner + [0, 0, 0.075];
%
occ_corner(1,:,3) = Occ_LLcorner + [0.045, 0, 0.01];
occ_corner(2,:,3) = Occ_LLcorner + [0.05, 0, 0.01];
occ_corner(3,:,3) = Occ_LLcorner + [0.045, 0, 0.075];
occ_corner(4,:,3) = Occ_LLcorner + [0.05, 0, 0.075];
% 
occ_corner(1,:,4) = Occ_LLcorner + [0.01, 0, 0.065];
occ_corner(2,:,4) = Occ_LLcorner + [0.04, 0, 0.065];
occ_corner(3,:,4) = Occ_LLcorner + [0.01, 0, 0.075];
occ_corner(4,:,4) = Occ_LLcorner + [0.04, 0, 0.075];
% 
occ_corner(1,:,5) = Occ_LLcorner + [0.02, 0, 0];
occ_corner(2,:,5) = Occ_LLcorner + [0.03, 0, 0];
occ_corner(3,:,5) = Occ_LLcorner + [0.02, 0, -0.75];
occ_corner(4,:,5) = Occ_LLcorner + [0.03, 0, -0.75];
% 
occ_corner(1,:,6) = Occ_LLcorner + [0, 0, -0.01];
occ_corner(2,:,6) = Occ_LLcorner + [0.02, 0, -0.01];
occ_corner(3,:,6) = Occ_LLcorner + [0, 0, -0.02];
occ_corner(4,:,6) = Occ_LLcorner + [0.02, 0, -0.02];
% 
occ_corner(1,:,7) = Occ_LLcorner + [0.03, 0, -0.01];
occ_corner(2,:,7) = Occ_LLcorner + [0.07, 0, -0.01];
occ_corner(3,:,7) = Occ_LLcorner + [0.03, 0, -0.02];
occ_corner(4,:,7) = Occ_LLcorner + [0.07, 0, -0.02];
% 
occ_corner(1,:,8) = Occ_LLcorner + [0, 0, -0.25];
occ_corner(2,:,8) = Occ_LLcorner + [-0.01, 0, -0.25];
occ_corner(3,:,8) = Occ_LLcorner + [0, 0, -0.75];
occ_corner(4,:,8) = Occ_LLcorner + [-0.01, 0, -0.75];
% 
occ_corner(1,:,9) = Occ_LLcorner + [0.5, 0, -0.25];
occ_corner(2,:,9) = Occ_LLcorner + [0.6, 0, -0.25];
occ_corner(3,:,9) = Occ_LLcorner + [0.5, 0, -0.75];
occ_corner(4,:,9) = Occ_LLcorner + [0.6, 0, -0.75];
```
The occluder 1 with regular shape is
```
occ_corner(1,:,1) = [0.63, 0.3, 0.32];
occ_corner(2,:,1) = [0.63, 0.3, 0.32] + [0.34, 0, 0];
occ_corner(3,:,1) = [0.63, 0.3, 0.32] + [0, 0, 0.38];
occ_corner(4,:,1) = [0.63, 0.3, 0.32] + [0.34, 0, 0.38];
```