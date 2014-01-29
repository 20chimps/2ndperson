//Maya ASCII 2013 scene
//Name: cupboard_v002.ma
//Last modified: Sat, Jan 25, 2014 08:37:03 PM
//Codeset: 1252
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220241-825136";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 360.82151061037547 168.65878459264403 96.603004245509226 ;
	setAttr ".r" -type "double3" -20.738352729614316 71.799999999977416 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 407.27908771000904;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.3754529367463615 0 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 39.104479771994797 62.347353818836361 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 246.45385305928664;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Cupboard";
createNode transform -n "cupboard" -p "Cupboard";
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 -0.15847758139101842 -0.15847603543011957 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-015 -0.15847758139101842 -0.15847603543011957 ;
createNode mesh -n "cupboardShape" -p "cupboard";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:61]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 135 ".uvst[0].uvsp[0:134]" -type "float2" 0 0 0 1 1 0 1 1 0
		 0 0 1 1 0 1 1 0.875 0.25 0.87499994 0.25 0.87394279 0.25 0.62605721 0.25 0.375 0.49894279
		 0.0035142824 7.4505806e-009 0.99999988 1.1920929e-007 1 1 0 1 0 0 1 0 0.99648571
		 1 0 1 0.37394279 0.25 0.87384659 0 0.875 0.00087919831 0.625 0 0.625 0.25 0.0046131015
		 1 6.2398612e-008 0.99563283 5.9604645e-008 0 0.9953866 1 0.0035142284 6.146729e-008
		 1 0 1 1 0 1.1920929e-007 0.96485692 1 0 1 1 1 0.0046133893 1.0244548e-008 0.9953866
		 0 0.9999997 0.0062123183 0.37529072 0.99894279 0.12605724 0.00023587793 0.37599263
		 0.00023588538 0.6240074 0.99969035 0.37394276 0.00080535561 0.37469035 0.00080535561
		 0.37469035 0.25 0.37599266 0.25 0.37529075 0.25 0.62400734 0.00080534816 0.62463748
		 0.00073885173 0.62470925 0.24981236 0.625 0.00068918645 0.625 0.25 0.625 0.25 0.625
		 0 0.62575591 0 0.87429076 0 0.62468439 0.7508654 0.37529075 0.74919468 0.37529075
		 0.5 0.12605721 0.25 0.12530965 0.25 0.37599263 0.75105721 0.3759926 0.75030959 0.62400728
		 0.74976408 0.875 0 0.875 0.00063175685 0.875 0.25 0.62400734 0.5 0.62470925 0.50018764
		 0.99538666 0 0.99864876 0 0.9986487 1 0.0010292956 1.6996637e-008 0.0035143495 1
		 0.0010293126 1 0.99648571 0 0.99699908 0.0030009151 1 1 0.00032196727 0.0022872856
		 0.375 0.25105721 0.37529072 0.25030968 0.62400734 0.25 0.62470925 0.25018764 0.625
		 0.25105721 0.625 0.25064063 0.37529075 0.49969035 0.37599266 0.5 0.625 0.49935934
		 0.62470925 0.49981236 0.625 0.49894279 0.875 0 0.87492788 0 0.875 0 0 0.010204732
		 0 0.0030017495 6.5137327e-009 0.0062123472 1 1 0.99897069 1 1 0.99563283 0 1 0.026036954
		 1 0.04612771 1 0.37394276 0.00023587793 0.37454435 0.00034707785 0.37599263 0.99894273
		 0.37599266 0.99969035 0.37542778 0.99954438 0.37599263 0.00080534816 0.37529072 0.00080534816
		 0.37542778 0.00034707785 0.62500006 0 0.62501019 0 0.62400734 0.00023588538 0.62452388
		 0.00030100346 0.6240074 0.99894279 0.62468439 0.9991346 0.62452382 0.99967587 0.37529075
		 0.75105727 0.37542778 0.75045562 0.12605721 0.00080535561 0.12530966 0.00080535561
		 0.12545563 0.00034707785 0.37599266 0.74919468 0.37599266 0.74976414 0.37542778 0.74965292
		 0.875 0 0.875 0 0.62400734 0.75105727 0.62400734 0.75030971 0.62452388 0.75032413
		 0.6240074 0.74919462 0.62463742 0.7492612 0.62452376 0.749699;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 66 ".pt";
	setAttr ".pt[0]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[1]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[2]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[3]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[4]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[5]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[6]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[7]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[8]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[9]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[10]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[11]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[12]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[13]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[14]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[15]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[16]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[17]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[18]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[19]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[20]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[21]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[22]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[23]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[24]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[25]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[26]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[27]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[28]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[29]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[30]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[31]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[32]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[33]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[34]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[35]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[36]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[37]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[38]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[39]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[40]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[41]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[42]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[43]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[44]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[45]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[46]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[47]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[48]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[49]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[50]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[51]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[52]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[53]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[54]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[55]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[56]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[57]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[58]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[59]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[60]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[61]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[62]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[63]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr ".pt[64]" -type "float3" 28.157518 34.561157 -26.432924 ;
	setAttr -s 65 ".vt[0:64]"  28.22315979 31.88650513 -24.29034996 28.22315979 -31.88650513 24.29034996
		 28.22315979 31.88650513 24.29034996 -23.095607758 31.88649368 -24.29034996 -23.095607758 31.88647652 24.29034996
		 -23.095607758 -3.18864608 -2.42903423 -23.095607758 3.18864822 -2.42903423 -23.095607758 3.18864608 2.42903423
		 -28.22315979 -34.56116104 26.27444649 -28.15751839 -34.71963882 26.27444649 -27.9990406 -34.78527832 26.27444649
		 -27.9990406 -34.71963882 26.43292236 -27.9990406 -34.56116104 26.49856567 -28.15751839 -34.56116104 26.43292236
		 28.22315979 -34.60035324 26.35769653 28.14129639 -34.57966995 26.47586441 27.9990406 -34.56116104 26.49856567
		 27.9990406 -34.71963882 26.43292236 27.9990406 -34.78527832 26.27444649 28.15190315 -34.74183655 26.31510735
		 -27.9990406 -34.78527832 -26.27444649 -28.15751839 -34.71963882 -26.27444649 -28.22315979 -34.56116104 -26.27444649
		 -28.15751839 -34.56116104 -26.43292236 -27.9990406 -34.56116104 -26.49856567 -27.9990406 -34.71963882 -26.43292236
		 28.22315979 -34.60035324 -26.35769653 28.15190315 -34.74183655 -26.31510735 27.9990406 -34.78527832 -26.27444649
		 27.9990406 -34.71963882 -26.43292236 27.9990406 -34.56116104 -26.49856567 28.14129639 -34.57966995 -26.47586441
		 -28.22315979 34.78527832 26.27444649 -28.15751839 34.78527832 26.43292236 -27.9990406 34.78527832 26.49856567
		 28.22315979 34.60699463 26.36275482 28.22315979 34.78527832 26.27444649 27.9990406 34.78527832 26.49856567
		 28.15751839 34.73305893 26.45878792 -28.15751839 34.78527832 -26.43292236 -28.22315979 34.78527832 -26.27444649
		 -27.9990406 34.78527832 -26.49856567 28.22315979 34.60699463 -26.36275482 28.15751839 34.73305893 -26.45878792
		 27.9990406 34.78527832 -26.49856567 28.22315979 34.78527832 -26.27444649 28.22315979 -31.82086372 -24.22470856
		 28.22315979 -31.88650513 -24.066232681 28.22315979 -32.064788818 -24.42616272 28.22315979 -31.66238785 -24.29034996
		 -23.095607758 -31.70819473 -24.15454102 -23.095607758 -31.88647652 -24.066232681
		 -23.095607758 -31.8208313 -24.22470856 -23.095607758 -31.66235733 -24.29034996 -23.095607758 -31.82085037 24.22470856
		 -23.095607758 -31.6623745 24.29034996 -22.87148476 -31.88649368 24.29034996 -23.095607758 -31.88649368 24.066232681
		 -23.095607758 -2.96452928 2.42903423 -23.095607758 -3.12300539 2.3633914 -23.095607758 -3.18864822 2.20491529
		 -28.12657356 -34.688694 26.40197754 28.11564445 -34.7015152 26.42986107 -28.12657356 -34.688694 -26.40197754
		 28.11564445 -34.7015152 -26.42986107;
	setAttr -s 126 ".ed[0:125]"  0 49 0 2 0 0 1 2 0 0 3 0 3 53 0 1 56 0 2 4 0
		 4 3 0 3 6 1 6 5 0 7 6 0 5 60 0 4 7 1 14 1 1 26 48 1 32 40 0 34 37 0 32 34 1 35 2 1
		 36 45 0 36 35 1 37 36 0 41 44 0 41 40 1 42 0 1 42 45 1 44 45 0 47 1 0 48 47 1 49 48 1
		 50 5 1 51 57 0 51 50 1 53 50 1 55 4 0 56 55 0 56 57 0 58 7 0 20 28 1 28 18 1 18 10 1
		 10 20 1 34 12 1 12 16 1 16 37 1 40 22 1 22 8 1 8 32 1 14 26 1 44 30 1 30 24 1 24 41 1
		 26 42 0 35 14 0 47 51 1 53 49 1 55 58 1 60 57 1 10 9 1 9 21 0 21 20 1 9 8 1 22 21 1
		 12 11 1 11 17 0 17 16 1 11 10 1 18 17 1 8 13 1 13 33 0 33 32 0 13 12 1 34 33 0 16 15 1
		 15 38 0 38 37 0 15 14 1 35 38 1 14 19 1 19 27 0 27 26 1 19 18 1 28 27 1 24 23 1 23 39 0
		 39 41 0 23 22 1 40 39 0 20 25 1 25 29 0 29 28 1 25 24 1 30 29 1 26 31 1 31 43 0 43 42 1
		 31 30 1 44 43 0 47 46 0 46 52 0 52 51 0 46 49 0 53 52 0 55 54 0 54 59 1 59 58 1 54 57 0
		 60 59 1 38 36 0 43 45 0 46 48 1 52 50 1 54 56 0 60 58 0 9 61 0 61 13 0 11 61 0 15 62 0
		 62 19 0 17 62 0 21 63 0 63 25 0 23 63 0 27 64 0 64 31 0 29 64 0;
	setAttr -s 62 -ch 247 ".fc[0:61]" -type "polyFaces" 
		f 5 52 24 0 29 -15
		mu 0 5 66 9 8 23 94
		f 6 -25 25 -20 20 18 1
		mu 0 6 8 9 10 11 53 25
		f 5 -14 48 14 28 27
		mu 0 5 24 55 66 94 22
		f 4 53 13 2 -19
		mu 0 4 53 55 24 25
		f 4 55 -1 3 4
		mu 0 4 75 30 31 32
		f 4 -4 -2 6 7
		mu 0 4 1 0 2 3
		f 5 -3 5 35 34 -7
		mu 0 5 17 18 100 19 20
		f 4 10 -9 -8 12
		mu 0 4 7 5 4 6
		f 5 11 57 -32 32 30
		mu 0 5 36 103 37 38 39
		f 4 -35 56 37 -13
		mu 0 4 33 77 34 35
		f 8 -27 -23 23 -16 17 16 21 19
		mu 0 8 91 69 88 12 81 47 83 85
		f 5 -34 -5 8 9 -31
		mu 0 5 97 13 14 15 16
		f 5 -37 -6 -28 54 31
		mu 0 5 26 27 28 71 29
		f 4 38 39 40 41
		mu 0 4 63 129 116 106
		f 4 42 43 44 -17
		mu 0 4 47 109 49 83
		f 4 45 46 47 15
		mu 0 4 61 121 44 21
		f 4 49 50 51 22
		mu 0 4 69 132 124 88
		f 4 58 59 60 -42
		mu 0 4 106 40 119 63
		f 4 61 -47 62 -60
		mu 0 4 104 44 121 41
		f 4 63 64 65 -44
		mu 0 4 109 42 114 49
		f 4 66 -41 67 -65
		mu 0 4 107 106 116 43
		f 4 68 69 70 -48
		mu 0 4 44 45 46 21
		f 4 71 -43 72 -70
		mu 0 4 110 109 47 48
		f 4 73 74 75 -45
		mu 0 4 49 50 51 83
		f 4 76 -54 77 -75
		mu 0 4 52 55 53 54
		f 4 78 79 80 -49
		mu 0 4 55 56 57 66
		f 4 81 -40 82 -80
		mu 0 4 117 116 129 58
		f 4 83 84 85 -52
		mu 0 4 124 59 60 88
		f 4 86 -46 87 -85
		mu 0 4 122 121 61 62
		f 4 88 89 90 -39
		mu 0 4 63 64 130 129
		f 4 91 -51 92 -90
		mu 0 4 125 124 132 65
		f 4 93 94 95 -53
		mu 0 4 66 67 68 9
		f 4 96 -50 97 -95
		mu 0 4 133 132 69 70
		f 4 98 99 100 -55
		mu 0 4 71 72 73 29
		f 4 101 -56 102 -100
		mu 0 4 74 30 75 76
		f 4 103 104 105 -57
		mu 0 4 77 78 79 34
		f 4 106 -58 107 -105
		mu 0 4 80 37 103 102
		f 3 -71 -73 -18
		mu 0 3 81 82 47
		f 3 -22 -76 108
		mu 0 3 85 83 84
		f 3 -109 -78 -21
		mu 0 3 85 84 86
		f 3 -88 -24 -86
		mu 0 3 87 12 88
		f 3 -26 -96 109
		mu 0 3 91 89 90
		f 3 -110 -98 26
		mu 0 3 91 90 69
		f 3 -30 -102 110
		mu 0 3 94 92 93
		f 3 -111 -99 -29
		mu 0 3 94 93 22
		f 3 -33 -101 111
		mu 0 3 97 95 96
		f 3 -112 -103 33
		mu 0 3 97 96 13
		f 3 36 -107 112
		mu 0 3 100 98 99
		f 3 -113 -104 -36
		mu 0 3 100 99 19
		f 3 -106 -108 113
		mu 0 3 101 102 103
		f 4 -69 -62 114 115
		mu 0 4 45 44 104 105
		f 4 -59 -67 116 -115
		mu 0 4 40 106 107 108
		f 4 -64 -72 -116 -117
		mu 0 4 42 109 110 111
		f 4 -79 -77 117 118
		mu 0 4 56 55 112 113
		f 4 -74 -66 119 -118
		mu 0 4 50 49 114 115
		f 4 -68 -82 -119 -120
		mu 0 4 43 116 117 118
		f 4 -89 -61 120 121
		mu 0 4 64 63 119 120
		f 4 -63 -87 122 -121
		mu 0 4 41 121 122 123
		f 4 -84 -92 -122 -123
		mu 0 4 59 124 125 126
		f 4 -94 -81 123 124
		mu 0 4 67 66 127 128
		f 4 -83 -91 125 -124
		mu 0 4 58 129 130 131
		f 4 -93 -97 -125 -126
		mu 0 4 65 132 133 134;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cupboardDoor" -p "Cupboard";
	setAttr ".rp" -type "double3" 55.394990048428866 34.561158349863177 -51.591750672761577 ;
	setAttr ".sp" -type "double3" 55.394990048428866 34.561158349863177 -51.591750672761577 ;
createNode mesh -n "cupboardDoorShape" -p "cupboardDoor";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.875 0 0.875 0.25
		 0.625 0 0.625 0.25 0.875 0 0.875 0.25 0.625 0 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  28.157518 34.561157 -26.432924 
		28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 
		-26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 
		34.561157 -26.432924 28.157518 34.561157 -26.432924;
	setAttr -s 8 ".vt[0:7]"  30.97406578 -29.76074028 -23.88551331 30.97406578 29.76074028 -23.88551331
		 30.97406578 -29.76074028 23.88551331 30.97406578 29.76074028 23.88551331 28.26230812 -31.88650513 -24.29035187
		 28.26230812 31.88650513 -24.29035187 28.26230812 -31.88650513 24.29035187 28.26230812 31.88650513 24.29035187;
	setAttr -s 12 ".ed[0:11]"  2 3 0 0 1 0 4 5 0 0 4 0 1 5 0 2 6 0 3 7 0
		 6 7 0 1 3 0 5 7 0 0 2 0 4 6 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 3 2 -5 -2
		mu 0 4 0 4 5 1
		f 4 -4 10 5 -12
		mu 0 4 4 0 2 6
		f 4 0 6 -8 -6
		mu 0 4 2 3 7 6
		f 4 -3 11 7 -10
		mu 0 4 5 4 6 7
		f 4 8 -1 -11 1
		mu 0 4 1 3 2 0
		f 4 9 -7 -9 4
		mu 0 4 5 7 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "CupboardTop" -p "Cupboard";
	setAttr ".rp" -type "double3" 28.982559308316908 71.289782128156787 -26.432923594749045 ;
	setAttr ".sp" -type "double3" 28.982559308316908 71.289782128156787 -26.432923594749045 ;
createNode mesh -n "CupboardTopShape" -p "CupboardTop";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 96 ".uvst[0].uvsp[0:95]" -type "float2" 0.3753224 0.9987812
		 0.12621887 0.0046710968 0.37610066 0.0046710968 0.62389934 0.99964297 0.37378111
		 0.015948296 0.37464303 0.015948296 0.37532237 0.2340517 0.62621886 0.0046710968 0.62467766
		 0.75121886 0.62389934 0.015948296 0.62467766 0.015948296 0.62535697 0.2340517 0.37378111
		 0.2340517 0.37378111 0.24532914 0.3753224 0.49878114 0.37610066 0.25121886 0.37610066
		 0.250357 0.62389934 0.2340517 0.62389934 0.24532914 0.62389934 0.25121886 0.62467766
		 0.25121886 0.87378114 0.24532914 0.12621887 0.2340517 0.125357 0.2340517 0.37532237
		 0.7340517 0.37610066 0.5159483 0.37610066 0.50467086 0.62389934 0.49878114 0.62389934
		 0.499643 0.62389934 0.5159483 0.62467766 0.5159483 0.87378114 0.015948296 0.87464303
		 0.015948296 0.37610066 0.75121886 0.37610066 0.75035703 0.62389934 0.7340517 0.62389934
		 0.7453289 0.37378111 0.0046710968 0.3744747 0.0068728849 0.37610066 0.99878114 0.37610066
		 0.99964297 0.37547436 0.99947476 0.37610066 0.015948296 0.37532234 0.015948296 0.37547433
		 0.0068728924 0.62389934 0.99878114 0.62467766 0.99878114 0.62452561 0.99947476 0.62621886
		 0.015948296 0.62535697 0.015948296 0.62552536 0.0068728924 0.62389934 0.0046710968
		 0.62452561 0.0068728924 0.3753224 0.25121886 0.37547433 0.2505253 0.37464303 0.2340517
		 0.3744747 0.24312711 0.37610066 0.2340517 0.37610066 0.24532914 0.37547433 0.24312711
		 0.62621886 0.2340517 0.62621886 0.24532914 0.6255253 0.24312711 0.62389934 0.250357
		 0.62452567 0.2505253 0.62467766 0.2340517 0.62452561 0.24312711 0.37532234 0.5159483
		 0.37547433 0.50687289 0.12621887 0.24532914 0.12552528 0.24312711 0.37610066 0.49878114
		 0.37610066 0.499643 0.37547436 0.49947473 0.87378114 0.2340517 0.87464303 0.2340517
		 0.87447464 0.24312711 0.62389934 0.50467086 0.62452561 0.50687289 0.62467766 0.49878114
		 0.62452561 0.49947473 0.3753224 0.75121886 0.37547433 0.7505253 0.12621887 0.015948296
		 0.125357 0.015948296 0.1255253 0.0068728924 0.37610066 0.7340517 0.37610066 0.7453289
		 0.37547433 0.74312711 0.87378114 0.0046710968 0.87447464 0.0068728849 0.62389934
		 0.75121886 0.62389934 0.75035703 0.62452567 0.7505253 0.62467766 0.7340517 0.62452561
		 0.74312711;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".pt[0:55]" -type "float3"  28.157518 34.561157 -26.432924 
		28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 
		-26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 
		34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 
		28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 
		-26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 
		34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 
		28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 
		-26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 
		34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 
		28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 
		-26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 
		34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 
		28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 
		-26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 
		34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 
		28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 
		-26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 
		34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 
		28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 
		-26.432924 28.157518 34.561157 -26.432924 28.157518 34.561157 -26.432924 28.157518 
		34.561157 -26.432924 28.157518 34.561157 -26.432924;
	setAttr -s 56 ".vt[0:55]"  -28.66657448 34.95297623 26.3715992 -28.59051514 34.76935196 26.3715992
		 -28.40689278 34.69329453 26.3715992 -28.40689278 34.76935196 26.55521965 -28.40689278 34.95297623 26.63127899
		 -28.59051514 34.95297623 26.55521965 30.056974411 34.69329453 26.3715992 30.24059868 34.76935196 26.3715992
		 30.31665611 34.95297623 26.3715992 30.24059868 34.95297623 26.55521965 30.056974411 34.95297623 26.63127899
		 30.056974411 34.76935196 26.55521965 -28.40689278 38.76395035 26.3715992 -28.59051514 38.68789673 26.3715992
		 -28.66657448 38.50426865 26.3715992 -28.59051514 38.50426865 26.55521965 -28.40689278 38.50426865 26.63127899
		 -28.40689278 38.68789673 26.55521965 30.31665611 38.50426865 26.3715992 30.24059868 38.68789673 26.3715992
		 30.056974411 38.76395035 26.3715992 30.056974411 38.68789673 26.55521965 30.056974411 38.50426865 26.63127899
		 30.24059868 38.50426865 26.55521965 -28.40689278 38.50426865 -26.63127899 -28.59051514 38.50426865 -26.55521965
		 -28.66657448 38.50426865 -26.3715992 -28.59051514 38.68789673 -26.3715992 -28.40689278 38.76395035 -26.3715992
		 -28.40689278 38.68789673 -26.55521965 30.31665611 38.50426865 -26.3715992 30.24059868 38.50426865 -26.55521965
		 30.056974411 38.50426865 -26.63127899 30.056974411 38.68789673 -26.55521965 30.056974411 38.76395035 -26.3715992
		 30.24059868 38.68789673 -26.3715992 -28.40689278 34.69329453 -26.3715992 -28.59051514 34.76935196 -26.3715992
		 -28.66657448 34.95297623 -26.3715992 -28.59051514 34.95297623 -26.55521965 -28.40689278 34.95297623 -26.63127899
		 -28.40689278 34.76935196 -26.55521965 30.31665611 34.95297623 -26.3715992 30.24059868 34.76935196 -26.3715992
		 30.056974411 34.69329453 -26.3715992 30.056974411 34.76935196 -26.55521965 30.056974411 34.95297623 -26.63127899
		 30.24059868 34.95297623 -26.55521965 -28.5546608 34.8052063 26.51936531 30.20474243 34.8052063 26.51936531
		 -28.5546608 38.65203857 26.51936531 30.20474243 38.65203857 26.51936531 -28.5546608 38.65203857 -26.51936531
		 30.20474243 38.65203857 -26.51936531 -28.5546608 34.8052063 -26.51936531 30.20474243 34.8052063 -26.51936531;
	setAttr -s 108 ".ed[0:107]"  36 44 1 44 6 1 6 2 1 2 36 1 10 22 1 22 16 1
		 16 4 1 4 10 1 14 26 1 26 38 1 38 0 1 0 14 1 42 30 1 30 18 1 18 8 1 8 42 1 20 34 1
		 34 28 1 28 12 1 12 20 1 32 46 1 46 40 1 40 24 1 24 32 1 2 1 1 1 37 0 37 36 1 1 0 1
		 38 37 1 4 3 1 3 11 0 11 10 1 3 2 1 6 11 1 0 5 1 5 15 0 15 14 1 5 4 1 16 15 1 8 7 1
		 7 43 0 43 42 1 7 6 1 44 43 1 10 9 1 9 23 0 23 22 1 9 8 1 18 23 1 14 13 1 13 27 0
		 27 26 1 13 12 1 28 27 1 12 17 1 17 21 0 21 20 1 17 16 1 22 21 1 20 19 1 19 35 0 35 34 1
		 19 18 1 30 35 1 26 25 1 25 39 0 39 38 1 25 24 1 40 39 1 24 29 1 29 33 0 33 32 1 29 28 1
		 34 33 1 32 31 1 31 47 0 47 46 1 31 30 1 42 47 1 36 41 1 41 45 0 45 44 1 41 40 1 46 45 1
		 1 48 0 48 5 0 3 48 0 7 49 0 49 11 0 9 49 0 13 50 0 50 17 0 15 50 0 19 51 0 51 23 0
		 21 51 0 25 52 0 52 29 0 27 52 0 31 53 0 53 35 0 33 53 0 37 54 0 54 41 0 39 54 0 43 55 0
		 55 47 0 45 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 33 91 45 39
		f 4 4 5 6 7
		mu 0 4 9 17 57 42
		f 4 8 9 10 11
		mu 0 4 12 22 83 4
		f 4 12 13 14 15
		mu 0 4 31 74 60 48
		f 4 16 17 18 19
		mu 0 4 19 27 71 15
		f 4 20 21 22 23
		mu 0 4 29 35 86 25
		f 4 24 25 26 -4
		mu 0 4 39 0 81 33
		f 4 27 -11 28 -26
		mu 0 4 37 4 83 1
		f 4 29 30 31 -8
		mu 0 4 42 2 51 9
		f 4 32 -3 33 -31
		mu 0 4 40 39 45 3
		f 4 34 35 36 -12
		mu 0 4 4 5 55 12
		f 4 37 -7 38 -36
		mu 0 4 43 42 57 6
		f 4 39 40 41 -16
		mu 0 4 48 7 89 31
		f 4 42 -2 43 -41
		mu 0 4 46 45 91 8
		f 4 44 45 46 -5
		mu 0 4 9 10 65 17
		f 4 47 -15 48 -46
		mu 0 4 49 48 60 11
		f 4 49 50 51 -9
		mu 0 4 12 13 69 22
		f 4 52 -19 53 -51
		mu 0 4 53 15 71 14
		f 4 54 55 56 -20
		mu 0 4 15 16 63 19
		f 4 57 -6 58 -56
		mu 0 4 58 57 17 18
		f 4 59 60 61 -17
		mu 0 4 19 20 79 27
		f 4 62 -14 63 -61
		mu 0 4 61 60 74 21
		f 4 64 65 66 -10
		mu 0 4 22 23 84 83
		f 4 67 -23 68 -66
		mu 0 4 67 25 86 24
		f 4 69 70 71 -24
		mu 0 4 25 26 77 29
		f 4 72 -18 73 -71
		mu 0 4 72 71 27 28
		f 4 74 75 76 -21
		mu 0 4 29 30 94 35
		f 4 77 -13 78 -76
		mu 0 4 75 74 31 32
		f 4 79 80 81 -1
		mu 0 4 33 34 92 91
		f 4 82 -22 83 -81
		mu 0 4 87 86 35 36
		f 4 -35 -28 84 85
		mu 0 4 5 4 37 38
		f 4 -25 -33 86 -85
		mu 0 4 0 39 40 41
		f 4 -30 -38 -86 -87
		mu 0 4 2 42 43 44
		f 4 -34 -43 87 88
		mu 0 4 3 45 46 47
		f 4 -40 -48 89 -88
		mu 0 4 7 48 49 50
		f 4 -45 -32 -89 -90
		mu 0 4 10 9 51 52
		f 4 -55 -53 90 91
		mu 0 4 16 15 53 54
		f 4 -50 -37 92 -91
		mu 0 4 13 12 55 56
		f 4 -39 -58 -92 -93
		mu 0 4 6 57 58 59
		f 4 -49 -63 93 94
		mu 0 4 11 60 61 62
		f 4 -60 -57 95 -94
		mu 0 4 20 19 63 64
		f 4 -59 -47 -95 -96
		mu 0 4 18 17 65 66
		f 4 -70 -68 96 97
		mu 0 4 26 25 67 68
		f 4 -65 -52 98 -97
		mu 0 4 23 22 69 70
		f 4 -54 -73 -98 -99
		mu 0 4 14 71 72 73
		f 4 -64 -78 99 100
		mu 0 4 21 74 75 76
		f 4 -75 -72 101 -100
		mu 0 4 30 29 77 78
		f 4 -74 -62 -101 -102
		mu 0 4 28 27 79 80
		f 4 -80 -27 102 103
		mu 0 4 34 33 81 82
		f 4 -29 -67 104 -103
		mu 0 4 1 83 84 85
		f 4 -69 -83 -104 -105
		mu 0 4 24 86 87 88
		f 4 -79 -42 105 106
		mu 0 4 32 31 89 90
		f 4 -44 -82 107 -106
		mu 0 4 8 91 92 93
		f 4 -84 -77 -107 -108
		mu 0 4 36 35 94 95;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId7.id" "cupboardShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "cupboardShape.iog.og[0].gco";
connectAttr "groupId8.id" "cupboardDoorShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "cupboardDoorShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "CupboardTopShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cupboardShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "cupboardDoorShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of cupboard_v002.ma
