//Maya ASCII 2013 scene
//Name: Mug.ma
//Last modified: Sun, Jan 26, 2014 01:02:48 AM
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
	setAttr ".t" -type "double3" -1.1273721198199986 11.799920709015677 -8.2306594076992887 ;
	setAttr ".r" -type "double3" -383.13835273222685 186.19999999993362 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.4607602503156389;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
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
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 10.076779670227744 -4.64758010079961 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 4.6751895079611678;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 0 1.0397996839932258 0.065809975357618455 ;
	setAttr ".s" -type "double3" 2.3981315729644197 2.3434605724877842 2.3981315729644197 ;
	setAttr ".rp" -type "double3" 0 4.6816455663373908 0.072157925282820112 ;
	setAttr ".sp" -type "double3" 0 1.4133094251155853 0.030938208103179932 ;
	setAttr ".spt" -type "double3" 0 3.2683361412218059 0.041219717179640188 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "locator1";
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
createNode transform -n "locator2";
	setAttr ".t" -type "double3" 0 12 0 ;
createNode locator -n "locatorShape2" -p "locator2";
	setAttr -k off ".v";
createNode transform -n "distanceDimension1";
createNode distanceDimShape -n "distanceDimensionShape1" -p "distanceDimension1";
	setAttr -k off ".v";
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" 0 5.9324946030082781 -1.3078799068317153 ;
	setAttr ".r" -type "double3" 90 90 0 ;
	setAttr ".s" -type "double3" 11.120522414216815 3.3314484196929017 12.886959187594215 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 122 ".pt";
	setAttr ".pt[121]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[122]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[123]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[124]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[125]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[126]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[127]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[128]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[129]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[130]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[131]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[132]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[133]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[134]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[135]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[136]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[137]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[138]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[139]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[140]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[141]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[142]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[143]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[144]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[145]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[146]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[147]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[148]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[149]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[150]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[151]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[152]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[153]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[154]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[155]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[156]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[157]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[158]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[159]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[160]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[161]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[162]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[163]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[164]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[165]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[166]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[167]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[168]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[169]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[170]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[171]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[172]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[173]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[174]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[175]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[176]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[177]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[178]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[179]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[180]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[181]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[182]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[183]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[184]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[185]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[186]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[187]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[188]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[189]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[190]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[191]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[192]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[193]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[194]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[195]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[196]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[197]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[198]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[199]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[200]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[201]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[202]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[203]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[204]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[205]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[206]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[207]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[208]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[209]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[210]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[211]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[212]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[213]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[214]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[215]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[216]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[217]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[218]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[219]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[220]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[221]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[222]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[223]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[224]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[225]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[226]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[227]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[228]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[229]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[230]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[231]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[232]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[233]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[234]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[235]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[236]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[237]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[238]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[239]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[240]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".pt[241]" -type "float3" 2.9802322e-008 -2.646978e-023 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[8:23]";
createNode polyPlane -n "polyPlane1";
	setAttr ".cuv" 2;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "H:/GloodusArtAssets//Kitchen/images/400162-01.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[8:15]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976542 0.065809975357618455 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 1.4807242593992993 0.045098729293807205 ;
	setAttr ".s" -type "double3" 1.1861111064443768 1.1861111064443768 1.1861111064443768 ;
	setAttr ".pvt" -type "float3" 1.3901735e-007 2.9970613 0.11090869 ;
	setAttr ".rs" 63936;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5300961898939551 1.5163366646385672 -2.4642862145363367 ;
	setAttr ".cbx" -type "double3" 2.530096467928642 1.5163366646385672 2.5959061652515736 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[0:15]" -type "float3"  -0.090624034 0 0.090624064
		 7.6390387e-009 0 0.1281618 0.090624094 0 0.090624064 0.1281618 0 3.8195194e-009 0.090624094
		 0 -0.090624034 7.6390387e-009 0 -0.1281618 -0.090624049 0 -0.090624079 -0.1281618
		 0 3.8195194e-009 0.059960015 -1.38965988 -0.059960023 -5.0542512e-009 -1.38965988
		 -0.084796265 -0.059960023 -1.38965988 -0.059960023 -0.084796265 -1.38965988 -1.0907346e-009
		 -0.059960023 -1.38965988 0.059960015 -5.0542512e-009 -1.38965988 0.084796265 0.059960015
		 -1.38965988 0.059960023 0.084796265 -1.38965988 -1.0907346e-009;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[26]" "e[28]" "e[30]" "e[32]" "e[34]" "e[36]" "e[38:39]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976542 0.065809975357618455 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 1.6145324642377283 0.027059224882647614 ;
	setAttr ".s" -type "double3" 1.1333333312937679 1.1147325112202211 1.1333333312937679 ;
	setAttr ".pvt" -type "float3" 0 4.6115947 0.13796782 ;
	setAttr ".rs" 47885;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.0009754578782375 2.9970607148994621 -2.8900665880700092 ;
	setAttr ".cbx" -type "double3" 3.0009754578782375 2.9970607148994621 3.1118837716170917 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[42]" "e[44]" "e[46]" "e[48]" "e[50]" "e[52]" "e[54:55]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976542 0.065809975357618455 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 1.8770071566770437 0 ;
	setAttr ".s" -type "double3" 1.050555556118496 1.0078590380108423 1.050555556118496 ;
	setAttr ".pvt" -type "float3" 0 6.4885993 0.13796777 ;
	setAttr ".rs" 52538;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4011057413564187 4.6115931288323102 -3.2631374236639497 ;
	setAttr ".cbx" -type "double3" 3.4011057413564187 4.6115931288323102 3.5390729469101396 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70:71]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976542 0.065809975357618455 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 2.502672139178407 0 ;
	setAttr ".s" -type "double3" 1.0336111114843651 1.0030870994696151 1.0336111114843651 ;
	setAttr ".pvt" -type "float3" 0 8.9912748 0.13796777 ;
	setAttr ".rs" 51614;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.5730507328801027 6.4886000185717352 -3.4350824151876336 ;
	setAttr ".cbx" -type "double3" 3.5730507328801027 6.4886000185717352 3.711017938433824 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84]" "e[86:87]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976542 0.065809975357618455 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 2.2246030647636914 0 ;
	setAttr ".s" -type "double3" 1.0166666668502342 0.95751067406059942 1.0166666668502342 ;
	setAttr ".pvt" -type "float3" 0 11.215872 0.1379679 ;
	setAttr ".rs" 36330;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.6931447575777221 8.9912719790720157 -3.555176439885253 ;
	setAttr ".cbx" -type "double3" 3.6931447575777221 8.9912719790720157 3.8311122411661298 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[90]" "e[92]" "e[94]" "e[96]" "e[98]" "e[100]" "e[102:103]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976542 0.065809975357618455 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 11.291821 0.1379679 ;
	setAttr ".rs" 61138;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.7546971887396632 11.291821619183587 -3.6167288710471941 ;
	setAttr ".cbx" -type "double3" 3.7546971887396632 11.291821619183587 3.8926646723280709 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 0.0041619027 0.0249722 -0.0041619055 ;
	setAttr ".tk[1]" -type "float3" -4.1120836e-009 0.0249722 -0.0058861161 ;
	setAttr ".tk[2]" -type "float3" -0.0041619055 0.0249722 -0.0041619055 ;
	setAttr ".tk[3]" -type "float3" -0.0058861161 0.0249722 -4.1510799e-009 ;
	setAttr ".tk[4]" -type "float3" -0.0041619055 0.0249722 0.0041619027 ;
	setAttr ".tk[5]" -type "float3" -4.1120836e-009 0.0249722 0.0058861608 ;
	setAttr ".tk[6]" -type "float3" 0.0041618897 0.0249722 0.0041619027 ;
	setAttr ".tk[7]" -type "float3" 0.0058861608 0.0249722 -4.1510799e-009 ;
	setAttr ".tk[48]" -type "float3" 0 0.032562245 0 ;
	setAttr ".tk[49]" -type "float3" 0 0.032562245 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.032562245 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.032562245 0 ;
	setAttr ".tk[52]" -type "float3" 0 0.032562245 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.032562245 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.032562245 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.032562245 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[0:55]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976547 0.065809975357618455 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 5.7214451 0.1379679 ;
	setAttr ".rs" 50461;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.40000000596046448;
	setAttr ".cbn" -type "double3" -3.7546971887396632 0.15106888147764774 -3.6167288710471941 ;
	setAttr ".cbx" -type "double3" 3.7546971887396632 11.291821619183587 3.8926646723280709 ;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[216]" "e[218:219]" "e[221]" "e[223]" "e[225]" "e[227]" "e[229]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976547 0.065809975357618455 1;
	setAttr ".wt" 0.58773928880691528;
	setAttr ".dr" no;
	setAttr ".re" 229;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 128 ".tk[0:127]" -type "float3"  -0.16093947 -0.0079610469
		 0.16093947 1.4541541e-008 -0.0079610469 0.22760236 0.16093947 -0.0079610469 0.16093947
		 0.22760239 -0.0079610469 1.9320137e-009 0.16093947 -0.0079610469 -0.16093947 1.4541541e-008
		 -0.0079610469 -0.22760239 -0.16093947 -0.0079610469 -0.16093947 -0.22760236 -0.0079610469
		 1.9320137e-009 -0.13724871 -0.0054192971 0.13682598 -4.9828566e-005 -0.0054192971
		 0.19365558 0.13714914 -0.0054192971 0.13682598 0.19397879 -0.0054192971 -0.00037293084
		 0.13714914 -0.0054192971 -0.13757189 -4.9828566e-005 -0.0054192971 -0.19440147 -0.13724872
		 -0.0054192971 -0.13757189 -0.19407842 -0.0054192971 -0.00037293084 -0.067110524 0.25092238
		 0.067017108 -2.5567973e-005 0.25092238 0.094804555 0.067059502 0.25092238 0.067017108
		 0.094846912 0.25092238 -6.7987618e-005 0.067059502 0.25092238 -0.067152888 -2.5567973e-005
		 0.25092238 -0.094940245 -0.067110524 0.25092238 -0.067152888 -0.094897211 0.25092238
		 -6.7987618e-005 -0.10922869 0.1315002 0.10921133 -5.0678077e-006 0.1315002 0.15445319
		 0.10921854 0.1315002 0.10921133 0.15446042 0.1315002 -1.2262297e-005 0.10921854 0.1315002
		 -0.10923585 -5.0678077e-006 0.1315002 -0.15447769 -0.10922869 0.1315002 -0.10923587
		 -0.15447055 0.1315002 -1.2262297e-005 -0.11565752 -0.00058918889 0.11565751 -4.1916008e-009
		 -0.00058918889 0.16356446 0.11565751 -0.00058918889 0.11565751 0.16356449 -0.00058918889
		 -2.7435606e-008 0.11565751 -0.00058918889 -0.11565751 -4.1916008e-009 -0.00058918889
		 -0.16356449 -0.11565752 -0.00058918889 -0.11565752 -0.16356449 -0.00058918889 -2.7435606e-008
		 -0.1190245 -0.28620142 0.11902449 -3.0897692e-008 -0.28620142 0.16832602 0.11902441
		 -0.28620142 0.11902449 0.16832599 -0.28620142 2.4824882e-008 0.11902441 -0.28620142
		 -0.11902441 -3.0897692e-008 -0.28620142 -0.16832599 -0.1190245 -0.28620142 -0.11902449
		 -0.16832614 -0.28620142 2.4824882e-008 -0.12518919 -0.00027300449 0.12518916 -1.0758848e-008
		 -0.00027300449 0.17704427 0.12518917 -0.00027300449 0.12518916 0.1770443 -0.00027300449
		 -1.6230997e-008 0.12518917 -0.00027300449 -0.12518917 -1.0758848e-008 -0.00027300449
		 -0.1770443 -0.12518919 -0.00027300449 -0.12518919 -0.17704433 -0.00027300449 -1.6230997e-008
		 -0.12518919 -0.00027300449 0.12518916 -1.0758848e-008 -0.00027300449 0.17704427 0.12518917
		 -0.00027300449 0.12518916 0.1770443 -0.00027300449 -1.6230997e-008 0.12518917 -0.00027300449
		 -0.12518917 -1.0758848e-008 -0.00027300449 -0.1770443 -0.12518919 -0.00027300449
		 -0.12518919 -0.17704433 -0.00027300449 -1.6230997e-008 -0.19276589 0.0079610106 0.19276604
		 7.1724617e-009 0.0079610376 0.27261218 -4.9832903e-005 0.003290283 0.22550568 -0.15971397
		 0.0035139231 0.15929139 0.19276607 0.0079610376 0.19276598 0.1596574 0.0032900528
		 0.15935285 0.27261308 0.0079610106 -2.8497176e-008 0.22574607 0.0035136365 -0.00036420271
		 0.19276601 0.0079610106 -0.19276598 0.159537 0.00382618 -0.15995774 2.7053026e-008
		 0.0079610376 -0.27261218 -4.982033e-005 0.0054192971 -0.22550568 -0.19276601 0.0079610106
		 -0.19276592 -0.15963647 0.003826638 -0.15995762 -0.27261308 0.0079610376 2.366713e-008
		 -0.22574607 0.0038271241 -0.00035464403 -2.5570927e-005 0.25386709 0.10811985 -0.076500915
		 0.25401542 0.076400615 0.076471716 0.25386715 0.076433666 0.10812266 0.25401533 -6.3457926e-005
		 0.076410152 0.25422153 -0.076497652 -2.5573459e-005 0.25436532 -0.10811985 -0.076435655
		 0.25436556 -0.076469749 -0.10812266 0.25422165 -5.9989296e-005 -5.0813637e-006 0.13417323
		 0.17394191 -0.12300959 0.13425188 0.12297354 0.1229991 0.13417324 0.12299192 0.17394194
		 0.13425177 -1.226152e-005 0.12298676 0.1343627 -0.12300412 -5.0569965e-006 0.13444081
		 -0.17394191 -0.12299192 0.13444081 -0.12299912 -0.17394194 0.13436258 -1.2262297e-005
		 -9.0675867e-010 0.00058837415 0.18334682 -0.12964593 0.00058873103 0.12964587 0.12964593
		 0.00058865466 0.12964587 0.183347 0.00058852718 -2.7435606e-008 0.12964593 0.00058837415
		 -0.12964593 1.148091e-009 0.00058918889 -0.18334676 -0.1296459 0.0005889099 -0.12964593
		 -0.18334697 0.00058880774 -3.063634e-008 -2.362512e-008 -0.2855716 0.18804851 -0.13297042
		 -0.28557196 0.13297041 0.1329703 -0.2855716 0.13297033 0.18804854 -0.28557348 2.2852756e-008
		 0.13297032 -0.28557211 -0.1329703 -4.0611134e-008 -0.28557271 -0.18804863 -0.13297042
		 -0.28557211 -0.13297038 -0.18804854 -0.28557235 1.5302364e-008 -3.2732697e-009 0.00027295185
		 0.19745097 -0.13961893 0.0002728978 0.13961892 0.13961893 0.00027300449 0.13961892
		 0.19745097 0.00027300449 -2.2373126e-008 0.13961893 0.00027295185 -0.13961893 -6.0837904e-009
		 0.00027300449 -0.19745097 -0.13961893 0.00027295185 -0.13961898 -0.19745097 0.00027295185
		 -2.2373126e-008 -1.0758848e-008 -0.00027300449 0.17704427 -0.12518919 -0.00027300449
		 0.12518916 0.12518917 -0.00027300449 0.12518916 0.1770443 -0.00027300449 -1.6230997e-008
		 0.12518917 -0.00027300449 -0.12518917 -1.0758848e-008 -0.00027300449 -0.1770443 -0.12518919
		 -0.00027300449 -0.12518919 -0.17704433 -0.00027300449 -1.6230997e-008;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[88:89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976547 0.065809975357618455 1;
	setAttr ".wt" 0.57495033740997314;
	setAttr ".dr" no;
	setAttr ".re" 88;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[128]" -type "float3" 0.0094024232 0.099761821 5.0024351e-010 ;
	setAttr ".tk[129]" -type "float3" 0.0066488599 0.099761844 0.0066488618 ;
	setAttr ".tk[130]" -type "float3" 1.2384884e-009 0.099761829 0.0094021838 ;
	setAttr ".tk[131]" -type "float3" -0.006648567 0.099761844 0.0066485619 ;
	setAttr ".tk[132]" -type "float3" -0.0094024232 0.099761814 3.265738e-010 ;
	setAttr ".tk[133]" -type "float3" -0.006648567 0.099761806 -0.0066485619 ;
	setAttr ".tk[134]" -type "float3" 8.1151086e-010 0.099761806 -0.0094021838 ;
	setAttr ".tk[135]" -type "float3" 0.0066488325 0.099761866 -0.0066485428 ;
	setAttr ".tk[136]" -type "float3" 0.0059561734 0.099693917 -0.0059561888 ;
	setAttr ".tk[137]" -type "float3" 1.1693952e-009 0.099693917 -0.0084232064 ;
	setAttr ".tk[138]" -type "float3" -0.0059560668 0.099693917 -0.0059561888 ;
	setAttr ".tk[139]" -type "float3" -0.0084232353 0.099693917 7.2788151e-011 ;
	setAttr ".tk[140]" -type "float3" -0.0059560668 0.099693917 0.0059561916 ;
	setAttr ".tk[141]" -type "float3" 1.1693952e-009 0.099693917 0.0084232157 ;
	setAttr ".tk[142]" -type "float3" 0.0059561734 0.099693917 0.005956165 ;
	setAttr ".tk[143]" -type "float3" 0.0084231785 0.099693917 7.2788151e-011 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[56:63]";
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[115]" "e[117]" "e[120]" "e[124]" "e[128]" "e[132]" "e[136]" "e[140]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976547 0.065809975357618455 1;
	setAttr ".wt" 0.049483649432659149;
	setAttr ".re" 128;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[0]" -type "float3" -0.40545291 0 0.40545294 ;
	setAttr ".tk[1]" -type "float3" 3.6634248e-008 0 0.57339764 ;
	setAttr ".tk[2]" -type "float3" 0.40545297 0 0.40545294 ;
	setAttr ".tk[3]" -type "float3" 0.57339787 0 3.1152481e-008 ;
	setAttr ".tk[4]" -type "float3" 0.40545297 0 -0.40545294 ;
	setAttr ".tk[5]" -type "float3" 3.6634248e-008 0 -0.57339764 ;
	setAttr ".tk[6]" -type "float3" -0.40545297 0 -0.40545294 ;
	setAttr ".tk[7]" -type "float3" -0.57339787 0 3.1152481e-008 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[112:113]" "e[118]" "e[122]" "e[126]" "e[130]" "e[134]" "e[138]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976547 0.065809975357618455 1;
	setAttr ".wt" 0.94812452793121338;
	setAttr ".dr" no;
	setAttr ".re" 126;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[248:249]" "e[251]" "e[253]" "e[255]" "e[257]" "e[259]" "e[261]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976547 0.065809975357618455 1;
	setAttr ".wt" 0.92411214113235474;
	setAttr ".dr" no;
	setAttr ".re" 248;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[64]" -type "float3" 0.00080034765 0.015558594 -0.00080034672 ;
	setAttr ".tk[65]" -type "float3" -2.9779373e-011 0.015558594 -0.0011318629 ;
	setAttr ".tk[68]" -type "float3" -0.00080034672 0.015558594 -0.00080034672 ;
	setAttr ".tk[70]" -type "float3" -0.0011318608 0.015558594 1.1831762e-010 ;
	setAttr ".tk[72]" -type "float3" -0.00080034672 0.015558594 0.00080034672 ;
	setAttr ".tk[74]" -type "float3" -1.1232235e-010 0.015558594 0.0011318629 ;
	setAttr ".tk[76]" -type "float3" 0.00080034672 0.015558594 0.00080034672 ;
	setAttr ".tk[78]" -type "float3" 0.0011318608 0.015558594 -9.8263689e-011 ;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[264:265]" "e[267]" "e[269]" "e[271]" "e[273]" "e[275]" "e[277]";
	setAttr ".ix" -type "matrix" 2.332324000219117 0 0 0 0 2.332324000219117 0 0 0 0 2.332324000219117 0
		 0 2.4251497583976547 0.065809975357618455 1;
	setAttr ".wt" 0.78440696001052856;
	setAttr ".re" 275;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".mth" 1;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[9]" "f[644:646]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".s" -type "double3" 0.88333333923687385 0.88333333923687385 0.88333333923687385 ;
	setAttr ".pvt" -type "float3" -0.00019732837 2.4401937 -2.4857538 ;
	setAttr ".rs" 54125;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1411068501519828 1.4752025117333853 -2.8833275130222833 ;
	setAttr ".cbx" -type "double3" 1.1407121934179361 3.4051847154146366 -2.088180243666216 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[687]" -type "float3" 2.6076123e-007 0.14137454 -0.037543684 ;
	setAttr ".tk[688]" -type "float3" 0.15634178 0.14610426 -0.067779839 ;
	setAttr ".tk[689]" -type "float3" 0.064017683 -6.9849193e-009 -0.0078446101 ;
	setAttr ".tk[690]" -type "float3" -7.4737727e-009 5.5879354e-009 -5.9138983e-008 ;
	setAttr ".tk[691]" -type "float3" 0.20803019 -0.21267834 0.049258206 ;
	setAttr ".tk[692]" -type "float3" 0.00018880563 -0.20422114 0.079377182 ;
	setAttr ".tk[693]" -type "float3" 7.2903931e-005 -3.259629e-009 1.1500902e-005 ;
	setAttr ".tk[694]" -type "float3" -0.18797508 -0.2076914 0.049889259 ;
	setAttr ".tk[695]" -type "float3" -0.1710643 0.14649896 -0.069778323 ;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 3 "f[9]" "f[644:646]" "f[672:679]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 6 "e[121]" "e[147]" "e[541]" "e[569]" "e[1318:1319]" "e[1321:1322]";
createNode polySplit -n "polySplit1";
	setAttr -s 4 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 668;
	setAttr ".sps[0].sp[0].t" 2;
	setAttr ".sps[0].sp[0].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[1].f" 668;
	setAttr ".sps[0].sp[1].t" 3;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.55014955997467041 0.4498504102230072 
		2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[2].f" 668;
	setAttr ".sps[0].sp[2].t" 3;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0 0.41253626346588135 0.58746373653411865 ;
	setAttr ".sps[0].sp[3].f" 251;
	setAttr ".sps[0].sp[3].t" 1;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0 0 1 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit2";
	setAttr -s 4 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 667;
	setAttr ".sps[0].sp[0].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[1].f" 669;
	setAttr ".sps[0].sp[1].bc" -type "double3" 3.4199106835330895e-007 0.48960995674133301 
		0.51038968563079834 ;
	setAttr ".sps[0].sp[2].f" 669;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.47639244794845581 0 0.52360755205154419 ;
	setAttr ".sps[0].sp[3].f" 666;
	setAttr ".sps[0].sp[3].t" 1;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0 1 0 ;
	setAttr ".c2v" yes;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:1359]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".a" 180;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[668:671]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".s" -type "double3" 0.89999999679066112 0.89999999679066112 0.89999999679066112 ;
	setAttr ".pvt" -type "float3" -0.00019729263 2.4401934 -2.4857538 ;
	setAttr ".rs" 48427;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1411068501519828 1.4752023720522502 -2.8833275130222833 ;
	setAttr ".cbx" -type "double3" 1.1407122648878265 3.4051845757335015 -2.0881801007264356 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[668:671]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".ro" -type "double3" 9.022470395150469 0 0 ;
	setAttr ".pvt" -type "float3" -0.00019732837 2.4401934 -2.4857538 ;
	setAttr ".rs" 45197;
	setAttr ".lt" -type "double3" -2.4980018054066022e-016 8.3266726846886741e-017 0.46909777757623883 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0270158908264979 1.5717013635073482 -2.8435702424653373 ;
	setAttr ".cbx" -type "double3" 1.0266212340924512 3.3086855842784035 -2.1279372283436011 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[668:671]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.0027218594 2.4232328 -2.9633367 ;
	setAttr ".rs" 58197;
	setAttr ".lt" -type "double3" 9.3675067702747583e-017 -4.4408920985006262e-016 0.67479181096591845 ;
	setAttr ".ls" -type "double3" 0.9499999993523458 0.54805740855491902 0.9499999993523458 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.68250614822451028 1.6306217995407979 -3.1241558858159699 ;
	setAttr ".cbx" -type "double3" 0.68794986682626025 3.2158439338207474 -2.8025173657376565 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[687]" -type "float3" 0.15371279 -0.10287178 0.022246713 ;
	setAttr ".tk[691]" -type "float3" -0.15368359 -0.10289866 0.022052962 ;
	setAttr ".tk[692]" -type "float3" -0.15818715 0.15280207 -0.039798547 ;
	setAttr ".tk[694]" -type "float3" 0.15816405 0.15273564 -0.039862681 ;
	setAttr ".tk[695]" -type "float3" 0.22993408 -0.081899412 -0.061681479 ;
	setAttr ".tk[696]" -type "float3" 0.13606419 0.049041297 -0.061112769 ;
	setAttr ".tk[697]" -type "float3" 0.0012216112 -0.0014311279 0.0084076431 ;
	setAttr ".tk[698]" -type "float3" 0.0012237987 0.048682921 0.0004119238 ;
	setAttr ".tk[699]" -type "float3" -0.13359287 0.049125563 -0.061095074 ;
	setAttr ".tk[700]" -type "float3" -0.22748898 -0.081867442 -0.061634935 ;
	setAttr ".tk[701]" -type "float3" -0.23658012 0.2303074 -0.091205306 ;
	setAttr ".tk[702]" -type "float3" 0.0012258566 0.094168238 -0.012316903 ;
	setAttr ".tk[703]" -type "float3" 0.23773494 0.15274391 -0.039858449 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[703:711]" -type "float3"  0.047257587 0.15335149 0.087226421
		 0.060307473 0.20151803 -0.0001999439 -0.0011244278 0.14257884 0.1086619 0.00036078587
		 0.20786907 0.0023820638 -0.059580062 0.19982706 0.0068807462 -0.049496137 0.15347521
		 0.087022066 -0.030358769 0.24234715 -0.060460068 0.0018428216 0.26580584 -0.091612861
		 0.034304082 0.2454956 -0.099172205;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[668:671]";
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[1390]" "e[1392]" "e[1395:1396]" "e[1398]" "e[1400]" "e[1402:1403]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.68720804979665751 -0.8765959917686339 ;
	setAttr ".ro" -type "double3" 12.195689366660918 0 0 ;
	setAttr ".s" -type "double3" 0.74999999697760633 0.80003344331956439 0.74999999697760633 ;
	setAttr ".pvt" -type "float3" -0.013853616 3.4651196 -4.5346479 ;
	setAttr ".rs" 39226;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.57518617483289758 2.3174341846217574 -3.8165416028514549 ;
	setAttr ".cbx" -type "double3" 0.54747894218440196 3.238385745222494 -3.4995580596659202 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[701]" -type "float3" 0 0.050798468 -0.0090255244 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1406]" "e[1408]" "e[1410]" "e[1412]" "e[1414]" "e[1416]" "e[1418:1419]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.91447636667532617 -0.83330818290301156 ;
	setAttr ".ro" -type "double3" 25.24184617824508 0 0 ;
	setAttr ".pvt" -type "float3" -0.013853616 4.3727622 -5.3667893 ;
	setAttr ".rs" 61021;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.43485304413947146 3.1164840631997972 -4.7263241462172703 ;
	setAttr ".cbx" -type "double3" 0.40714581149097578 3.8000888456176289 -4.3406363116398561 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1422]" "e[1424]" "e[1426]" "e[1428]" "e[1430]" "e[1432]" "e[1434:1435]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 1.1200962147848506 -0.52487566516651274 ;
	setAttr ".ro" -type "double3" 19.421152678874712 0 0 ;
	setAttr ".pvt" -type "float3" -0.013853616 5.4852891 -5.8756275 ;
	setAttr ".rs" 62429;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.40726073507452287 4.1410044013006315 -5.6450813066435162 ;
	setAttr ".cbx" -type "double3" 0.3795535024260272 4.5893786096506126 -5.056420984868736 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[719:726]" -type "float3"  0.0090009309 -0.0030222139
		 -0.0024337082 0.011505747 0.0024490487 0.0046602702 -0.00028563198 -0.00440061 -0.0040953392
		 -0.0095702223 -0.0030098455 -0.0024162813 -0.011505747 0.0019272193 0.0042512948
		 -0.0058969487 0.00594851 0.010121431 0.00028390935 0.0076738428 0.013120865 0.0065146028
		 0.0090186512 0.011900852;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1438]" "e[1440]" "e[1442]" "e[1444]" "e[1446]" "e[1448]" "e[1450:1451]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 1.13092160953145 -0.27055502934434639 ;
	setAttr ".ro" -type "double3" 6.9612139259990098 0 0 ;
	setAttr ".pvt" -type "float3" -0.013853616 6.609272 -6.1387119 ;
	setAttr ".rs" 58601;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.38346362012245799 5.3651424906600784 -6.1919660481602499 ;
	setAttr ".cbx" -type "double3" 0.35575638747396238 5.5915622580964008 -5.544348212748452 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[727:734]" -type "float3"  0.0077628973 -0.0024767937
		 -0.0069557056 0.0099231889 -0.00010841613 0.00034765509 -0.00024634472 -0.0031103319
		 -0.0086935293 -0.0082538845 -0.0024718596 -0.0069380547 -0.0099231889 -0.00041283344
		 -0.00013123952 -0.0050858515 0.0011353266 0.0057703406 0.00024485905 0.0016584526
		 0.0086935293 0.0056185508 0.0031103319 0.0080780443;
createNode polyExtrudeEdge -n "polyExtrudeEdge11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1454]" "e[1456]" "e[1458]" "e[1460]" "e[1462]" "e[1464]" "e[1466:1467]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.84954411444134514 -0.086582638251702093 ;
	setAttr ".ro" -type "double3" 11.68143276621789 0 0 ;
	setAttr ".pvt" -type "float3" -0.013853616 7.457427 -6.2220869 ;
	setAttr ".rs" 62877;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.36753827035413622 6.5365749767242178 -6.4531473304242128 ;
	setAttr ".cbx" -type "double3" 0.33983103770564055 6.679193885323139 -5.8178714874225994 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[735:742]" -type "float3"  0.0051950305 -0.0010935041
		 -0.0047593149 0.0066407248 -0.00012642187 0.00027988083 -0.00016485705 -0.0013701284
		 -0.0059639118 -0.0055236053 -0.0010916962 -0.0047471817 -0.0066407248 -0.00028889321
		 -6.2365507e-005 -0.003403517 0.00024969247 0.0039806422 0.0001638628 0.0003545779
		 0.0059639118 0.0037600063 0.0013701284 0.005670133;
createNode polyExtrudeEdge -n "polyExtrudeEdge12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1470]" "e[1472]" "e[1474]" "e[1476]" "e[1478]" "e[1480]" "e[1482:1483]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.74672918152238754 0.027068969834634693 ;
	setAttr ".ro" -type "double3" 6.7697226526034679 0 0 ;
	setAttr ".pvt" -type "float3" -0.013853616 7.9794378 -6.1842747 ;
	setAttr ".rs" 50729;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.34751290739094792 7.2067969096007403 -6.5133495636700962 ;
	setAttr ".cbx" -type "double3" 0.31980567474245225 7.2586152583267278 -5.9093100650284036 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[743:750]" -type "float3"  0.0065325047 -0.10355884 -0.0037499995
		 0.0083503947 -0.10368085 0.0026959109 -0.00020729989 -0.10358563 -0.0053021796 -0.0069456692
		 -0.10355976 -0.0037346168 -0.0083503947 -0.10379177 0.0022340396 -0.0042797606 -0.10418186
		 0.0073466375 0.00020604971 -0.10456944 0.0098149432 0.0047280286 -0.10324237 0.0097058481;
createNode polyExtrudeEdge -n "polyExtrudeEdge13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1486]" "e[1488]" "e[1490]" "e[1492]" "e[1494]" "e[1496]" "e[1498:1499]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.62768357054760848 0.091985309158999939 ;
	setAttr ".pvt" -type "float3" -0.013853616 8.6732979 -6.0815501 ;
	setAttr ".rs" 34856;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33950727910273737 7.9922473979579856 -6.4649152766757849 ;
	setAttr ".cbx" -type "double3" 0.31180004645424175 8.0989738421154591 -5.8821617983916754 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[751:758]" -type "float3"  0.0026115365 0.025894787 0.0021432859
		 0.0033382848 0.025535505 0.0046966146 -8.2873463e-005 0.025959017 0.001525851 -0.0027767101
		 0.025893677 0.0021493488 -0.0033382848 0.025513746 0.0045081554 -0.0017109443 0.025112338
		 0.006519828 8.2373677e-005 0.024839437 0.0074818702 0.0018901511 0.025371533 0.0074996734;
createNode polyExtrudeEdge -n "polyExtrudeEdge14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1502]" "e[1504]" "e[1506]" "e[1508]" "e[1510]" "e[1512]" "e[1514:1515]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.84953959224576714 0.28678405315866229 ;
	setAttr ".ro" -type "double3" 20.010889034445245 0 0 ;
	setAttr ".pvt" -type "float3" -0.013853616 9.5228367 -5.7947645 ;
	setAttr ".rs" 52329;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33950727910273737 8.6199308379912711 -6.3729300973492293 ;
	setAttr ".cbx" -type "double3" 0.31180004645424175 8.7266572821487447 -5.790176047305998 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1518]" "e[1520]" "e[1522]" "e[1524]" "e[1526]" "e[1528]" "e[1530:1531]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.50864233894328237 0.40042361582813513 ;
	setAttr ".ro" -type "double3" 24.422869575646558 0 0 ;
	setAttr ".s" -type "double3" 1.2166666694731738 1.2166666694731738 1.2166666694731738 ;
	setAttr ".pvt" -type "float3" -0.013853616 10.031181 -5.4030275 ;
	setAttr ".rs" 36334;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33950727910273737 9.3729853600775961 -6.0676524645505161 ;
	setAttr ".cbx" -type "double3" 0.31180004645424175 9.6720907203550865 -5.5392446908243667 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1534]" "e[1536]" "e[1538]" "e[1540]" "e[1542]" "e[1544]" "e[1546:1547]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 0.18398530989093764 0.49240839997765384 ;
	setAttr ".ro" -type "double3" 36.575491992631505 0 0 ;
	setAttr ".s" -type "double3" 1.2166666694731711 1.2166666694731711 1.2166666694731711 ;
	setAttr ".pvt" -type "float3" -0.013853598 10.210379 -4.9224534 ;
	setAttr ".rs" 58055;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.41006557091799622 9.732596118227022 -5.6441539133474299 ;
	setAttr ".cbx" -type "double3" 0.38235837400444567 10.320207834260611 -5.1855733659290122 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1550]" "e[1552]" "e[1554]" "e[1556]" "e[1558]" "e[1560]" "e[1562:1563]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -0.17856276231167101 0.64933249176815 ;
	setAttr ".ro" -type "double3" 24.657889113357456 0 0 ;
	setAttr ".pvt" -type "float3" -0.013853616 10.021026 -4.2993822 ;
	setAttr ".rs" 48454;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.49591152240568204 9.7624996143255682 -4.9859962702783838 ;
	setAttr ".cbx" -type "double3" 0.46820428975718642 10.636684499207295 -4.9114325914029697 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[783:790]" -type "float3"  0 0.0023090206 -0.0090255244
		 0 0.0023090206 -0.0090255244 0 0.0023090206 -0.0090255244 0 0.0023090206 -0.0090255244
		 0 0.0023090206 -0.0090255244 0 0.0023090206 -0.0090255244 0 0.0023090206 -0.0090255244
		 0 0.0023090206 -0.0090255244;
createNode polyExtrudeEdge -n "polyExtrudeEdge18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1566]" "e[1568]" "e[1570]" "e[1572]" "e[1574]" "e[1576]" "e[1578:1579]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -0.11363341249021452 0.30302191696649761 ;
	setAttr ".ro" -type "double3" 19.000400137113754 0 0 ;
	setAttr ".s" -type "double3" 0.93333333246979167 0.93333333246979167 0.93333333246979167 ;
	setAttr ".pvt" -type "float3" -0.013853616 10.066163 -4.4005032 ;
	setAttr ".rs" 51400;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.49630424945269153 9.7422173548036355 -4.7407321902152528 ;
	setAttr ".cbx" -type "double3" 0.46859701680419585 10.617375537833821 -4.6663168828320307 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[783:798]" -type "float3"  0.0025854826 0.0019061802
		 -0.019139787 0.0033049807 -0.0094531337 -0.066451654 -8.2050334e-005 0.0050520152
		 -0.0078491811 -0.0027490025 0.0018840212 -0.019254223 -0.0033049788 -0.0077647599
		 -0.063279085 -0.0016938739 -0.014632042 -0.1013367 8.1553699e-005 -0.016491782 -0.12007155
		 0.0018712941 -0.025979377 -0.11686627 -0.00012811157 0.055892523 -0.10083771 -0.00016376493
		 0.069055811 -0.16910651 4.065485e-006 0.053319916 -0.084299989 0.00013621373 0.055931281
		 -0.10099983 0.00016376493 0.069384426 -0.16400447 8.3935214e-005 0.082940444 -0.2176365
		 -4.0410305e-006 0.091601774 -0.24317805 -9.2724338e-005 0.07730189 -0.24435209;
createNode polyExtrudeEdge -n "polyExtrudeEdge19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1582]" "e[1584]" "e[1586]" "e[1588]" "e[1590]" "e[1592]" "e[1594:1595]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -0.29760946671751753 0.47076645775468906 ;
	setAttr ".ro" -type "double3" 4.7016619784537204 0 0 ;
	setAttr ".s" -type "double3" 1.0833333344127598 1.0833333344127598 1.0833333344127598 ;
	setAttr ".pvt" -type "float3" -0.013853616 9.7643175 -3.8983846 ;
	setAttr ".rs" 44023;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.46414086914613589 9.6697228457551052 -4.5035999542665417 ;
	setAttr ".cbx" -type "double3" 0.43643363649764028 10.454131871570025 -4.2347004956130174 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1598]" "e[1600]" "e[1602]" "e[1604]" "e[1606]" "e[1608]" "e[1610:1611]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -0.20020685851932818 0.24349930039396162 ;
	setAttr ".ro" -type "double3" -11.431805159441232 0 0 ;
	setAttr ".s" -type "double3" 1.500000006476552 1.500000006476552 1.500000006476552 ;
	setAttr ".pvt" -type "float3" -0.013853616 9.5563469 -3.6717 ;
	setAttr ".rs" 53179;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.51357544872460481 9.33185373562576 -4.0989883221446037 ;
	setAttr ".cbx" -type "double3" 0.48586821607610908 10.181260863337736 -3.7314106718809312 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[807:814]" -type "float3"  -0.003885394 -0.0080458811
		 -0.0082903691 -0.0049666367 -0.0043909815 -0.0068947575 0.0001232975 -0.0089375619
		 -0.0085957833 0.004131136 -0.0080372775 -0.0082866456 0.0049666367 -0.004677556 -0.0069294916
		 0.0025455104 -0.0018391102 -0.0056627048 -0.00012255403 -0.0005098877 -0.0049425019
		 -0.0028121304 -0.00029852428 -0.0056884834;
createNode polyExtrudeEdge -n "polyExtrudeEdge21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[1614]" "e[1616]" "e[1618]" "e[1620]" "e[1622]" "e[1624]" "e[1626:1627]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -0.064937328782283643 0.15692191896546825 ;
	setAttr ".ro" -type "double3" -9.3291956574856094 0 0 ;
	setAttr ".pvt" -type "float3" -0.013853581 9.4802628 -3.5116901 ;
	setAttr ".rs" 34875;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.76343629345489294 8.8772950053439246 -3.8156493727413792 ;
	setAttr ".cbx" -type "double3" 0.73572913227628756 10.213096987619704 -3.5215745023020175 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 2 "f[36]" "f[535:537]";
	setAttr ".ix" -type "matrix" 2.3981315729644197 0 0 0 0 2.3434605724877842 0 0 0 0 2.3981315729644197 0
		 0 2.4094103358468666 0.063774006977259129 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.1469891e-008 9.2652321 -3.2794752 ;
	setAttr ".rs" 47212;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3654060955443839 8.3384241832707016 -3.4415522390876787 ;
	setAttr ".cbx" -type "double3" 1.3654059526046034 10.192039777160968 -3.1173982647515772 ;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 29 ".tk";
	setAttr ".tk[41]" -type "float3" -0.013047064 0 0 ;
	setAttr ".tk[450]" -type "float3" 0.15252177 0 0 ;
	setAttr ".tk[807]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[808]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[809]" -type "float3" 2.7939677e-009 0 0 ;
	setAttr ".tk[811]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[813]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[814]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[815]" -type "float3" 0.069314197 0 0 ;
	setAttr ".tk[816]" -type "float3" 0.091705002 0 0 ;
	setAttr ".tk[817]" -type "float3" -0.013699502 0 0 ;
	setAttr ".tk[818]" -type "float3" -0.096695542 0 0 ;
	setAttr ".tk[819]" -type "float3" -0.11399743 0 0 ;
	setAttr ".tk[820]" -type "float3" -0.063859709 0 0 ;
	setAttr ".tk[821]" -type "float3" -0.0086083058 0 0 ;
	setAttr ".tk[822]" -type "float3" 0.047088586 0 0 ;
	setAttr ".tk[823]" -type "float3" 0.066088811 -0.17617565 0.056095444 ;
	setAttr ".tk[824]" -type "float3" 0.087530777 -0.084171534 0.039903101 ;
	setAttr ".tk[825]" -type "float3" -0.013407152 -0.19817425 0.060757972 ;
	setAttr ".tk[826]" -type "float3" -0.092886142 -0.17595348 0.056066107 ;
	setAttr ".tk[827]" -type "float3" -0.10945483 -0.090432271 0.042689074 ;
	setAttr ".tk[828]" -type "float3" -0.061441738 -0.016646873 0.033827826 ;
	setAttr ".tk[829]" -type "float3" -0.0085316859 0.019526374 0.032255761 ;
	setAttr ".tk[830]" -type "float3" 0.044805001 0.014300663 0.014536063 ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
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
connectAttr "polyExtrudeFace6.out" "pCylinderShape1.i";
connectAttr "locatorShape1.wp" "distanceDimensionShape1.sp";
connectAttr "locatorShape2.wp" "distanceDimensionShape1.ep";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "deleteComponent1.ig";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyTweak1.out" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "deleteComponent1.og" "polyTweak1.ip";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyExtrudeEdge3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "polyExtrudeEdge4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge4.out" "polyExtrudeEdge5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge5.mp";
connectAttr "polyTweak2.out" "polyExtrudeEdge6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge6.mp";
connectAttr "polyExtrudeEdge5.out" "polyTweak2.ip";
connectAttr "polyExtrudeEdge6.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak3.out" "polySplitRing1.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak3.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent2.ig";
connectAttr "polyTweak5.out" "polySplitRing3.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing3.mp";
connectAttr "deleteComponent2.og" "polyTweak5.ip";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing4.mp";
connectAttr "polyTweak6.out" "polySplitRing5.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing4.out" "polyTweak6.ip";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySoftEdge1.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge1.mp";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge2.mp";
connectAttr "polySoftEdge2.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak8.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak8.ip";
connectAttr "polyExtrudeFace5.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "deleteComponent4.ig";
connectAttr "polyTweak10.out" "polyExtrudeEdge7.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge7.mp";
connectAttr "deleteComponent4.og" "polyTweak10.ip";
connectAttr "polyExtrudeEdge7.out" "polyExtrudeEdge8.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge8.mp";
connectAttr "polyTweak11.out" "polyExtrudeEdge9.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge9.mp";
connectAttr "polyExtrudeEdge8.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeEdge10.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge10.mp";
connectAttr "polyExtrudeEdge9.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeEdge11.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge11.mp";
connectAttr "polyExtrudeEdge10.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyExtrudeEdge12.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge12.mp";
connectAttr "polyExtrudeEdge11.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeEdge13.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge13.mp";
connectAttr "polyExtrudeEdge12.out" "polyTweak15.ip";
connectAttr "polyExtrudeEdge13.out" "polyExtrudeEdge14.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge14.mp";
connectAttr "polyExtrudeEdge14.out" "polyExtrudeEdge15.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge15.mp";
connectAttr "polyExtrudeEdge15.out" "polyExtrudeEdge16.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge16.mp";
connectAttr "polyTweak16.out" "polyExtrudeEdge17.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge17.mp";
connectAttr "polyExtrudeEdge16.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyExtrudeEdge18.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge18.mp";
connectAttr "polyExtrudeEdge17.out" "polyTweak17.ip";
connectAttr "polyExtrudeEdge18.out" "polyExtrudeEdge19.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge19.mp";
connectAttr "polyTweak18.out" "polyExtrudeEdge20.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge20.mp";
connectAttr "polyExtrudeEdge19.out" "polyTweak18.ip";
connectAttr "polyExtrudeEdge20.out" "polyExtrudeEdge21.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge21.mp";
connectAttr "polyTweak19.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeEdge21.out" "polyTweak19.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Mug.ma
