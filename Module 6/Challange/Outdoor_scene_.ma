//Maya ASCII 2024 scene
//Name: Outdoor_scene_.ma
//Last modified: Mon, Oct 07, 2024 09:20:55 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "E889A488-4251-3B23-C55E-F59719837E95";
fileInfo "license" "education";
createNode transform -n "boat";
	rename -uid "967E7FB8-431D-C736-82C8-D09F48034A52";
	setAttr ".s" -type "double3" 3.5795878307324216 3.5795878307324216 3.5795878307324216 ;
	setAttr ".rp" -type "double3" 1.7889502048492432 0.67168512178790252 -115.34724227753108 ;
	setAttr ".sp" -type "double3" 1.7889502048492432 0.67168512178790252 -115.34724227753108 ;
createNode transform -n "pCube25" -p "boat";
	rename -uid "F853E5B6-4C7F-EC4E-4A9E-57A7715C73DD";
	setAttr ".t" -type "double3" 0.99332021704285423 0.95803609550227531 -84.190116474790813 ;
	setAttr ".s" -type "double3" 0.2461137259330147 0.33580377021354868 0.2461137259330147 ;
	setAttr ".rp" -type "double3" 0 -0.16790188131173858 0 ;
	setAttr ".sp" -type "double3" 0 -0.49999998869864759 0 ;
	setAttr ".spt" -type "double3" 0 0.33209810738691004 0 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	rename -uid "E52D99BE-4586-44A2-227F-98BD4239AAFE";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.27597295492887497 0.22402708232402802 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -s -n "persp";
	rename -uid "EB03AAF7-4636-0095-C08D-7C970726E127";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.010259675048804 8.0961128981246162 -10.094579813598683 ;
	setAttr ".r" -type "double3" -20.999999999996046 486.39999999990846 0 ;
	setAttr ".rpt" -type "double3" 1.8758318254027372e-16 -5.0763451420985249e-17 3.9048536254381117e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1215CF85-4D31-F8FA-C130-D59F631BAE87";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 17.856240669568386;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.7744210332079589 2.8272335081338342 1.3381638610499333 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "55A7629E-4D07-83E1-0969-A580C7515EED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "AB8C8A18-4AE5-FE30-3545-D2BE107BEE2F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "7FDEBAD3-494C-2E4A-5E6B-449BDED1333A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "92876006-480D-A76E-1A0B-6888E08B97C9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4141CD06-498E-7725-680C-929C076F92A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "05E0174B-4274-F357-AEA6-D9B94380AE54";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "base_whitebox";
	rename -uid "F10167A9-4121-9631-5656-F7828EFA85B0";
createNode transform -n "seabed" -p "base_whitebox";
	rename -uid "A47BF22A-4CBA-B6AC-1F19-8A981C456B9E";
	setAttr ".t" -type "double3" 0 0.2239092568707004 -2.5 ;
	setAttr ".rp" -type "double3" 0 -0.2239092568707004 0 ;
	setAttr ".sp" -type "double3" 0 -0.2239092568707004 0 ;
createNode mesh -n "seabedShape" -p "seabed";
	rename -uid "7530A2AC-4A49-68CD-A119-0D95730B57E6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0 -0.69718927 0 0 -0.69718927 
		0 0 -0.69718927 0 0 -0.69718927;
createNode transform -n "water" -p "base_whitebox";
	rename -uid "8BD5037C-4554-BD7A-098C-3AB992CFD876";
	setAttr ".t" -type "double3" 0 0.67172777455563693 -2.5 ;
	setAttr ".rp" -type "double3" 0 -0.2239092568707004 0 ;
	setAttr ".sp" -type "double3" 0 -0.2239092568707004 0 ;
createNode mesh -n "waterShape" -p "water";
	rename -uid "DD46741D-4D3A-F46A-3027-74855D9A9B4B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[2:7]" -type "float3"  0 0.20004702 0 0 0.20004702 
		0 0 0.20004702 -0.69718927 0 0.20004702 -0.69718927 0 0 -0.69718927 0 0 -0.69718927;
	setAttr -s 8 ".vt[0:7]"  -4 -0.22390926 2.5 4 -0.22390926 2.5 -4 0.22390926 2.5
		 4 0.22390926 2.5 -4 0.22390926 -2.5 4 0.22390926 -2.5 -4 -0.22390926 -2.5 4 -0.22390926 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_dock" -p "base_whitebox";
	rename -uid "5B155C21-4605-09AA-A45B-77A96F4E56C1";
	setAttr ".t" -type "double3" 0 0.32913426797420337 1 ;
createNode mesh -n "Stone_dockShape" -p "Stone_dock";
	rename -uid "3E373419-412D-7991-EBC7-98A1A5C1927E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[2:5]" -type "float3"  0 1.5285512 0 0 1.5285512 
		0 0 1.5285512 0 0 1.5285512 0;
createNode transform -n "planks" -p "base_whitebox";
	rename -uid "C3CF9790-47EE-BC77-6E7B-0BAFD16217A9";
	setAttr ".t" -type "double3" 0 1.6534360112467192 -2.5 ;
	setAttr ".s" -type "double3" 1 0.5030253828630874 1 ;
	setAttr ".rp" -type "double3" 0 0.42395618434442195 0 ;
	setAttr ".sp" -type "double3" 0 0.42395618434442195 0 ;
createNode mesh -n "planksShape" -p "planks";
	rename -uid "EDD46F15-4738-3C95-06E8-2F9917F55ABF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4882371574640274 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "planks";
	rename -uid "158C7951-4424-F4D4-1CD6-17894519FE9B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.22866966 0 0 0.22866966 
		0 0 0.20004702 0 0 0.20004702 0 0 0.20004702 3.2371686 0 0.20004702 3.2371686 0 0.22866966 
		3.2371686 0 0.22866966 3.2371686;
	setAttr -s 8 ".vt[0:7]"  -4 -0.22390926 2.5 4 -0.22390926 2.5 -4 0.22390926 2.5
		 4 0.22390926 2.5 -4 0.22390926 -2.5 4 0.22390926 -2.5 -4 -0.22390926 -2.5 4 -0.22390926 -2.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube26";
	rename -uid "999AD554-4569-0EB6-C3C7-ED87356AFA0C";
	setAttr ".t" -type "double3" 0.11580487174929899 4.4431709367772401 -3.5912925313366979 ;
	setAttr ".s" -type "double3" 0.82227089286913868 1 1 ;
	setAttr ".rp" -type "double3" 0 -0.70710543334924036 0 ;
	setAttr ".sp" -type "double3" 0 -0.70710543334924036 0 ;
createNode mesh -n "pCubeShape26" -p "pCube26";
	rename -uid "78E8992A-4E42-5B25-2060-62994EE5EE28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999999441206455 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder3";
	rename -uid "0CDF86C2-433A-3443-4F9F-3886CFF40421";
	setAttr ".t" -type "double3" 2.9400539893903836 2.6809984788135335 1.1052400626448702 ;
	setAttr ".s" -type "double3" 0.73416234025256044 0.56237059817510171 0.73416234025256044 ;
	setAttr ".rp" -type "double3" 0 -0.4941786870197093 0 ;
	setAttr ".sp" -type "double3" 0 -0.8787420406104518 0 ;
	setAttr ".spt" -type "double3" 0 0.38456335359074034 0 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "4B8556F9-48AA-6C06-35E9-D78B4663E4A3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.59374979138374329 0.42897370457649231 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 183 ".pt";
	setAttr ".pt[16]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[17]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[18]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[20]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[62]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[63]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[64]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[65]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[66]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[67]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[68]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[69]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[70]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[71]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[72]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[78]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[79]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[80]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[81]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[82]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[83]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[84]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[85]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[86]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[87]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[88]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[89]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[90]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[91]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[92]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[93]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[94]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[95]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[96]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[97]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[98]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[99]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[100]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[101]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[102]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[103]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[104]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[105]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[106]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[107]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[108]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[109]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[110]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[111]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[112]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[113]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[114]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[115]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[116]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[117]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[118]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[119]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[120]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[121]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[122]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[123]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[124]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[125]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[126]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[127]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[128]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[129]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[130]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[131]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[132]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[133]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[134]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[135]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[136]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[137]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[138]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[139]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[140]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[141]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[142]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[143]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[144]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[145]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[146]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[147]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[148]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[149]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[150]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[151]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[152]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[153]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[154]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[155]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[156]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[157]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[158]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[159]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[160]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[161]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[162]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[163]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[164]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[165]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[166]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[167]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[168]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[169]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[170]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[171]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[172]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[173]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[174]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[175]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[176]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[177]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[178]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[179]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[180]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[181]" -type "float3" 0 5.9604645e-08 0 ;
	setAttr ".pt[183]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[185]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[187]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[189]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[191]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[193]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[195]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[197]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[199]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[201]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[203]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[205]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[207]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[209]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[211]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[213]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[215]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[217]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[219]" -type "float3" 0 0.046129029 0 ;
	setAttr ".pt[221]" -type "float3" 0 0.046129029 0 ;
createNode transform -n "pCylinder4";
	rename -uid "21F9B5D4-493D-3F24-3D98-19B30C5607D1";
	setAttr ".t" -type "double3" 1.6946280534052889 2.3319516758397336 -1.5277007288238647 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
	setAttr ".s" -type "double3" 0.27672815913282783 0.27672815913282783 0.27672815913282783 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "45698104-4CD8-BEAB-E832-D988312FD7FC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 31 ".pt";
	setAttr ".pt[20]" -type "float3" -0.12260605 -0.41906437 0.41791776 ;
	setAttr ".pt[21]" -type "float3" -0.10429493 -0.41906437 0.41791776 ;
	setAttr ".pt[22]" -type "float3" -0.07577467 -0.41906437 0.41791776 ;
	setAttr ".pt[23]" -type "float3" -0.039837148 -0.41906437 0.41791776 ;
	setAttr ".pt[24]" -type "float3" -1.0396484e-07 -0.41906437 0.41791776 ;
	setAttr ".pt[25]" -type "float3" 0.039837148 -0.41906437 0.41791776 ;
	setAttr ".pt[26]" -type "float3" 0.07577467 -0.41906437 0.41791776 ;
	setAttr ".pt[27]" -type "float3" 0.10429493 -0.41906437 0.41791776 ;
	setAttr ".pt[28]" -type "float3" 0.12260605 -0.41906437 0.41791776 ;
	setAttr ".pt[29]" -type "float3" 0 -0.31737471 0.2156343 ;
	setAttr ".pt[39]" -type "float3" 0 -0.31737471 0.2156343 ;
	setAttr ".pt[63]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[65]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[67]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[69]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[71]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[73]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[75]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[77]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[79]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[81]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[83]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[85]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[87]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[89]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[91]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[93]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[95]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[97]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[99]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[101]" -type "float3" 0 0.084651023 0 ;
createNode transform -n "pCylinder7";
	rename -uid "21C32CA6-4828-034A-A2E4-9CB54638F72A";
	setAttr ".t" -type "double3" 3.0108677448810717 3.644994087996869 1.080275907565051 ;
	setAttr ".s" -type "double3" 0.27392605483751775 0.64359372312061369 0.27392605483751775 ;
	setAttr ".rp" -type "double3" 7.7212416625643104e-16 -0.66336471635380256 1.1287729222859316e-16 ;
	setAttr ".sp" -type "double3" 0 -0.90652039802990458 0 ;
	setAttr ".spt" -type "double3" 7.5495165674510645e-15 0.2431556816761104 6.6613381477509392e-16 ;
createNode mesh -n "pCylinderShape7" -p "pCylinder7";
	rename -uid "844075FB-4F4C-B4E8-F45E-E9938B693260";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[20]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[21]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[22]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[23]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[24]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[25]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[26]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[27]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[28]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[29]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[30]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[31]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[32]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[33]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[34]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[35]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[36]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[37]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[38]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[39]" -type "float3" -1.2533978 2.5685501 0 ;
	setAttr ".pt[41]" -type "float3" -1.2533978 2.5685501 0 ;
createNode transform -n "pCylinder9";
	rename -uid "41B84AD8-4615-33B2-8FAC-8C80F5887C26";
	setAttr ".t" -type "double3" 3.0116933210933619 1.7273009465859905 -2.2065192733425878 ;
	setAttr ".s" -type "double3" 0.079661856541662968 0.11203400094038089 0.079661856541662968 ;
	setAttr ".rp" -type "double3" 0 -0.47657462929074779 0 ;
	setAttr ".sp" -type "double3" 0 -4.2538392388963739 0 ;
	setAttr ".spt" -type "double3" 0 3.7772646096056071 0 ;
createNode mesh -n "pCylinderShape9" -p "pCylinder9";
	rename -uid "A9208D61-40A8-65F3-94F9-0B8280071B66";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:139]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 164 ".uvst[0].uvsp[0:163]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375 0.6486026
		 0.89203393 0.62640893 0.93559146 0.59184146 0.97015893 0.54828387 0.9923526 0.5 1
		 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393
		 0.34374997 0.84375 0.3513974 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107
		 0.45171607 0.69514734 0.5 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101
		 0.62640899 0.75190848 0.64860266 0.79546607 0.65625 0.84375 0.6486026 0.89203393
		 0.62640893 0.93559146 0.59184146 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161
		 0.9923526 0.40815854 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393 0.34374997
		 0.84375 0.3513974 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107 0.45171607
		 0.69514734 0.5 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101 0.62640899
		 0.75190848 0.64860266 0.79546607 0.65625 0.84375 0.6486026 0.89203393 0.62640893
		 0.93559146 0.59184146 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854
		 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393 0.34374997 0.84375 0.3513974
		 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107 0.45171607 0.69514734 0.5
		 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266
		 0.79546607 0.65625 0.84375 0.6486026 0.89203393 0.62640893 0.93559146 0.59184146
		 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107
		 0.93559146 0.3513974 0.89203393 0.34374997 0.84375 0.3513974 0.79546607 0.37359107
		 0.75190854 0.40815851 0.71734107 0.45171607 0.69514734 0.5 0.68749994 0.54828393
		 0.69514734 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266 0.79546607 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 122 ".pt[0:121]" -type "float3"  0 -6.4663835 0 0 -6.4663835 
		0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 
		0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 
		0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 
		0 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 
		2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 
		2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7873392e-15 
		0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 
		2.7755576e-15 0 2.7603416 2.8865799e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 
		0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7873392e-15 0 -6.4663835 
		0 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 
		-1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 
		0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 
		-1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 
		0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 
		-1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15;
	setAttr -s 122 ".vt[0:121]"  0.95105743 -4.25383949 -0.30901718 0.80901718 -4.25383949 -0.58778572
		 0.58778763 -4.25383949 -0.80901718 0.30901718 -4.25383949 -0.95105743 0 -4.25383949 -1
		 -0.30901337 -4.25383949 -0.95105743 -0.58778 -4.25383949 -0.80901718 -0.80901337 -4.25383949 -0.58778572
		 -0.95105743 -4.25383949 -0.30901718 -1 -4.25383949 0 -0.95105743 -4.25383949 0.30901718
		 -0.80901337 -4.25383949 0.58778572 -0.58778 -4.25383949 0.80901718 -0.30901337 -4.25383949 0.95105743
		 0 -4.25383949 1 0.30901718 -4.25383949 0.95105743 0.58778763 -4.25383949 0.80901718
		 0.80901718 -4.25383949 0.58778572 0.95105743 -4.25383949 0.30901718 1 -4.25383949 0
		 0.95105743 1.78338623 -0.30901718 0.80901718 1.78338623 -0.58778572 0.58778763 1.78338623 -0.80901718
		 0.30901718 1.78338623 -0.95105743 0 1.78338623 -1 -0.30901337 1.78338623 -0.95105743
		 -0.58778 1.78338623 -0.80901718 -0.80901337 1.78338623 -0.58778572 -0.95105743 1.78338623 -0.30901718
		 -1 1.78338623 0 -0.95105743 1.78338623 0.30901718 -0.80901337 1.78338623 0.58778572
		 -0.58778 1.78338623 0.80901718 -0.30901337 1.78338623 0.95105743 0 1.78338623 1 0.30901718 1.78338623 0.95105743
		 0.58778763 1.78338623 0.80901718 0.80901718 1.78338623 0.58778572 0.95105743 1.78338623 0.30901718
		 1 1.78338623 0 0 -4.25383949 0 0.95105743 5.50146389 3.21287346 0.80901718 5.69809628 3.21287346
		 0.58778763 5.854146 3.21287346 0.30901718 5.95433331 3.21287346 0 5.9888525 3.21287346
		 -0.30901337 5.95433903 3.21287346 -0.58778 5.85414982 3.21287346 -0.80901337 5.69809628 3.21287346
		 -0.95105743 5.50146389 3.21287346 -1 5.28349781 3.21287346 -0.95105743 5.065529823 3.21287346
		 -0.80901337 4.86889553 3.21287346 -0.58778 4.71285152 3.21287346 -0.30901337 4.61266232 3.21287537
		 0 4.57813931 3.21287537 0.30901718 4.61265659 3.21287537 0.58778763 4.7128458 3.21287346
		 0.80901718 4.86889553 3.21287346 0.95105743 5.065529823 3.21287346 1 5.28349781 3.21287346
		 0.95105743 5.50146389 7.32126427 0.80900574 5.69809818 7.32126427 0.58778 5.85414982 7.32126427
		 0.30901718 5.95433712 7.32126427 0 5.98885632 7.32126427 -0.30901337 5.95434284 7.32126427
		 -0.58778 5.85415363 7.32126427 -0.80901337 5.69809818 7.32126427 -0.95105743 5.50146389 7.32126427
		 -1 5.28350163 7.32126427 -0.95106888 5.065535545 7.32126617 -0.80901337 4.86889553 7.32126617
		 -0.5878067 4.71285534 7.32126617 -0.30901337 4.61266804 7.32126808 3.0517578e-05 4.57814312 7.32126808
		 0.30904388 4.61266232 7.32126808 0.58778763 4.71284962 7.32126617 0.80900574 4.86889553 7.32126617
		 0.95107651 5.065535545 7.32126617 1.000011444092 5.28350163 7.32126427 0.95105743 3.83812237 9.61435318
		 0.80900574 3.83812237 9.88871384 0.58778 3.83812237 10.10645103 0.30901718 3.83812237 10.24623871
		 0 3.83812237 10.29440594 -0.30901337 3.83812237 10.24625015 -0.58778 3.83812237 10.10645485
		 -0.80901337 3.83812237 9.88871384 -0.95105743 3.83812237 9.61435318 -1 3.83812237 9.31023026
		 -0.95106888 3.83812237 9.006105423 -0.80901337 3.83812237 8.73173523 -0.5878067 3.83812237 8.51401329
		 -0.30901337 3.83812046 8.37422371 3.0517578e-05 3.83812237 8.32605171 0.30904388 3.83812046 8.37421608
		 0.58778763 3.83812237 8.51400566 0.80900574 3.83812237 8.73173523 0.95107651 3.83812237 9.006105423
		 1.000011444092 3.83812237 9.31022835 0.95105743 3.83812237 9.61435318 0.80900574 3.83812237 9.88871384
		 0 3.83812237 9.31023026 0.58778 3.83812237 10.10645103 0.30901718 3.83812237 10.24623871
		 0 3.83812237 10.29440594 -0.30901337 3.83812237 10.24625015 -0.58778 3.83812237 10.10645485
		 -0.80901337 3.83812237 9.88871384 -0.95105743 3.83812237 9.61435318 -1 3.83812237 9.31023026
		 -0.95106888 3.83812237 9.006105423 -0.80901337 3.83812237 8.73173523 -0.5878067 3.83812237 8.51401329
		 -0.30901337 3.83812046 8.37422371 3.0517578e-05 3.83812237 8.32605171 0.30904388 3.83812046 8.37421608
		 0.58778763 3.83812237 8.51400566 0.80900574 3.83812237 8.73173523 0.95107651 3.83812237 9.006105423
		 1.000011444092 3.83812237 9.31022835;
	setAttr -s 260 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1 40 3 1 40 4 1
		 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1 40 14 1 40 15 1
		 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 42 1 41 42 1 22 43 1 42 43 0 23 44 1 43 44 0
		 24 45 1 44 45 0 25 46 1 45 46 0 26 47 1 46 47 0 27 48 1 47 48 0 28 49 1 48 49 1 29 50 1
		 49 50 1 30 51 1 50 51 1 31 52 1 51 52 0 32 53 1 52 53 0 33 54 1 53 54 0 34 55 1 54 55 0
		 35 56 1 55 56 0 36 57 1 56 57 0 37 58 1 57 58 0 38 59 1 58 59 0 39 60 1 59 60 1 60 41 1
		 41 61 1 42 62 1 61 62 0 43 63 1 62 63 0 44 64 1 63 64 0 45 65 1 64 65 0 46 66 1 65 66 0
		 47 67 1 66 67 0 48 68 1 67 68 0 49 69 1 68 69 0 50 70 1 69 70 0 51 71 1 70 71 0 52 72 1
		 71 72 0 53 73 1 72 73 0 54 74 1 73 74 0 55 75 1 74 75 0 56 76 1 75 76 0 57 77 1 76 77 0
		 58 78 1 77 78 0 59 79 1 78 79 0 60 80 1 79 80 0 80 61 0 61 81 0 62 82 0 81 82 0 63 83 0
		 82 83 0 64 84 0;
	setAttr ".ed[166:259]" 83 84 0 65 85 0 84 85 0 66 86 0 85 86 0 67 87 0 86 87 0
		 68 88 0 87 88 0 69 89 0 88 89 0 70 90 0 89 90 0 71 91 0 90 91 0 72 92 0 91 92 0 73 93 0
		 92 93 0 74 94 0 93 94 0 75 95 0 94 95 0 76 96 0 95 96 0 77 97 0 96 97 0 78 98 0 97 98 0
		 79 99 0 98 99 0 80 100 0 99 100 0 100 81 0 81 101 0 82 102 0 101 102 0 102 103 1
		 101 103 1 83 104 0 102 104 0 104 103 1 84 105 0 104 105 0 105 103 1 85 106 0 105 106 0
		 106 103 1 86 107 0 106 107 0 107 103 1 87 108 0 107 108 0 108 103 1 88 109 0 108 109 0
		 109 103 1 89 110 0 109 110 0 110 103 1 90 111 0 110 111 0 111 103 1 91 112 0 111 112 0
		 112 103 1 92 113 0 112 113 0 113 103 1 93 114 0 113 114 0 114 103 1 94 115 0 114 115 0
		 115 103 1 95 116 0 115 116 0 116 103 1 96 117 0 116 117 0 117 103 1 97 118 0 117 118 0
		 118 103 1 98 119 0 118 119 0 119 103 1 99 120 0 119 120 0 120 103 1 100 121 0 120 121 0
		 121 103 1 121 101 0;
	setAttr -s 140 -ch 520 ".fc[0:139]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 202 203 -205
		mu 0 3 144 145 83
		f 3 206 207 -204
		mu 0 3 145 146 83
		f 3 209 210 -208
		mu 0 3 146 147 83
		f 3 212 213 -211
		mu 0 3 147 148 83
		f 3 215 216 -214
		mu 0 3 148 149 83
		f 3 218 219 -217
		mu 0 3 149 150 83
		f 3 221 222 -220
		mu 0 3 150 151 83
		f 3 224 225 -223
		mu 0 3 151 152 83
		f 3 227 228 -226
		mu 0 3 152 153 83
		f 3 230 231 -229
		mu 0 3 153 154 83
		f 3 233 234 -232
		mu 0 3 154 155 83
		f 3 236 237 -235
		mu 0 3 155 156 83
		f 3 239 240 -238
		mu 0 3 156 157 83
		f 3 242 243 -241
		mu 0 3 157 158 83
		f 3 245 246 -244
		mu 0 3 158 159 83
		f 3 248 249 -247
		mu 0 3 159 160 83
		f 3 251 252 -250
		mu 0 3 160 161 83
		f 3 254 255 -253
		mu 0 3 161 162 83
		f 3 257 258 -256
		mu 0 3 162 163 83
		f 3 259 204 -259
		mu 0 3 163 144 83
		f 4 20 81 -83 -81
		mu 0 4 80 79 85 84
		f 4 21 83 -85 -82
		mu 0 4 79 78 86 85
		f 4 22 85 -87 -84
		mu 0 4 78 77 87 86
		f 4 23 87 -89 -86
		mu 0 4 77 76 88 87
		f 4 24 89 -91 -88
		mu 0 4 76 75 89 88
		f 4 25 91 -93 -90
		mu 0 4 75 74 90 89
		f 4 26 93 -95 -92
		mu 0 4 74 73 91 90
		f 4 27 95 -97 -94
		mu 0 4 73 72 92 91
		f 4 28 97 -99 -96
		mu 0 4 72 71 93 92
		f 4 29 99 -101 -98
		mu 0 4 71 70 94 93
		f 4 30 101 -103 -100
		mu 0 4 70 69 95 94
		f 4 31 103 -105 -102
		mu 0 4 69 68 96 95
		f 4 32 105 -107 -104
		mu 0 4 68 67 97 96
		f 4 33 107 -109 -106
		mu 0 4 67 66 98 97
		f 4 34 109 -111 -108
		mu 0 4 66 65 99 98
		f 4 35 111 -113 -110
		mu 0 4 65 64 100 99
		f 4 36 113 -115 -112
		mu 0 4 64 63 101 100
		f 4 37 115 -117 -114
		mu 0 4 63 62 102 101
		f 4 38 117 -119 -116
		mu 0 4 62 81 103 102
		f 4 39 80 -120 -118
		mu 0 4 81 80 84 103
		f 4 82 121 -123 -121
		mu 0 4 84 85 105 104
		f 4 84 123 -125 -122
		mu 0 4 85 86 106 105
		f 4 86 125 -127 -124
		mu 0 4 86 87 107 106
		f 4 88 127 -129 -126
		mu 0 4 87 88 108 107
		f 4 90 129 -131 -128
		mu 0 4 88 89 109 108
		f 4 92 131 -133 -130
		mu 0 4 89 90 110 109
		f 4 94 133 -135 -132
		mu 0 4 90 91 111 110
		f 4 96 135 -137 -134
		mu 0 4 91 92 112 111
		f 4 98 137 -139 -136
		mu 0 4 92 93 113 112
		f 4 100 139 -141 -138
		mu 0 4 93 94 114 113
		f 4 102 141 -143 -140
		mu 0 4 94 95 115 114
		f 4 104 143 -145 -142
		mu 0 4 95 96 116 115
		f 4 106 145 -147 -144
		mu 0 4 96 97 117 116
		f 4 108 147 -149 -146
		mu 0 4 97 98 118 117
		f 4 110 149 -151 -148
		mu 0 4 98 99 119 118
		f 4 112 151 -153 -150
		mu 0 4 99 100 120 119
		f 4 114 153 -155 -152
		mu 0 4 100 101 121 120
		f 4 116 155 -157 -154
		mu 0 4 101 102 122 121
		f 4 118 157 -159 -156
		mu 0 4 102 103 123 122
		f 4 119 120 -160 -158
		mu 0 4 103 84 104 123
		f 4 122 161 -163 -161
		mu 0 4 104 105 125 124
		f 4 124 163 -165 -162
		mu 0 4 105 106 126 125
		f 4 126 165 -167 -164
		mu 0 4 106 107 127 126
		f 4 128 167 -169 -166
		mu 0 4 107 108 128 127
		f 4 130 169 -171 -168
		mu 0 4 108 109 129 128
		f 4 132 171 -173 -170
		mu 0 4 109 110 130 129
		f 4 134 173 -175 -172
		mu 0 4 110 111 131 130
		f 4 136 175 -177 -174
		mu 0 4 111 112 132 131
		f 4 138 177 -179 -176
		mu 0 4 112 113 133 132
		f 4 140 179 -181 -178
		mu 0 4 113 114 134 133
		f 4 142 181 -183 -180
		mu 0 4 114 115 135 134
		f 4 144 183 -185 -182
		mu 0 4 115 116 136 135
		f 4 146 185 -187 -184
		mu 0 4 116 117 137 136
		f 4 148 187 -189 -186
		mu 0 4 117 118 138 137
		f 4 150 189 -191 -188
		mu 0 4 118 119 139 138
		f 4 152 191 -193 -190
		mu 0 4 119 120 140 139
		f 4 154 193 -195 -192
		mu 0 4 120 121 141 140
		f 4 156 195 -197 -194
		mu 0 4 121 122 142 141
		f 4 158 197 -199 -196
		mu 0 4 122 123 143 142
		f 4 159 160 -200 -198
		mu 0 4 123 104 124 143
		f 4 162 201 -203 -201
		mu 0 4 124 125 145 144
		f 4 164 205 -207 -202
		mu 0 4 125 126 146 145
		f 4 166 208 -210 -206
		mu 0 4 126 127 147 146
		f 4 168 211 -213 -209
		mu 0 4 127 128 148 147
		f 4 170 214 -216 -212
		mu 0 4 128 129 149 148
		f 4 172 217 -219 -215
		mu 0 4 129 130 150 149
		f 4 174 220 -222 -218
		mu 0 4 130 131 151 150
		f 4 176 223 -225 -221
		mu 0 4 131 132 152 151
		f 4 178 226 -228 -224
		mu 0 4 132 133 153 152
		f 4 180 229 -231 -227
		mu 0 4 133 134 154 153
		f 4 182 232 -234 -230
		mu 0 4 134 135 155 154
		f 4 184 235 -237 -233
		mu 0 4 135 136 156 155
		f 4 186 238 -240 -236
		mu 0 4 136 137 157 156
		f 4 188 241 -243 -239
		mu 0 4 137 138 158 157
		f 4 190 244 -246 -242
		mu 0 4 138 139 159 158
		f 4 192 247 -249 -245
		mu 0 4 139 140 160 159
		f 4 194 250 -252 -248
		mu 0 4 140 141 161 160
		f 4 196 253 -255 -251
		mu 0 4 141 142 162 161
		f 4 198 256 -258 -254
		mu 0 4 142 143 163 162
		f 4 199 200 -260 -257
		mu 0 4 143 124 144 163;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder10";
	rename -uid "63D196A1-429B-F718-E407-A6A42C11B7DC";
	setAttr ".t" -type "double3" 3.645147678321774 1.7273009465859905 -2.2065192733425878 ;
	setAttr ".s" -type "double3" 0.079661856541662968 0.11203400094038089 0.079661856541662968 ;
	setAttr ".rp" -type "double3" 0 -0.47657462929074779 0 ;
	setAttr ".sp" -type "double3" 0 -4.2538392388963739 0 ;
	setAttr ".spt" -type "double3" 0 3.7772646096056071 0 ;
createNode mesh -n "pCylinderShape10" -p "pCylinder10";
	rename -uid "BB14E9DD-421C-D5BB-6C74-EE95A9939CE2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:139]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 164 ".uvst[0].uvsp[0:163]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375 0.6486026
		 0.89203393 0.62640893 0.93559146 0.59184146 0.97015893 0.54828387 0.9923526 0.5 1
		 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393
		 0.34374997 0.84375 0.3513974 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107
		 0.45171607 0.69514734 0.5 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101
		 0.62640899 0.75190848 0.64860266 0.79546607 0.65625 0.84375 0.6486026 0.89203393
		 0.62640893 0.93559146 0.59184146 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161
		 0.9923526 0.40815854 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393 0.34374997
		 0.84375 0.3513974 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107 0.45171607
		 0.69514734 0.5 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101 0.62640899
		 0.75190848 0.64860266 0.79546607 0.65625 0.84375 0.6486026 0.89203393 0.62640893
		 0.93559146 0.59184146 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854
		 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393 0.34374997 0.84375 0.3513974
		 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107 0.45171607 0.69514734 0.5
		 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266
		 0.79546607 0.65625 0.84375 0.6486026 0.89203393 0.62640893 0.93559146 0.59184146
		 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107
		 0.93559146 0.3513974 0.89203393 0.34374997 0.84375 0.3513974 0.79546607 0.37359107
		 0.75190854 0.40815851 0.71734107 0.45171607 0.69514734 0.5 0.68749994 0.54828393
		 0.69514734 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266 0.79546607 0.65625
		 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 122 ".pt[0:121]" -type "float3"  0 -6.4663835 0 0 -6.4663835 
		0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 
		0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 
		0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 0 0 -6.4663835 
		0 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 
		2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 
		2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7873392e-15 
		0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 
		2.7755576e-15 0 2.7603416 2.8865799e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 
		0 2.7603416 2.7755576e-15 0 2.7603416 2.7755576e-15 0 2.7603416 2.7873392e-15 0 -6.4663835 
		0 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 
		-1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 
		0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 
		-1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 
		0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 
		-1.0930121 0 0.70560557 -1.0930121 0 0.70560557 -1.0930121 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 0 0.70560557 2.6645353e-15 
		0 0.70560557 2.6645353e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 0 0.70560557 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 
		0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15 0 -0.69731075 3.5527137e-15;
	setAttr -s 122 ".vt[0:121]"  0.95105743 -4.25383949 -0.30901718 0.80901718 -4.25383949 -0.58778572
		 0.58778763 -4.25383949 -0.80901718 0.30901718 -4.25383949 -0.95105743 0 -4.25383949 -1
		 -0.30901337 -4.25383949 -0.95105743 -0.58778 -4.25383949 -0.80901718 -0.80901337 -4.25383949 -0.58778572
		 -0.95105743 -4.25383949 -0.30901718 -1 -4.25383949 0 -0.95105743 -4.25383949 0.30901718
		 -0.80901337 -4.25383949 0.58778572 -0.58778 -4.25383949 0.80901718 -0.30901337 -4.25383949 0.95105743
		 0 -4.25383949 1 0.30901718 -4.25383949 0.95105743 0.58778763 -4.25383949 0.80901718
		 0.80901718 -4.25383949 0.58778572 0.95105743 -4.25383949 0.30901718 1 -4.25383949 0
		 0.95105743 1.78338623 -0.30901718 0.80901718 1.78338623 -0.58778572 0.58778763 1.78338623 -0.80901718
		 0.30901718 1.78338623 -0.95105743 0 1.78338623 -1 -0.30901337 1.78338623 -0.95105743
		 -0.58778 1.78338623 -0.80901718 -0.80901337 1.78338623 -0.58778572 -0.95105743 1.78338623 -0.30901718
		 -1 1.78338623 0 -0.95105743 1.78338623 0.30901718 -0.80901337 1.78338623 0.58778572
		 -0.58778 1.78338623 0.80901718 -0.30901337 1.78338623 0.95105743 0 1.78338623 1 0.30901718 1.78338623 0.95105743
		 0.58778763 1.78338623 0.80901718 0.80901718 1.78338623 0.58778572 0.95105743 1.78338623 0.30901718
		 1 1.78338623 0 0 -4.25383949 0 0.95105743 5.50146389 3.21287346 0.80901718 5.69809628 3.21287346
		 0.58778763 5.854146 3.21287346 0.30901718 5.95433331 3.21287346 0 5.9888525 3.21287346
		 -0.30901337 5.95433903 3.21287346 -0.58778 5.85414982 3.21287346 -0.80901337 5.69809628 3.21287346
		 -0.95105743 5.50146389 3.21287346 -1 5.28349781 3.21287346 -0.95105743 5.065529823 3.21287346
		 -0.80901337 4.86889553 3.21287346 -0.58778 4.71285152 3.21287346 -0.30901337 4.61266232 3.21287537
		 0 4.57813931 3.21287537 0.30901718 4.61265659 3.21287537 0.58778763 4.7128458 3.21287346
		 0.80901718 4.86889553 3.21287346 0.95105743 5.065529823 3.21287346 1 5.28349781 3.21287346
		 0.95105743 5.50146389 7.32126427 0.80900574 5.69809818 7.32126427 0.58778 5.85414982 7.32126427
		 0.30901718 5.95433712 7.32126427 0 5.98885632 7.32126427 -0.30901337 5.95434284 7.32126427
		 -0.58778 5.85415363 7.32126427 -0.80901337 5.69809818 7.32126427 -0.95105743 5.50146389 7.32126427
		 -1 5.28350163 7.32126427 -0.95106888 5.065535545 7.32126617 -0.80901337 4.86889553 7.32126617
		 -0.5878067 4.71285534 7.32126617 -0.30901337 4.61266804 7.32126808 3.0517578e-05 4.57814312 7.32126808
		 0.30904388 4.61266232 7.32126808 0.58778763 4.71284962 7.32126617 0.80900574 4.86889553 7.32126617
		 0.95107651 5.065535545 7.32126617 1.000011444092 5.28350163 7.32126427 0.95105743 3.83812237 9.61435318
		 0.80900574 3.83812237 9.88871384 0.58778 3.83812237 10.10645103 0.30901718 3.83812237 10.24623871
		 0 3.83812237 10.29440594 -0.30901337 3.83812237 10.24625015 -0.58778 3.83812237 10.10645485
		 -0.80901337 3.83812237 9.88871384 -0.95105743 3.83812237 9.61435318 -1 3.83812237 9.31023026
		 -0.95106888 3.83812237 9.006105423 -0.80901337 3.83812237 8.73173523 -0.5878067 3.83812237 8.51401329
		 -0.30901337 3.83812046 8.37422371 3.0517578e-05 3.83812237 8.32605171 0.30904388 3.83812046 8.37421608
		 0.58778763 3.83812237 8.51400566 0.80900574 3.83812237 8.73173523 0.95107651 3.83812237 9.006105423
		 1.000011444092 3.83812237 9.31022835 0.95105743 3.83812237 9.61435318 0.80900574 3.83812237 9.88871384
		 0 3.83812237 9.31023026 0.58778 3.83812237 10.10645103 0.30901718 3.83812237 10.24623871
		 0 3.83812237 10.29440594 -0.30901337 3.83812237 10.24625015 -0.58778 3.83812237 10.10645485
		 -0.80901337 3.83812237 9.88871384 -0.95105743 3.83812237 9.61435318 -1 3.83812237 9.31023026
		 -0.95106888 3.83812237 9.006105423 -0.80901337 3.83812237 8.73173523 -0.5878067 3.83812237 8.51401329
		 -0.30901337 3.83812046 8.37422371 3.0517578e-05 3.83812237 8.32605171 0.30904388 3.83812046 8.37421608
		 0.58778763 3.83812237 8.51400566 0.80900574 3.83812237 8.73173523 0.95107651 3.83812237 9.006105423
		 1.000011444092 3.83812237 9.31022835;
	setAttr -s 260 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1 40 3 1 40 4 1
		 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1 40 14 1 40 15 1
		 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 42 1 41 42 1 22 43 1 42 43 0 23 44 1 43 44 0
		 24 45 1 44 45 0 25 46 1 45 46 0 26 47 1 46 47 0 27 48 1 47 48 0 28 49 1 48 49 1 29 50 1
		 49 50 1 30 51 1 50 51 1 31 52 1 51 52 0 32 53 1 52 53 0 33 54 1 53 54 0 34 55 1 54 55 0
		 35 56 1 55 56 0 36 57 1 56 57 0 37 58 1 57 58 0 38 59 1 58 59 0 39 60 1 59 60 1 60 41 1
		 41 61 1 42 62 1 61 62 0 43 63 1 62 63 0 44 64 1 63 64 0 45 65 1 64 65 0 46 66 1 65 66 0
		 47 67 1 66 67 0 48 68 1 67 68 0 49 69 1 68 69 0 50 70 1 69 70 0 51 71 1 70 71 0 52 72 1
		 71 72 0 53 73 1 72 73 0 54 74 1 73 74 0 55 75 1 74 75 0 56 76 1 75 76 0 57 77 1 76 77 0
		 58 78 1 77 78 0 59 79 1 78 79 0 60 80 1 79 80 0 80 61 0 61 81 0 62 82 0 81 82 0 63 83 0
		 82 83 0 64 84 0;
	setAttr ".ed[166:259]" 83 84 0 65 85 0 84 85 0 66 86 0 85 86 0 67 87 0 86 87 0
		 68 88 0 87 88 0 69 89 0 88 89 0 70 90 0 89 90 0 71 91 0 90 91 0 72 92 0 91 92 0 73 93 0
		 92 93 0 74 94 0 93 94 0 75 95 0 94 95 0 76 96 0 95 96 0 77 97 0 96 97 0 78 98 0 97 98 0
		 79 99 0 98 99 0 80 100 0 99 100 0 100 81 0 81 101 0 82 102 0 101 102 0 102 103 1
		 101 103 1 83 104 0 102 104 0 104 103 1 84 105 0 104 105 0 105 103 1 85 106 0 105 106 0
		 106 103 1 86 107 0 106 107 0 107 103 1 87 108 0 107 108 0 108 103 1 88 109 0 108 109 0
		 109 103 1 89 110 0 109 110 0 110 103 1 90 111 0 110 111 0 111 103 1 91 112 0 111 112 0
		 112 103 1 92 113 0 112 113 0 113 103 1 93 114 0 113 114 0 114 103 1 94 115 0 114 115 0
		 115 103 1 95 116 0 115 116 0 116 103 1 96 117 0 116 117 0 117 103 1 97 118 0 117 118 0
		 118 103 1 98 119 0 118 119 0 119 103 1 99 120 0 119 120 0 120 103 1 100 121 0 120 121 0
		 121 103 1 121 101 0;
	setAttr -s 140 -ch 520 ".fc[0:139]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 202 203 -205
		mu 0 3 144 145 83
		f 3 206 207 -204
		mu 0 3 145 146 83
		f 3 209 210 -208
		mu 0 3 146 147 83
		f 3 212 213 -211
		mu 0 3 147 148 83
		f 3 215 216 -214
		mu 0 3 148 149 83
		f 3 218 219 -217
		mu 0 3 149 150 83
		f 3 221 222 -220
		mu 0 3 150 151 83
		f 3 224 225 -223
		mu 0 3 151 152 83
		f 3 227 228 -226
		mu 0 3 152 153 83
		f 3 230 231 -229
		mu 0 3 153 154 83
		f 3 233 234 -232
		mu 0 3 154 155 83
		f 3 236 237 -235
		mu 0 3 155 156 83
		f 3 239 240 -238
		mu 0 3 156 157 83
		f 3 242 243 -241
		mu 0 3 157 158 83
		f 3 245 246 -244
		mu 0 3 158 159 83
		f 3 248 249 -247
		mu 0 3 159 160 83
		f 3 251 252 -250
		mu 0 3 160 161 83
		f 3 254 255 -253
		mu 0 3 161 162 83
		f 3 257 258 -256
		mu 0 3 162 163 83
		f 3 259 204 -259
		mu 0 3 163 144 83
		f 4 20 81 -83 -81
		mu 0 4 80 79 85 84
		f 4 21 83 -85 -82
		mu 0 4 79 78 86 85
		f 4 22 85 -87 -84
		mu 0 4 78 77 87 86
		f 4 23 87 -89 -86
		mu 0 4 77 76 88 87
		f 4 24 89 -91 -88
		mu 0 4 76 75 89 88
		f 4 25 91 -93 -90
		mu 0 4 75 74 90 89
		f 4 26 93 -95 -92
		mu 0 4 74 73 91 90
		f 4 27 95 -97 -94
		mu 0 4 73 72 92 91
		f 4 28 97 -99 -96
		mu 0 4 72 71 93 92
		f 4 29 99 -101 -98
		mu 0 4 71 70 94 93
		f 4 30 101 -103 -100
		mu 0 4 70 69 95 94
		f 4 31 103 -105 -102
		mu 0 4 69 68 96 95
		f 4 32 105 -107 -104
		mu 0 4 68 67 97 96
		f 4 33 107 -109 -106
		mu 0 4 67 66 98 97
		f 4 34 109 -111 -108
		mu 0 4 66 65 99 98
		f 4 35 111 -113 -110
		mu 0 4 65 64 100 99
		f 4 36 113 -115 -112
		mu 0 4 64 63 101 100
		f 4 37 115 -117 -114
		mu 0 4 63 62 102 101
		f 4 38 117 -119 -116
		mu 0 4 62 81 103 102
		f 4 39 80 -120 -118
		mu 0 4 81 80 84 103
		f 4 82 121 -123 -121
		mu 0 4 84 85 105 104
		f 4 84 123 -125 -122
		mu 0 4 85 86 106 105
		f 4 86 125 -127 -124
		mu 0 4 86 87 107 106
		f 4 88 127 -129 -126
		mu 0 4 87 88 108 107
		f 4 90 129 -131 -128
		mu 0 4 88 89 109 108
		f 4 92 131 -133 -130
		mu 0 4 89 90 110 109
		f 4 94 133 -135 -132
		mu 0 4 90 91 111 110
		f 4 96 135 -137 -134
		mu 0 4 91 92 112 111
		f 4 98 137 -139 -136
		mu 0 4 92 93 113 112
		f 4 100 139 -141 -138
		mu 0 4 93 94 114 113
		f 4 102 141 -143 -140
		mu 0 4 94 95 115 114
		f 4 104 143 -145 -142
		mu 0 4 95 96 116 115
		f 4 106 145 -147 -144
		mu 0 4 96 97 117 116
		f 4 108 147 -149 -146
		mu 0 4 97 98 118 117
		f 4 110 149 -151 -148
		mu 0 4 98 99 119 118
		f 4 112 151 -153 -150
		mu 0 4 99 100 120 119
		f 4 114 153 -155 -152
		mu 0 4 100 101 121 120
		f 4 116 155 -157 -154
		mu 0 4 101 102 122 121
		f 4 118 157 -159 -156
		mu 0 4 102 103 123 122
		f 4 119 120 -160 -158
		mu 0 4 103 84 104 123
		f 4 122 161 -163 -161
		mu 0 4 104 105 125 124
		f 4 124 163 -165 -162
		mu 0 4 105 106 126 125
		f 4 126 165 -167 -164
		mu 0 4 106 107 127 126
		f 4 128 167 -169 -166
		mu 0 4 107 108 128 127
		f 4 130 169 -171 -168
		mu 0 4 108 109 129 128
		f 4 132 171 -173 -170
		mu 0 4 109 110 130 129
		f 4 134 173 -175 -172
		mu 0 4 110 111 131 130
		f 4 136 175 -177 -174
		mu 0 4 111 112 132 131
		f 4 138 177 -179 -176
		mu 0 4 112 113 133 132
		f 4 140 179 -181 -178
		mu 0 4 113 114 134 133
		f 4 142 181 -183 -180
		mu 0 4 114 115 135 134
		f 4 144 183 -185 -182
		mu 0 4 115 116 136 135
		f 4 146 185 -187 -184
		mu 0 4 116 117 137 136
		f 4 148 187 -189 -186
		mu 0 4 117 118 138 137
		f 4 150 189 -191 -188
		mu 0 4 118 119 139 138
		f 4 152 191 -193 -190
		mu 0 4 119 120 140 139
		f 4 154 193 -195 -192
		mu 0 4 120 121 141 140
		f 4 156 195 -197 -194
		mu 0 4 121 122 142 141
		f 4 158 197 -199 -196
		mu 0 4 122 123 143 142
		f 4 159 160 -200 -198
		mu 0 4 123 104 124 143
		f 4 162 201 -203 -201
		mu 0 4 124 125 145 144
		f 4 164 205 -207 -202
		mu 0 4 125 126 146 145
		f 4 166 208 -210 -206
		mu 0 4 126 127 147 146
		f 4 168 211 -213 -209
		mu 0 4 127 128 148 147
		f 4 170 214 -216 -212
		mu 0 4 128 129 149 148
		f 4 172 217 -219 -215
		mu 0 4 129 130 150 149
		f 4 174 220 -222 -218
		mu 0 4 130 131 151 150
		f 4 176 223 -225 -221
		mu 0 4 131 132 152 151
		f 4 178 226 -228 -224
		mu 0 4 132 133 153 152
		f 4 180 229 -231 -227
		mu 0 4 133 134 154 153
		f 4 182 232 -234 -230
		mu 0 4 134 135 155 154
		f 4 184 235 -237 -233
		mu 0 4 135 136 156 155
		f 4 186 238 -240 -236
		mu 0 4 136 137 157 156
		f 4 188 241 -243 -239
		mu 0 4 137 138 158 157
		f 4 190 244 -246 -242
		mu 0 4 138 139 159 158
		f 4 192 247 -249 -245
		mu 0 4 139 140 160 159
		f 4 194 250 -252 -248
		mu 0 4 140 141 161 160
		f 4 196 253 -255 -251
		mu 0 4 141 142 162 161
		f 4 198 256 -258 -254
		mu 0 4 142 143 163 162
		f 4 199 200 -260 -257
		mu 0 4 143 124 144 163;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder11";
	rename -uid "AA25C809-4C61-36D6-DC96-D780CB02ABD5";
	setAttr ".t" -type "double3" 3.3265520925440777 1.3722970713284788 -2.198505828195751 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.06411699664644567 0.26895534725653231 0.06411699664644567 ;
createNode mesh -n "pCylinderShape11" -p "pCylinder11";
	rename -uid "E45213B6-4C2D-76B2-F003-788CF1D57F47";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder12";
	rename -uid "59C3AB32-4015-55DA-7ECE-4C9145DB3165";
	setAttr ".t" -type "double3" 3.3265520925440777 1.9793105833017361 -2.198505828195751 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.06411699664644567 0.26895534725653231 0.06411699664644567 ;
createNode mesh -n "pCylinderShape12" -p "pCylinder12";
	rename -uid "AC3F93CC-4E94-42E9-A3DF-6A908ACDDE71";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder13";
	rename -uid "43C4C9FF-47A3-516C-2A0D-8FA4D43194A7";
	setAttr ".t" -type "double3" 3.3265520925440777 1.6656816503093081 -2.198505828195751 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.06411699664644567 0.26895534725653231 0.06411699664644567 ;
createNode mesh -n "pCylinderShape13" -p "pCylinder13";
	rename -uid "5E1CC371-43FE-E2A9-D02B-52A9F39C9B59";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube33";
	rename -uid "CF5394E4-43D8-42E8-3AF6-D6BFE7975B95";
	setAttr ".t" -type "double3" -2.0614601434907716 2.8066236628868801 1.4999999915767541 ;
	setAttr ".rp" -type "double3" 0 -0.60984478389384789 0.50000000842324588 ;
	setAttr ".sp" -type "double3" 0 -0.60984478389384789 0.50000000842324588 ;
createNode mesh -n "pCubeShape33" -p "pCube33";
	rename -uid "16C10D6A-4783-3CD3-D255-24ADF3918E59";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -0.11634139 0 ;
	setAttr ".pt[1]" -type "float3" 0 -0.11634139 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.11634139 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.11634139 0 ;
	setAttr ".pt[9]" -type "float3" 0 -0.11634139 0 ;
	setAttr ".pt[10]" -type "float3" 0 -0.11634139 0 ;
	setAttr ".pt[12]" -type "float3" 0 -0.11634139 0 ;
	setAttr ".pt[13]" -type "float3" 0 -0.11634139 0 ;
createNode transform -n "gascan";
	rename -uid "B4B65E70-4F46-188E-879E-05B982F09E57";
	setAttr ".t" -type "double3" -1.0120489117545044 0 0 ;
createNode transform -n "pCube32" -p "gascan";
	rename -uid "CC722AA1-4777-3463-02C6-70B657B1F577";
	setAttr ".t" -type "double3" -0.67525338878091468 2.5997497675172232 -0.5181368044558109 ;
createNode mesh -n "pCubeShape32" -p "pCube32";
	rename -uid "8366DE34-4357-8611-04CE-48B101E19486";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".pt";
	setAttr ".pt[2]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".pt[3]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".pt[6]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".pt[9]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".pt[10]" -type "float3" -7.4505806e-09 3.7252903e-09 -1.4901161e-08 ;
	setAttr ".pt[11]" -type "float3" -3.7252903e-09 3.7252903e-09 -1.4901161e-08 ;
	setAttr ".pt[12]" -type "float3" -3.7252903e-09 3.7252903e-09 4.4703484e-08 ;
	setAttr ".pt[13]" -type "float3" -7.4505806e-09 3.7252903e-09 4.4703484e-08 ;
	setAttr ".pt[14]" -type "float3" 7.4505806e-09 -3.7252903e-09 -1.4901161e-08 ;
	setAttr ".pt[15]" -type "float3" 7.4505806e-09 -3.7252903e-09 4.4703484e-08 ;
	setAttr ".pt[20]" -type "float3" -0.002731943 0 0 ;
	setAttr ".pt[21]" -type "float3" -0.002731943 0 0 ;
	setAttr ".pt[22]" -type "float3" 1.2767565e-15 -0.016540941 0 ;
	setAttr ".pt[23]" -type "float3" -0.06258411 0.016540941 0 ;
	setAttr ".pt[24]" -type "float3" -0.06258411 0.016540941 0 ;
	setAttr ".pt[25]" -type "float3" 1.2767565e-15 -0.016540941 0 ;
	setAttr ".pt[26]" -type "float3" -0.10446658 0 0 ;
	setAttr ".pt[27]" -type "float3" -0.10446658 0 0 ;
createNode transform -n "pCylinder14" -p "gascan";
	rename -uid "CE5A7AF4-4F7F-DA71-024E-4AB369195E29";
	setAttr ".t" -type "double3" -0.34042882842678618 3.0872636669212641 -0.36574425377148034 ;
	setAttr ".r" -type "double3" 0 0 -44.281700026549345 ;
	setAttr ".s" -type "double3" 0.1847895491123403 0.1847895491123403 0.1847895491123403 ;
createNode mesh -n "pCylinderShape14" -p "pCylinder14";
	rename -uid "B65A65DA-4285-4915-5B8A-1BA7CA8A5F71";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder15";
	rename -uid "E05EBECD-48AF-249C-1F66-6F8A2EEC1ADE";
	setAttr ".t" -type "double3" -1.9959373845548292 4.128886868362045 0.58448501798632324 ;
	setAttr ".s" -type "double3" 0.15236551095669465 0.15236551095669465 0.15236551095669465 ;
	setAttr ".rp" -type "double3" 0 -0.74855797470054575 0 ;
	setAttr ".sp" -type "double3" 0 -4.9129095554525168 0 ;
	setAttr ".spt" -type "double3" 0 4.1643515807519904 0 ;
createNode mesh -n "pCylinderShape15" -p "pCylinder15";
	rename -uid "0FD07C3F-4A9F-8428-C749-F5815549381A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -0.13461655 -3.9129109 0.043739561 
		-0.1145117 -3.9129109 0.083197594 -0.083197594 -3.9129109 0.11451168 -0.043739557 
		-3.9129109 0.13461652 -2.2786641e-14 -3.9129109 0.14154419 0.043739557 -3.9129109 
		0.13461655 0.083197586 -3.9129109 0.11451168 0.11451168 -3.9129109 0.083197556 0.13461654 
		-3.9129109 0.043739565 0.14154415 -3.9129109 -7.8371872e-16 0.13461654 -3.9129109 
		-0.043739565 0.11451162 -3.9129109 -0.083197571 0.083197571 -3.9129109 -0.11451164 
		0.043739565 -3.9129109 -0.13461648 4.2183208e-09 -3.9129109 -0.14154409 -0.043739524 
		-3.9129109 -0.13461649 -0.083197527 -3.9129109 -0.11451158 -0.11451156 -3.9129109 
		-0.083197542 -0.13461646 -3.9129109 -0.043739539 -0.14154407 -3.9129109 -1.3294851e-15 
		-0.13461655 3.9129109 0.043739561 -0.1145117 3.9129109 0.083197594 -0.083197594 3.9129109 
		0.11451168 -0.043739557 3.9129109 0.13461652 -2.4179696e-14 3.9129109 0.14154419 
		0.043739557 3.9129109 0.13461655 0.083197586 3.9129109 0.11451168 0.11451168 3.9129109 
		0.083197556 0.13461654 3.9129109 0.043739565 0.14154415 3.9129109 1.3294851e-15 0.13461654 
		3.9129109 -0.043739565 0.11451162 3.9129109 -0.083197571 0.083197571 3.9129109 -0.11451164 
		0.043739565 3.9129109 -0.13461648 4.2183181e-09 3.9129109 -0.14154409 -0.043739524 
		3.9129109 -0.13461649 -0.083197527 3.9129109 -0.11451158 -0.11451156 3.9129109 -0.083197542 
		-0.13461646 3.9129109 -0.043739539 -0.14154407 3.9129109 7.837194e-16 -2.2786641e-14 
		-3.9129109 -1.0566018e-15 -2.4179696e-14 3.9129109 1.0566018e-15;
createNode transform -n "pCylinder16";
	rename -uid "333C2030-4AB9-FF9F-662B-15A7BA5E7B76";
	setAttr ".t" -type "double3" -1.9959373845548292 4.128886868362045 1.8199391468985877 ;
	setAttr ".s" -type "double3" 0.15236551095669465 0.15236551095669465 0.15236551095669465 ;
	setAttr ".rp" -type "double3" 0 -0.74855797470054575 0 ;
	setAttr ".sp" -type "double3" 0 -4.9129095554525168 0 ;
	setAttr ".spt" -type "double3" 0 4.1643515807519904 0 ;
createNode mesh -n "pCylinderShape16" -p "pCylinder16";
	rename -uid "74D660DC-42B4-9E92-0B51-CCB867569607";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -0.13461655 -3.9129109 0.043739561 
		-0.1145117 -3.9129109 0.083197594 -0.083197594 -3.9129109 0.11451168 -0.043739557 
		-3.9129109 0.13461652 -2.2786641e-14 -3.9129109 0.14154419 0.043739557 -3.9129109 
		0.13461655 0.083197586 -3.9129109 0.11451168 0.11451168 -3.9129109 0.083197556 0.13461654 
		-3.9129109 0.043739565 0.14154415 -3.9129109 -7.8371872e-16 0.13461654 -3.9129109 
		-0.043739565 0.11451162 -3.9129109 -0.083197571 0.083197571 -3.9129109 -0.11451164 
		0.043739565 -3.9129109 -0.13461648 4.2183208e-09 -3.9129109 -0.14154409 -0.043739524 
		-3.9129109 -0.13461649 -0.083197527 -3.9129109 -0.11451158 -0.11451156 -3.9129109 
		-0.083197542 -0.13461646 -3.9129109 -0.043739539 -0.14154407 -3.9129109 -1.3294851e-15 
		-0.13461655 3.9129109 0.043739561 -0.1145117 3.9129109 0.083197594 -0.083197594 3.9129109 
		0.11451168 -0.043739557 3.9129109 0.13461652 -2.4179696e-14 3.9129109 0.14154419 
		0.043739557 3.9129109 0.13461655 0.083197586 3.9129109 0.11451168 0.11451168 3.9129109 
		0.083197556 0.13461654 3.9129109 0.043739565 0.14154415 3.9129109 1.3294851e-15 0.13461654 
		3.9129109 -0.043739565 0.11451162 3.9129109 -0.083197571 0.083197571 3.9129109 -0.11451164 
		0.043739565 3.9129109 -0.13461648 4.2183181e-09 3.9129109 -0.14154409 -0.043739524 
		3.9129109 -0.13461649 -0.083197527 3.9129109 -0.11451158 -0.11451156 3.9129109 -0.083197542 
		-0.13461646 3.9129109 -0.043739539 -0.14154407 3.9129109 7.837194e-16 -2.2786641e-14 
		-3.9129109 -1.0566018e-15 -2.4179696e-14 3.9129109 1.0566018e-15;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube34";
	rename -uid "E64E4E93-4394-9DB3-D000-A4BF201C097B";
	setAttr ".t" -type "double3" -2.749557328381786 5.0609456521584182 1.2345766931089628 ;
	setAttr ".r" -type "double3" 0 0 -12.524018643853722 ;
createNode mesh -n "pCubeShape34" -p "pCube34";
	rename -uid "1ED4B333-491A-68CC-68C5-7D976B36DA0F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder17";
	rename -uid "83952CD4-4616-3544-C058-388145B1F4BB";
	setAttr ".t" -type "double3" 4.082800755727388 0.63638203866415699 0.63955191674735867 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.40594056319669664 0.40594056319669664 0.40594056319669664 ;
	setAttr ".rp" -type "double3" 0 0.082800755727388334 0 ;
	setAttr ".rpt" -type "double3" -0.082800755727388334 -0.082800755727388334 0 ;
	setAttr ".sp" -type "double3" 0 0.20397260888478211 0 ;
	setAttr ".spt" -type "double3" 0 -0.12117185315739218 0 ;
createNode mesh -n "pCylinderShape17" -p "pCylinder17";
	rename -uid "107FE5F0-4198-845B-8355-36A9508D2CDE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5687498152256012 0.61551457643508911 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 39 ".pt";
	setAttr ".pt[20]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[21]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[35]" -type "float3" -3.7252903e-09 0 -1.4901161e-08 ;
	setAttr ".pt[36]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[37]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[38]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[42]" -type "float3" -1.1641532e-10 7.4505806e-09 -7.4505806e-09 ;
	setAttr ".pt[43]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[44]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[45]" -type "float3" 1.8626451e-09 7.4505806e-09 0 ;
	setAttr ".pt[46]" -type "float3" -1.1641532e-10 7.4505806e-09 0 ;
	setAttr ".pt[47]" -type "float3" 0 7.4505806e-09 7.4505806e-09 ;
	setAttr ".pt[48]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[49]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[60]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[61]" -type "float3" -3.7252903e-09 7.4505806e-09 0 ;
	setAttr ".pt[62]" -type "float3" 5.5879354e-09 0 7.4505806e-09 ;
	setAttr ".pt[63]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".pt[64]" -type "float3" -2.2351742e-08 0 0 ;
	setAttr ".pt[65]" -type "float3" -7.4505806e-09 0 3.7252903e-09 ;
	setAttr ".pt[66]" -type "float3" -2.2351742e-08 0 0 ;
	setAttr ".pt[69]" -type "float3" -2.2351742e-08 0 -3.7252903e-09 ;
	setAttr ".pt[70]" -type "float3" 1.3038516e-08 0 0 ;
	setAttr ".pt[71]" -type "float3" -1.2107193e-08 0 -7.4505806e-09 ;
	setAttr ".pt[72]" -type "float3" -1.4901161e-08 0 7.4505806e-09 ;
	setAttr ".pt[73]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".pt[74]" -type "float3" 3.7252903e-09 0 0 ;
	setAttr ".pt[76]" -type "float3" 1.4901161e-08 0 1.4901161e-08 ;
	setAttr ".pt[77]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".pt[79]" -type "float3" -1.5366822e-08 0 -7.4505806e-09 ;
	setAttr ".pt[80]" -type "float3" 1.1175871e-08 0 0 ;
	setAttr ".pt[81]" -type "float3" -5.5879354e-09 0 0 ;
createNode transform -n "pCylinder18";
	rename -uid "E9FD1005-40AE-10AF-021A-16AD3CA99975";
	setAttr ".t" -type "double3" 4.082800755727388 1.4039180743703348 0.76008850728989674 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.40594056319669664 0.40594056319669664 0.40594056319669664 ;
	setAttr ".rp" -type "double3" 0 0.082800755727388334 0 ;
	setAttr ".rpt" -type "double3" -0.082800755727388334 -0.082800755727388334 0 ;
	setAttr ".sp" -type "double3" 0 0.20397260888478211 0 ;
	setAttr ".spt" -type "double3" 0 -0.12117185315739218 0 ;
createNode mesh -n "pCylinderShape18" -p "pCylinder18";
	rename -uid "93663C5A-4EC5-D64E-6B9E-AA8BB1EAC0CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt";
	setAttr ".pt[0]" -type "float3" -0.13793758 0.11525355 0.044818603 ;
	setAttr ".pt[1]" -type "float3" -0.11733671 0.11525355 0.085250072 ;
	setAttr ".pt[2]" -type "float3" -0.085250087 0.11525355 0.11733668 ;
	setAttr ".pt[3]" -type "float3" -0.044818629 0.11525355 0.13793753 ;
	setAttr ".pt[4]" -type "float3" -8.4136067e-09 0.11525355 0.14503607 ;
	setAttr ".pt[5]" -type "float3" 0.044818617 0.11525355 0.13793752 ;
	setAttr ".pt[6]" -type "float3" 0.085250065 0.11525355 0.11733664 ;
	setAttr ".pt[7]" -type "float3" 0.11733665 0.11525355 0.08525005 ;
	setAttr ".pt[8]" -type "float3" 0.1379375 0.11525355 0.044818591 ;
	setAttr ".pt[9]" -type "float3" 0.14503606 0.11525355 -1.7407368e-08 ;
	setAttr ".pt[10]" -type "float3" 0.1379375 0.11525355 -0.044818625 ;
	setAttr ".pt[11]" -type "float3" 0.11733664 0.11525355 -0.085250072 ;
	setAttr ".pt[12]" -type "float3" 0.08525005 0.11525355 -0.11733665 ;
	setAttr ".pt[13]" -type "float3" 0.044818588 0.11525355 -0.1379375 ;
	setAttr ".pt[14]" -type "float3" -4.0911972e-09 0.11525355 -0.14503607 ;
	setAttr ".pt[15]" -type "float3" -0.044818603 0.11525355 -0.1379375 ;
	setAttr ".pt[16]" -type "float3" -0.085250057 0.11525355 -0.11733662 ;
	setAttr ".pt[17]" -type "float3" -0.11733662 0.11525355 -0.085250065 ;
	setAttr ".pt[18]" -type "float3" -0.13793749 0.11525355 -0.044818621 ;
	setAttr ".pt[19]" -type "float3" -0.14503606 0.11525355 -1.7407368e-08 ;
	setAttr ".pt[40]" -type "float3" -8.4136067e-09 0.11525355 -1.7407368e-08 ;
createNode mesh -n "polySurfaceShape1" -p "pCylinder18";
	rename -uid "B17F688C-4396-57DF-8C88-FA885E4AE319";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -0.46246022 0.79602695 0.15026246 
		-0.39339221 0.79602695 0.28581616 -0.28581616 0.79602695 0.39339215 -0.15026243 0.79602695 
		0.46246022 7.601594e-16 0.79602695 0.48625943 0.15026243 0.79602695 0.46246019 0.2858161 
		0.79602695 0.39339212 0.39339206 0.79602695 0.28581607 0.4624601 0.79602695 0.15026239 
		0.48625931 0.79602695 -8.621716e-16 0.4624601 0.79602695 -0.15026239 0.39339203 0.79602695 
		-0.28581604 0.28581604 0.79602695 -0.39339203 0.15026239 0.79602695 -0.46246007 1.4491654e-08 
		0.79602695 -0.48625925 -0.15026234 0.79602695 -0.46246001 -0.28581595 0.79602695 
		-0.39339203 -0.39339197 0.79602695 -0.28581601 -0.46245998 0.79602695 -0.15026236 
		-0.48625916 0.79602695 -8.621716e-16 -0.46246022 -0.79602695 0.15026246 -0.39339221 
		-0.79602695 0.28581616 -0.28581616 -0.79602695 0.39339215 -0.15026243 -0.79602695 
		0.46246022 5.1130254e-16 -0.79602695 0.48625943 0.15026243 -0.79602695 0.46246019 
		0.2858161 -0.79602695 0.39339212 0.39339206 -0.79602695 0.28581607 0.4624601 -0.79602695 
		0.15026239 0.48625931 -0.79602695 -3.7773384e-16 0.4624601 -0.79602695 -0.15026239 
		0.39339203 -0.79602695 -0.28581604 0.28581604 -0.79602695 -0.39339203 0.15026239 
		-0.79602695 -0.46246007 1.4491653e-08 -0.79602695 -0.48625925 -0.15026234 -0.79602695 
		-0.46246001 -0.28581595 -0.79602695 -0.39339203 -0.39339197 -0.79602695 -0.28581601 
		-0.46245998 -0.79602695 -0.15026236 -0.48625916 -0.79602695 -3.7773384e-16 7.601594e-16 
		0.79602695 -8.621716e-16 5.1130254e-16 -0.79602695 -3.7773384e-16;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder19";
	rename -uid "A6F34EF4-438B-5FEB-9F92-13B8524D4BDF";
	setAttr ".t" -type "double3" 4.082800755727388 1.3718815208609136 1.4917462954030296 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.40594056319669664 0.40594056319669664 0.40594056319669664 ;
	setAttr ".rp" -type "double3" 0 0.082800755727388334 0 ;
	setAttr ".rpt" -type "double3" -0.082800755727388334 -0.082800755727388334 0 ;
	setAttr ".sp" -type "double3" 0 0.20397260888478211 0 ;
	setAttr ".spt" -type "double3" 0 -0.12117185315739218 0 ;
createNode mesh -n "pCylinderShape19" -p "pCylinder19";
	rename -uid "95AC9D79-4075-E00E-E852-9BB2B134E172";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt";
	setAttr ".pt[23]" -type "float3" -0.11395787 -2.4980018e-16 0.037027124 ;
	setAttr ".pt[24]" -type "float3" -0.079848923 -4.9960036e-16 0.025944477 ;
	setAttr ".pt[26]" -type "float3" -0.096938357 -2.4980018e-16 0.070429869 ;
	setAttr ".pt[27]" -type "float3" -0.067923538 -4.9960036e-16 0.049349364 ;
	setAttr ".pt[29]" -type "float3" -0.070429884 -2.4980018e-16 0.096938379 ;
	setAttr ".pt[30]" -type "float3" -0.04934939 -4.9960036e-16 0.067923605 ;
	setAttr ".pt[32]" -type "float3" -0.03702715 -2.4980018e-16 0.11395784 ;
	setAttr ".pt[33]" -type "float3" -0.025944501 -4.9960036e-16 0.079848945 ;
	setAttr ".pt[35]" -type "float3" 2.4400368e-08 -2.4980018e-16 0.11982237 ;
	setAttr ".pt[36]" -type "float3" 2.4400368e-08 -4.9960036e-16 0.083958119 ;
	setAttr ".pt[38]" -type "float3" 0.03702715 -2.4980018e-16 0.11395784 ;
	setAttr ".pt[39]" -type "float3" 0.025944548 -4.9960036e-16 0.079848945 ;
	setAttr ".pt[41]" -type "float3" 0.070429839 -2.4980018e-16 0.096938379 ;
	setAttr ".pt[42]" -type "float3" 0.04934939 -4.9960036e-16 0.067923658 ;
	setAttr ".pt[44]" -type "float3" 0.096938312 -2.4980018e-16 0.070429869 ;
	setAttr ".pt[45]" -type "float3" 0.067923538 -4.9960036e-16 0.049349364 ;
	setAttr ".pt[47]" -type "float3" 0.11395787 -2.4980018e-16 0.037027124 ;
	setAttr ".pt[48]" -type "float3" 0.079848923 -4.9960036e-16 0.025944477 ;
	setAttr ".pt[50]" -type "float3" 0.11982234 -2.4980018e-16 -4.8800739e-08 ;
	setAttr ".pt[51]" -type "float3" 0.083958142 -4.9960036e-16 -4.8800739e-08 ;
	setAttr ".pt[53]" -type "float3" 0.11395787 -2.4980018e-16 -0.037027124 ;
	setAttr ".pt[54]" -type "float3" 0.079848923 -4.9960036e-16 -0.025944574 ;
	setAttr ".pt[56]" -type "float3" 0.096938312 -2.4980018e-16 -0.070429869 ;
	setAttr ".pt[57]" -type "float3" 0.067923538 -4.9960036e-16 -0.049349312 ;
	setAttr ".pt[59]" -type "float3" 0.070429839 -2.4980018e-16 -0.096938334 ;
	setAttr ".pt[60]" -type "float3" 0.04934939 -4.9960036e-16 -0.067923658 ;
	setAttr ".pt[62]" -type "float3" 0.03702715 -2.4980018e-16 -0.11395799 ;
	setAttr ".pt[63]" -type "float3" 0.025944548 -4.9960036e-16 -0.079848893 ;
	setAttr ".pt[65]" -type "float3" 2.4400368e-08 -2.4980018e-16 -0.11982237 ;
	setAttr ".pt[66]" -type "float3" 7.3201107e-08 -4.9960036e-16 -0.083958119 ;
	setAttr ".pt[68]" -type "float3" -0.03702715 -2.4980018e-16 -0.11395779 ;
	setAttr ".pt[69]" -type "float3" -0.025944501 -4.9960036e-16 -0.079848893 ;
	setAttr ".pt[71]" -type "float3" -0.070429839 -2.4980018e-16 -0.096938334 ;
	setAttr ".pt[72]" -type "float3" -0.049349338 -4.9960036e-16 -0.067923464 ;
	setAttr ".pt[74]" -type "float3" -0.09693826 -2.4980018e-16 -0.070429869 ;
	setAttr ".pt[75]" -type "float3" -0.067923486 -4.9960036e-16 -0.049349312 ;
	setAttr ".pt[77]" -type "float3" -0.11395781 -2.4980018e-16 -0.037027124 ;
	setAttr ".pt[78]" -type "float3" -0.079848923 -4.9960036e-16 -0.025944574 ;
	setAttr ".pt[80]" -type "float3" -0.11982234 -2.4980018e-16 -4.8800739e-08 ;
	setAttr ".pt[81]" -type "float3" -0.083958089 -4.9960036e-16 3.2232992e-15 ;
createNode mesh -n "polySurfaceShape2" -p "pCylinder19";
	rename -uid "A10D947F-4170-A9E0-7430-768A9BBBD9E2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[20:39]" "vtx[41]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:59]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".pv" -type "double2" 0.49999998509883881 0.15624996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".pt[0:41]" -type "float3"  -0.3252849 0.79602695 0.10569145 
		-0.2767038 0.79602695 0.20103708 -0.20103708 0.79602695 0.27670383 -0.10569146 0.79602695 
		0.3252849 4.1478907e-15 0.79602695 0.34202465 0.10569146 0.79602695 0.32528487 0.20103703 
		0.79602695 0.27670375 0.27670375 0.79602695 0.201037 0.32528475 0.79602695 0.10569142 
		0.34202465 0.79602695 -2.1083502e-16 0.32528475 0.79602695 -0.10569142 0.27670369 
		0.79602695 -0.20103697 0.20103697 0.79602695 -0.27670369 0.10569142 0.79602695 -0.32528463 
		1.019313e-08 0.79602695 -0.34202462 -0.10569139 0.79602695 -0.32528466 -0.20103699 
		0.79602695 -0.27670366 -0.2767036 0.79602695 -0.201037 -0.32528463 0.79602695 -0.1056914 
		-0.34202453 0.79602695 -2.1083502e-16 -0.3252849 -0.79602695 0.10569145 -0.2767038 
		-0.79602695 0.20103708 -0.20103708 -0.79602695 0.27670383 -0.10569146 -0.79602695 
		0.3252849 4.0490373e-15 -0.79602695 0.34202465 0.10569146 -0.79602695 0.32528487 
		0.20103703 -0.79602695 0.27670375 0.27670375 -0.79602695 0.201037 0.32528475 -0.79602695 
		0.10569142 0.34202465 -0.79602695 -2.3287535e-16 0.32528475 -0.79602695 -0.10569142 
		0.27670369 -0.79602695 -0.20103697 0.20103697 -0.79602695 -0.27670369 0.10569142 
		-0.79602695 -0.32528463 1.019313e-08 -0.79602695 -0.34202462 -0.10569139 -0.79602695 
		-0.32528466 -0.20103699 -0.79602695 -0.27670366 -0.2767036 -0.79602695 -0.201037 
		-0.32528463 -0.79602695 -0.1056914 -0.34202453 -0.79602695 -2.3287535e-16 4.1478907e-15 
		0.79602695 -2.1083502e-16 4.0490373e-15 -0.79602695 -2.3287535e-16;
	setAttr -s 42 ".vt[0:41]"  0.95105714 -1 -0.30901718 0.80901754 -1 -0.5877856
		 0.5877856 -1 -0.80901748 0.30901715 -1 -0.95105702 0 -1 -1.000000476837 -0.30901715 -1 -0.95105696
		 -0.58778548 -1 -0.8090173 -0.80901724 -1 -0.58778542 -0.95105678 -1 -0.30901706 -1.000000238419 -1 0
		 -0.95105678 -1 0.30901706 -0.80901718 -1 0.58778536 -0.58778536 -1 0.80901712 -0.30901706 -1 0.95105666
		 -2.9802322e-08 -1 1.000000119209 0.30901697 -1 0.9510566 0.58778524 -1 0.80901706
		 0.809017 -1 0.5877853 0.95105654 -1 0.309017 1 -1 0 0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-08 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder20";
	rename -uid "A88911F9-4958-873E-74F0-09A4A399EE84";
	setAttr ".t" -type "double3" 2.8934277459349476 0.552178525960481 -0.9950141595915043 ;
	setAttr ".s" -type "double3" 0.59204421358394677 0.59204421358394677 0.59204421358394677 ;
createNode mesh -n "pCylinderShape20" -p "pCylinder20";
	rename -uid "D436E404-403D-C15B-09C6-9AB211569F8B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49460795521736145 0.6913236677646637 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 47 ".pt";
	setAttr ".pt[0]" -type "float3" -0.026514083 0.050761405 0.0078894105 ;
	setAttr ".pt[1]" -type "float3" -0.020767611 0.048426811 -0.13804384 ;
	setAttr ".pt[2]" -type "float3" 0.080257066 0.047023289 -0.049413644 ;
	setAttr ".pt[3]" -type "float3" 0.083340198 0.047968894 -0.11114283 ;
	setAttr ".pt[4]" -type "float3" 0.094424263 0.049014658 -0.31292701 ;
	setAttr ".pt[5]" -type "float3" -0.021374783 0.049747474 -0.37486622 ;
	setAttr ".pt[6]" -type "float3" -0.13963692 0.051126841 -0.18145104 ;
	setAttr ".pt[7]" -type "float3" -0.13441895 0.052661464 -0.18588634 ;
	setAttr ".pt[8]" -type "float3" -0.124007 0.053750072 -0.23707879 ;
	setAttr ".pt[9]" -type "float3" -0.12989575 0.053935979 -0.19779104 ;
	setAttr ".pt[10]" -type "float3" -0.09931197 0.053096518 -0.010021251 ;
	setAttr ".pt[11]" -type "float3" -0.10267275 0.051483624 -0.015770307 ;
	setAttr ".pt[12]" -type "float3" -0.10788985 0.049618199 -0.020360505 ;
	setAttr ".pt[13]" -type "float3" -0.1144323 0.04808256 -0.023321072 ;
	setAttr ".pt[14]" -type "float3" 0.004429495 0.0473064 -0.020823114 ;
	setAttr ".pt[15]" -type "float3" -0.0079402225 0.054186318 -0.021988407 ;
	setAttr ".pt[16]" -type "float3" -0.016083349 0.058616448 -0.0184169 ;
	setAttr ".pt[17]" -type "float3" -0.022477062 0.06347423 -0.012999163 ;
	setAttr ".pt[18]" -type "float3" -0.026536755 0.060581829 -0.0063593606 ;
	setAttr ".pt[19]" -type "float3" -0.027919831 0.055032868 0.00083730719 ;
	setAttr ".pt[20]" -type "float3" -0.22062546 0.032650758 -0.088345267 ;
	setAttr ".pt[21]" -type "float3" -0.22197767 0.098071903 -0.14924222 ;
	setAttr ".pt[25]" -type "float3" -0.096880428 0.096124992 -0.08577764 ;
	setAttr ".pt[26]" -type "float3" -0.096880428 0.096124992 -0.08577764 ;
	setAttr ".pt[27]" -type "float3" -0.096880428 0.096124992 -0.08577764 ;
	setAttr ".pt[34]" -type "float3" -0.0012673903 0 -0.19977072 ;
	setAttr ".pt[35]" -type "float3" 0.036479335 2.220446e-16 0.038224429 ;
	setAttr ".pt[37]" -type "float3" -0.00036262721 0 -0.2428931 ;
	setAttr ".pt[38]" -type "float3" 0.017375398 2.220446e-16 0.0029885687 ;
	setAttr ".pt[40]" -type "float3" -0.03174343 0 -0.19409744 ;
	setAttr ".pt[41]" -type "float3" 0.0060032816 2.220446e-16 0.043897688 ;
	setAttr ".pt[43]" -type "float3" -0.03174343 0 -0.19409744 ;
	setAttr ".pt[44]" -type "float3" 0.0060032816 2.220446e-16 0.043897688 ;
	setAttr ".pt[45]" -type "float3" -0.03174343 0 -0.19409744 ;
	setAttr ".pt[46]" -type "float3" -0.03174343 0 -0.19409744 ;
	setAttr ".pt[47]" -type "float3" 0.0060032816 2.220446e-16 0.043897688 ;
	setAttr ".pt[48]" -type "float3" -0.03174343 0 -0.19409744 ;
	setAttr ".pt[49]" -type "float3" -0.03174343 0 -0.19409744 ;
	setAttr ".pt[50]" -type "float3" 0.2639176 0.028805038 0.19640264 ;
	setAttr ".pt[53]" -type "float3" 0.12231879 0 -0.041592412 ;
	setAttr ".pt[54]" -type "float3" 0.10385204 0.028805038 0 ;
	setAttr ".pt[56]" -type "float3" 0.10385204 0.028805038 0 ;
	setAttr ".pt[57]" -type "float3" 0.10385204 0.028805038 0 ;
	setAttr ".pt[59]" -type "float3" 0.10385204 0.028805038 0 ;
	setAttr ".pt[60]" -type "float3" 0.10385204 0.028805038 0 ;
	setAttr ".pt[62]" -type "float3" 0 0 -0.10309662 ;
	setAttr ".pt[65]" -type "float3" 0 0 -0.16739479 ;
createNode transform -n "pCylinder21";
	rename -uid "E0386BCA-47A7-D524-A485-739EDAE7B098";
	setAttr ".t" -type "double3" 3.0945001950397759 0.55217852596047923 -2.0058603916660296 ;
	setAttr ".r" -type "double3" 0 36.140650573901667 0 ;
	setAttr ".s" -type "double3" 0.25458769064848841 0.25458769064848841 0.25458769064848841 ;
createNode mesh -n "pCylinderShape21" -p "pCylinder21";
	rename -uid "C1E931AE-45A0-B55E-CCB0-E5B37A14FFE8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:20]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[21]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 21 "f[20:39]" "f[60]" "f[63]" "f[65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77]" "f[79]" "f[81]" "f[83]" "f[85]" "f[87]" "f[89]" "f[91]" "f[93]" "f[95]" "f[97]" "f[99]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 20 "f[40:59]" "f[61:62]" "f[64]" "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[80]" "f[82]" "f[84]" "f[86]" "f[88]" "f[90]" "f[92]" "f[94]" "f[96]" "f[98]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.49460795521736145 0.6913236677646637 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 125 ".uvst[0].uvsp[0:124]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.5 0.15625 0.375 0.3125 0.38749999
		 0.3125 0.375 0.53122675 0.39999998 0.3125 0.38749999 0.50680512 0.41249996 0.3125
		 0.39999998 0.50411224 0.42499995 0.3125 0.41249996 0.4585942 0.43749994 0.3125 0.42460731
		 0.47499973 0.44999993 0.3125 0.43749994 0.47335893 0.46249992 0.3125 0.44999993 0.47415093
		 0.4749999 0.3125 0.46249992 0.47435057 0.48749989 0.3125 0.4749999 0.47421885 0.49999988
		 0.3125 0.48749989 0.47340563 0.51249987 0.3125 0.49999988 0.47206303 0.52499986 0.3125
		 0.51249987 0.47050047 0.53749985 0.3125 0.52499986 0.46901679 0.54999983 0.3125 0.53749985
		 0.46774563 0.56249982 0.3125 0.54999983 0.46702451 0.57499981 0.3125 0.56249982 0.49378595
		 0.5874998 0.3125 0.57499987 0.51600325 0.59999979 0.3125 0.5874998 0.55235142 0.61249977
		 0.3125 0.59999979 0.5447669 0.62499976 0.3125 0.61249977 0.53709531 0.58281833 0.90392101
		 0.56004965 0.92640126 0.53001064 0.93611324 0.50366247 0.93328243 0.46554363 0.92846209
		 0.43774414 0.91443533 0.4172681 0.89394355 0.4054563 0.87072521 0.40179276 0.84687275
		 0.40586582 0.82274944 0.41823131 0.79926515 0.43898696 0.77915317 0.46644697 0.76575667
		 0.49981132 0.76101357 0.52001661 0.76208949 0.55308485 0.77068496 0.56912249 0.79352963
		 0.5890969 0.81480068 0.60155916 0.84375 0.59636879 0.87506211 0.5 0.84375 0.62499976
		 0.53122687 0.375 0.6875 0.6486026 0.89203393 0.62499976 0.6875 0.38749999 0.6875
		 0.62640893 0.93559146 0.39999998 0.6875 0.59184146 0.97015893 0.41249996 0.6875 0.54828387
		 0.9923526 0.42499995 0.6875 0.5 1 0.43749994 0.6875 0.4517161 0.9923526 0.44999993
		 0.6875 0.40815854 0.97015893 0.46249992 0.6875 0.37359107 0.93559146 0.4749999 0.6875
		 0.3513974 0.89203393 0.48749989 0.6875 0.34374997 0.84375 0.49999988 0.6875 0.3513974
		 0.79546607 0.51249987 0.6875 0.37359107 0.75190854 0.52499986 0.6875 0.40815851 0.71734107
		 0.53749985 0.6875 0.45171607 0.69514734 0.54999983 0.6875 0.5 0.68749994 0.56249982
		 0.6875 0.54828393 0.69514734 0.57499981 0.6875 0.59184152 0.71734101 0.5874998 0.6875
		 0.62640899 0.75190848 0.59999979 0.6875 0.64860266 0.79546607 0.65625 0.84375 0.61249977
		 0.6875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".pt[0:81]" -type "float3"  0.41739717 0.050761405 -0.0081990482 
		0.37530518 0.048426811 -0.082100995 0.42716122 0.047023289 0.027417423 0.33236089 
		0.047968894 -0.00090152514 0.19654761 0.049014658 -0.18278272 -0.039364353 0.049747474 
		-0.24127349 -0.27032194 0.051126841 -0.10264585 -0.32701033 0.052661464 -0.13955919 
		-0.35450572 0.053750072 -0.22403397 -0.37615111 0.053935979 -0.23863669 -0.32288957 
		0.053096518 -0.13086461 -0.28637633 0.051483624 -0.17871106 -0.22969607 0.049618199 
		-0.21691352 -0.15861778 0.04808256 -0.24155304 0.081216276 0.0473064 -0.24716097 
		0.21560436 0.054186318 -0.2568588 0.30407318 0.058616448 -0.22713506 0.37353635 0.06347423 
		-0.18204559 0.4176428 0.060581829 -0.12678541 0.43266824 0.055032868 -0.066890642 
		-0.15432256 0.032650758 -0.15460894 -0.19278583 0.098071903 -0.21006879 0.40802768 
		7.5495166e-15 0.020843927 0.35578513 7.5495166e-15 0.024126967 0.27671379 7.5495166e-15 
		-0.00048345973 0.2658214 0.096124992 -0.044826861 0.22916469 0.096124992 -0.059476074 
		0.15563558 0.096124992 -0.087330498 0.31259388 7.5495166e-15 0.062381029 0.28350082 
		7.5495166e-15 0.043951333 0.22872594 7.5495166e-15 0.0070921634 0.22773156 7.5495166e-15 
		0.089560725 0.21468152 7.5495166e-15 0.068770044 0.17827393 7.5495166e-15 0.021482119 
		0.081196889 7.5495166e-15 -0.09027838 0.13308688 7.7715612e-15 0.085493572 0.097057387 
		7.5495166e-15 0.0061908648 -0.0098807076 7.5495166e-15 -0.13356505 0.023705179 7.7715612e-15 
		0.049477164 0.023106448 7.5495166e-15 0.00018652815 -0.1295419 7.5495166e-15 -0.11447825 
		-0.062093414 7.7715612e-15 0.064380586 -0.027860768 7.5495166e-15 -0.013078266 -0.19292432 
		7.5495166e-15 -0.14772096 -0.11806552 7.7715612e-15 0.035100132 -0.10624451 7.5495166e-15 
		-0.19310747 -0.23376906 7.5495166e-15 -0.1898744 -0.15339407 7.7715612e-15 -0.0013440941 
		-0.12804572 7.5495166e-15 -0.21553707 -0.24788624 7.5495166e-15 -0.23694019 0.16505778 
		0.028805038 0.084538423 -0.094135411 7.5495166e-15 -0.078360036 -0.19315416 7.5495166e-15 
		-0.12392546 -0.0040653525 7.5495166e-15 -0.15272148 0.046465855 0.028805038 -0.10209986 
		-0.15234773 7.5495166e-15 -0.16700833 0.0079731951 0.028805038 -0.15566128 0.069391944 
		0.028805038 -0.12545316 -0.088992774 7.5495166e-15 -0.20140649 0.064101651 0.028805038 
		-0.18588448 0.10773213 0.028805038 -0.14566456 -0.0095410617 7.5495166e-15 -0.22358939 
		0.002075542 7.5495166e-15 -0.29073986 0.025136163 7.5495166e-15 -0.15928718 0.078025371 
		7.5495166e-15 -0.23125443 0.081808373 7.5495166e-15 -0.35072175 0.085929044 7.5495166e-15 
		-0.16423224 0.19449608 7.5495166e-15 -0.23448975 0.15866776 7.5495166e-15 -0.21296167 
		0.11909819 7.5495166e-15 -0.16490801 0.28097764 7.5495166e-15 -0.1985247 0.23668683 
		7.5495166e-15 -0.17880832 0.17976245 7.5495166e-15 -0.14481845 0.35494742 7.5495166e-15 
		-0.13222243 0.30465272 7.5495166e-15 -0.11353406 0.2209892 7.5495166e-15 -0.099556379 
		0.40563041 7.5495166e-15 -0.083748519 0.35183138 7.5495166e-15 -0.070515029 0.26291823 
		7.5495166e-15 -0.071014367 0.42392227 7.5495166e-15 -0.031046037 0.37122053 7.5495166e-15 
		-0.022379283 0.28821671 7.5495166e-15 -0.034626298;
	setAttr -s 82 ".vt[0:81]"  1.60625601 -0.15252209 0.084875345 1.43026733 -0.15018654 -0.1845181
		 1.15426683 -0.14878392 -0.39358807 0.80284691 -0.14972955 -0.52449965 0.26900101 -0.15077531 -0.43747449
		 -0.042644501 -0.15150815 -0.39541864 -0.32543039 -0.15288752 -0.27293324 -0.55095387 -0.15442216 -0.081232309
		 -0.69626617 -0.15551078 0.16186333 -0.74645042 -0.15569669 0.43330383 -0.69633102 -0.15485722 0.70679426
		 -0.55107117 -0.15324432 0.95527363 -0.3255806 -0.15137887 1.1536696 -0.042809963 -0.14984322 1.2816292
		 0.26883078 -0.14906704 1.32586896 0.80346584 -0.15594703 1.37623203 1.15542078 -0.1603772 1.22186923
		 1.43176556 -0.16523504 0.98770738 1.60723352 -0.16234261 0.70072627 1.66700935 -0.15679359 0.38967657
		 0.45657682 -0.13441032 0.47041631 0.32586241 0.53833306 0.49996328 1.45204353 0.42123458 -0.12018442
		 1.26612854 0.67387664 -0.13911414 0.98473835 0.72823411 0.00278759 1.38762331 0.26048726 -0.15034127
		 1.25717354 0.52112895 -0.065875053 0.99550629 0.60651082 0.094731331 1.11242437 0.25622252 -0.35968399
		 1.0088911057 0.52053154 -0.25341988 0.81396437 0.60732114 -0.040892839 0.81042576 0.11776962 -0.51639986
		 0.76398468 0.41469622 -0.39652252 0.63442135 0.53744054 -0.12386417 0.29473209 0.14410883 -0.43155336
		 0.30731678 0.41898805 -0.31077456 0.345397 0.533876 -0.03569603 -0.033509254 0.13757847 -0.3874836
		 0.0051503181 0.41270757 -0.27103806 0.082228661 0.52876526 -0.0010755062 -0.31629086 0.13767311 -0.26498055
		 -0.24833822 0.41198242 -0.16200042 -0.099147797 0.52760023 0.07540822 -0.54184914 0.1365179 -0.073305607
		 -0.4475255 0.41075271 0.0068283081 -0.2333827 0.52647769 0.1883893 -0.68720293 0.13517815 0.16974759
		 -0.57324886 0.40966114 0.21696281 -0.31096649 0.52579981 0.3177166 -0.73744154 0.13348056 0.44112515
		 -0.61572886 0.40884638 0.44859743 -0.33499861 0.52566504 0.45181775 -0.68737555 0.13182595 0.7145443
		 -0.57208061 0.40849739 0.68235373 -0.30807161 0.52608711 0.58869958 -0.54215813 0.13052674 0.96295667
		 -0.44505501 0.40867186 0.89753032 -0.22648478 0.52709514 0.72335291 -0.3166976 0.12961282 1.16129398
		 -0.24531126 0.40916425 1.071794748 -0.090044022 0.52847195 0.83989024 -0.033953667 0.12875572 1.28919864
		 0.0073862076 0.40955177 1.18503237 0.08945179 0.52977568 0.91843724 0.277668 0.12814513 1.33339465
		 0.29113054 0.40964171 1.22444332 0.30579472 0.53056479 0.94694996 0.69215107 0.16918932 1.35204923
		 0.56464911 0.42196217 1.22791994 0.42383337 0.52744788 0.9508462 0.99991179 0.20460275 1.1446774
		 0.84229469 0.43186677 1.030994415 0.63971853 0.52321619 0.83501148 1.26314735 0.46103922 0.76238394
		 1.084164143 0.67398405 0.65462828 0.78643179 0.68903112 0.57403398 1.44351244 0.44654846 0.48288727
		 1.25205851 0.67637682 0.40658402 0.93564415 0.70764542 0.40946317 1.50860739 0.4321669 0.17900896
		 1.32105827 0.67755038 0.12903714 1.025673389 0.72568482 0.19965243;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 20 10 1 20 11 1
		 20 12 1 20 13 1 20 14 1 20 15 1 20 16 1 20 17 1 20 18 1 20 19 1 80 79 1 79 22 1 24 81 1
		 81 80 1 24 23 0 27 24 1 23 22 0 22 25 0 27 26 0 30 27 1 26 25 0 25 28 1 30 29 1 33 30 1
		 29 28 1 28 31 1 33 32 1 36 33 1 32 31 1 31 34 1 36 35 1 39 36 1 35 34 1 34 37 1 39 38 1
		 42 39 1 38 37 1 37 40 1 42 41 1 45 42 1 41 40 1 40 43 1 45 44 1 48 45 1 44 43 1 43 46 1
		 48 47 1 51 48 1 47 46 1 46 49 1 51 50 1 54 51 1 50 49 1 49 52 1 54 53 1 57 54 1 53 52 1
		 52 55 1 57 56 1 60 57 1 56 55 1 55 58 1 60 59 1 63 60 1 59 58 1 58 61 1 63 62 1 66 63 1
		 62 61 1 61 64 1 66 65 1 69 66 1 65 64 1 64 67 1 69 68 1 72 69 1 68 67 0 67 70 1 72 71 1
		 75 72 1 71 70 1 70 73 1 75 74 1 78 75 1 74 73 1 73 76 1 78 77 1 81 78 1 77 76 1 76 79 1
		 1 25 1 22 0 1 2 28 1 3 31 0 4 34 1 5 37 1 6 40 1 7 43 1 8 46 1 9 49 1 10 52 1 11 55 1
		 12 58 1 13 61 1 14 64 1 15 67 0 16 70 1 17 73 1 18 76 1 19 79 1 27 21 0 21 24 0 30 21 1
		 33 21 1 36 21 1 39 21 1 42 21 1 45 21 1 48 21 1 51 21 1 54 21 1 57 21 1 60 21 1 63 21 1
		 66 21 1 69 21 1 72 21 0 75 21 0 78 21 1 81 21 1 23 80 0 23 26 1 26 29 0 29 32 0 32 35 0
		 35 38 0;
	setAttr ".ed[166:179]" 38 41 0 41 44 0 44 47 0 47 50 0 50 53 0 53 56 0 56 59 0
		 59 62 0 62 65 0 65 68 0 68 71 0 71 74 0 74 77 0 77 80 0;
	setAttr -s 100 -ch 360 ".fc[0:99]" -type "polyFaces" 
		f 3 -1 -21 21
		mu 0 3 1 0 20
		f 3 -2 -22 22
		mu 0 3 2 1 20
		f 3 -3 -23 23
		mu 0 3 3 2 20
		f 3 -4 -24 24
		mu 0 3 4 3 20
		f 3 -5 -25 25
		mu 0 3 5 4 20
		f 3 -6 -26 26
		mu 0 3 6 5 20
		f 3 -7 -27 27
		mu 0 3 7 6 20
		f 3 -8 -28 28
		mu 0 3 8 7 20
		f 3 -9 -29 29
		mu 0 3 9 8 20
		f 3 -10 -30 30
		mu 0 3 10 9 20
		f 3 -11 -31 31
		mu 0 3 11 10 20
		f 3 -12 -32 32
		mu 0 3 12 11 20
		f 3 -13 -33 33
		mu 0 3 13 12 20
		f 3 -14 -34 34
		mu 0 3 14 13 20
		f 3 -15 -35 35
		mu 0 3 15 14 20
		f 3 -16 -36 36
		mu 0 3 16 15 20
		f 3 -17 -37 37
		mu 0 3 17 16 20
		f 3 -18 -38 38
		mu 0 3 18 17 20
		f 3 -19 -39 39
		mu 0 3 19 18 20
		f 3 -20 -40 20
		mu 0 3 0 19 20
		f 4 0 120 -48 121
		mu 0 4 21 22 25 23
		f 4 1 122 -52 -121
		mu 0 4 22 24 27 25
		f 4 2 123 -56 -123
		mu 0 4 24 26 29 27
		f 4 3 124 -60 -124
		mu 0 4 26 28 31 29
		f 4 4 125 -64 -125
		mu 0 4 28 30 33 31
		f 4 5 126 -68 -126
		mu 0 4 30 32 35 33
		f 4 6 127 -72 -127
		mu 0 4 32 34 37 35
		f 4 7 128 -76 -128
		mu 0 4 34 36 39 37
		f 4 8 129 -80 -129
		mu 0 4 36 38 41 39
		f 4 9 130 -84 -130
		mu 0 4 38 40 43 41
		f 4 10 131 -88 -131
		mu 0 4 40 42 45 43
		f 4 11 132 -92 -132
		mu 0 4 42 44 47 45
		f 4 12 133 -96 -133
		mu 0 4 44 46 49 47
		f 4 13 134 -100 -134
		mu 0 4 46 48 51 49
		f 4 14 135 -104 -135
		mu 0 4 48 50 53 51
		f 4 15 136 -108 -136
		mu 0 4 50 52 55 53
		f 4 16 137 -112 -137
		mu 0 4 52 54 57 55
		f 4 17 138 -116 -138
		mu 0 4 54 56 59 57
		f 4 18 139 -120 -139
		mu 0 4 56 58 61 59
		f 4 19 -122 -42 -140
		mu 0 4 58 60 83 61
		f 3 -46 140 141
		mu 0 3 81 62 82
		f 3 -50 142 -141
		mu 0 3 62 63 82
		f 3 -54 143 -143
		mu 0 3 63 64 82
		f 3 -58 144 -144
		mu 0 3 64 65 82
		f 3 -62 145 -145
		mu 0 3 65 66 82
		f 3 -66 146 -146
		mu 0 3 66 67 82
		f 3 -70 147 -147
		mu 0 3 67 68 82
		f 3 -74 148 -148
		mu 0 3 68 69 82
		f 3 -78 149 -149
		mu 0 3 69 70 82
		f 3 -82 150 -150
		mu 0 3 70 71 82
		f 3 -86 151 -151
		mu 0 3 71 72 82
		f 3 -90 152 -152
		mu 0 3 72 73 82
		f 3 -94 153 -153
		mu 0 3 73 74 82
		f 3 -98 154 -154
		mu 0 3 74 75 82
		f 3 -102 155 -155
		mu 0 3 75 76 82
		f 3 -106 156 -156
		mu 0 3 76 77 82
		f 3 -110 157 -157
		mu 0 3 77 78 82
		f 3 -114 158 -158
		mu 0 3 78 79 82
		f 3 -118 159 -159
		mu 0 3 79 80 82
		f 3 -43 -142 -160
		mu 0 3 80 81 82
		f 4 -47 160 40 41
		mu 0 4 83 86 124 61
		f 4 -45 42 43 -161
		mu 0 4 85 81 80 123
		f 4 44 161 -49 45
		mu 0 4 81 85 88 62
		f 4 46 47 -51 -162
		mu 0 4 84 23 25 87
		f 4 48 162 -53 49
		mu 0 4 62 88 90 63
		f 4 50 51 -55 -163
		mu 0 4 87 25 27 89
		f 4 52 163 -57 53
		mu 0 4 63 90 92 64
		f 4 54 55 -59 -164
		mu 0 4 89 27 29 91
		f 4 56 164 -61 57
		mu 0 4 64 92 94 65
		f 4 58 59 -63 -165
		mu 0 4 91 29 31 93
		f 4 60 165 -65 61
		mu 0 4 65 94 96 66
		f 4 62 63 -67 -166
		mu 0 4 93 31 33 95
		f 4 64 166 -69 65
		mu 0 4 66 96 98 67
		f 4 66 67 -71 -167
		mu 0 4 95 33 35 97
		f 4 68 167 -73 69
		mu 0 4 67 98 100 68
		f 4 70 71 -75 -168
		mu 0 4 97 35 37 99
		f 4 72 168 -77 73
		mu 0 4 68 100 102 69
		f 4 74 75 -79 -169
		mu 0 4 99 37 39 101
		f 4 76 169 -81 77
		mu 0 4 69 102 104 70
		f 4 78 79 -83 -170
		mu 0 4 101 39 41 103
		f 4 80 170 -85 81
		mu 0 4 70 104 106 71
		f 4 82 83 -87 -171
		mu 0 4 103 41 43 105
		f 4 84 171 -89 85
		mu 0 4 71 106 108 72
		f 4 86 87 -91 -172
		mu 0 4 105 43 45 107
		f 4 88 172 -93 89
		mu 0 4 72 108 110 73
		f 4 90 91 -95 -173
		mu 0 4 107 45 47 109
		f 4 92 173 -97 93
		mu 0 4 73 110 112 74
		f 4 94 95 -99 -174
		mu 0 4 109 47 49 111
		f 4 96 174 -101 97
		mu 0 4 74 112 114 75
		f 4 98 99 -103 -175
		mu 0 4 111 49 51 113
		f 4 100 175 -105 101
		mu 0 4 75 114 116 76
		f 4 102 103 -107 -176
		mu 0 4 113 51 53 115
		f 4 104 176 -109 105
		mu 0 4 76 116 118 77
		f 4 106 107 -111 -177
		mu 0 4 115 53 55 117
		f 4 108 177 -113 109
		mu 0 4 77 118 120 78
		f 4 110 111 -115 -178
		mu 0 4 117 55 57 119
		f 4 112 178 -117 113
		mu 0 4 78 120 122 79
		f 4 114 115 -119 -179
		mu 0 4 119 57 59 121
		f 4 116 179 -44 117
		mu 0 4 79 122 123 80
		f 4 118 119 -41 -180
		mu 0 4 121 59 61 124;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder22";
	rename -uid "3772E359-4BF0-EA38-142E-1EA2FCABE74E";
	setAttr ".t" -type "double3" 1.8866561165066691 0.53187864242995953 -3.9242481474280555 ;
	setAttr ".r" -type "double3" 0 36.140650573901667 0 ;
	setAttr ".s" -type "double3" 0.40837782505738152 0.40837782505738152 0.40837782505738152 ;
createNode mesh -n "pCylinderShape22" -p "pCylinder22";
	rename -uid "4F2DF87A-4340-51AA-8114-2CB9568E35FA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:20]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[21]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 21 "f[20:39]" "f[60]" "f[63]" "f[65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77]" "f[79]" "f[81]" "f[83]" "f[85]" "f[87]" "f[89]" "f[91]" "f[93]" "f[95]" "f[97]" "f[99]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 20 "f[40:59]" "f[61:62]" "f[64]" "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[80]" "f[82]" "f[84]" "f[86]" "f[88]" "f[90]" "f[92]" "f[94]" "f[96]" "f[98]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.49460795521736145 0.6913236677646637 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 125 ".uvst[0].uvsp[0:124]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.5 0.15625 0.375 0.3125 0.38749999
		 0.3125 0.375 0.53122675 0.39999998 0.3125 0.38749999 0.50680512 0.41249996 0.3125
		 0.39999998 0.50411224 0.42499995 0.3125 0.41249996 0.4585942 0.43749994 0.3125 0.42460731
		 0.47499973 0.44999993 0.3125 0.43749994 0.47335893 0.46249992 0.3125 0.44999993 0.47415093
		 0.4749999 0.3125 0.46249992 0.47435057 0.48749989 0.3125 0.4749999 0.47421885 0.49999988
		 0.3125 0.48749989 0.47340563 0.51249987 0.3125 0.49999988 0.47206303 0.52499986 0.3125
		 0.51249987 0.47050047 0.53749985 0.3125 0.52499986 0.46901679 0.54999983 0.3125 0.53749985
		 0.46774563 0.56249982 0.3125 0.54999983 0.46702451 0.57499981 0.3125 0.56249982 0.49378595
		 0.5874998 0.3125 0.57499987 0.51600325 0.59999979 0.3125 0.5874998 0.55235142 0.61249977
		 0.3125 0.59999979 0.5447669 0.62499976 0.3125 0.61249977 0.53709531 0.58281833 0.90392101
		 0.56004965 0.92640126 0.53001064 0.93611324 0.50366247 0.93328243 0.46554363 0.92846209
		 0.43774414 0.91443533 0.4172681 0.89394355 0.4054563 0.87072521 0.40179276 0.84687275
		 0.40586582 0.82274944 0.41823131 0.79926515 0.43898696 0.77915317 0.46644697 0.76575667
		 0.49981132 0.76101357 0.52001661 0.76208949 0.55308485 0.77068496 0.56912249 0.79352963
		 0.5890969 0.81480068 0.60155916 0.84375 0.59636879 0.87506211 0.5 0.84375 0.62499976
		 0.53122687 0.375 0.6875 0.6486026 0.89203393 0.62499976 0.6875 0.38749999 0.6875
		 0.62640893 0.93559146 0.39999998 0.6875 0.59184146 0.97015893 0.41249996 0.6875 0.54828387
		 0.9923526 0.42499995 0.6875 0.5 1 0.43749994 0.6875 0.4517161 0.9923526 0.44999993
		 0.6875 0.40815854 0.97015893 0.46249992 0.6875 0.37359107 0.93559146 0.4749999 0.6875
		 0.3513974 0.89203393 0.48749989 0.6875 0.34374997 0.84375 0.49999988 0.6875 0.3513974
		 0.79546607 0.51249987 0.6875 0.37359107 0.75190854 0.52499986 0.6875 0.40815851 0.71734107
		 0.53749985 0.6875 0.45171607 0.69514734 0.54999983 0.6875 0.5 0.68749994 0.56249982
		 0.6875 0.54828393 0.69514734 0.57499981 0.6875 0.59184152 0.71734101 0.5874998 0.6875
		 0.62640899 0.75190848 0.59999979 0.6875 0.64860266 0.79546607 0.65625 0.84375 0.61249977
		 0.6875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".pt[0:81]" -type "float3"  1.0410734 0.050761405 -0.12054498 
		0.95487511 0.048426811 -0.30123395 0.9439311 0.047023289 -0.21158618 0.72142375 0.047968894 
		-0.26563933 0.38401747 0.049014658 -0.43500099 -0.020945283 0.049747474 -0.46156308 
		-0.42958468 0.051126841 -0.19484429 -0.58466041 0.052661464 -0.15736562 -0.6768049 
		0.053750072 -0.17363277 -0.73848784 0.053935979 -0.092137024 -0.67938733 0.053096518 
		0.14380561 -0.60021394 0.051483624 0.15462293 -0.46688074 0.049618199 0.15380971 
		-0.29294911 0.04808256 0.14143349 0.11562265 0.0473064 0.11150365 0.45514297 0.054186318 
		0.070099384 0.68909389 0.058616448 0.02521923 0.87907517 0.06347423 -0.020635933 
		1.0074069 0.060581829 -0.062749729 1.0630012 0.055032868 -0.097141661 -0.082158975 
		0.032650758 -0.063381523 -0.17141664 0.098071903 -0.11637019 0.99300045 4.9960036e-15 
		-0.14268471 0.86781609 4.6629367e-15 -0.12853026 0.66862226 7.5495166e-15 -0.086658768 
		0.7931819 0.096124992 -0.2281127 0.69977283 0.096124992 -0.20646161 0.51290739 0.096124992 
		-0.16408981 0.77600116 4.9960036e-15 -0.14139684 0.69962996 7.5495166e-15 -0.1195102 
		0.55513144 7.5495166e-15 -0.076809399 0.57983333 5.9119376e-15 -0.13350718 0.54145986 
		4.9960036e-15 -0.11503197 0.43792519 7.5495166e-15 -0.070896097 0.23402493 7.1609385e-15 
		-0.30138767 0.28550303 7.7715612e-15 -0.024824083 0.23660974 7.5495166e-15 -0.034792524 
		0.012566281 7.5495166e-15 -0.31547916 0.047953062 7.7715612e-15 -0.031138875 0.055906579 
		7.5495166e-15 -0.0073931292 -0.24194112 8.7985175e-15 -0.21839228 -0.15184546 7.7715612e-15 
		0.051146083 -0.07163427 7.5495166e-15 0.017799819 -0.40605405 8.826273e-15 -0.17548554 
		-0.29674619 7.7715612e-15 0.08898402 -0.21147737 7.5495166e-15 -0.1713603 -0.51862508 
		8.826273e-15 -0.1335043 -0.39410889 8.5487173e-15 0.12528442 -0.27154008 7.5495166e-15 
		-0.14900084 -0.5682134 8.826273e-15 -0.096529618 -0.011780063 0.028805038 0.30481362 
		-0.25326759 7.5495166e-15 0.083764397 -0.50755888 8.826273e-15 0.14639312 -0.21965998 
		7.5495166e-15 0.074963473 -0.068400033 0.028805038 0.088622503 -0.42309517 8.826273e-15 
		0.16334756 -0.17903581 0.028805038 0.1377506 -0.020666249 0.028805038 0.097559154 
		-0.28128028 7.9936058e-15 0.16720968 -0.053314101 0.028805038 0.1409983 0.065354116 
		0.028805038 0.09947785 -0.096546687 7.5495166e-15 0.15756662 -0.056656413 7.5495166e-15 
		0.025968453 0.0083978847 7.5495166e-15 0.10221274 0.11257069 6.9666495e-15 0.13533643 
		0.13746607 7.5495166e-15 -0.066379867 0.15370096 7.5495166e-15 0.086519264 0.39300191 
		6.2727601e-15 0.10095699 0.31348506 6.4392935e-15 0.097338289 0.23364449 7.5495166e-15 
		0.076558635 0.61383694 5.3013149e-15 0.048906453 0.51327223 4.9960036e-15 0.049200587 
		0.38686487 7.5495166e-15 0.043599226 0.81440389 4.9960036e-15 -0.020182827 0.69899052 
		7.327472e-15 -0.017290466 0.50138074 7.5495166e-15 -0.00065120053 0.95283026 4.9960036e-15 
		-0.069626458 0.8271544 4.5519144e-15 -0.061861459 0.61209881 7.5495166e-15 -0.033563826 
		1.014361 4.9960036e-15 -0.11181013 0.88983625 3.9968029e-15 -0.10123314 0.68520153 
		7.5495166e-15 -0.066672154;
	setAttr -s 82 ".vt[0:81]"  1.60625601 -0.15252209 0.084875345 1.43026733 -0.15018654 -0.1845181
		 1.15426683 -0.14878392 -0.39358807 0.80284691 -0.14972955 -0.52449965 0.26900101 -0.15077531 -0.43747449
		 -0.042644501 -0.15150815 -0.39541864 -0.32543039 -0.15288752 -0.27293324 -0.55095387 -0.15442216 -0.081232309
		 -0.69626617 -0.15551078 0.16186333 -0.74645042 -0.15569669 0.43330383 -0.69633102 -0.15485722 0.70679426
		 -0.55107117 -0.15324432 0.95527363 -0.3255806 -0.15137887 1.1536696 -0.042809963 -0.14984322 1.2816292
		 0.26883078 -0.14906704 1.32586896 0.80346584 -0.15594703 1.37623203 1.15542078 -0.1603772 1.22186923
		 1.43176556 -0.16523504 0.98770738 1.60723352 -0.16234261 0.70072627 1.66700935 -0.15679359 0.38967657
		 0.45657682 -0.13441032 0.47041631 0.32586241 0.53833306 0.49996328 1.45204353 0.42123458 -0.12018442
		 1.26612854 0.67387664 -0.13911414 0.98473835 0.72823411 0.00278759 1.38762331 0.26048726 -0.15034127
		 1.25717354 0.52112895 -0.065875053 0.99550629 0.60651082 0.094731331 1.11242437 0.25622252 -0.35968399
		 1.0088911057 0.52053154 -0.25341988 0.81396437 0.60732114 -0.040892839 0.81042576 0.11776962 -0.51639986
		 0.76398468 0.41469622 -0.39652252 0.63442135 0.53744054 -0.12386417 0.29473209 0.14410883 -0.43155336
		 0.30731678 0.41898805 -0.31077456 0.345397 0.533876 -0.03569603 -0.033509254 0.13757847 -0.3874836
		 0.0051503181 0.41270757 -0.27103806 0.082228661 0.52876526 -0.0010755062 -0.31629086 0.13767311 -0.26498055
		 -0.24833822 0.41198242 -0.16200042 -0.099147797 0.52760023 0.07540822 -0.54184914 0.1365179 -0.073305607
		 -0.4475255 0.41075271 0.0068283081 -0.2333827 0.52647769 0.1883893 -0.68720293 0.13517815 0.16974759
		 -0.57324886 0.40966114 0.21696281 -0.31096649 0.52579981 0.3177166 -0.73744154 0.13348056 0.44112515
		 -0.61572886 0.40884638 0.44859743 -0.33499861 0.52566504 0.45181775 -0.68737555 0.13182595 0.7145443
		 -0.57208061 0.40849739 0.68235373 -0.30807161 0.52608711 0.58869958 -0.54215813 0.13052674 0.96295667
		 -0.44505501 0.40867186 0.89753032 -0.22648478 0.52709514 0.72335291 -0.3166976 0.12961282 1.16129398
		 -0.24531126 0.40916425 1.071794748 -0.090044022 0.52847195 0.83989024 -0.033953667 0.12875572 1.28919864
		 0.0073862076 0.40955177 1.18503237 0.08945179 0.52977568 0.91843724 0.277668 0.12814513 1.33339465
		 0.29113054 0.40964171 1.22444332 0.30579472 0.53056479 0.94694996 0.69215107 0.16918932 1.35204923
		 0.56464911 0.42196217 1.22791994 0.42383337 0.52744788 0.9508462 0.99991179 0.20460275 1.1446774
		 0.84229469 0.43186677 1.030994415 0.63971853 0.52321619 0.83501148 1.26314735 0.46103922 0.76238394
		 1.084164143 0.67398405 0.65462828 0.78643179 0.68903112 0.57403398 1.44351244 0.44654846 0.48288727
		 1.25205851 0.67637682 0.40658402 0.93564415 0.70764542 0.40946317 1.50860739 0.4321669 0.17900896
		 1.32105827 0.67755038 0.12903714 1.025673389 0.72568482 0.19965243;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 20 10 1 20 11 1
		 20 12 1 20 13 1 20 14 1 20 15 1 20 16 1 20 17 1 20 18 1 20 19 1 80 79 1 79 22 1 24 81 1
		 81 80 1 24 23 0 27 24 1 23 22 0 22 25 0 27 26 0 30 27 1 26 25 0 25 28 1 30 29 1 33 30 1
		 29 28 1 28 31 1 33 32 1 36 33 1 32 31 1 31 34 1 36 35 1 39 36 1 35 34 1 34 37 1 39 38 1
		 42 39 1 38 37 1 37 40 1 42 41 1 45 42 1 41 40 1 40 43 1 45 44 1 48 45 1 44 43 1 43 46 1
		 48 47 1 51 48 1 47 46 1 46 49 1 51 50 1 54 51 1 50 49 1 49 52 1 54 53 1 57 54 1 53 52 1
		 52 55 1 57 56 1 60 57 1 56 55 1 55 58 1 60 59 1 63 60 1 59 58 1 58 61 1 63 62 1 66 63 1
		 62 61 1 61 64 1 66 65 1 69 66 1 65 64 1 64 67 1 69 68 1 72 69 1 68 67 0 67 70 1 72 71 1
		 75 72 1 71 70 1 70 73 1 75 74 1 78 75 1 74 73 1 73 76 1 78 77 1 81 78 1 77 76 1 76 79 1
		 1 25 1 22 0 1 2 28 1 3 31 0 4 34 1 5 37 1 6 40 1 7 43 1 8 46 1 9 49 1 10 52 1 11 55 1
		 12 58 1 13 61 1 14 64 1 15 67 0 16 70 1 17 73 1 18 76 1 19 79 1 27 21 0 21 24 0 30 21 1
		 33 21 1 36 21 1 39 21 1 42 21 1 45 21 1 48 21 1 51 21 1 54 21 1 57 21 1 60 21 1 63 21 1
		 66 21 1 69 21 1 72 21 0 75 21 0 78 21 1 81 21 1 23 80 0 23 26 1 26 29 0 29 32 0 32 35 0
		 35 38 0;
	setAttr ".ed[166:179]" 38 41 0 41 44 0 44 47 0 47 50 0 50 53 0 53 56 0 56 59 0
		 59 62 0 62 65 0 65 68 0 68 71 0 71 74 0 74 77 0 77 80 0;
	setAttr -s 100 -ch 360 ".fc[0:99]" -type "polyFaces" 
		f 3 -1 -21 21
		mu 0 3 1 0 20
		f 3 -2 -22 22
		mu 0 3 2 1 20
		f 3 -3 -23 23
		mu 0 3 3 2 20
		f 3 -4 -24 24
		mu 0 3 4 3 20
		f 3 -5 -25 25
		mu 0 3 5 4 20
		f 3 -6 -26 26
		mu 0 3 6 5 20
		f 3 -7 -27 27
		mu 0 3 7 6 20
		f 3 -8 -28 28
		mu 0 3 8 7 20
		f 3 -9 -29 29
		mu 0 3 9 8 20
		f 3 -10 -30 30
		mu 0 3 10 9 20
		f 3 -11 -31 31
		mu 0 3 11 10 20
		f 3 -12 -32 32
		mu 0 3 12 11 20
		f 3 -13 -33 33
		mu 0 3 13 12 20
		f 3 -14 -34 34
		mu 0 3 14 13 20
		f 3 -15 -35 35
		mu 0 3 15 14 20
		f 3 -16 -36 36
		mu 0 3 16 15 20
		f 3 -17 -37 37
		mu 0 3 17 16 20
		f 3 -18 -38 38
		mu 0 3 18 17 20
		f 3 -19 -39 39
		mu 0 3 19 18 20
		f 3 -20 -40 20
		mu 0 3 0 19 20
		f 4 0 120 -48 121
		mu 0 4 21 22 25 23
		f 4 1 122 -52 -121
		mu 0 4 22 24 27 25
		f 4 2 123 -56 -123
		mu 0 4 24 26 29 27
		f 4 3 124 -60 -124
		mu 0 4 26 28 31 29
		f 4 4 125 -64 -125
		mu 0 4 28 30 33 31
		f 4 5 126 -68 -126
		mu 0 4 30 32 35 33
		f 4 6 127 -72 -127
		mu 0 4 32 34 37 35
		f 4 7 128 -76 -128
		mu 0 4 34 36 39 37
		f 4 8 129 -80 -129
		mu 0 4 36 38 41 39
		f 4 9 130 -84 -130
		mu 0 4 38 40 43 41
		f 4 10 131 -88 -131
		mu 0 4 40 42 45 43
		f 4 11 132 -92 -132
		mu 0 4 42 44 47 45
		f 4 12 133 -96 -133
		mu 0 4 44 46 49 47
		f 4 13 134 -100 -134
		mu 0 4 46 48 51 49
		f 4 14 135 -104 -135
		mu 0 4 48 50 53 51
		f 4 15 136 -108 -136
		mu 0 4 50 52 55 53
		f 4 16 137 -112 -137
		mu 0 4 52 54 57 55
		f 4 17 138 -116 -138
		mu 0 4 54 56 59 57
		f 4 18 139 -120 -139
		mu 0 4 56 58 61 59
		f 4 19 -122 -42 -140
		mu 0 4 58 60 83 61
		f 3 -46 140 141
		mu 0 3 81 62 82
		f 3 -50 142 -141
		mu 0 3 62 63 82
		f 3 -54 143 -143
		mu 0 3 63 64 82
		f 3 -58 144 -144
		mu 0 3 64 65 82
		f 3 -62 145 -145
		mu 0 3 65 66 82
		f 3 -66 146 -146
		mu 0 3 66 67 82
		f 3 -70 147 -147
		mu 0 3 67 68 82
		f 3 -74 148 -148
		mu 0 3 68 69 82
		f 3 -78 149 -149
		mu 0 3 69 70 82
		f 3 -82 150 -150
		mu 0 3 70 71 82
		f 3 -86 151 -151
		mu 0 3 71 72 82
		f 3 -90 152 -152
		mu 0 3 72 73 82
		f 3 -94 153 -153
		mu 0 3 73 74 82
		f 3 -98 154 -154
		mu 0 3 74 75 82
		f 3 -102 155 -155
		mu 0 3 75 76 82
		f 3 -106 156 -156
		mu 0 3 76 77 82
		f 3 -110 157 -157
		mu 0 3 77 78 82
		f 3 -114 158 -158
		mu 0 3 78 79 82
		f 3 -118 159 -159
		mu 0 3 79 80 82
		f 3 -43 -142 -160
		mu 0 3 80 81 82
		f 4 -47 160 40 41
		mu 0 4 83 86 124 61
		f 4 -45 42 43 -161
		mu 0 4 85 81 80 123
		f 4 44 161 -49 45
		mu 0 4 81 85 88 62
		f 4 46 47 -51 -162
		mu 0 4 84 23 25 87
		f 4 48 162 -53 49
		mu 0 4 62 88 90 63
		f 4 50 51 -55 -163
		mu 0 4 87 25 27 89
		f 4 52 163 -57 53
		mu 0 4 63 90 92 64
		f 4 54 55 -59 -164
		mu 0 4 89 27 29 91
		f 4 56 164 -61 57
		mu 0 4 64 92 94 65
		f 4 58 59 -63 -165
		mu 0 4 91 29 31 93
		f 4 60 165 -65 61
		mu 0 4 65 94 96 66
		f 4 62 63 -67 -166
		mu 0 4 93 31 33 95
		f 4 64 166 -69 65
		mu 0 4 66 96 98 67
		f 4 66 67 -71 -167
		mu 0 4 95 33 35 97
		f 4 68 167 -73 69
		mu 0 4 67 98 100 68
		f 4 70 71 -75 -168
		mu 0 4 97 35 37 99
		f 4 72 168 -77 73
		mu 0 4 68 100 102 69
		f 4 74 75 -79 -169
		mu 0 4 99 37 39 101
		f 4 76 169 -81 77
		mu 0 4 69 102 104 70
		f 4 78 79 -83 -170
		mu 0 4 101 39 41 103
		f 4 80 170 -85 81
		mu 0 4 70 104 106 71
		f 4 82 83 -87 -171
		mu 0 4 103 41 43 105
		f 4 84 171 -89 85
		mu 0 4 71 106 108 72
		f 4 86 87 -91 -172
		mu 0 4 105 43 45 107
		f 4 88 172 -93 89
		mu 0 4 72 108 110 73
		f 4 90 91 -95 -173
		mu 0 4 107 45 47 109
		f 4 92 173 -97 93
		mu 0 4 73 110 112 74
		f 4 94 95 -99 -174
		mu 0 4 109 47 49 111
		f 4 96 174 -101 97
		mu 0 4 74 112 114 75
		f 4 98 99 -103 -175
		mu 0 4 111 49 51 113
		f 4 100 175 -105 101
		mu 0 4 75 114 116 76
		f 4 102 103 -107 -176
		mu 0 4 113 51 53 115
		f 4 104 176 -109 105
		mu 0 4 76 116 118 77
		f 4 106 107 -111 -177
		mu 0 4 115 53 55 117
		f 4 108 177 -113 109
		mu 0 4 77 118 120 78
		f 4 110 111 -115 -178
		mu 0 4 117 55 57 119
		f 4 112 178 -117 113
		mu 0 4 78 120 122 79
		f 4 114 115 -119 -179
		mu 0 4 119 57 59 121
		f 4 116 179 -44 117
		mu 0 4 79 122 123 80
		f 4 118 119 -41 -180
		mu 0 4 121 59 61 124;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder23";
	rename -uid "7D411F32-4A6C-3648-2F67-1DA15BD162EB";
	setAttr ".t" -type "double3" 0.30948691405175266 0.53187864242995953 -1.2216373023739799 ;
	setAttr ".r" -type "double3" 0 36.140650573901667 0 ;
	setAttr ".s" -type "double3" 0.32743338863571375 0.32743338863571375 0.32743338863571375 ;
createNode mesh -n "pCylinderShape23" -p "pCylinder23";
	rename -uid "7E9ED60C-4DE4-71F5-5F2F-A7B0CC964D97";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:20]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[21]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 21 "f[20:39]" "f[60]" "f[63]" "f[65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77]" "f[79]" "f[81]" "f[83]" "f[85]" "f[87]" "f[89]" "f[91]" "f[93]" "f[95]" "f[97]" "f[99]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 20 "f[40:59]" "f[61:62]" "f[64]" "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[80]" "f[82]" "f[84]" "f[86]" "f[88]" "f[90]" "f[92]" "f[94]" "f[96]" "f[98]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.49460795521736145 0.6913236677646637 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 125 ".uvst[0].uvsp[0:124]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.5 0.15625 0.375 0.3125 0.38749999
		 0.3125 0.375 0.53122675 0.39999998 0.3125 0.38749999 0.50680512 0.41249996 0.3125
		 0.39999998 0.50411224 0.42499995 0.3125 0.41249996 0.4585942 0.43749994 0.3125 0.42460731
		 0.47499973 0.44999993 0.3125 0.43749994 0.47335893 0.46249992 0.3125 0.44999993 0.47415093
		 0.4749999 0.3125 0.46249992 0.47435057 0.48749989 0.3125 0.4749999 0.47421885 0.49999988
		 0.3125 0.48749989 0.47340563 0.51249987 0.3125 0.49999988 0.47206303 0.52499986 0.3125
		 0.51249987 0.47050047 0.53749985 0.3125 0.52499986 0.46901679 0.54999983 0.3125 0.53749985
		 0.46774563 0.56249982 0.3125 0.54999983 0.46702451 0.57499981 0.3125 0.56249982 0.49378595
		 0.5874998 0.3125 0.57499987 0.51600325 0.59999979 0.3125 0.5874998 0.55235142 0.61249977
		 0.3125 0.59999979 0.5447669 0.62499976 0.3125 0.61249977 0.53709531 0.58281833 0.90392101
		 0.56004965 0.92640126 0.53001064 0.93611324 0.50366247 0.93328243 0.46554363 0.92846209
		 0.43774414 0.91443533 0.4172681 0.89394355 0.4054563 0.87072521 0.40179276 0.84687275
		 0.40586582 0.82274944 0.41823131 0.79926515 0.43898696 0.77915317 0.46644697 0.76575667
		 0.49981132 0.76101357 0.52001661 0.76208949 0.55308485 0.77068496 0.56912249 0.79352963
		 0.5890969 0.81480068 0.60155916 0.84375 0.59636879 0.87506211 0.5 0.84375 0.62499976
		 0.53122687 0.375 0.6875 0.6486026 0.89203393 0.62499976 0.6875 0.38749999 0.6875
		 0.62640893 0.93559146 0.39999998 0.6875 0.59184146 0.97015893 0.41249996 0.6875 0.54828387
		 0.9923526 0.42499995 0.6875 0.5 1 0.43749994 0.6875 0.4517161 0.9923526 0.44999993
		 0.6875 0.40815854 0.97015893 0.46249992 0.6875 0.37359107 0.93559146 0.4749999 0.6875
		 0.3513974 0.89203393 0.48749989 0.6875 0.34374997 0.84375 0.49999988 0.6875 0.3513974
		 0.79546607 0.51249987 0.6875 0.37359107 0.75190854 0.52499986 0.6875 0.40815851 0.71734107
		 0.53749985 0.6875 0.45171607 0.69514734 0.54999983 0.6875 0.5 0.68749994 0.56249982
		 0.6875 0.54828393 0.69514734 0.57499981 0.6875 0.59184152 0.71734101 0.5874998 0.6875
		 0.62640899 0.75190848 0.59999979 0.6875 0.64860266 0.79546607 0.65625 0.84375 0.61249977
		 0.6875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".pt[0:81]" -type "float3"  1.0410734 0.050761405 -0.12054498 
		0.95487511 0.048426811 -0.30123395 0.9439311 0.047023289 -0.21158618 0.72142375 0.047968894 
		-0.26563933 0.38401747 0.049014658 -0.43500099 -0.020945283 0.049747474 -0.46156308 
		-0.42958468 0.051126841 -0.19484429 -0.58466041 0.052661464 -0.15736562 -0.6768049 
		0.053750072 -0.17363277 -0.73848784 0.053935979 -0.092137024 -0.67938733 0.053096518 
		0.14380561 -0.60021394 0.051483624 0.15462293 -0.46688074 0.049618199 0.15380971 
		-0.29294911 0.04808256 0.14143349 0.11562265 0.0473064 0.11150365 0.45514297 0.054186318 
		0.070099384 0.68909389 0.058616448 0.02521923 0.87907517 0.06347423 -0.020635933 
		1.0074069 0.060581829 -0.062749729 1.0630012 0.055032868 -0.097141661 -0.082158975 
		0.032650758 -0.063381523 -0.17141664 0.098071903 -0.11637019 0.99300045 4.9960036e-15 
		-0.14268471 0.86781609 4.6629367e-15 -0.12853026 0.66862226 7.5495166e-15 -0.086658768 
		0.7931819 0.096124992 -0.2281127 0.69977283 0.096124992 -0.20646161 0.51290739 0.096124992 
		-0.16408981 0.77600116 4.9960036e-15 -0.14139684 0.69962996 7.5495166e-15 -0.1195102 
		0.55513144 7.5495166e-15 -0.076809399 0.57983333 5.9119376e-15 -0.13350718 0.54145986 
		4.9960036e-15 -0.11503197 0.43792519 7.5495166e-15 -0.070896097 0.23402493 7.1609385e-15 
		-0.30138767 0.28550303 7.7715612e-15 -0.024824083 0.23660974 7.5495166e-15 -0.034792524 
		0.012566281 7.5495166e-15 -0.31547916 0.047953062 7.7715612e-15 -0.031138875 0.055906579 
		7.5495166e-15 -0.0073931292 -0.24194112 8.7985175e-15 -0.21839228 -0.15184546 7.7715612e-15 
		0.051146083 -0.07163427 7.5495166e-15 0.017799819 -0.40605405 8.826273e-15 -0.17548554 
		-0.29674619 7.7715612e-15 0.08898402 -0.21147737 7.5495166e-15 -0.1713603 -0.51862508 
		8.826273e-15 -0.1335043 -0.39410889 8.5487173e-15 0.12528442 -0.27154008 7.5495166e-15 
		-0.14900084 -0.5682134 8.826273e-15 -0.096529618 -0.011780063 0.028805038 0.30481362 
		-0.25326759 7.5495166e-15 0.083764397 -0.50755888 8.826273e-15 0.14639312 -0.21965998 
		7.5495166e-15 0.074963473 -0.068400033 0.028805038 0.088622503 -0.42309517 8.826273e-15 
		0.16334756 -0.17903581 0.028805038 0.1377506 -0.020666249 0.028805038 0.097559154 
		-0.28128028 7.9936058e-15 0.16720968 -0.053314101 0.028805038 0.1409983 0.065354116 
		0.028805038 0.09947785 -0.096546687 7.5495166e-15 0.15756662 -0.056656413 7.5495166e-15 
		0.025968453 0.0083978847 7.5495166e-15 0.10221274 0.11257069 6.9666495e-15 0.13533643 
		0.13746607 7.5495166e-15 -0.066379867 0.15370096 7.5495166e-15 0.086519264 0.39300191 
		6.2727601e-15 0.10095699 0.31348506 6.4392935e-15 0.097338289 0.23364449 7.5495166e-15 
		0.076558635 0.61383694 5.3013149e-15 0.048906453 0.51327223 4.9960036e-15 0.049200587 
		0.38686487 7.5495166e-15 0.043599226 0.81440389 4.9960036e-15 -0.020182827 0.69899052 
		7.327472e-15 -0.017290466 0.50138074 7.5495166e-15 -0.00065120053 0.95283026 4.9960036e-15 
		-0.069626458 0.8271544 4.5519144e-15 -0.061861459 0.61209881 7.5495166e-15 -0.033563826 
		1.014361 4.9960036e-15 -0.11181013 0.88983625 3.9968029e-15 -0.10123314 0.68520153 
		7.5495166e-15 -0.066672154;
	setAttr -s 82 ".vt[0:81]"  1.60625601 -0.15252209 0.084875345 1.43026733 -0.15018654 -0.1845181
		 1.15426683 -0.14878392 -0.39358807 0.80284691 -0.14972955 -0.52449965 0.26900101 -0.15077531 -0.43747449
		 -0.042644501 -0.15150815 -0.39541864 -0.32543039 -0.15288752 -0.27293324 -0.55095387 -0.15442216 -0.081232309
		 -0.69626617 -0.15551078 0.16186333 -0.74645042 -0.15569669 0.43330383 -0.69633102 -0.15485722 0.70679426
		 -0.55107117 -0.15324432 0.95527363 -0.3255806 -0.15137887 1.1536696 -0.042809963 -0.14984322 1.2816292
		 0.26883078 -0.14906704 1.32586896 0.80346584 -0.15594703 1.37623203 1.15542078 -0.1603772 1.22186923
		 1.43176556 -0.16523504 0.98770738 1.60723352 -0.16234261 0.70072627 1.66700935 -0.15679359 0.38967657
		 0.45657682 -0.13441032 0.47041631 0.32586241 0.53833306 0.49996328 1.45204353 0.42123458 -0.12018442
		 1.26612854 0.67387664 -0.13911414 0.98473835 0.72823411 0.00278759 1.38762331 0.26048726 -0.15034127
		 1.25717354 0.52112895 -0.065875053 0.99550629 0.60651082 0.094731331 1.11242437 0.25622252 -0.35968399
		 1.0088911057 0.52053154 -0.25341988 0.81396437 0.60732114 -0.040892839 0.81042576 0.11776962 -0.51639986
		 0.76398468 0.41469622 -0.39652252 0.63442135 0.53744054 -0.12386417 0.29473209 0.14410883 -0.43155336
		 0.30731678 0.41898805 -0.31077456 0.345397 0.533876 -0.03569603 -0.033509254 0.13757847 -0.3874836
		 0.0051503181 0.41270757 -0.27103806 0.082228661 0.52876526 -0.0010755062 -0.31629086 0.13767311 -0.26498055
		 -0.24833822 0.41198242 -0.16200042 -0.099147797 0.52760023 0.07540822 -0.54184914 0.1365179 -0.073305607
		 -0.4475255 0.41075271 0.0068283081 -0.2333827 0.52647769 0.1883893 -0.68720293 0.13517815 0.16974759
		 -0.57324886 0.40966114 0.21696281 -0.31096649 0.52579981 0.3177166 -0.73744154 0.13348056 0.44112515
		 -0.61572886 0.40884638 0.44859743 -0.33499861 0.52566504 0.45181775 -0.68737555 0.13182595 0.7145443
		 -0.57208061 0.40849739 0.68235373 -0.30807161 0.52608711 0.58869958 -0.54215813 0.13052674 0.96295667
		 -0.44505501 0.40867186 0.89753032 -0.22648478 0.52709514 0.72335291 -0.3166976 0.12961282 1.16129398
		 -0.24531126 0.40916425 1.071794748 -0.090044022 0.52847195 0.83989024 -0.033953667 0.12875572 1.28919864
		 0.0073862076 0.40955177 1.18503237 0.08945179 0.52977568 0.91843724 0.277668 0.12814513 1.33339465
		 0.29113054 0.40964171 1.22444332 0.30579472 0.53056479 0.94694996 0.69215107 0.16918932 1.35204923
		 0.56464911 0.42196217 1.22791994 0.42383337 0.52744788 0.9508462 0.99991179 0.20460275 1.1446774
		 0.84229469 0.43186677 1.030994415 0.63971853 0.52321619 0.83501148 1.26314735 0.46103922 0.76238394
		 1.084164143 0.67398405 0.65462828 0.78643179 0.68903112 0.57403398 1.44351244 0.44654846 0.48288727
		 1.25205851 0.67637682 0.40658402 0.93564415 0.70764542 0.40946317 1.50860739 0.4321669 0.17900896
		 1.32105827 0.67755038 0.12903714 1.025673389 0.72568482 0.19965243;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 20 10 1 20 11 1
		 20 12 1 20 13 1 20 14 1 20 15 1 20 16 1 20 17 1 20 18 1 20 19 1 80 79 1 79 22 1 24 81 1
		 81 80 1 24 23 0 27 24 1 23 22 0 22 25 0 27 26 0 30 27 1 26 25 0 25 28 1 30 29 1 33 30 1
		 29 28 1 28 31 1 33 32 1 36 33 1 32 31 1 31 34 1 36 35 1 39 36 1 35 34 1 34 37 1 39 38 1
		 42 39 1 38 37 1 37 40 1 42 41 1 45 42 1 41 40 1 40 43 1 45 44 1 48 45 1 44 43 1 43 46 1
		 48 47 1 51 48 1 47 46 1 46 49 1 51 50 1 54 51 1 50 49 1 49 52 1 54 53 1 57 54 1 53 52 1
		 52 55 1 57 56 1 60 57 1 56 55 1 55 58 1 60 59 1 63 60 1 59 58 1 58 61 1 63 62 1 66 63 1
		 62 61 1 61 64 1 66 65 1 69 66 1 65 64 1 64 67 1 69 68 1 72 69 1 68 67 0 67 70 1 72 71 1
		 75 72 1 71 70 1 70 73 1 75 74 1 78 75 1 74 73 1 73 76 1 78 77 1 81 78 1 77 76 1 76 79 1
		 1 25 1 22 0 1 2 28 1 3 31 0 4 34 1 5 37 1 6 40 1 7 43 1 8 46 1 9 49 1 10 52 1 11 55 1
		 12 58 1 13 61 1 14 64 1 15 67 0 16 70 1 17 73 1 18 76 1 19 79 1 27 21 0 21 24 0 30 21 1
		 33 21 1 36 21 1 39 21 1 42 21 1 45 21 1 48 21 1 51 21 1 54 21 1 57 21 1 60 21 1 63 21 1
		 66 21 1 69 21 1 72 21 0 75 21 0 78 21 1 81 21 1 23 80 0 23 26 1 26 29 0 29 32 0 32 35 0
		 35 38 0;
	setAttr ".ed[166:179]" 38 41 0 41 44 0 44 47 0 47 50 0 50 53 0 53 56 0 56 59 0
		 59 62 0 62 65 0 65 68 0 68 71 0 71 74 0 74 77 0 77 80 0;
	setAttr -s 100 -ch 360 ".fc[0:99]" -type "polyFaces" 
		f 3 -1 -21 21
		mu 0 3 1 0 20
		f 3 -2 -22 22
		mu 0 3 2 1 20
		f 3 -3 -23 23
		mu 0 3 3 2 20
		f 3 -4 -24 24
		mu 0 3 4 3 20
		f 3 -5 -25 25
		mu 0 3 5 4 20
		f 3 -6 -26 26
		mu 0 3 6 5 20
		f 3 -7 -27 27
		mu 0 3 7 6 20
		f 3 -8 -28 28
		mu 0 3 8 7 20
		f 3 -9 -29 29
		mu 0 3 9 8 20
		f 3 -10 -30 30
		mu 0 3 10 9 20
		f 3 -11 -31 31
		mu 0 3 11 10 20
		f 3 -12 -32 32
		mu 0 3 12 11 20
		f 3 -13 -33 33
		mu 0 3 13 12 20
		f 3 -14 -34 34
		mu 0 3 14 13 20
		f 3 -15 -35 35
		mu 0 3 15 14 20
		f 3 -16 -36 36
		mu 0 3 16 15 20
		f 3 -17 -37 37
		mu 0 3 17 16 20
		f 3 -18 -38 38
		mu 0 3 18 17 20
		f 3 -19 -39 39
		mu 0 3 19 18 20
		f 3 -20 -40 20
		mu 0 3 0 19 20
		f 4 0 120 -48 121
		mu 0 4 21 22 25 23
		f 4 1 122 -52 -121
		mu 0 4 22 24 27 25
		f 4 2 123 -56 -123
		mu 0 4 24 26 29 27
		f 4 3 124 -60 -124
		mu 0 4 26 28 31 29
		f 4 4 125 -64 -125
		mu 0 4 28 30 33 31
		f 4 5 126 -68 -126
		mu 0 4 30 32 35 33
		f 4 6 127 -72 -127
		mu 0 4 32 34 37 35
		f 4 7 128 -76 -128
		mu 0 4 34 36 39 37
		f 4 8 129 -80 -129
		mu 0 4 36 38 41 39
		f 4 9 130 -84 -130
		mu 0 4 38 40 43 41
		f 4 10 131 -88 -131
		mu 0 4 40 42 45 43
		f 4 11 132 -92 -132
		mu 0 4 42 44 47 45
		f 4 12 133 -96 -133
		mu 0 4 44 46 49 47
		f 4 13 134 -100 -134
		mu 0 4 46 48 51 49
		f 4 14 135 -104 -135
		mu 0 4 48 50 53 51
		f 4 15 136 -108 -136
		mu 0 4 50 52 55 53
		f 4 16 137 -112 -137
		mu 0 4 52 54 57 55
		f 4 17 138 -116 -138
		mu 0 4 54 56 59 57
		f 4 18 139 -120 -139
		mu 0 4 56 58 61 59
		f 4 19 -122 -42 -140
		mu 0 4 58 60 83 61
		f 3 -46 140 141
		mu 0 3 81 62 82
		f 3 -50 142 -141
		mu 0 3 62 63 82
		f 3 -54 143 -143
		mu 0 3 63 64 82
		f 3 -58 144 -144
		mu 0 3 64 65 82
		f 3 -62 145 -145
		mu 0 3 65 66 82
		f 3 -66 146 -146
		mu 0 3 66 67 82
		f 3 -70 147 -147
		mu 0 3 67 68 82
		f 3 -74 148 -148
		mu 0 3 68 69 82
		f 3 -78 149 -149
		mu 0 3 69 70 82
		f 3 -82 150 -150
		mu 0 3 70 71 82
		f 3 -86 151 -151
		mu 0 3 71 72 82
		f 3 -90 152 -152
		mu 0 3 72 73 82
		f 3 -94 153 -153
		mu 0 3 73 74 82
		f 3 -98 154 -154
		mu 0 3 74 75 82
		f 3 -102 155 -155
		mu 0 3 75 76 82
		f 3 -106 156 -156
		mu 0 3 76 77 82
		f 3 -110 157 -157
		mu 0 3 77 78 82
		f 3 -114 158 -158
		mu 0 3 78 79 82
		f 3 -118 159 -159
		mu 0 3 79 80 82
		f 3 -43 -142 -160
		mu 0 3 80 81 82
		f 4 -47 160 40 41
		mu 0 4 83 86 124 61
		f 4 -45 42 43 -161
		mu 0 4 85 81 80 123
		f 4 44 161 -49 45
		mu 0 4 81 85 88 62
		f 4 46 47 -51 -162
		mu 0 4 84 23 25 87
		f 4 48 162 -53 49
		mu 0 4 62 88 90 63
		f 4 50 51 -55 -163
		mu 0 4 87 25 27 89
		f 4 52 163 -57 53
		mu 0 4 63 90 92 64
		f 4 54 55 -59 -164
		mu 0 4 89 27 29 91
		f 4 56 164 -61 57
		mu 0 4 64 92 94 65
		f 4 58 59 -63 -165
		mu 0 4 91 29 31 93
		f 4 60 165 -65 61
		mu 0 4 65 94 96 66
		f 4 62 63 -67 -166
		mu 0 4 93 31 33 95
		f 4 64 166 -69 65
		mu 0 4 66 96 98 67
		f 4 66 67 -71 -167
		mu 0 4 95 33 35 97
		f 4 68 167 -73 69
		mu 0 4 67 98 100 68
		f 4 70 71 -75 -168
		mu 0 4 97 35 37 99
		f 4 72 168 -77 73
		mu 0 4 68 100 102 69
		f 4 74 75 -79 -169
		mu 0 4 99 37 39 101
		f 4 76 169 -81 77
		mu 0 4 69 102 104 70
		f 4 78 79 -83 -170
		mu 0 4 101 39 41 103
		f 4 80 170 -85 81
		mu 0 4 70 104 106 71
		f 4 82 83 -87 -171
		mu 0 4 103 41 43 105
		f 4 84 171 -89 85
		mu 0 4 71 106 108 72
		f 4 86 87 -91 -172
		mu 0 4 105 43 45 107
		f 4 88 172 -93 89
		mu 0 4 72 108 110 73
		f 4 90 91 -95 -173
		mu 0 4 107 45 47 109
		f 4 92 173 -97 93
		mu 0 4 73 110 112 74
		f 4 94 95 -99 -174
		mu 0 4 109 47 49 111
		f 4 96 174 -101 97
		mu 0 4 74 112 114 75
		f 4 98 99 -103 -175
		mu 0 4 111 49 51 113
		f 4 100 175 -105 101
		mu 0 4 75 114 116 76
		f 4 102 103 -107 -176
		mu 0 4 113 51 53 115
		f 4 104 176 -109 105
		mu 0 4 76 116 118 77
		f 4 106 107 -111 -177
		mu 0 4 115 53 55 117
		f 4 108 177 -113 109
		mu 0 4 77 118 120 78
		f 4 110 111 -115 -178
		mu 0 4 117 55 57 119
		f 4 112 178 -117 113
		mu 0 4 78 120 122 79
		f 4 114 115 -119 -179
		mu 0 4 119 57 59 121
		f 4 116 179 -44 117
		mu 0 4 79 122 123 80
		f 4 118 119 -41 -180
		mu 0 4 121 59 61 124;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder24";
	rename -uid "F41ED59E-4EB2-991B-A7F1-EE94B2FDC07A";
	setAttr ".t" -type "double3" -1.0424402903248469 2.5178950556362873 1.3245370281865729 ;
	setAttr ".r" -type "double3" 0 -235.16548262017227 0 ;
	setAttr ".s" -type "double3" 0.35230769861852473 0.35230769861852473 0.35230769861852473 ;
	setAttr ".rp" -type "double3" 0 -0.35230775538257381 0 ;
	setAttr ".sp" -type "double3" 0 -1.0000001611206608 0 ;
	setAttr ".spt" -type "double3" 0 0.64769240573809073 0 ;
createNode mesh -n "pCylinderShape24" -p "pCylinder24";
	rename -uid "A3BEDF7D-4EDB-A6D2-A7E4-94A4B138FE2C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999986588954926 0.34290161728858948 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 141 ".pt";
	setAttr ".pt[41]" -type "float3" -0.075364694 0 0.05475565 ;
	setAttr ".pt[42]" -type "float3" -0.088596508 0 0.028786745 ;
	setAttr ".pt[43]" -type "float3" -0.093155816 0 0 ;
	setAttr ".pt[44]" -type "float3" -0.088596448 0 -0.028786745 ;
	setAttr ".pt[45]" -type "float3" -0.075364634 0 -0.05475565 ;
	setAttr ".pt[46]" -type "float3" -0.054755621 0 -0.075364642 ;
	setAttr ".pt[47]" -type "float3" -0.028786734 0 -0.088596433 ;
	setAttr ".pt[48]" -type "float3" -1.1105037e-08 0 -0.093155801 ;
	setAttr ".pt[49]" -type "float3" 0.028786711 0 -0.088596433 ;
	setAttr ".pt[50]" -type "float3" 0.054755621 0 -0.075364642 ;
	setAttr ".pt[51]" -type "float3" 0.075364634 0 -0.05475565 ;
	setAttr ".pt[52]" -type "float3" 0.088596448 0 -0.028786745 ;
	setAttr ".pt[53]" -type "float3" 0.093155816 0 0 ;
	setAttr ".pt[54]" -type "float3" 0.088596448 0 0.028786745 ;
	setAttr ".pt[55]" -type "float3" 0.075364634 0 0.05475565 ;
	setAttr ".pt[56]" -type "float3" 0.054755621 0 0.075364642 ;
	setAttr ".pt[57]" -type "float3" 0.028786734 0 0.088596515 ;
	setAttr ".pt[58]" -type "float3" -1.1105037e-08 0 0.093155801 ;
	setAttr ".pt[59]" -type "float3" -0.028786756 0 0.088596515 ;
	setAttr ".pt[60]" -type "float3" -0.05475565 0 0.075364642 ;
	setAttr ".pt[61]" -type "float3" -0.094289303 0 0.0306364 ;
	setAttr ".pt[62]" -type "float3" -0.080207251 0 0.058273938 ;
	setAttr ".pt[63]" -type "float3" -0.058274005 0 0.080207147 ;
	setAttr ".pt[64]" -type "float3" -0.03063646 0 0.094289221 ;
	setAttr ".pt[65]" -type "float3" -1.9742288e-08 0 0.099141493 ;
	setAttr ".pt[66]" -type "float3" 0.030636417 0 0.094289221 ;
	setAttr ".pt[67]" -type "float3" 0.058273964 0 0.080207147 ;
	setAttr ".pt[68]" -type "float3" 0.080207191 0 0.058273938 ;
	setAttr ".pt[69]" -type "float3" 0.094289213 0 0.0306364 ;
	setAttr ".pt[70]" -type "float3" 0.099141568 0 0 ;
	setAttr ".pt[71]" -type "float3" 0.094289213 0 -0.0306364 ;
	setAttr ".pt[72]" -type "float3" 0.080207191 0 -0.058273938 ;
	setAttr ".pt[73]" -type "float3" 0.058273938 0 -0.080207147 ;
	setAttr ".pt[74]" -type "float3" 0.0306364 0 -0.094289169 ;
	setAttr ".pt[75]" -type "float3" -1.9742288e-08 0 -0.099141493 ;
	setAttr ".pt[76]" -type "float3" -0.03063643 0 -0.094289169 ;
	setAttr ".pt[77]" -type "float3" -0.058273941 0 -0.080207147 ;
	setAttr ".pt[78]" -type "float3" -0.080207199 0 -0.058273938 ;
	setAttr ".pt[79]" -type "float3" -0.094289243 0 -0.0306364 ;
	setAttr ".pt[80]" -type "float3" -0.099141568 0 0 ;
	setAttr ".pt[82]" -type "float3" -0.080207251 0 0.058273938 ;
	setAttr ".pt[83]" -type "float3" -0.094289273 0 0.0306364 ;
	setAttr ".pt[86]" -type "float3" -0.058274005 0 0.080207147 ;
	setAttr ".pt[88]" -type "float3" -0.03063646 0 0.094289221 ;
	setAttr ".pt[90]" -type "float3" -1.9742288e-08 0 0.099141493 ;
	setAttr ".pt[92]" -type "float3" 0.030636417 0 0.094289221 ;
	setAttr ".pt[94]" -type "float3" 0.058273964 0 0.080207147 ;
	setAttr ".pt[96]" -type "float3" 0.080207191 0 0.058273938 ;
	setAttr ".pt[98]" -type "float3" 0.094289213 0 0.0306364 ;
	setAttr ".pt[100]" -type "float3" 0.099141568 0 0 ;
	setAttr ".pt[102]" -type "float3" 0.094289213 0 -0.0306364 ;
	setAttr ".pt[104]" -type "float3" 0.080207191 0 -0.058273938 ;
	setAttr ".pt[106]" -type "float3" 0.058273938 0 -0.080207147 ;
	setAttr ".pt[108]" -type "float3" 0.0306364 0 -0.094289169 ;
	setAttr ".pt[110]" -type "float3" -1.9742288e-08 0 -0.099141493 ;
	setAttr ".pt[112]" -type "float3" -0.03063643 0 -0.094289169 ;
	setAttr ".pt[114]" -type "float3" -0.058273941 0 -0.080207147 ;
	setAttr ".pt[116]" -type "float3" -0.080207199 0 -0.058273938 ;
	setAttr ".pt[118]" -type "float3" -0.094289243 0 -0.0306364 ;
	setAttr ".pt[120]" -type "float3" -0.099141568 0 0 ;
	setAttr ".pt[123]" -type "float3" 0.13975829 0 -0.045410167 ;
	setAttr ".pt[124]" -type "float3" 0.11888555 0 -0.08637514 ;
	setAttr ".pt[127]" -type "float3" 0.1111051 -0.011043481 -0.1529232 ;
	setAttr ".pt[130]" -type "float3" 0.010295824 -0.011043481 -0.031687025 ;
	setAttr ".pt[133]" -type "float3" 7.1023565e-09 -0.011043481 -0.033317726 ;
	setAttr ".pt[136]" -type "float3" -0.010295781 -0.011043481 -0.031687025 ;
	setAttr ".pt[139]" -type "float3" -0.019583631 -0.011043481 -0.026954636 ;
	setAttr ".pt[142]" -type "float3" -0.15292293 -0.011043481 -0.11110492 ;
	setAttr ".pt[145]" -type "float3" -0.13975818 0 -0.045409668 ;
	setAttr ".pt[148]" -type "float3" -0.14695044 0 2.5060385e-07 ;
	setAttr ".pt[151]" -type "float3" -0.13975824 0 0.045410428 ;
	setAttr ".pt[154]" -type "float3" -0.11888529 0 0.086375646 ;
	setAttr ".pt[157]" -type "float3" -0.086375348 0 0.1188857 ;
	setAttr ".pt[160]" -type "float3" -0.045410272 0 0.13975851 ;
	setAttr ".pt[163]" -type "float3" 3.1325484e-08 0 0.14695057 ;
	setAttr ".pt[166]" -type "float3" 0.04541032 0 0.13975851 ;
	setAttr ".pt[169]" -type "float3" 0.086375281 0 0.1188857 ;
	setAttr ".pt[172]" -type "float3" 0.11888529 0 0.086375646 ;
	setAttr ".pt[175]" -type "float3" 0.13975818 0 0.045410428 ;
	setAttr ".pt[178]" -type "float3" 0.14695044 0 -1.7122705e-15 ;
	setAttr ".pt[181]" -type "float3" 0.1106594 0 -0.080398485 ;
	setAttr ".pt[182]" -type "float3" 0.13008784 0 -0.04226809 ;
	setAttr ".pt[183]" -type "float3" 0.10341726 0.00037283581 -0.14234188 ;
	setAttr ".pt[184]" -type "float3" 0.0095834136 0.00037283581 -0.029494496 ;
	setAttr ".pt[185]" -type "float3" 7.1023547e-09 0.00037283581 -0.031012354 ;
	setAttr ".pt[186]" -type "float3" -0.0095833726 0.00037283581 -0.029494496 ;
	setAttr ".pt[187]" -type "float3" -0.018228564 0.00037283581 -0.025089556 ;
	setAttr ".pt[188]" -type "float3" -0.1423416 0.00037283581 -0.10341711 ;
	setAttr ".pt[189]" -type "float3" -0.13008773 0 -0.042267606 ;
	setAttr ".pt[190]" -type "float3" -0.13678235 0 2.5060385e-07 ;
	setAttr ".pt[191]" -type "float3" -0.13008779 0 0.042268343 ;
	setAttr ".pt[192]" -type "float3" -0.11065917 0 0.080398969 ;
	setAttr ".pt[193]" -type "float3" -0.080398686 0 0.11065964 ;
	setAttr ".pt[194]" -type "float3" -0.042268131 0 0.1300882 ;
	setAttr ".pt[195]" -type "float3" 3.1325481e-08 0 0.13678259 ;
	setAttr ".pt[196]" -type "float3" 0.042268198 0 0.1300882 ;
	setAttr ".pt[197]" -type "float3" 0.080398604 0 0.11065964 ;
	setAttr ".pt[198]" -type "float3" 0.11065917 0 0.080398969 ;
	setAttr ".pt[199]" -type "float3" 0.13008773 0 0.042268343 ;
	setAttr ".pt[200]" -type "float3" 0.13678235 0 -1.7122705e-15 ;
	setAttr ".pt[201]" -type "float3" 0.12137919 0 -0.088186733 ;
	setAttr ".pt[202]" -type "float3" 0.14268969 0 -0.046362724 ;
	setAttr ".pt[203]" -type "float3" 0.11343548 0.00037283581 -0.15613087 ;
	setAttr ".pt[204]" -type "float3" 0.059637021 0.00037283581 -0.18354258 ;
	setAttr ".pt[205]" -type "float3" 4.0294179e-08 0.00037283581 -0.19298819 ;
	setAttr ".pt[206]" -type "float3" -0.059636723 0.00037283581 -0.18354258 ;
	setAttr ".pt[207]" -type "float3" -0.11343525 0.00037283581 -0.15613087 ;
	setAttr ".pt[208]" -type "float3" -0.15613045 0.00037283581 -0.11343518 ;
	setAttr ".pt[209]" -type "float3" -0.14268956 0 -0.046362206 ;
	setAttr ".pt[210]" -type "float3" -0.15003268 0 2.5060385e-07 ;
	setAttr ".pt[211]" -type "float3" -0.14268962 0 0.046362966 ;
	setAttr ".pt[212]" -type "float3" -0.12137885 0 0.088187255 ;
	setAttr ".pt[213]" -type "float3" -0.088187017 0 0.12137949 ;
	setAttr ".pt[214]" -type "float3" -0.046362694 0 0.14269006 ;
	setAttr ".pt[215]" -type "float3" 3.1325481e-08 0 0.15003277 ;
	setAttr ".pt[216]" -type "float3" 0.046362754 0 0.14269006 ;
	setAttr ".pt[217]" -type "float3" 0.088186949 0 0.12137949 ;
	setAttr ".pt[218]" -type "float3" 0.12137885 0 0.088187255 ;
	setAttr ".pt[219]" -type "float3" 0.14268956 0 0.046362966 ;
	setAttr ".pt[220]" -type "float3" 0.15003268 0 -1.7122705e-15 ;
	setAttr ".pt[221]" -type "float3" 0.15613085 0.011043481 -0.11343518 ;
	setAttr ".pt[222]" -type "float3" 0.18354271 0.011043481 -0.059636682 ;
	setAttr ".pt[223]" -type "float3" 4.0294179e-08 0.011043481 3.2235343e-07 ;
	setAttr ".pt[224]" -type "float3" 0.11343548 0.011043481 -0.15613087 ;
	setAttr ".pt[225]" -type "float3" 0.059637021 0.011043481 -0.18354258 ;
	setAttr ".pt[226]" -type "float3" 4.0294179e-08 0.011043481 -0.19298819 ;
	setAttr ".pt[227]" -type "float3" -0.059636723 0.011043481 -0.18354258 ;
	setAttr ".pt[228]" -type "float3" -0.11343525 0.011043481 -0.15613087 ;
	setAttr ".pt[229]" -type "float3" -0.15613045 0.011043481 -0.11343518 ;
	setAttr ".pt[230]" -type "float3" -0.18354252 0.011043481 -0.059636012 ;
	setAttr ".pt[231]" -type "float3" -0.19298805 0.011043481 3.2235343e-07 ;
	setAttr ".pt[232]" -type "float3" -0.18354261 0.011043481 0.059636991 ;
	setAttr ".pt[233]" -type "float3" -0.15613045 0.011043481 0.11343585 ;
	setAttr ".pt[234]" -type "float3" -0.11343554 0.011043481 0.15613128 ;
	setAttr ".pt[235]" -type "float3" -0.059636634 0.011043481 0.18354321 ;
	setAttr ".pt[236]" -type "float3" 4.0294179e-08 0.011043481 0.19298819 ;
	setAttr ".pt[237]" -type "float3" 0.059636723 0.011043481 0.18354321 ;
	setAttr ".pt[238]" -type "float3" 0.11343548 0.011043481 0.15613128 ;
	setAttr ".pt[239]" -type "float3" 0.15613045 0.011043481 0.11343585 ;
	setAttr ".pt[240]" -type "float3" 0.18354252 0.011043481 0.059636991 ;
	setAttr ".pt[241]" -type "float3" 0.19298805 0.011043481 -1.7122705e-15 ;
createNode transform -n "pCylinder25";
	rename -uid "BAFE2705-4668-4978-F495-98998E65710B";
	setAttr ".t" -type "double3" -0.31111006909278727 4.3965309047009571 -3.5781895708261802 ;
	setAttr ".s" -type "double3" 0.25299498161351924 0.25299498161351924 0.25299498161351924 ;
	setAttr ".rp" -type "double3" 0 -0.25299502153466513 0 ;
	setAttr ".sp" -type "double3" 0 -1.0000001577942199 0 ;
	setAttr ".spt" -type "double3" 0 0.74700513625955434 0 ;
createNode mesh -n "pCylinderShape25" -p "pCylinder25";
	rename -uid "B9FBA63E-4940-58E0-5072-86AA20B7B4AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".pt[0:101]" -type "float3"  0.28201643 -2.3536728e-14 
		-0.09163563 0.23989755 -2.0095037e-14 -0.17429794 0.17429577 -1.4543922e-14 -0.23989922 
		0.091632664 -7.6605389e-15 -0.28201795 -4.5474028e-08 0 -0.29653111 -0.091632687 
		7.6605389e-15 -0.28201795 -0.17429584 1.4543922e-14 -0.23989883 -0.23989758 2.0095037e-14 
		-0.17429794 -0.28201637 2.3536728e-14 -0.091635279 -0.2965298 2.4757973e-14 -1.4551689e-06 
		-0.28201637 2.3536728e-14 0.091630176 -0.23989758 2.0095037e-14 0.17429397 -0.17429577 
		1.4543922e-14 0.2398959 -0.091632687 7.6605389e-15 0.28201506 -5.6842545e-08 0 0.29652819 
		0.091632612 -7.6605389e-15 0.28201506 0.17429565 -1.4543922e-14 0.2398959 0.23989743 
		-2.0095037e-14 0.17429397 0.28201631 -2.3536728e-14 0.091630176 0.2965295 -2.4757973e-14 
		-1.4551689e-06 0.28201643 -0.25447747 -0.09163563 0.23989755 -0.25447747 -0.17429794 
		0.17429577 -0.25447747 -0.23989922 0.091632664 -0.25447747 -0.28201795 -4.5474028e-08 
		-0.25447747 -0.29653111 -0.091632687 -0.25447747 -0.28201795 -0.17429584 -0.25447747 
		-0.23989883 -0.23989758 -0.25447747 -0.17429794 -0.28201637 -0.25447747 -0.091635279 
		-0.2965298 -0.25447747 -1.4551689e-06 -0.28201637 -0.25447747 0.091630176 -0.23989758 
		-0.25447747 0.17429397 -0.17429577 -0.25447747 0.2398959 -0.091632687 -0.25447747 
		0.28201506 -5.6842545e-08 -0.25447747 0.29652819 0.091632612 -0.25447747 0.28201506 
		0.17429565 -0.25447747 0.2398959 0.23989743 -0.25447747 0.17429397 0.28201631 -0.25447747 
		0.091630176 0.2965295 -0.25447747 -1.4551689e-06 -4.5474028e-08 0 -1.4551689e-06 
		0.44952539 -0.25447747 -0.14606148 0.38238919 -0.25447747 -0.27782381 0.27782199 
		-0.25447747 -0.38239112 0.14605962 -0.25447747 -0.44952682 -1.1368507e-08 -0.25447747 
		-0.47265926 -0.14605957 -0.25447747 -0.44952682 -0.27782187 -0.25447747 -0.38239041 
		-0.38238907 -0.25447747 -0.27782381 -0.44952506 -0.25447747 -0.14606112 -0.47265887 
		-0.25447747 -1.4551689e-06 -0.44952506 -0.25447747 0.1460575 -0.38238907 -0.25447747 
		0.27781975 -0.27782181 -0.25447747 0.38238752 -0.14605957 -0.25447747 0.44952393 
		-3.4105529e-08 -0.25447747 0.47265747 0.14605953 -0.25447747 0.44952393 0.27782181 
		-0.25447747 0.38238752 0.38238895 -0.25447747 0.27781975 0.44952506 -0.25447747 0.1460575 
		0.4726586 -0.25447747 -1.4551689e-06 -2.2737014e-08 0 -1.4551689e-06 0.47800192 -3.5638159e-14 
		-0.15531471 0.27570611 -2.3092639e-14 -0.089584939 0.23452985 -1.976197e-14 -0.17039739 
		0.40661281 -3.0309089e-14 -0.29542339 0.17039585 -1.4321877e-14 -0.23453143 0.29542148 
		-2.220446e-14 -0.40661472 0.089582562 -7.4384943e-15 -0.27570757 0.15531226 -1.1990409e-14 
		-0.47800371 -2.2737014e-08 0 -0.28989586 -7.7409998e-09 -6.6613381e-16 -0.50260186 
		-0.089582466 7.4384943e-15 -0.27570757 -0.15531223 1.0658141e-14 -0.47800371 -0.17039585 
		1.4321877e-14 -0.23453106 -0.29542142 2.0872193e-14 -0.4066143 -0.23452953 1.976197e-14 
		-0.17039776 -0.40661272 2.8976821e-14 -0.29542339 -0.27570599 2.3092639e-14 -0.089583106 
		-0.47800168 3.4305891e-14 -0.15531294 -0.28989461 2.4424907e-14 -1.4551689e-06 -0.50260079 
		3.5971226e-14 -1.5351477e-06 -0.27570602 2.3092639e-14 0.08957985 -0.47800168 3.4305891e-14 
		0.15530899 -0.23452935 1.976197e-14 0.17039485 -0.40661272 2.8976821e-14 0.29541996 
		-0.17039561 1.4321877e-14 0.2345289 -0.29542133 2.0872193e-14 0.40661165 -0.089582466 
		7.4384943e-15 0.27570504 -0.15531223 1.0658141e-14 0.47800073 -1.9326465e-07 0 0.28989291 
		-3.5476692e-08 -6.6613381e-16 0.50259972 0.089582369 -7.4384943e-15 0.27570504 0.15531214 
		-1.1990409e-14 0.47800073 0.17039517 -1.4321877e-14 0.2345292 0.29542133 -2.220446e-14 
		0.40661165 0.23452948 -1.976197e-14 0.17039341 0.40661249 -3.0309089e-14 0.29541817 
		0.27570605 -2.3092639e-14 0.089580216 0.47800159 -3.5638159e-14 0.1553099 0.28989443 
		-2.4424907e-14 -7.2758445e-07 0.50260067 -3.7303494e-14 -6.4760576e-07;
createNode transform -n "pCylinder26";
	rename -uid "3F82C2AE-4275-AFF0-3DF9-B9858DACF273";
	setAttr ".t" -type "double3" -0.86686116538440172 5.1616106853981618 -4.0952668991497694 ;
	setAttr ".rp" -type "double3" 0 -1.0000001508441674 0 ;
	setAttr ".sp" -type "double3" 0 -1.0000001508441674 0 ;
createNode mesh -n "pCylinderShape26" -p "pCylinder26";
	rename -uid "CADB41D1-4CA2-5156-2BDE-C28A67D25B33";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.84374997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".pt[41:61]" -type "float3"  3.7252903e-09 0 0 7.4505806e-09 
		0 3.7252903e-09 0 0 0 0 0 3.7252903e-09 1.8626451e-09 0 3.7252903e-09 0 0 1.4901161e-08 
		0 0 3.7252903e-09 -3.7252903e-09 0 3.7252903e-09 3.7252903e-09 0 3.7252903e-09 -1.1175871e-08 
		0 0 0 0 0 -1.1175871e-08 0 0 3.7252903e-09 0 -3.7252903e-09 -3.7252903e-09 0 0 0 
		0 0 0 0 -1.4901161e-08 1.8626451e-09 0 0 0 0 0 7.4505806e-09 0 -3.7252903e-09 3.7252903e-09 
		0 0 0 0 0;
createNode transform -n "pCube35";
	rename -uid "8D88196C-4832-2B5B-E20A-B9B57F1747A5";
	setAttr ".t" -type "double3" -1.2925276246360697 3.2327500342269921 1.0955788051937794 ;
	setAttr ".r" -type "double3" 12.473534952587034 1.4092170305281155 -10.429203634903923 ;
	setAttr ".s" -type "double3" 0.38639200751961833 0.38639200751961833 0.38639200751961833 ;
createNode mesh -n "pCubeShape35" -p "pCube35";
	rename -uid "267AD54A-4EC9-2A84-6A33-2C94308A8178";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.58533361554145813 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[14]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".pt[17]" -type "float3" 0 -1.8626451e-09 0 ;
createNode transform -n "pCube36";
	rename -uid "D7558BA0-40EE-5803-F74D-12BC6CF039DC";
	setAttr ".t" -type "double3" -1.2985910016883215 3.2327500342269921 1.5561195536488919 ;
	setAttr ".r" -type "double3" -63.063572716380172 81.965826831189759 -68.001084743374022 ;
	setAttr ".s" -type "double3" 0.38639200751961833 0.38639200751961833 0.38639200751961833 ;
createNode mesh -n "pCubeShape36" -p "pCube36";
	rename -uid "562741BD-45D0-C98E-9FE7-38ABEE9F674B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[14:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7:9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[12:13]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[18:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[16:17]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[6]" "f[10:11]";
	setAttr ".pv" -type "double2" 0.5 0.58533361554145813 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.54566723 0.92066723 0.54566729 0.32933277 0.375 0
		 0.625 0 0.625 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[14]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".pt[17]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr -s 18 ".vt[0:17]"  -0.61172628 0.094214857 0.5 0.5 -0.10739291 0.5
		 -0.61172628 0.30900067 0.5 0.5 0.10739291 0.5 -1.12756252 0.22707525 -1.023723841
		 0.38827419 0.30900067 -0.5 -1.12756252 0.012289442 -1.023723841 0.38827419 0.094214857 -0.5
		 -0.12820244 0.094214857 0.016475201 -0.12820244 0.30900067 0.016475201 -0.61172628 0.094214857 0.5
		 0.5 -0.10739291 0.5 0.5 0.10739291 0.5 -0.61172628 0.30900067 0.5 -1.12756252 0.22707525 -1.023723841
		 0.38827419 0.30900067 -0.5 0.38827419 0.094214857 -0.5 -1.12756252 0.01228944 -1.023723841;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 2 4 0 3 5 0 6 0 0
		 7 1 0 3 9 1 6 8 1 8 1 1 7 8 1 8 0 1 9 4 1 5 9 1 9 2 1 0 10 0 1 11 0 10 11 0 3 12 0
		 11 12 0 2 13 0 13 12 0 10 13 0 4 14 0 5 15 0 14 15 0 7 16 0 15 16 0 6 17 0 17 16 0
		 14 17 0 16 11 0 12 15 0 17 10 0 13 14 0;
	setAttr -s 20 -ch 72 ".fc[0:19]" -type "polyFaces" 
		f 4 18 20 -23 -24
		mu 0 4 16 17 18 19
		f 3 1 8 15
		mu 0 3 2 3 15
		f 4 26 28 -31 -32
		mu 0 4 20 21 22 23
		f 3 9 12 -7
		mu 0 3 6 14 8
		f 4 -33 -29 -34 -21
		mu 0 4 17 24 25 18
		f 4 34 23 35 31
		mu 0 4 26 16 19 27
		f 3 14 -9 5
		mu 0 3 5 15 3
		f 3 3 11 -10
		mu 0 3 6 7 14
		f 3 -12 7 -11
		mu 0 3 14 7 9
		f 3 -13 10 -1
		mu 0 3 8 14 9
		f 3 -14 -15 -3
		mu 0 3 4 15 5
		f 3 -16 13 -5
		mu 0 3 2 15 4
		f 4 0 17 -19 -17
		mu 0 4 0 1 17 16
		f 4 -2 21 22 -20
		mu 0 4 3 2 19 18
		f 4 2 25 -27 -25
		mu 0 4 4 5 21 20
		f 4 -4 29 30 -28
		mu 0 4 7 6 23 22
		f 4 -8 27 32 -18
		mu 0 4 1 10 24 17
		f 4 -6 19 33 -26
		mu 0 4 11 3 18 25
		f 4 6 16 -35 -30
		mu 0 4 12 0 16 26
		f 4 4 24 -36 -22
		mu 0 4 2 13 27 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group3";
	rename -uid "92BE7430-4538-A3A3-C286-CEA1A9C2B2A8";
	setAttr ".rp" -type "double3" -1.4030768142046319 3.3139882685568782 1.3503446248049378 ;
	setAttr ".sp" -type "double3" -1.4030768142046319 3.3139882685568782 1.3503446248049378 ;
createNode transform -n "pCube37" -p "group3";
	rename -uid "7CF56DF0-4F97-C553-E553-35B42AA59BE5";
	setAttr ".t" -type "double3" -1.2985910016883215 3.2327500342269921 1.5561195536488919 ;
	setAttr ".r" -type "double3" -63.063572716380172 81.965826831189759 -68.001084743374022 ;
	setAttr ".s" -type "double3" 0.38639200751961833 0.38639200751961833 0.38639200751961833 ;
createNode mesh -n "pCubeShape37" -p "|group3|pCube37";
	rename -uid "194E8579-4A1C-D2F4-CA1B-F59B502D9784";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[14:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7:9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[12:13]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[18:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[16:17]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[6]" "f[10:11]";
	setAttr ".pv" -type "double2" 0.5 0.58533361554145813 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.54566723 0.92066723 0.54566729 0.32933277 0.375 0
		 0.625 0 0.625 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[14]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".pt[17]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr -s 18 ".vt[0:17]"  -0.61172628 0.094214857 0.5 0.5 -0.10739291 0.5
		 -0.61172628 0.30900067 0.5 0.5 0.10739291 0.5 -1.12756252 0.22707525 -1.023723841
		 0.38827419 0.30900067 -0.5 -1.12756252 0.012289442 -1.023723841 0.38827419 0.094214857 -0.5
		 -0.12820244 0.094214857 0.016475201 -0.12820244 0.30900067 0.016475201 -0.61172628 0.094214857 0.5
		 0.5 -0.10739291 0.5 0.5 0.10739291 0.5 -0.61172628 0.30900067 0.5 -1.12756252 0.22707525 -1.023723841
		 0.38827419 0.30900067 -0.5 0.38827419 0.094214857 -0.5 -1.12756252 0.01228944 -1.023723841;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 2 4 0 3 5 0 6 0 0
		 7 1 0 3 9 1 6 8 1 8 1 1 7 8 1 8 0 1 9 4 1 5 9 1 9 2 1 0 10 0 1 11 0 10 11 0 3 12 0
		 11 12 0 2 13 0 13 12 0 10 13 0 4 14 0 5 15 0 14 15 0 7 16 0 15 16 0 6 17 0 17 16 0
		 14 17 0 16 11 0 12 15 0 17 10 0 13 14 0;
	setAttr -s 20 -ch 72 ".fc[0:19]" -type "polyFaces" 
		f 4 18 20 -23 -24
		mu 0 4 16 17 18 19
		f 3 1 8 15
		mu 0 3 2 3 15
		f 4 26 28 -31 -32
		mu 0 4 20 21 22 23
		f 3 9 12 -7
		mu 0 3 6 14 8
		f 4 -33 -29 -34 -21
		mu 0 4 17 24 25 18
		f 4 34 23 35 31
		mu 0 4 26 16 19 27
		f 3 14 -9 5
		mu 0 3 5 15 3
		f 3 3 11 -10
		mu 0 3 6 7 14
		f 3 -12 7 -11
		mu 0 3 14 7 9
		f 3 -13 10 -1
		mu 0 3 8 14 9
		f 3 -14 -15 -3
		mu 0 3 4 15 5
		f 3 -16 13 -5
		mu 0 3 2 15 4
		f 4 0 17 -19 -17
		mu 0 4 0 1 17 16
		f 4 -2 21 22 -20
		mu 0 4 3 2 19 18
		f 4 2 25 -27 -25
		mu 0 4 4 5 21 20
		f 4 -4 29 30 -28
		mu 0 4 7 6 23 22
		f 4 -8 27 32 -18
		mu 0 4 1 10 24 17
		f 4 -6 19 33 -26
		mu 0 4 11 3 18 25
		f 4 6 16 -35 -30
		mu 0 4 12 0 16 26
		f 4 4 24 -36 -22
		mu 0 4 2 13 27 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube38" -p "group3";
	rename -uid "718B0262-46B8-EAAD-7F8E-E9BA59DBA753";
	setAttr ".t" -type "double3" -1.2925276246360697 3.2327500342269921 1.0955788051937794 ;
	setAttr ".r" -type "double3" 12.473534952587034 1.4092170305281155 -10.429203634903923 ;
	setAttr ".s" -type "double3" 0.38639200751961833 0.38639200751961833 0.38639200751961833 ;
createNode mesh -n "pCubeShape38" -p "|group3|pCube38";
	rename -uid "4FD042F6-4BA3-DA5D-5E23-CAB3C29FB4AB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[14:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7:9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[12:13]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[18:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[16:17]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[6]" "f[10:11]";
	setAttr ".pv" -type "double2" 0.5 0.58533361554145813 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.54566723 0.92066723 0.54566729 0.32933277 0.375 0
		 0.625 0 0.625 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[14]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".pt[17]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr -s 18 ".vt[0:17]"  -0.61172628 0.094214857 0.5 0.5 -0.10739291 0.5
		 -0.61172628 0.30900067 0.5 0.5 0.10739291 0.5 -1.12756252 0.22707525 -1.023723841
		 0.38827419 0.30900067 -0.5 -1.12756252 0.012289442 -1.023723841 0.38827419 0.094214857 -0.5
		 -0.12820244 0.094214857 0.016475201 -0.12820244 0.30900067 0.016475201 -0.61172628 0.094214857 0.5
		 0.5 -0.10739291 0.5 0.5 0.10739291 0.5 -0.61172628 0.30900067 0.5 -1.12756252 0.22707525 -1.023723841
		 0.38827419 0.30900067 -0.5 0.38827419 0.094214857 -0.5 -1.12756252 0.01228944 -1.023723841;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 2 4 0 3 5 0 6 0 0
		 7 1 0 3 9 1 6 8 1 8 1 1 7 8 1 8 0 1 9 4 1 5 9 1 9 2 1 0 10 0 1 11 0 10 11 0 3 12 0
		 11 12 0 2 13 0 13 12 0 10 13 0 4 14 0 5 15 0 14 15 0 7 16 0 15 16 0 6 17 0 17 16 0
		 14 17 0 16 11 0 12 15 0 17 10 0 13 14 0;
	setAttr -s 20 -ch 72 ".fc[0:19]" -type "polyFaces" 
		f 4 18 20 -23 -24
		mu 0 4 16 17 18 19
		f 3 1 8 15
		mu 0 3 2 3 15
		f 4 26 28 -31 -32
		mu 0 4 20 21 22 23
		f 3 9 12 -7
		mu 0 3 6 14 8
		f 4 -33 -29 -34 -21
		mu 0 4 17 24 25 18
		f 4 34 23 35 31
		mu 0 4 26 16 19 27
		f 3 14 -9 5
		mu 0 3 5 15 3
		f 3 3 11 -10
		mu 0 3 6 7 14
		f 3 -12 7 -11
		mu 0 3 14 7 9
		f 3 -13 10 -1
		mu 0 3 8 14 9
		f 3 -14 -15 -3
		mu 0 3 4 15 5
		f 3 -16 13 -5
		mu 0 3 2 15 4
		f 4 0 17 -19 -17
		mu 0 4 0 1 17 16
		f 4 -2 21 22 -20
		mu 0 4 3 2 19 18
		f 4 2 25 -27 -25
		mu 0 4 4 5 21 20
		f 4 -4 29 30 -28
		mu 0 4 7 6 23 22
		f 4 -8 27 32 -18
		mu 0 4 1 10 24 17
		f 4 -6 19 33 -26
		mu 0 4 11 3 18 25
		f 4 6 16 -35 -30
		mu 0 4 12 0 16 26
		f 4 4 24 -36 -22
		mu 0 4 2 13 27 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group4";
	rename -uid "6DA0391D-42F3-4EB1-444F-65B2A360B9AD";
	setAttr ".t" -type "double3" 0.61610215632525289 0 0 ;
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".rp" -type "double3" -1.4030768142046319 3.3139882685568782 1.3503446248049378 ;
	setAttr ".sp" -type "double3" -1.4030768142046319 3.3139882685568782 1.3503446248049378 ;
createNode transform -n "pCube37" -p "group4";
	rename -uid "36309626-4423-F45A-5165-D682F8922804";
	setAttr ".t" -type "double3" -1.2985910016883215 3.2327500342269921 1.5561195536488919 ;
	setAttr ".r" -type "double3" -63.063572716380172 81.965826831189759 -68.001084743374022 ;
	setAttr ".s" -type "double3" 0.38639200751961833 0.38639200751961833 0.38639200751961833 ;
createNode mesh -n "pCubeShape37" -p "|group4|pCube37";
	rename -uid "0D555408-44A1-E49E-735A-A28D660E4F46";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[14:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7:9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[12:13]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[18:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[16:17]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[6]" "f[10:11]";
	setAttr ".pv" -type "double2" 0.5 0.58533361554145813 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.54566723 0.92066723 0.54566729 0.32933277 0.375 0
		 0.625 0 0.625 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[14]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".pt[17]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr -s 18 ".vt[0:17]"  -0.61172628 0.094214857 0.5 0.5 -0.10739291 0.5
		 -0.61172628 0.30900067 0.5 0.5 0.10739291 0.5 -1.12756252 0.22707525 -1.023723841
		 0.38827419 0.30900067 -0.5 -1.12756252 0.012289442 -1.023723841 0.38827419 0.094214857 -0.5
		 -0.12820244 0.094214857 0.016475201 -0.12820244 0.30900067 0.016475201 -0.61172628 0.094214857 0.5
		 0.5 -0.10739291 0.5 0.5 0.10739291 0.5 -0.61172628 0.30900067 0.5 -1.12756252 0.22707525 -1.023723841
		 0.38827419 0.30900067 -0.5 0.38827419 0.094214857 -0.5 -1.12756252 0.01228944 -1.023723841;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 2 4 0 3 5 0 6 0 0
		 7 1 0 3 9 1 6 8 1 8 1 1 7 8 1 8 0 1 9 4 1 5 9 1 9 2 1 0 10 0 1 11 0 10 11 0 3 12 0
		 11 12 0 2 13 0 13 12 0 10 13 0 4 14 0 5 15 0 14 15 0 7 16 0 15 16 0 6 17 0 17 16 0
		 14 17 0 16 11 0 12 15 0 17 10 0 13 14 0;
	setAttr -s 20 -ch 72 ".fc[0:19]" -type "polyFaces" 
		f 4 18 20 -23 -24
		mu 0 4 16 17 18 19
		f 3 1 8 15
		mu 0 3 2 3 15
		f 4 26 28 -31 -32
		mu 0 4 20 21 22 23
		f 3 9 12 -7
		mu 0 3 6 14 8
		f 4 -33 -29 -34 -21
		mu 0 4 17 24 25 18
		f 4 34 23 35 31
		mu 0 4 26 16 19 27
		f 3 14 -9 5
		mu 0 3 5 15 3
		f 3 3 11 -10
		mu 0 3 6 7 14
		f 3 -12 7 -11
		mu 0 3 14 7 9
		f 3 -13 10 -1
		mu 0 3 8 14 9
		f 3 -14 -15 -3
		mu 0 3 4 15 5
		f 3 -16 13 -5
		mu 0 3 2 15 4
		f 4 0 17 -19 -17
		mu 0 4 0 1 17 16
		f 4 -2 21 22 -20
		mu 0 4 3 2 19 18
		f 4 2 25 -27 -25
		mu 0 4 4 5 21 20
		f 4 -4 29 30 -28
		mu 0 4 7 6 23 22
		f 4 -8 27 32 -18
		mu 0 4 1 10 24 17
		f 4 -6 19 33 -26
		mu 0 4 11 3 18 25
		f 4 6 16 -35 -30
		mu 0 4 12 0 16 26
		f 4 4 24 -36 -22
		mu 0 4 2 13 27 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube38" -p "group4";
	rename -uid "EBDA5D3B-4798-EB16-475B-6D938071C8E4";
	setAttr ".t" -type "double3" -1.2925276246360697 3.2327500342269921 1.0955788051937794 ;
	setAttr ".r" -type "double3" 12.473534952587034 1.4092170305281155 -10.429203634903923 ;
	setAttr ".s" -type "double3" 0.38639200751961833 0.38639200751961833 0.38639200751961833 ;
createNode mesh -n "pCubeShape38" -p "|group4|pCube38";
	rename -uid "DEDDD875-4E7A-B08A-19D2-8D88B7CFE9C8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[14:15]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7:9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[12:13]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[18:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[16:17]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[6]" "f[10:11]";
	setAttr ".pv" -type "double2" 0.5 0.58533361554145813 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.54566723 0.92066723 0.54566729 0.32933277 0.375 0
		 0.625 0 0.625 0.25 0.375 0.25 0.375 0.5 0.625 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt";
	setAttr ".pt[14]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".pt[17]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr -s 18 ".vt[0:17]"  -0.61172628 0.094214857 0.5 0.5 -0.10739291 0.5
		 -0.61172628 0.30900067 0.5 0.5 0.10739291 0.5 -1.12756252 0.22707525 -1.023723841
		 0.38827419 0.30900067 -0.5 -1.12756252 0.012289442 -1.023723841 0.38827419 0.094214857 -0.5
		 -0.12820244 0.094214857 0.016475201 -0.12820244 0.30900067 0.016475201 -0.61172628 0.094214857 0.5
		 0.5 -0.10739291 0.5 0.5 0.10739291 0.5 -0.61172628 0.30900067 0.5 -1.12756252 0.22707525 -1.023723841
		 0.38827419 0.30900067 -0.5 0.38827419 0.094214857 -0.5 -1.12756252 0.01228944 -1.023723841;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 2 4 0 3 5 0 6 0 0
		 7 1 0 3 9 1 6 8 1 8 1 1 7 8 1 8 0 1 9 4 1 5 9 1 9 2 1 0 10 0 1 11 0 10 11 0 3 12 0
		 11 12 0 2 13 0 13 12 0 10 13 0 4 14 0 5 15 0 14 15 0 7 16 0 15 16 0 6 17 0 17 16 0
		 14 17 0 16 11 0 12 15 0 17 10 0 13 14 0;
	setAttr -s 20 -ch 72 ".fc[0:19]" -type "polyFaces" 
		f 4 18 20 -23 -24
		mu 0 4 16 17 18 19
		f 3 1 8 15
		mu 0 3 2 3 15
		f 4 26 28 -31 -32
		mu 0 4 20 21 22 23
		f 3 9 12 -7
		mu 0 3 6 14 8
		f 4 -33 -29 -34 -21
		mu 0 4 17 24 25 18
		f 4 34 23 35 31
		mu 0 4 26 16 19 27
		f 3 14 -9 5
		mu 0 3 5 15 3
		f 3 3 11 -10
		mu 0 3 6 7 14
		f 3 -12 7 -11
		mu 0 3 14 7 9
		f 3 -13 10 -1
		mu 0 3 8 14 9
		f 3 -14 -15 -3
		mu 0 3 4 15 5
		f 3 -16 13 -5
		mu 0 3 2 15 4
		f 4 0 17 -19 -17
		mu 0 4 0 1 17 16
		f 4 -2 21 22 -20
		mu 0 4 3 2 19 18
		f 4 2 25 -27 -25
		mu 0 4 4 5 21 20
		f 4 -4 29 30 -28
		mu 0 4 7 6 23 22
		f 4 -8 27 32 -18
		mu 0 4 1 10 24 17
		f 4 -6 19 33 -26
		mu 0 4 11 3 18 25
		f 4 6 16 -35 -30
		mu 0 4 12 0 16 26
		f 4 4 24 -36 -22
		mu 0 4 2 13 27 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "bouys";
	rename -uid "72EF41B1-401F-A794-DC9D-6E96FCE9D814";
createNode transform -n "pCylinder1" -p "bouys";
	rename -uid "1EC14018-4EAA-4D04-F073-1689DE1C90B2";
	setAttr ".t" -type "double3" 1.5922073842184212 1.6105118782300845 -4.859185088158978 ;
	setAttr ".s" -type "double3" 0.61078110252752915 1.3617258186101702 0.61078110252752915 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "913E98EE-46CC-A549-04B3-AEA41458C204";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.49999996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2" -p "bouys";
	rename -uid "C8399074-472C-75D9-085F-86960F4D0737";
	setAttr ".t" -type "double3" -1.2693381673357269 1.6105118782300845 -5.1956701158874568 ;
	setAttr ".s" -type "double3" 0.61078110252752915 1.3617258186101702 0.61078110252752915 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "F3313420-4000-C72B-23AA-0AB58FE006E4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[20:22]" "f[26:45]" "f[66:85]" "f[106:162]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 4 "f[23:25]" "f[46:65]" "f[86:105]" "f[163:219]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".pv" -type "double2" 0.49999998509883881 0.49999996274709702 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 244 ".uvst[0].uvsp[0:243]" -type "float2" 0.375 0.3125 0.38749999
		 0.3125 0.39999998 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993
		 0.3125 0.46249992 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987
		 0.3125 0.52499986 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981
		 0.3125 0.5874998 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375
		 0.6875 0.38749999 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994
		 0.6875 0.44999993 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988
		 0.6875 0.51249987 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982
		 0.6875 0.57499981 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976
		 0.6875 0.55640781 0.13792199 0.54798341 0.12138829 0.53486192 0.10826665 0.51832801
		 0.099842153 0.50000018 0.10188594 0.4865517 0.11486026 0.47409368 0.1205926 0.46434265
		 0.13034362 0.45808244 0.14263031 0.45592475 0.15625 0.45800167 0.1698961 0.46030912
		 0.18508713 0.47123078 0.19584705 0.48483932 0.20290908 0.50000012 0.19976944 0.51679945
		 0.20795305 0.53486198 0.20423287 0.54798341 0.19111198 0.55640781 0.17457801 0.5000006
		 0.15625 0.55931062 0.15624985 0.53565747 0.86965638 0.5259065 0.87940741 0.5136199
		 0.88566786 0.5 0.88782537 0.48638031 0.88566792 0.47409368 0.87940741 0.46434265
		 0.86965638 0.45808244 0.85736972 0.45592478 0.84375 0.45808238 0.8301301 0.46434247
		 0.81784326 0.47409335 0.80809301 0.48637989 0.80183268 0.50000018 0.79967523 0.51362026
		 0.80183268 0.5259068 0.80809295 0.5356577 0.81784314 0.54191792 0.83013004 0.54407501
		 0.84375018 0.5419178 0.85736972 0.50000048 0.84375018 0.64860266 0.10796607 0.62640899
		 0.064408496 0.62640899 0.064408496 0.59184152 0.029841021 0.59184152 0.029841021
		 0.54828393 0.0076473355 0.54828393 0.0076473355 0.5 -7.4562784e-08 0.5 -7.4494366e-08
		 0.45171607 0.0076473504 0.45171604 0.0076473583 0.40815851 0.029841051 0.40815851
		 0.029841051 0.37359107 0.064408526 0.37359104 0.064408571 0.35139751 0.10796583 0.3513974
		 0.10796614 0.34375 0.15624987 0.34374997 0.15625006 0.3513974 0.2045339 0.3513974
		 0.2045339 0.37359101 0.24809135 0.3735911 0.2480915 0.40815854 0.28265893 0.40815854
		 0.28265893 0.45171613 0.3048526 0.45171618 0.3048526 0.5 0.3125 0.50000012 0.31249997
		 0.54828387 0.3048526 0.54828387 0.3048526 0.59184158 0.28265882 0.59184152 0.28265887
		 0.62640899 0.24809131 0.62640893 0.24809146 0.6486026 0.2045339 0.6486026 0.20453373
		 0.65625 0.15625 0.65625 0.15624984 0.64860266 0.10796607 0.62640893 0.93559146 0.64860249
		 0.89203417 0.59184152 0.97015887 0.62640893 0.93559146 0.54828387 0.9923526 0.59184146
		 0.97015893 0.50000006 1 0.54828387 0.9923526 0.45171618 0.9923526 0.50000012 1 0.40815854
		 0.97015893 0.4517161 0.9923526 0.37359113 0.93559152 0.40815854 0.97015893 0.35139742
		 0.89203399 0.37359107 0.93559146 0.34375 0.84375018 0.3513976 0.89203435 0.35139737
		 0.79546624 0.34375 0.84375024 0.37359104 0.7519086 0.3513974 0.79546601 0.40815851
		 0.71734107 0.37359107 0.75190854 0.45171604 0.69514734 0.40815857 0.71734107 0.49999988
		 0.68749994 0.45171607 0.69514734 0.54828393 0.69514734 0.5 0.68749994 0.59184152
		 0.71734101 0.54828393 0.69514734 0.62640899 0.75190848 0.59184158 0.71734107 0.64860266
		 0.79546607 0.62640899 0.75190848 0.65625 0.84375 0.64860266 0.79546607 0.6486026
		 0.89203387 0.65625 0.84375 0.60227877 0.12086461 0.62465101 0.11487287 0.60836494
		 0.075743951 0.59820628 0.081558652 0.57976764 0.044780377 0.57407326 0.051882081
		 0.54209465 0.025003128 0.53939551 0.03314437 0.49967879 0.01805572 0.49980211 0.028220166
		 0.45689315 0.026607739 0.45927927 0.037903573 0.41878191 0.045450103 0.42458791 0.054085605
		 0.38846329 0.075543813 0.39668435 0.081654072 0.36896735 0.11377033 0.37867028 0.11696057
		 0.36226308 0.15623264 0.37243041 0.15625006 0.36906675 0.19866878 0.37855482 0.19554606
		 0.38828114 0.23727649 0.39534235 0.23155683 0.41894504 0.26748851 0.42436931 0.25973409
		 0.45718226 0.28714731 0.4601 0.27789062 0.49922135 0.29329705 0.49935386 0.28278831
		 0.54272437 0.28824726 0.53947699 0.28034383 0.58076459 0.26830125 0.57544041 0.26187795
		 0.61035299 0.23773523 0.60267812 0.23285058 0.62795049 0.19938529 0.61647564 0.19702066
		 0.63134158 0.15711693 0.6082114 0.15835269 0.6152547 0.88119847 0.57747215 0.86892211
		 0.5659017 0.89163023 0.59804159 0.91498113 0.54788029 0.90965199 0.57123137 0.94179142
		 0.52517217 0.92122215 0.53744853 0.95900476 0.50000006 0.92520911 0.50000006 0.96493602
		 0.47482792 0.92122215 0.4625515 0.95900476 0.45211977 0.90965199 0.42876863 0.94179147
		 0.43409839 0.89163023 0.40195847 0.91498119 0.42252791 0.86892217 0.38474536 0.88119859
		 0.41854101 0.84375012 0.37881401 0.84375018 0.42252788 0.81857795 0.38474527 0.80630165
		 0.43409836 0.79586977 0.40195844 0.77251875 0.45211962 0.77784842 0.4287686 0.74570853
		 0.47482771 0.76627809 0.46255144 0.72849536 0.50000012 0.76229125 0.50000006 0.72256404
		 0.52517241 0.76627809 0.53744859 0.72849536 0.54788041 0.77784842 0.57123131 0.74570853
		 0.56590176 0.79586977 0.59804159 0.77251875 0.57747215 0.81857789 0.61525476 0.80630159
		 0.58145899 0.84375012 0.62118602 0.84375006;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 202 ".vt";
	setAttr ".vt[0:165]"  0.45097995 -0.33530122 -0.14653206 0.38362622 -0.33530122 -0.27872086
		 0.27872109 -0.33530122 -0.38362598 0.1465323 -0.33530122 -0.45098019 4.7683716e-07 -0.33530122 -0.4741888
		 -0.14653158 -0.33530122 -0.45098019 -0.27872038 -0.33530122 -0.38362598 -0.38362527 -0.33530122 -0.27872086
		 -0.45097876 -0.33530122 -0.14653206 -0.47418714 -0.33530122 -9.5367432e-07 -0.45097876 -0.33530122 0.14653111
		 -0.38362527 -0.37064856 0.2787199 -0.27872038 -0.37064856 0.38362598 -0.14653158 -0.37064856 0.45097923
		 4.7683716e-07 -0.33530122 0.47418642 0.1465323 -0.33530122 0.45097923 0.27872109 -0.33530122 0.38362598
		 0.38362598 -0.33530122 0.2787199 0.45097995 -0.33530122 0.14653111 0.47418785 -0.33530122 -9.5367432e-07
		 0.45097995 0.33530128 -0.14653206 0.38362622 0.33530128 -0.27872086 0.27872109 0.33530128 -0.38362598
		 0.1465323 0.33530128 -0.45098019 4.7683716e-07 0.33530128 -0.4741888 -0.14653158 0.33530128 -0.45098019
		 -0.27872038 0.33530128 -0.38362598 -0.38362527 0.33530128 -0.27872086 -0.45097876 0.33530128 -0.14653206
		 -0.47418714 0.33530128 -9.5367432e-07 -0.45097876 0.33530128 0.14653111 -0.38362527 0.33530128 0.2787199
		 -0.27872038 0.33530128 0.38362598 -0.14653158 0.33530128 0.45097923 4.7683716e-07 0.33530128 0.47418642
		 0.1465323 0.33530128 0.45097923 0.27872109 0.33530128 0.38362598 0.38362598 0.33530128 0.2787199
		 0.45097995 0.33530128 0.14653111 0.47418785 0.33530128 -9.5367432e-07 4.7683716e-07 -0.44361913 -9.5367432e-07
		 4.7683716e-07 0.44361961 -9.5367432e-07 0.10857725 -0.42756033 -0.035279274 0.22245288 -0.40671039 -0.07227993
		 0.32931638 -0.37895936 -0.1070013 0.42726541 -0.34479219 -0.13882637 0.36345339 -0.34479219 -0.26406479
		 0.28013301 -0.37895936 -0.20352936 0.18922973 -0.40671039 -0.1374836 0.09236145 -0.42756033 -0.06710434
		 0.26406479 -0.34479219 -0.36345387 0.20352912 -0.37895936 -0.28013325 0.1374836 -0.40671039 -0.18922997
		 0.067104578 -0.42756033 -0.09236145 0.13882709 -0.34479219 -0.42726707 0.10700154 -0.37895936 -0.32931709
		 0.072279692 -0.40671039 -0.22245312 0.035279274 -0.42756033 -0.10857773 4.7683716e-07 -0.34190828 -0.45683002
		 4.7683716e-07 -0.37781882 -0.34858608 4.7683716e-07 -0.40698594 -0.23048973 4.7683716e-07 -0.42889965 -0.10464382
		 -0.13197565 -0.36472034 -0.40618229 -0.10306597 -0.40704817 -0.31720734 -0.066494942 -0.43424344 -0.20465279
		 -0.02588582 -0.44361913 -0.079669952 -0.25020766 -0.36559778 -0.34438324 -0.1957345 -0.4074598 -0.26940632
		 -0.12666821 -0.4343456 -0.17434597 -0.049865484 -0.44361913 -0.068635941 -0.34438133 -0.36559796 -0.25020981
		 -0.26940584 -0.4074598 -0.19573498 -0.17434382 -0.4343456 -0.12666893 -0.068634748 -0.44361913 -0.049866676
		 -0.40484476 -0.36559778 -0.13154316 -0.31670523 -0.4074598 -0.10290432 -0.20495415 -0.4343456 -0.066594124
		 -0.080685139 -0.44361913 -0.026216507 -0.42567897 -0.36559778 -9.5367432e-07 -0.33300376 -0.4074598 -9.5367432e-07
		 -0.21550131 -0.4343456 -9.5367432e-07 -0.084837675 -0.44361913 -9.5367432e-07 -0.40493441 -0.36553895 0.13157034
		 -0.31676579 -0.40743124 0.10292196 -0.20503855 -0.43433911 0.066619396 -0.080840111 -0.44361913 0.026265621
		 -0.36461091 -0.38053775 0.26490402 -0.27932191 -0.41483384 0.20293903 -0.18119645 -0.43630636 0.13164616
		 -0.076398373 -0.44361913 0.055505276 -0.26481032 -0.38060552 0.36448002 -0.20287991 -0.41486627 0.27924061
		 -0.13157392 -0.43631369 0.18109512 -0.055376291 -0.44361913 0.076218128 -0.1392684 -0.38053793 0.42862558
		 -0.10669112 -0.41483384 0.32836246 -0.069211006 -0.43630636 0.2130084 -0.029181719 -0.44361913 0.089810848
		 4.7683716e-07 -0.36472034 0.42708206 4.7683716e-07 -0.40704817 0.333529 4.7683716e-07 -0.43424332 0.21518183
		 4.7683716e-07 -0.44361913 0.083767414 0.14116812 -0.34190845 0.4344697 0.10771918 -0.37781882 0.33152199
		 0.071224928 -0.40698594 0.21920633 0.032336712 -0.42889965 0.099520206 0.26406431 -0.34479237 0.36345196
		 0.20352888 -0.37895936 0.28013229 0.1374836 -0.40671039 0.18922758 0.067104578 -0.42756033 0.092359066
		 0.36345291 -0.34479219 0.2640624 0.28013301 -0.37895936 0.20352697 0.18922949 -0.40671039 0.13748121
		 0.09236145 -0.42756033 0.067103386 0.42726517 -0.34479219 0.13882542 0.32931638 -0.37895936 0.10700035
		 0.22245264 -0.40671039 0.0722785 0.10857677 -0.42756033 0.035277367 0.44925284 -0.34479219 -9.5367432e-07
		 0.34626341 -0.37895936 -9.5367432e-07 0.23390031 -0.40671039 -9.5367432e-07 0.11416483 -0.42756033 -9.5367432e-07
		 0.40484595 0.36559796 -0.13154316 0.31670642 0.40745986 -0.10290432 0.20495486 0.43434584 -0.066594124
		 0.080685854 0.44361961 -0.026216507 0.068635941 0.44361961 -0.049866676 0.17434478 0.43434584 -0.12666893
		 0.26940656 0.40746021 -0.19573498 0.34438252 0.36559808 -0.25020981 0.049866676 0.44361961 -0.068635941
		 0.12666893 0.43434584 -0.17434597 0.19573569 0.40745986 -0.26940632 0.25020885 0.36559796 -0.34438324
		 0.026216745 0.44361961 -0.080686569 0.066594124 0.43434584 -0.2049551 0.10290456 0.40746021 -0.31670666
		 0.13154244 0.36559808 -0.40484619 4.7683716e-07 0.44361961 -0.084838867 4.7683716e-07 0.43434584 -0.21550369
		 4.7683716e-07 0.40746021 -0.33300495 4.7683716e-07 0.36559808 -0.42568016 -0.026215553 0.44361961 -0.080686569
		 -0.066592932 0.43434584 -0.2049551 -0.10290337 0.40746021 -0.31670666 -0.13154173 0.36559808 -0.40484619
		 -0.049865484 0.44361961 -0.068635941 -0.12666821 0.43434584 -0.17434597 -0.1957345 0.40745986 -0.26940632
		 -0.25020766 0.36559796 -0.34438324 -0.068634748 0.44361961 -0.049866676 -0.17434382 0.43434584 -0.12666893
		 -0.26940584 0.40746021 -0.19573498 -0.34438133 0.36559808 -0.25020981 -0.080685139 0.44361961 -0.026216507
		 -0.20495415 0.43434584 -0.066594124 -0.31670523 0.40745986 -0.10290432 -0.40484476 0.36559796 -0.13154316
		 -0.084837675 0.44361961 -9.5367432e-07 -0.21550131 0.43434584 -9.5367432e-07 -0.33300376 0.40745986 -9.5367432e-07
		 -0.42567897 0.36559796 -9.5367432e-07 -0.080685139 0.44361961 0.026215553 -0.20495415 0.43434584 0.066592693
		 -0.31670523 0.40745986 0.10290241 -0.40484476 0.36559796 0.13154173;
	setAttr ".vt[166:201]" -0.068634748 0.44361961 0.049864769 -0.17434382 0.43434584 0.12666702
		 -0.26940584 0.40746021 0.19573402 -0.34438133 0.36559808 0.25020742 -0.049866199 0.44361961 0.068633556
		 -0.12666821 0.43434584 0.17434359 -0.1957345 0.40746021 0.26940536 -0.25020742 0.36559808 0.34438181
		 -0.026216269 0.44361961 0.080683708 -0.066593409 0.43434584 0.20495319 -0.10290337 0.40746021 0.31670427
		 -0.13154173 0.36559832 0.40484381 4.7683716e-07 0.44361961 0.08483696 4.7683716e-07 0.43434584 0.21550035
		 4.7683716e-07 0.40745986 0.33300304 4.7683716e-07 0.36559796 0.42567825 0.026217461 0.44361961 0.080683708
		 0.066594601 0.43434584 0.20495319 0.10290456 0.40746021 0.31670427 0.13154244 0.36559832 0.40484381
		 0.049866915 0.44361961 0.068633556 0.12666893 0.43434584 0.17434359 0.19573498 0.40746021 0.26940536
		 0.25020838 0.36559808 0.34438181 0.068635702 0.44361961 0.049864769 0.17434478 0.43434584 0.12666702
		 0.26940656 0.40746021 0.19573402 0.34438229 0.36559808 0.25020742 0.080685854 0.44361961 0.026215553
		 0.20495486 0.43434584 0.066592693 0.31670618 0.40745986 0.10290241 0.40484571 0.36559796 0.13154173
		 0.08483839 0.44361961 -9.5367432e-07 0.21550226 0.43434584 -9.5367432e-07 0.33300471 0.40746021 -9.5367432e-07
		 0.42567992 0.36559808 -9.5367432e-07;
	setAttr -s 420 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 121 42 1 45 118 1 45 44 1 44 47 1
		 47 46 1 46 45 1 44 43 1 43 48 1 48 47 1 43 42 1 42 49 1 49 48 1 51 50 1 50 46 1 52 51 1
		 49 53 1 53 52 1 55 54 1 54 50 1 56 55 1 53 57 1 57 56 1 59 58 1 58 54 1 60 59 1 57 61 1
		 61 60 0 63 62 1 62 58 1 64 63 0 61 65 1 65 64 0 67 66 1 66 62 1 68 67 1 65 69 1 69 68 1
		 71 70 1 70 66 1 72 71 1 69 73 1 73 72 1 75 74 1 74 70 1 76 75 1 73 77 1 77 76 1 79 78 1
		 78 74 1 80 79 1 77 81 1 81 80 1 83 82 1 82 78 1 84 83 1 81 85 1 85 84 1 87 86 1 86 82 1
		 88 87 1 85 89 1 89 88 1 91 90 1 90 86 1 92 91 1 89 93 1 93 92 1 95 94 1 94 90 1 96 95 1
		 93 97 1 97 96 1 99 98 1 98 94 1 100 99 1 97 101 1 101 100 0 103 102 1 102 98 1 104 103 1
		 101 105 1 105 104 0 107 106 1 106 102 1 108 107 1 105 109 1 109 108 1 111 110 1 110 106 1
		 112 111 1 109 113 1 113 112 1 115 114 1 114 110 1 116 115 1 113 117 1 117 116 1 119 118 1
		 118 114 1 120 119 1 117 121 1 121 120 1 201 122 1 125 198 1 125 124 1 124 127 1;
	setAttr ".ed[166:331]" 127 126 1 126 125 1 124 123 1 123 128 1 128 127 1 123 122 1
		 122 129 1 129 128 1 131 130 1 130 126 1 132 131 1 129 133 1 133 132 1 135 134 1 134 130 1
		 136 135 1 133 137 1 137 136 1 139 138 1 138 134 1 140 139 1 137 141 1 141 140 1 143 142 1
		 142 138 1 144 143 1 141 145 1 145 144 1 147 146 1 146 142 1 148 147 1 145 149 1 149 148 1
		 151 150 1 150 146 1 152 151 1 149 153 1 153 152 1 155 154 1 154 150 1 156 155 1 153 157 1
		 157 156 1 159 158 1 158 154 1 160 159 1 157 161 1 161 160 1 163 162 1 162 158 1 164 163 1
		 161 165 1 165 164 1 167 166 1 166 162 1 168 167 1 165 169 1 169 168 1 171 170 1 170 166 1
		 172 171 1 169 173 1 173 172 1 175 174 1 174 170 1 176 175 1 173 177 1 177 176 1 179 178 1
		 178 174 1 180 179 1 177 181 1 181 180 1 183 182 1 182 178 1 184 183 1 181 185 1 185 184 1
		 187 186 1 186 182 1 188 187 1 185 189 1 189 188 1 191 190 1 190 186 1 192 191 1 189 193 1
		 193 192 1 195 194 1 194 190 1 196 195 1 193 197 1 197 196 1 199 198 1 198 194 1 200 199 1
		 197 201 1 201 200 1 42 40 1 40 49 1 40 53 1 40 57 1 40 61 0 40 65 0 40 69 1 40 73 1
		 40 77 1 40 81 1 40 85 1 40 89 1 40 93 1 40 97 1 40 101 0 40 105 0 40 109 1 40 113 1
		 40 117 1 40 121 1 126 41 1 41 125 1 130 41 1 134 41 1 138 41 1 142 41 1 146 41 1
		 150 41 1 154 41 1 158 41 1 162 41 1 166 41 1 170 41 1 174 41 1 178 41 1 182 41 1
		 186 41 1 190 41 1 194 41 1 198 41 1 0 45 1 46 1 1 50 2 1 54 3 1 58 4 1 62 5 1 66 6 1
		 70 7 1 74 8 1 78 9 1 82 10 1 86 11 0 90 12 1 94 13 0 98 14 1 102 15 1 106 16 1 110 17 1
		 114 18 1 118 19 1 21 129 1 122 20 1 22 133 1 23 137 1 24 141 1 25 145 1 26 149 1
		 27 153 1;
	setAttr ".ed[332:419]" 28 157 1 29 161 1 30 165 1 31 169 1 32 173 1 33 177 1
		 34 181 1 35 185 1 36 189 1 37 193 1 38 197 1 39 201 1 48 52 1 47 51 1 52 56 1 51 55 1
		 56 60 1 55 59 1 60 64 1 59 63 1 64 68 1 63 67 1 68 72 1 67 71 1 72 76 1 71 75 1 76 80 1
		 75 79 1 80 84 1 79 83 1 84 88 1 83 87 1 88 92 1 87 91 1 92 96 1 91 95 1 96 100 1
		 95 99 1 100 104 1 99 103 1 104 108 1 103 107 1 108 112 1 107 111 1 112 116 1 111 115 1
		 116 120 1 115 119 1 43 120 1 44 119 1 128 132 1 127 131 1 132 136 1 131 135 1 136 140 1
		 135 139 1 140 144 1 139 143 1 144 148 1 143 147 1 148 152 1 147 151 1 152 156 1 151 155 1
		 156 160 1 155 159 1 160 164 1 159 163 1 164 168 1 163 167 1 168 172 1 167 171 1 172 176 1
		 171 175 1 176 180 1 175 179 1 180 184 1 179 183 1 184 188 1 183 187 1 188 192 1 187 191 1
		 192 196 1 191 195 1 196 200 1 195 199 1 123 200 1 124 199 1;
	setAttr -s 220 -ch 840 ".fc[0:219]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 0 1 22 21
		f 4 1 42 -22 -42
		mu 0 4 1 2 23 22
		f 4 2 43 -23 -43
		mu 0 4 2 3 24 23
		f 4 3 44 -24 -44
		mu 0 4 3 4 25 24
		f 4 4 45 -25 -45
		mu 0 4 4 5 26 25
		f 4 5 46 -26 -46
		mu 0 4 5 6 27 26
		f 4 6 47 -27 -47
		mu 0 4 6 7 28 27
		f 4 7 48 -28 -48
		mu 0 4 7 8 29 28
		f 4 8 49 -29 -49
		mu 0 4 8 9 30 29
		f 4 9 50 -30 -50
		mu 0 4 9 10 31 30
		f 4 10 51 -31 -51
		mu 0 4 10 11 32 31
		f 4 11 52 -32 -52
		mu 0 4 11 12 33 32
		f 4 12 53 -33 -53
		mu 0 4 12 13 34 33
		f 4 13 54 -34 -54
		mu 0 4 13 14 35 34
		f 4 14 55 -35 -55
		mu 0 4 14 15 36 35
		f 4 15 56 -36 -56
		mu 0 4 15 16 37 36
		f 4 16 57 -37 -57
		mu 0 4 16 17 38 37
		f 4 17 58 -38 -58
		mu 0 4 17 18 39 38
		f 4 18 59 -39 -59
		mu 0 4 18 19 40 39
		f 4 19 40 -40 -60
		mu 0 4 19 20 41 40
		f 4 62 63 64 65
		mu 0 4 123 165 166 85
		f 4 66 67 68 -64
		mu 0 4 165 164 167 166
		f 4 69 70 71 -68
		mu 0 4 164 42 43 167
		f 4 164 165 166 167
		mu 0 4 82 205 206 63
		f 4 168 169 170 -166
		mu 0 4 205 204 207 206
		f 4 171 172 173 -170
		mu 0 4 204 125 127 207
		f 3 -71 264 265
		mu 0 3 43 42 61
		f 3 -76 -266 266
		mu 0 3 44 43 61
		f 3 -81 -267 267
		mu 0 3 45 44 61
		f 3 -86 -268 268
		mu 0 3 46 45 61
		f 3 -91 -269 269
		mu 0 3 47 46 61
		f 3 -96 -270 270
		mu 0 3 48 47 61
		f 3 -101 -271 271
		mu 0 3 49 48 61
		f 3 -106 -272 272
		mu 0 3 50 49 61
		f 3 -111 -273 273
		mu 0 3 51 50 61
		f 3 -116 -274 274
		mu 0 3 52 51 61
		f 3 -121 -275 275
		mu 0 3 53 52 61
		f 3 -126 -276 276
		mu 0 3 54 53 61
		f 3 -131 -277 277
		mu 0 3 55 54 61
		f 3 -136 -278 278
		mu 0 3 56 55 61
		f 3 -141 -279 279
		mu 0 3 57 56 61
		f 3 -146 -280 280
		mu 0 3 58 57 61
		f 3 -151 -281 281
		mu 0 3 59 58 61
		f 3 -156 -282 282
		mu 0 3 60 59 61
		f 3 -161 -283 283
		mu 0 3 62 60 61
		f 3 -61 -284 -265
		mu 0 3 42 62 61
		f 3 -168 284 285
		mu 0 3 82 63 83
		f 3 -176 286 -285
		mu 0 3 63 64 83
		f 3 -181 287 -287
		mu 0 3 64 65 83
		f 3 -186 288 -288
		mu 0 3 65 66 83
		f 3 -191 289 -289
		mu 0 3 66 67 83
		f 3 -196 290 -290
		mu 0 3 67 68 83
		f 3 -201 291 -291
		mu 0 3 68 69 83
		f 3 -206 292 -292
		mu 0 3 69 70 83
		f 3 -211 293 -293
		mu 0 3 70 71 83
		f 3 -216 294 -294
		mu 0 3 71 72 83
		f 3 -221 295 -295
		mu 0 3 72 73 83
		f 3 -226 296 -296
		mu 0 3 73 74 83
		f 3 -231 297 -297
		mu 0 3 74 75 83
		f 3 -236 298 -298
		mu 0 3 75 76 83
		f 3 -241 299 -299
		mu 0 3 76 77 83
		f 3 -246 300 -300
		mu 0 3 77 78 83
		f 3 -251 301 -301
		mu 0 3 78 79 83
		f 3 -256 302 -302
		mu 0 3 79 80 83
		f 3 -261 303 -303
		mu 0 3 80 81 83
		f 3 -164 -286 -304
		mu 0 3 81 82 83
		f 4 -1 304 -66 305
		mu 0 4 86 84 123 85
		f 4 -2 -306 -74 306
		mu 0 4 88 86 85 87
		f 4 -3 -307 -79 307
		mu 0 4 90 88 87 89
		f 4 -4 -308 -84 308
		mu 0 4 92 90 89 91
		f 4 -5 -309 -89 309
		mu 0 4 94 92 91 93
		f 4 -6 -310 -94 310
		mu 0 4 96 94 93 95
		f 4 -7 -311 -99 311
		mu 0 4 98 96 95 97
		f 4 -8 -312 -104 312
		mu 0 4 100 98 97 99
		f 4 -9 -313 -109 313
		mu 0 4 102 100 99 101
		f 4 -10 -314 -114 314
		mu 0 4 104 102 101 103
		f 4 -11 -315 -119 315
		mu 0 4 106 104 103 105
		f 4 -12 -316 -124 316
		mu 0 4 108 106 105 107
		f 4 -13 -317 -129 317
		mu 0 4 110 108 107 109
		f 4 -14 -318 -134 318
		mu 0 4 112 110 109 111
		f 4 -15 -319 -139 319
		mu 0 4 114 112 111 113
		f 4 -16 -320 -144 320
		mu 0 4 116 114 113 115
		f 4 -17 -321 -149 321
		mu 0 4 118 116 115 117
		f 4 -18 -322 -154 322
		mu 0 4 120 118 117 119
		f 4 -19 -323 -159 323
		mu 0 4 122 120 119 121
		f 4 -20 -324 -62 -305
		mu 0 4 84 122 121 123
		f 4 20 324 -173 325
		mu 0 4 162 124 127 125
		f 4 21 326 -178 -325
		mu 0 4 124 126 129 127
		f 4 22 327 -183 -327
		mu 0 4 126 128 131 129
		f 4 23 328 -188 -328
		mu 0 4 128 130 133 131
		f 4 24 329 -193 -329
		mu 0 4 130 132 135 133
		f 4 25 330 -198 -330
		mu 0 4 132 134 137 135
		f 4 26 331 -203 -331
		mu 0 4 134 136 139 137
		f 4 27 332 -208 -332
		mu 0 4 136 138 141 139
		f 4 28 333 -213 -333
		mu 0 4 138 140 143 141
		f 4 29 334 -218 -334
		mu 0 4 140 142 145 143
		f 4 30 335 -223 -335
		mu 0 4 142 144 147 145
		f 4 31 336 -228 -336
		mu 0 4 144 146 149 147
		f 4 32 337 -233 -337
		mu 0 4 146 148 151 149
		f 4 33 338 -238 -338
		mu 0 4 148 150 153 151
		f 4 34 339 -243 -339
		mu 0 4 150 152 155 153
		f 4 35 340 -248 -340
		mu 0 4 152 154 157 155
		f 4 36 341 -253 -341
		mu 0 4 154 156 159 157
		f 4 37 342 -258 -342
		mu 0 4 156 158 161 159
		f 4 38 343 -263 -343
		mu 0 4 158 160 163 161
		f 4 39 -326 -163 -344
		mu 0 4 160 162 125 163
		f 4 -72 75 76 -345
		mu 0 4 167 43 44 169
		f 4 -65 345 72 73
		mu 0 4 85 166 168 87
		f 4 -69 344 74 -346
		mu 0 4 166 167 169 168
		f 4 -77 80 81 -347
		mu 0 4 169 44 45 171
		f 4 -73 347 77 78
		mu 0 4 87 168 170 89
		f 4 -75 346 79 -348
		mu 0 4 168 169 171 170
		f 4 -82 85 86 -349
		mu 0 4 171 45 46 173
		f 4 -78 349 82 83
		mu 0 4 89 170 172 91
		f 4 -80 348 84 -350
		mu 0 4 170 171 173 172
		f 4 -87 90 91 -351
		mu 0 4 173 46 47 175
		f 4 -83 351 87 88
		mu 0 4 91 172 174 93
		f 4 -85 350 89 -352
		mu 0 4 172 173 175 174
		f 4 -92 95 96 -353
		mu 0 4 175 47 48 177
		f 4 -88 353 92 93
		mu 0 4 93 174 176 95
		f 4 -90 352 94 -354
		mu 0 4 174 175 177 176
		f 4 -97 100 101 -355
		mu 0 4 177 48 49 179
		f 4 -93 355 97 98
		mu 0 4 95 176 178 97
		f 4 -95 354 99 -356
		mu 0 4 176 177 179 178
		f 4 -102 105 106 -357
		mu 0 4 179 49 50 181
		f 4 -98 357 102 103
		mu 0 4 97 178 180 99
		f 4 -100 356 104 -358
		mu 0 4 178 179 181 180
		f 4 -107 110 111 -359
		mu 0 4 181 50 51 183
		f 4 -103 359 107 108
		mu 0 4 99 180 182 101
		f 4 -105 358 109 -360
		mu 0 4 180 181 183 182
		f 4 -112 115 116 -361
		mu 0 4 183 51 52 185
		f 4 -108 361 112 113
		mu 0 4 101 182 184 103
		f 4 -110 360 114 -362
		mu 0 4 182 183 185 184
		f 4 -117 120 121 -363
		mu 0 4 185 52 53 187
		f 4 -113 363 117 118
		mu 0 4 103 184 186 105
		f 4 -115 362 119 -364
		mu 0 4 184 185 187 186
		f 4 -122 125 126 -365
		mu 0 4 187 53 54 189
		f 4 -118 365 122 123
		mu 0 4 105 186 188 107
		f 4 -120 364 124 -366
		mu 0 4 186 187 189 188
		f 4 -127 130 131 -367
		mu 0 4 189 54 55 191
		f 4 -123 367 127 128
		mu 0 4 107 188 190 109
		f 4 -125 366 129 -368
		mu 0 4 188 189 191 190
		f 4 -132 135 136 -369
		mu 0 4 191 55 56 193
		f 4 -128 369 132 133
		mu 0 4 109 190 192 111
		f 4 -130 368 134 -370
		mu 0 4 190 191 193 192
		f 4 -137 140 141 -371
		mu 0 4 193 56 57 195
		f 4 -133 371 137 138
		mu 0 4 111 192 194 113
		f 4 -135 370 139 -372
		mu 0 4 192 193 195 194
		f 4 -142 145 146 -373
		mu 0 4 195 57 58 197
		f 4 -138 373 142 143
		mu 0 4 113 194 196 115
		f 4 -140 372 144 -374
		mu 0 4 194 195 197 196
		f 4 -147 150 151 -375
		mu 0 4 197 58 59 199
		f 4 -143 375 147 148
		mu 0 4 115 196 198 117
		f 4 -145 374 149 -376
		mu 0 4 196 197 199 198
		f 4 -152 155 156 -377
		mu 0 4 199 59 60 201
		f 4 -148 377 152 153
		mu 0 4 117 198 200 119
		f 4 -150 376 154 -378
		mu 0 4 198 199 201 200
		f 4 -157 160 161 -379
		mu 0 4 201 60 62 203
		f 4 -153 379 157 158
		mu 0 4 119 200 202 121
		f 4 -155 378 159 -380
		mu 0 4 200 201 203 202
		f 4 -70 380 -162 60
		mu 0 4 42 164 203 62
		f 4 -67 381 -160 -381
		mu 0 4 164 165 202 203
		f 4 -63 61 -158 -382
		mu 0 4 165 123 121 202
		f 4 -174 177 178 -383
		mu 0 4 207 127 129 209
		f 4 -167 383 174 175
		mu 0 4 63 206 208 64
		f 4 -171 382 176 -384
		mu 0 4 206 207 209 208
		f 4 -179 182 183 -385
		mu 0 4 209 129 131 211
		f 4 -175 385 179 180
		mu 0 4 64 208 210 65
		f 4 -177 384 181 -386
		mu 0 4 208 209 211 210
		f 4 -184 187 188 -387
		mu 0 4 211 131 133 213
		f 4 -180 387 184 185
		mu 0 4 65 210 212 66
		f 4 -182 386 186 -388
		mu 0 4 210 211 213 212
		f 4 -189 192 193 -389
		mu 0 4 213 133 135 215
		f 4 -185 389 189 190
		mu 0 4 66 212 214 67
		f 4 -187 388 191 -390
		mu 0 4 212 213 215 214
		f 4 -194 197 198 -391
		mu 0 4 215 135 137 217
		f 4 -190 391 194 195
		mu 0 4 67 214 216 68
		f 4 -192 390 196 -392
		mu 0 4 214 215 217 216
		f 4 -199 202 203 -393
		mu 0 4 217 137 139 219
		f 4 -195 393 199 200
		mu 0 4 68 216 218 69
		f 4 -197 392 201 -394
		mu 0 4 216 217 219 218
		f 4 -204 207 208 -395
		mu 0 4 219 139 141 221
		f 4 -200 395 204 205
		mu 0 4 69 218 220 70
		f 4 -202 394 206 -396
		mu 0 4 218 219 221 220
		f 4 -209 212 213 -397
		mu 0 4 221 141 143 223
		f 4 -205 397 209 210
		mu 0 4 70 220 222 71
		f 4 -207 396 211 -398
		mu 0 4 220 221 223 222
		f 4 -214 217 218 -399
		mu 0 4 223 143 145 225
		f 4 -210 399 214 215
		mu 0 4 71 222 224 72
		f 4 -212 398 216 -400
		mu 0 4 222 223 225 224
		f 4 -219 222 223 -401
		mu 0 4 225 145 147 227
		f 4 -215 401 219 220
		mu 0 4 72 224 226 73
		f 4 -217 400 221 -402
		mu 0 4 224 225 227 226
		f 4 -224 227 228 -403
		mu 0 4 227 147 149 229
		f 4 -220 403 224 225
		mu 0 4 73 226 228 74
		f 4 -222 402 226 -404
		mu 0 4 226 227 229 228
		f 4 -229 232 233 -405
		mu 0 4 229 149 151 231
		f 4 -225 405 229 230
		mu 0 4 74 228 230 75
		f 4 -227 404 231 -406
		mu 0 4 228 229 231 230
		f 4 -234 237 238 -407
		mu 0 4 231 151 153 233
		f 4 -230 407 234 235
		mu 0 4 75 230 232 76
		f 4 -232 406 236 -408
		mu 0 4 230 231 233 232
		f 4 -239 242 243 -409
		mu 0 4 233 153 155 235
		f 4 -235 409 239 240
		mu 0 4 76 232 234 77
		f 4 -237 408 241 -410
		mu 0 4 232 233 235 234
		f 4 -244 247 248 -411
		mu 0 4 235 155 157 237
		f 4 -240 411 244 245
		mu 0 4 77 234 236 78
		f 4 -242 410 246 -412
		mu 0 4 234 235 237 236
		f 4 -249 252 253 -413
		mu 0 4 237 157 159 239
		f 4 -245 413 249 250
		mu 0 4 78 236 238 79
		f 4 -247 412 251 -414
		mu 0 4 236 237 239 238
		f 4 -254 257 258 -415
		mu 0 4 239 159 161 241
		f 4 -250 415 254 255
		mu 0 4 79 238 240 80
		f 4 -252 414 256 -416
		mu 0 4 238 239 241 240
		f 4 -259 262 263 -417
		mu 0 4 241 161 163 243
		f 4 -255 417 259 260
		mu 0 4 80 240 242 81
		f 4 -257 416 261 -418
		mu 0 4 240 241 243 242
		f 4 -172 418 -264 162
		mu 0 4 125 204 243 163
		f 4 -169 419 -262 -419
		mu 0 4 204 205 242 243
		f 4 -165 163 -260 -420
		mu 0 4 205 82 81 242;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "boat_moorings";
	rename -uid "A9CA57FA-45A1-CA85-E9D6-2795D6388972";
createNode transform -n "pCube29" -p "boat_moorings";
	rename -uid "E81B0E09-41F7-BEDF-2D3D-E1B9C203C5EF";
	setAttr ".t" -type "double3" -1.1556999437360682 2.5789360605015639 -4.7338628561868816 ;
	setAttr ".r" -type "double3" 0 0.79109973000108713 0 ;
	setAttr ".s" -type "double3" 0.55852424283895441 0.55852424283895441 0.55852424283895441 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	rename -uid "F2EC7BDF-428A-D79D-611C-8493A01C6FBE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50694043934345245 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[8]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[9]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[12]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[13]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[16]" -type "float3" -2.910383e-11 0 3.1813979e-06 ;
	setAttr ".pt[17]" -type "float3" -2.910383e-11 0 3.0770898e-06 ;
	setAttr ".pt[20]" -type "float3" -2.910383e-11 0 -3.1664968e-06 ;
	setAttr ".pt[21]" -type "float3" -2.910383e-11 0 -3.1590462e-06 ;
	setAttr ".pt[24]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[25]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[26]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[27]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[28]" -type "float3" -2.910383e-11 0 -3.1664968e-06 ;
	setAttr ".pt[29]" -type "float3" -2.910383e-11 0 3.1813979e-06 ;
	setAttr ".pt[30]" -type "float3" -2.910383e-11 0 3.0770898e-06 ;
	setAttr ".pt[31]" -type "float3" -2.910383e-11 0 -3.1590462e-06 ;
	setAttr ".pt[80]" -type "float3" -0.015615884 0 0.0056104367 ;
	setAttr ".pt[81]" -type "float3" -0.015615884 0 -0.0060416902 ;
	setAttr ".pt[82]" -type "float3" -0.015615884 0 0.0056104367 ;
	setAttr ".pt[83]" -type "float3" -0.015615884 0 -0.0060416902 ;
	setAttr ".pt[84]" -type "float3" 0.015615884 0 0.0056104367 ;
	setAttr ".pt[85]" -type "float3" 0.015615884 0 -0.0060416902 ;
	setAttr ".pt[86]" -type "float3" 0.015615884 0 -0.0060416902 ;
	setAttr ".pt[87]" -type "float3" 0.015615884 0 0.0056104367 ;
createNode mesh -n "polySurfaceShape4" -p "pCube29";
	rename -uid "79623CAC-4889-CC20-DEA7-DBA89BE2CD3B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 6 "f[2]" "f[9]" "f[13]" "f[17]" "f[21]" "f[42:53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 6 "f[3]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22:29]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[0]" "f[7]" "f[11]" "f[15]" "f[19]" "f[30:41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[1]" "f[8]" "f[12]" "f[16]" "f[20]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 137 ".uvst[0].uvsp[0:136]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.57559973 0.75 0.57559973 0 0.57559973 1 0.57559973
		 0.25 0.57559973 0.5 0.55137658 0.75 0.55137658 0 0.55137658 1 0.55137658 0.25 0.55137658
		 0.5 0.46305543 0.75 0.46305543 0 0.46305543 1 0.46305543 0.25 0.46305543 0.5 0.43828115
		 0.75 0.43828115 0 0.43828115 1 0.43828115 0.25 0.43828115 0.5 0.55137658 0.75 0.57559973
		 0.75 0.57559973 1 0.55137658 1 0.43828115 0.75 0.46305543 0.75 0.46305543 1 0.43828115
		 1 0.375 0 0.43828115 0 0.43828115 0.25 0.375 0.25 0.375 0.5 0.43828115 0.5 0.43828115
		 0.75 0.375 0.75 0.57559973 0 0.625 0 0.625 0.25 0.57559973 0.25 0.57559973 0.5 0.625
		 0.5 0.625 0.75 0.57559973 0.75 0.55137658 0 0.55137658 0.25 0.55137658 0.5 0.55137658
		 0.75 0.46305543 0 0.46305543 0.25 0.46305543 0.5 0.46305543 0.75 0.375 0.5 0.43828115
		 0.5 0.43828115 0.5 0.375 0.5 0.43828115 0.75 0.375 0.75 0.375 0.75 0.43828115 0.75
		 0.375 0.5 0.375 0.5 0.625 0 0.625 0 0.57559973 0 0.625 0 0.625 0.25 0.625 0.25 0.625
		 0 0.625 0.25 0.57559973 0.25 0.57559973 0.25 0.625 0.25 0.57559973 0.5 0.625 0.5
		 0.625 0.5 0.57559973 0.5 0.625 0.5 0.625 0.75 0.625 0.75 0.625 0.5 0.625 0.75 0.57559973
		 0.75 0.57559973 0.75 0.625 0.75 0.57559973 0 0.57559973 0 0.55137658 0 0.57559973
		 0.25 0.55137658 0.25 0.55137658 0.25 0.57559973 0.25 0.55137658 0.5 0.57559973 0.5
		 0.57559973 0.5 0.55137658 0.5 0.57559973 0.75 0.55137658 0.75 0.55137658 0.75 0.57559973
		 0.75 0.55137658 0 0.55137658 0 0.46305543 0 0.55137658 0.25 0.46305543 0.25 0.46305543
		 0.25 0.55137658 0.25 0.46305543 0.5 0.55137658 0.5 0.55137658 0.5 0.46305543 0.5
		 0.55137658 0.75 0.46305543 0.75 0.46305543 0.75 0.55137658 0.75 0.43828115 0 0.46305543
		 0 0.46305543 0 0.43828115 0 0.46305543 0.25 0.43828115 0.25 0.43828115 0.25 0.46305543
		 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt";
	setAttr ".pt[0]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[1]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[2]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[3]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[4]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[5]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[6]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[7]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[32]" -type "float3" 7.4505806e-09 0.010857345 0.017332556 ;
	setAttr ".pt[33]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[34]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[35]" -type "float3" 7.4505806e-09 -0.063849747 0.017332556 ;
	setAttr ".pt[36]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[37]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[38]" -type "float3" -7.4505806e-09 0.010857345 0.017332556 ;
	setAttr ".pt[39]" -type "float3" -7.4505806e-09 -0.063849747 0.017332556 ;
	setAttr ".pt[40]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[41]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[42]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[43]" -type "float3" 0 -0.04259821 0.017332556 ;
	setAttr ".pt[44]" -type "float3" 7.4505806e-09 -0.063849747 -0.017332556 ;
	setAttr ".pt[45]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[46]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[47]" -type "float3" 7.4505806e-09 0.010857345 -0.017332556 ;
	setAttr ".pt[48]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[49]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[50]" -type "float3" -7.4505806e-09 -0.063849747 -0.017332556 ;
	setAttr ".pt[51]" -type "float3" -7.4505806e-09 0.010857345 -0.017332556 ;
	setAttr ".pt[52]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[53]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[54]" -type "float3" 0 -0.04259821 -0.017332556 ;
	setAttr ".pt[55]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr -s 56 ".vt[0:55]"  -0.56840301 -0.041276753 0.054218292 0.56840301 -0.041276753 0.054218292
		 -0.56840301 0.15023133 0.054218292 0.56840301 0.15023133 0.054218292 -0.56840301 0.15023133 -0.054218292
		 0.56840301 0.15023133 -0.054218292 -0.56840301 -0.041276753 -0.054218292 0.56840301 -0.041276753 -0.054218292
		 0.34376895 -0.09575405 -0.054218292 0.34376895 -0.09575405 0.054218292 0.34376895 0.09575405 0.054218292
		 0.34376895 0.09575405 -0.054218292 0.23362088 -0.09575405 -0.054218292 0.23362088 -0.09575405 0.054218292
		 0.23362088 0.09575405 0.054218292 0.23362088 0.09575405 -0.054218292 -0.24841166 -0.095754042 -0.054218292
		 -0.24841166 -0.095754042 0.054218292 -0.24841166 0.095754035 0.054218292 -0.24841166 0.095754035 -0.054218292
		 -0.36106586 -0.09575405 -0.054218292 -0.36106586 -0.09575405 0.054218292 -0.36106586 0.09575405 0.054218292
		 -0.36106586 0.09575405 -0.054218292 0.23362088 -0.30421254 -0.054218292 0.34376895 -0.30421254 -0.054218292
		 0.34376895 -0.30421254 0.054218292 0.23362088 -0.30421254 0.054218292 -0.36106586 -0.30421257 -0.054218292
		 -0.24841166 -0.30421257 -0.054218292 -0.24841166 -0.30421257 0.054218292 -0.36106586 -0.30421257 0.054218292
		 -0.56840301 -0.041276753 0.054218292 -0.36106586 -0.09575405 0.054218292 -0.36106586 0.09575405 0.054218292
		 -0.56840301 0.15023133 0.054218292 0.34376895 -0.09575405 0.054218292 0.34376895 0.09575405 0.054218292
		 0.56840301 -0.041276753 0.054218292 0.56840301 0.15023133 0.054218292 0.23362088 -0.09575405 0.054218292
		 0.23362088 0.09575405 0.054218292 -0.24841166 -0.095754042 0.054218292 -0.24841166 0.095754035 0.054218292
		 -0.56840301 0.15023133 -0.054218292 -0.36106586 0.09575405 -0.054218292 -0.36106586 -0.09575405 -0.054218292
		 -0.56840301 -0.041276753 -0.054218292 0.34376895 0.09575405 -0.054218292 0.34376895 -0.09575405 -0.054218292
		 0.56840301 0.15023133 -0.054218292 0.56840301 -0.041276753 -0.054218292 0.23362088 0.09575405 -0.054218292
		 0.23362088 -0.09575405 -0.054218292 -0.24841166 0.095754035 -0.054218292 -0.24841166 -0.095754042 -0.054218292;
	setAttr -s 108 ".ed[0:107]"  0 21 0 2 22 0 4 23 0 6 20 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 7 0 9 1 0 8 9 0 10 3 0 11 5 0 10 11 1 12 8 0 13 9 0
		 12 13 0 14 10 0 15 11 0 14 15 1 16 12 0 17 13 0 16 17 0 18 14 0 19 15 0 18 19 1 20 16 0
		 21 17 0 20 21 0 22 18 0 23 19 0 22 23 1 12 24 0 8 25 0 24 25 0 9 26 0 25 26 0 13 27 0
		 27 26 0 24 27 0 20 28 0 16 29 0 28 29 0 17 30 0 29 30 0 21 31 0 31 30 0 28 31 0 0 32 0
		 21 33 0 32 33 0 22 34 0 33 34 1 2 35 0 35 34 0 32 35 0 9 36 0 10 37 0 36 37 1 1 38 0
		 36 38 0 3 39 0 38 39 0 37 39 0 13 40 0 14 41 0 40 41 1 40 36 0 41 37 0 17 42 0 18 43 0
		 42 43 1 42 40 0 43 41 0 33 42 0 34 43 0 4 44 0 23 45 0 44 45 0 20 46 0 45 46 1 6 47 0
		 47 46 0 44 47 0 11 48 0 8 49 0 48 49 1 5 50 0 48 50 0 7 51 0 50 51 0 49 51 0 15 52 0
		 12 53 0 52 53 1 52 48 0 53 49 0 19 54 0 16 55 0 54 55 1 54 52 0 55 53 0 45 54 0 46 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 54 56 -59 -60
		mu 0 4 42 43 44 45
		f 4 1 35 -3 -7
		mu 0 4 2 32 33 4
		f 4 82 84 -87 -88
		mu 0 4 46 47 48 49
		f 4 3 32 -1 -11
		mu 0 4 6 29 31 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 11 -14 -15
		mu 0 4 14 7 9 16
		f 4 -63 64 66 -68
		mu 0 4 53 50 51 52
		f 4 -18 15 7 -17
		mu 0 4 18 17 3 5
		f 4 -91 92 94 -96
		mu 0 4 57 54 55 56
		f 4 38 40 -43 -44
		mu 0 4 34 35 36 37
		f 4 -71 71 62 -73
		mu 0 4 59 58 50 53
		f 4 -24 21 17 -23
		mu 0 4 23 22 17 18
		f 4 -99 99 90 -101
		mu 0 4 61 60 54 57
		f 4 24 20 -26 -27
		mu 0 4 24 19 21 26
		f 4 -76 76 70 -78
		mu 0 4 63 62 58 59
		f 4 -30 27 23 -29
		mu 0 4 28 27 22 23
		f 4 -104 104 98 -106
		mu 0 4 65 64 60 61
		f 4 46 48 -51 -52
		mu 0 4 38 39 40 41
		f 4 -57 78 75 -80
		mu 0 4 44 43 62 63
		f 4 -36 33 29 -35
		mu 0 4 33 32 27 28
		f 4 -85 106 103 -108
		mu 0 4 48 47 64 65
		f 4 18 37 -39 -37
		mu 0 4 19 14 35 34
		f 4 14 39 -41 -38
		mu 0 4 14 16 36 35
		f 4 -20 41 42 -40
		mu 0 4 16 21 37 36
		f 4 -21 36 43 -42
		mu 0 4 21 19 34 37
		f 4 30 45 -47 -45
		mu 0 4 29 24 39 38
		f 4 26 47 -49 -46
		mu 0 4 24 26 40 39
		f 4 -32 49 50 -48
		mu 0 4 26 31 41 40
		f 4 -33 44 51 -50
		mu 0 4 31 29 38 41
		f 4 0 53 -55 -53
		mu 0 4 0 30 43 42
		f 4 -2 57 58 -56
		mu 0 4 32 2 45 44
		f 4 -5 52 59 -58
		mu 0 4 2 0 42 45
		f 4 13 63 -65 -61
		mu 0 4 66 67 68 69
		f 4 5 65 -67 -64
		mu 0 4 70 71 72 73
		f 4 -16 61 67 -66
		mu 0 4 71 74 75 72
		f 4 19 60 -72 -69
		mu 0 4 15 76 77 78
		f 4 -22 69 72 -62
		mu 0 4 79 80 81 82
		f 4 25 68 -77 -74
		mu 0 4 83 84 85 86
		f 4 -28 74 77 -70
		mu 0 4 87 88 89 90
		f 4 31 73 -79 -54
		mu 0 4 91 92 93 94
		f 4 -34 55 79 -75
		mu 0 4 95 96 97 98
		f 4 2 81 -83 -81
		mu 0 4 20 99 100 101
		f 4 -4 85 86 -84
		mu 0 4 102 103 104 105
		f 4 -9 80 87 -86
		mu 0 4 106 107 108 109
		f 4 16 91 -93 -89
		mu 0 4 110 111 112 113
		f 4 9 93 -95 -92
		mu 0 4 25 114 115 116
		f 4 -13 89 95 -94
		mu 0 4 117 118 119 120
		f 4 22 88 -100 -97
		mu 0 4 121 122 123 124
		f 4 -19 97 100 -90
		mu 0 4 125 126 127 128
		f 4 28 96 -105 -102
		mu 0 4 129 130 131 132
		f 4 -25 102 105 -98
		mu 0 4 133 134 135 136
		f 4 34 101 -107 -82
		mu 0 4 33 28 64 47
		f 4 -31 83 107 -103
		mu 0 4 24 29 48 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube39" -p "boat_moorings";
	rename -uid "C3393CB5-479F-486A-8D3C-7BA57BFF1C0D";
	setAttr ".t" -type "double3" -1.1556999437360682 2.5789360605015639 -2.536812732218916 ;
	setAttr ".r" -type "double3" 0 0.79109973000108713 0 ;
	setAttr ".s" -type "double3" 0.55852424283895441 0.55852424283895441 0.55852424283895441 ;
createNode mesh -n "pCubeShape39" -p "pCube39";
	rename -uid "2109CA83-4343-C40C-DBE2-08AD8861FB22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[2]" "f[9]" "f[13]" "f[17]" "f[21]" "f[42:53]" "f[59:61]" "f[67:69]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 7 "f[3]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22:29]" "f[70:85]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[7]" "f[11]" "f[15]" "f[19]" "f[30:41]" "f[56:58]" "f[64:66]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[62:63]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[54:55]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[1]" "f[8]" "f[12]" "f[16]" "f[20]";
	setAttr ".pv" -type "double2" 0.50694043934345245 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 175 ".uvst[0].uvsp[0:174]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.57559973 0.75 0.57559973 0 0.57559973 1 0.57559973
		 0.25 0.57559973 0.5 0.55137658 0.75 0.55137658 0 0.55137658 1 0.55137658 0.25 0.55137658
		 0.5 0.46305543 0.75 0.46305543 0 0.46305543 1 0.46305543 0.25 0.46305543 0.5 0.43828115
		 0.75 0.43828115 0 0.43828115 1 0.43828115 0.25 0.43828115 0.5 0.55137658 0.75 0.57559973
		 0.75 0.57559973 1 0.55137658 1 0.43828115 0.75 0.46305543 0.75 0.46305543 1 0.43828115
		 1 0.375 0 0.43828115 0 0.43828115 0.25 0.375 0.25 0.375 0.5 0.43828115 0.5 0.43828115
		 0.75 0.375 0.75 0.57559973 0 0.625 0 0.625 0.25 0.57559973 0.25 0.57559973 0.5 0.625
		 0.5 0.625 0.75 0.57559973 0.75 0.55137658 0 0.55137658 0.25 0.55137658 0.5 0.55137658
		 0.75 0.46305543 0 0.46305543 0.25 0.46305543 0.5 0.46305543 0.75 0.375 0.5 0.43828115
		 0.5 0.43828115 0.5 0.375 0.5 0.43828115 0.75 0.375 0.75 0.375 0.75 0.43828115 0.75
		 0.375 0.5 0.375 0.5 0.625 0 0.625 0 0.57559973 0 0.625 0 0.625 0.25 0.625 0.25 0.625
		 0 0.625 0.25 0.57559973 0.25 0.57559973 0.25 0.625 0.25 0.57559973 0.5 0.625 0.5
		 0.625 0.5 0.57559973 0.5 0.625 0.5 0.625 0.75 0.625 0.75 0.625 0.5 0.625 0.75 0.57559973
		 0.75 0.57559973 0.75 0.625 0.75 0.57559973 0 0.57559973 0 0.55137658 0 0.57559973
		 0.25 0.55137658 0.25 0.55137658 0.25 0.57559973 0.25 0.55137658 0.5 0.57559973 0.5
		 0.57559973 0.5 0.55137658 0.5 0.57559973 0.75 0.55137658 0.75 0.55137658 0.75 0.57559973
		 0.75 0.55137658 0 0.55137658 0 0.46305543 0 0.55137658 0.25 0.46305543 0.25 0.46305543
		 0.25 0.55137658 0.25 0.46305543 0.5 0.55137658 0.5 0.55137658 0.5 0.46305543 0.5
		 0.55137658 0.75 0.46305543 0.75 0.46305543 0.75 0.55137658 0.75 0.43828115 0 0.46305543
		 0 0.46305543 0 0.43828115 0 0.46305543 0.25 0.43828115 0.25 0.43828115 0.25 0.46305543
		 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25
		 0.375 0 0.375 0.25 0.375 0.75 0.375 0.75 0.43828115 0.75 0.43828115 0.75 0.57559973
		 0.5 0.57559973 0.5 0.55137658 0.5 0.55137658 0.5 0.55137658 0 0.55137658 0 0.46305543
		 0 0.46305543 0 0.57559973 0.75 0.57559973 1 0.57559973 1 0.57559973 0.75 0.43828115
		 1 0.43828115 0.75 0.43828115 0.75 0.43828115 1 0.55137658 1 0.55137658 0.75 0.55137658
		 0.75 0.55137658 1 0.46305543 0.75 0.46305543 1 0.46305543 1 0.46305543 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[8]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[9]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[12]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[13]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[16]" -type "float3" -2.910383e-11 0 3.1813979e-06 ;
	setAttr ".pt[17]" -type "float3" -2.910383e-11 0 3.0770898e-06 ;
	setAttr ".pt[20]" -type "float3" -2.910383e-11 0 -3.1664968e-06 ;
	setAttr ".pt[21]" -type "float3" -2.910383e-11 0 -3.1590462e-06 ;
	setAttr ".pt[24]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[25]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[26]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[27]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[28]" -type "float3" -2.910383e-11 0 -3.1664968e-06 ;
	setAttr ".pt[29]" -type "float3" -2.910383e-11 0 3.1813979e-06 ;
	setAttr ".pt[30]" -type "float3" -2.910383e-11 0 3.0770898e-06 ;
	setAttr ".pt[31]" -type "float3" -2.910383e-11 0 -3.1590462e-06 ;
	setAttr ".pt[80]" -type "float3" -0.015615884 0 0.0056104367 ;
	setAttr ".pt[81]" -type "float3" -0.015615884 0 -0.0060416902 ;
	setAttr ".pt[82]" -type "float3" -0.015615884 0 0.0056104367 ;
	setAttr ".pt[83]" -type "float3" -0.015615884 0 -0.0060416902 ;
	setAttr ".pt[84]" -type "float3" 0.015615884 0 0.0056104367 ;
	setAttr ".pt[85]" -type "float3" 0.015615884 0 -0.0060416902 ;
	setAttr ".pt[86]" -type "float3" 0.015615884 0 -0.0060416902 ;
	setAttr ".pt[87]" -type "float3" 0.015615884 0 0.0056104367 ;
	setAttr -s 88 ".vt[0:87]"  -0.56840289 -0.041276932 0.054221153 0.56840301 -0.041276932 0.054218292
		 -0.56840289 0.15023136 0.054221153 0.56840301 0.15023136 0.054218292 -0.56840289 0.15023136 -0.054217339
		 0.56840301 0.15023136 -0.054218292 -0.56840289 -0.041276932 -0.054217339 0.56840301 -0.041276932 -0.054218292
		 0.34376872 -0.09575367 -0.054217339 0.34376895 -0.09575367 0.054218292 0.34376895 0.095754147 0.054218292
		 0.34376872 0.095754147 -0.054217339 0.233621 -0.09575367 -0.054218292 0.23362064 -0.09575367 0.054218292
		 0.23362064 0.095754147 0.054218292 0.233621 0.095754147 -0.054218292 -0.2484113 -0.09575367 -0.054218292
		 -0.24841154 -0.09575367 0.054221153 -0.24841154 0.095754147 0.054221153 -0.2484113 0.095754147 -0.054218292
		 -0.36106575 -0.09575367 -0.054218292 -0.36106575 -0.09575367 0.0542202 -0.36106575 0.095754147 0.0542202
		 -0.36106575 0.095754147 -0.054218292 0.233621 -0.30421257 -0.054218292 0.34376872 -0.30421257 -0.054217339
		 0.34376895 -0.30421257 0.054218292 0.23362064 -0.30421257 0.054218292 -0.36106575 -0.30421257 -0.054218292
		 -0.2484113 -0.30421257 -0.054218292 -0.24841154 -0.30421257 0.054221153 -0.36106575 -0.30421257 0.0542202
		 -0.56840312 -0.03041935 0.071551323 -0.36106598 -0.063644886 0.071550369 -0.36106598 0.053155899 0.071550369
		 -0.56840312 0.086381435 0.071551323 0.34376895 -0.063644886 0.071551323 0.34376895 0.053155899 0.071551323
		 0.56840301 -0.03041935 0.07155323 0.56840301 0.086381435 0.07155323 0.23362076 -0.063644886 0.071550369
		 0.23362076 0.053155899 0.071550369 -0.24841177 -0.063644886 0.071551323 -0.24841177 0.053155899 0.071551323
		 -0.56840241 0.086381435 -0.071552277 -0.36106598 0.053155899 -0.071548462 -0.36106598 -0.063644886 -0.071548462
		 -0.56840241 -0.03041935 -0.071552277 0.34376895 0.053155899 -0.071551323 0.34376895 -0.063644886 -0.071551323
		 0.56840312 0.086381435 -0.071551323 0.56840312 -0.03041935 -0.071551323 0.233621 0.053155899 -0.071549416
		 0.233621 -0.063644886 -0.071549416 -0.24841225 0.053155899 -0.071548462 -0.24841225 -0.063644886 -0.071548462
		 0.67404366 0.046075821 -0.037231445 0.67404377 0.046075821 0.038097382 0.65514219 0.17776299 -0.037229538
		 0.65514219 0.17776299 0.038099289 0.66144383 0.13385773 0.050138474 0.67297208 0.05354166 0.050138474
		 0.6729722 0.05354166 -0.049271584 0.66144407 0.13385773 -0.04927063 -0.67404354 0.046075821 -0.037230492
		 -0.67404377 0.046075821 0.038100243 -0.65514219 0.17776299 0.038100243 -0.65514195 0.17776299 -0.037229538
		 -0.67297184 0.05354166 0.050140381 -0.66144407 0.13385773 0.050139427 -0.66144383 0.13385773 -0.04927063
		 -0.67297208 0.05354166 -0.04927063 0.37650764 -0.086489201 -0.036594391 0.37650764 -0.086489201 0.036596298
		 0.37650764 -0.31347752 0.036596298 0.37650764 -0.31347752 -0.036594391 -0.39380419 -0.086489201 -0.036594391
		 -0.39380443 -0.086489201 0.036598206 -0.39380419 -0.31347752 -0.036594391 -0.39380443 -0.31347752 0.036598206
		 0.20622134 -0.09575367 -0.054218292 0.20622098 -0.09575367 0.054219246 0.20622134 -0.30421257 -0.054218292
		 0.20622098 -0.30421257 0.054219246 -0.22101152 -0.09575367 -0.054216385 -0.22101176 -0.09575367 0.054221153
		 -0.22101176 -0.30421257 0.054221153 -0.22101152 -0.30421257 -0.054216385;
	setAttr -s 172 ".ed";
	setAttr ".ed[0:165]"  0 21 0 2 22 0 4 23 0 6 20 0 2 4 1 3 5 1 6 0 1 7 1 1
		 8 7 0 9 1 0 8 9 0 10 3 0 11 5 0 10 11 1 12 8 0 13 9 0 12 13 0 14 10 0 15 11 0 14 15 1
		 16 12 0 17 13 0 16 17 0 18 14 0 19 15 0 18 19 1 20 16 0 21 17 0 20 21 0 22 18 0 23 19 0
		 22 23 1 12 24 1 8 25 1 24 25 0 9 26 1 25 26 1 13 27 1 27 26 0 24 27 1 20 28 1 16 29 1
		 28 29 0 17 30 1 29 30 1 21 31 1 31 30 0 28 31 1 0 32 1 21 33 0 32 33 0 22 34 0 33 34 1
		 2 35 1 35 34 0 32 35 1 9 36 0 10 37 0 36 37 1 1 38 1 36 38 0 3 39 1 38 39 1 37 39 0
		 13 40 0 14 41 0 40 41 1 40 36 0 41 37 0 17 42 0 18 43 0 42 43 1 42 40 0 43 41 0 33 42 0
		 34 43 0 4 44 1 23 45 0 44 45 0 20 46 0 45 46 1 6 47 1 47 46 0 44 47 1 11 48 0 8 49 0
		 48 49 1 5 50 1 48 50 0 7 51 1 50 51 1 49 51 0 15 52 0 12 53 0 52 53 1 52 48 0 53 49 0
		 19 54 0 16 55 0 54 55 1 54 52 0 55 53 0 45 54 0 46 55 0 7 56 0 1 57 0 56 57 0 5 58 0
		 58 56 0 3 59 0 59 58 0 57 59 0 39 60 1 59 60 0 38 61 0 61 60 0 57 61 0 51 62 0 56 62 0
		 50 63 1 63 62 0 58 63 0 6 64 0 0 65 0 64 65 0 2 66 0 65 66 0 4 67 0 66 67 0 67 64 0
		 32 68 0 65 68 0 35 69 1 68 69 0 66 69 0 44 70 1 67 70 0 47 71 0 70 71 0 64 71 0 8 72 0
		 9 73 0 72 73 0 26 74 0 73 74 0 25 75 0 75 74 0 72 75 0 20 76 0 21 77 0 76 77 0 28 78 0
		 76 78 0 31 79 0 78 79 0 77 79 0 12 80 0 13 81 0 80 81 0 24 82 0 80 82 0 27 83 0 82 83 0
		 81 83 0 16 84 0 17 85 0;
	setAttr ".ed[166:171]" 84 85 0 30 86 0 85 86 0 29 87 0 87 86 0 84 87 0;
	setAttr -s 86 -ch 344 ".fc[0:85]" -type "polyFaces" 
		f 4 50 52 -55 -56
		mu 0 4 42 43 44 45
		f 4 1 31 -3 -5
		mu 0 4 2 32 33 4
		f 4 78 80 -83 -84
		mu 0 4 46 47 48 49
		f 4 3 28 -1 -7
		mu 0 4 6 29 31 8
		f 4 -107 -109 -111 -112
		mu 0 4 137 138 139 140
		f 4 124 126 128 129
		mu 0 4 141 142 143 144
		f 4 8 7 -10 -11
		mu 0 4 14 7 9 16
		f 4 -59 60 62 -64
		mu 0 4 53 50 51 52
		f 4 -14 11 5 -13
		mu 0 4 18 17 3 5
		f 4 -87 88 90 -92
		mu 0 4 57 54 55 56
		f 4 34 36 -39 -40
		mu 0 4 34 35 36 37
		f 4 -67 67 58 -69
		mu 0 4 59 58 50 53
		f 4 -20 17 13 -19
		mu 0 4 23 22 17 18
		f 4 -95 95 86 -97
		mu 0 4 61 60 54 57
		f 4 20 16 -22 -23
		mu 0 4 24 19 21 26
		f 4 -72 72 66 -74
		mu 0 4 63 62 58 59
		f 4 -26 23 19 -25
		mu 0 4 28 27 22 23
		f 4 -100 100 94 -102
		mu 0 4 65 64 60 61
		f 4 42 44 -47 -48
		mu 0 4 38 39 40 41
		f 4 -53 74 71 -76
		mu 0 4 44 43 62 63
		f 4 -32 29 25 -31
		mu 0 4 33 32 27 28
		f 4 -81 102 99 -104
		mu 0 4 48 47 64 65
		f 4 14 33 -35 -33
		mu 0 4 19 14 35 34
		f 4 142 144 -147 -148
		mu 0 4 159 160 161 162
		f 4 -16 37 38 -36
		mu 0 4 16 21 37 36
		f 4 -159 160 162 -164
		mu 0 4 167 168 169 170
		f 4 26 41 -43 -41
		mu 0 4 29 24 39 38
		f 4 166 168 -171 -172
		mu 0 4 171 172 173 174
		f 4 -28 45 46 -44
		mu 0 4 26 31 41 40
		f 4 -151 152 154 -156
		mu 0 4 163 164 165 166
		f 4 0 49 -51 -49
		mu 0 4 0 30 43 42
		f 4 -2 53 54 -52
		mu 0 4 32 2 45 44
		f 4 -127 131 133 -135
		mu 0 4 143 142 145 146
		f 4 9 59 -61 -57
		mu 0 4 66 67 68 69
		f 4 111 113 -116 -117
		mu 0 4 150 147 148 149
		f 4 -12 57 63 -62
		mu 0 4 71 74 75 72
		f 4 15 56 -68 -65
		mu 0 4 15 76 77 78
		f 4 -18 65 68 -58
		mu 0 4 79 80 81 82
		f 4 21 64 -73 -70
		mu 0 4 83 84 85 86
		f 4 -24 70 73 -66
		mu 0 4 87 88 89 90
		f 4 27 69 -75 -50
		mu 0 4 91 92 93 94
		f 4 -30 51 75 -71
		mu 0 4 95 96 97 98
		f 4 2 77 -79 -77
		mu 0 4 20 99 100 101
		f 4 -4 81 82 -80
		mu 0 4 102 103 104 105
		f 4 -130 136 138 -140
		mu 0 4 154 151 152 153
		f 4 12 87 -89 -85
		mu 0 4 110 111 112 113
		f 4 108 118 -121 -122
		mu 0 4 158 155 156 157
		f 4 -9 85 91 -90
		mu 0 4 117 118 119 120
		f 4 18 84 -96 -93
		mu 0 4 121 122 123 124
		f 4 -15 93 96 -86
		mu 0 4 125 126 127 128
		f 4 24 92 -101 -98
		mu 0 4 129 130 131 132
		f 4 -21 98 101 -94
		mu 0 4 133 134 135 136
		f 4 30 97 -103 -78
		mu 0 4 33 28 64 47
		f 4 -27 79 103 -99
		mu 0 4 24 29 48 65
		f 4 -8 104 106 -106
		mu 0 4 1 10 138 137
		f 4 -6 109 110 -108
		mu 0 4 11 3 140 139
		f 4 61 112 -114 -110
		mu 0 4 12 0 142 141
		f 4 -63 114 115 -113
		mu 0 4 2 13 144 143
		f 4 -60 105 116 -115
		mu 0 4 0 42 145 142
		f 4 89 117 -119 -105
		mu 0 4 42 45 146 145
		f 4 -91 119 120 -118
		mu 0 4 45 2 143 146
		f 4 -88 107 121 -120
		mu 0 4 71 72 148 147
		f 4 6 123 -125 -123
		mu 0 4 72 73 149 148
		f 4 4 127 -129 -126
		mu 0 4 73 70 150 149
		f 4 48 130 -132 -124
		mu 0 4 107 108 152 151
		f 4 55 132 -134 -131
		mu 0 4 108 109 153 152
		f 4 -54 125 134 -133
		mu 0 4 109 106 154 153
		f 4 76 135 -137 -128
		mu 0 4 114 115 156 155
		f 4 83 137 -139 -136
		mu 0 4 115 116 157 156
		f 4 -82 122 139 -138
		mu 0 4 116 25 158 157
		f 4 10 141 -143 -141
		mu 0 4 14 16 160 159
		f 4 35 143 -145 -142
		mu 0 4 16 36 161 160
		f 4 -37 145 146 -144
		mu 0 4 36 35 162 161
		f 4 -34 140 147 -146
		mu 0 4 35 14 159 162
		f 4 -29 148 150 -150
		mu 0 4 31 29 164 163
		f 4 40 151 -153 -149
		mu 0 4 29 38 165 164
		f 4 47 153 -155 -152
		mu 0 4 38 41 166 165
		f 4 -46 149 155 -154
		mu 0 4 41 31 163 166
		f 4 -17 156 158 -158
		mu 0 4 21 19 168 167
		f 4 32 159 -161 -157
		mu 0 4 19 34 169 168
		f 4 39 161 -163 -160
		mu 0 4 34 37 170 169
		f 4 -38 157 163 -162
		mu 0 4 37 21 167 170
		f 4 22 165 -167 -165
		mu 0 4 24 26 172 171
		f 4 43 167 -169 -166
		mu 0 4 26 40 173 172
		f 4 -45 169 170 -168
		mu 0 4 40 39 174 173
		f 4 -42 164 171 -170
		mu 0 4 39 24 171 174;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "pCube39";
	rename -uid "1DF6C811-4A96-6AA9-91A9-AB9B892E0D0D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 6 "f[2]" "f[9]" "f[13]" "f[17]" "f[21]" "f[42:53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 6 "f[3]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22:29]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[0]" "f[7]" "f[11]" "f[15]" "f[19]" "f[30:41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[1]" "f[8]" "f[12]" "f[16]" "f[20]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 137 ".uvst[0].uvsp[0:136]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.57559973 0.75 0.57559973 0 0.57559973 1 0.57559973
		 0.25 0.57559973 0.5 0.55137658 0.75 0.55137658 0 0.55137658 1 0.55137658 0.25 0.55137658
		 0.5 0.46305543 0.75 0.46305543 0 0.46305543 1 0.46305543 0.25 0.46305543 0.5 0.43828115
		 0.75 0.43828115 0 0.43828115 1 0.43828115 0.25 0.43828115 0.5 0.55137658 0.75 0.57559973
		 0.75 0.57559973 1 0.55137658 1 0.43828115 0.75 0.46305543 0.75 0.46305543 1 0.43828115
		 1 0.375 0 0.43828115 0 0.43828115 0.25 0.375 0.25 0.375 0.5 0.43828115 0.5 0.43828115
		 0.75 0.375 0.75 0.57559973 0 0.625 0 0.625 0.25 0.57559973 0.25 0.57559973 0.5 0.625
		 0.5 0.625 0.75 0.57559973 0.75 0.55137658 0 0.55137658 0.25 0.55137658 0.5 0.55137658
		 0.75 0.46305543 0 0.46305543 0.25 0.46305543 0.5 0.46305543 0.75 0.375 0.5 0.43828115
		 0.5 0.43828115 0.5 0.375 0.5 0.43828115 0.75 0.375 0.75 0.375 0.75 0.43828115 0.75
		 0.375 0.5 0.375 0.5 0.625 0 0.625 0 0.57559973 0 0.625 0 0.625 0.25 0.625 0.25 0.625
		 0 0.625 0.25 0.57559973 0.25 0.57559973 0.25 0.625 0.25 0.57559973 0.5 0.625 0.5
		 0.625 0.5 0.57559973 0.5 0.625 0.5 0.625 0.75 0.625 0.75 0.625 0.5 0.625 0.75 0.57559973
		 0.75 0.57559973 0.75 0.625 0.75 0.57559973 0 0.57559973 0 0.55137658 0 0.57559973
		 0.25 0.55137658 0.25 0.55137658 0.25 0.57559973 0.25 0.55137658 0.5 0.57559973 0.5
		 0.57559973 0.5 0.55137658 0.5 0.57559973 0.75 0.55137658 0.75 0.55137658 0.75 0.57559973
		 0.75 0.55137658 0 0.55137658 0 0.46305543 0 0.55137658 0.25 0.46305543 0.25 0.46305543
		 0.25 0.55137658 0.25 0.46305543 0.5 0.55137658 0.5 0.55137658 0.5 0.46305543 0.5
		 0.55137658 0.75 0.46305543 0.75 0.46305543 0.75 0.55137658 0.75 0.43828115 0 0.46305543
		 0 0.46305543 0 0.43828115 0 0.46305543 0.25 0.43828115 0.25 0.43828115 0.25 0.46305543
		 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt";
	setAttr ".pt[0]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[1]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[2]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[3]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[4]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[5]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[6]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[7]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[32]" -type "float3" 7.4505806e-09 0.010857345 0.017332556 ;
	setAttr ".pt[33]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[34]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[35]" -type "float3" 7.4505806e-09 -0.063849747 0.017332556 ;
	setAttr ".pt[36]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[37]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[38]" -type "float3" -7.4505806e-09 0.010857345 0.017332556 ;
	setAttr ".pt[39]" -type "float3" -7.4505806e-09 -0.063849747 0.017332556 ;
	setAttr ".pt[40]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[41]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[42]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[43]" -type "float3" 0 -0.04259821 0.017332556 ;
	setAttr ".pt[44]" -type "float3" 7.4505806e-09 -0.063849747 -0.017332556 ;
	setAttr ".pt[45]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[46]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[47]" -type "float3" 7.4505806e-09 0.010857345 -0.017332556 ;
	setAttr ".pt[48]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[49]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[50]" -type "float3" -7.4505806e-09 -0.063849747 -0.017332556 ;
	setAttr ".pt[51]" -type "float3" -7.4505806e-09 0.010857345 -0.017332556 ;
	setAttr ".pt[52]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[53]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[54]" -type "float3" 0 -0.04259821 -0.017332556 ;
	setAttr ".pt[55]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr -s 56 ".vt[0:55]"  -0.56840301 -0.041276753 0.054218292 0.56840301 -0.041276753 0.054218292
		 -0.56840301 0.15023133 0.054218292 0.56840301 0.15023133 0.054218292 -0.56840301 0.15023133 -0.054218292
		 0.56840301 0.15023133 -0.054218292 -0.56840301 -0.041276753 -0.054218292 0.56840301 -0.041276753 -0.054218292
		 0.34376895 -0.09575405 -0.054218292 0.34376895 -0.09575405 0.054218292 0.34376895 0.09575405 0.054218292
		 0.34376895 0.09575405 -0.054218292 0.23362088 -0.09575405 -0.054218292 0.23362088 -0.09575405 0.054218292
		 0.23362088 0.09575405 0.054218292 0.23362088 0.09575405 -0.054218292 -0.24841166 -0.095754042 -0.054218292
		 -0.24841166 -0.095754042 0.054218292 -0.24841166 0.095754035 0.054218292 -0.24841166 0.095754035 -0.054218292
		 -0.36106586 -0.09575405 -0.054218292 -0.36106586 -0.09575405 0.054218292 -0.36106586 0.09575405 0.054218292
		 -0.36106586 0.09575405 -0.054218292 0.23362088 -0.30421254 -0.054218292 0.34376895 -0.30421254 -0.054218292
		 0.34376895 -0.30421254 0.054218292 0.23362088 -0.30421254 0.054218292 -0.36106586 -0.30421257 -0.054218292
		 -0.24841166 -0.30421257 -0.054218292 -0.24841166 -0.30421257 0.054218292 -0.36106586 -0.30421257 0.054218292
		 -0.56840301 -0.041276753 0.054218292 -0.36106586 -0.09575405 0.054218292 -0.36106586 0.09575405 0.054218292
		 -0.56840301 0.15023133 0.054218292 0.34376895 -0.09575405 0.054218292 0.34376895 0.09575405 0.054218292
		 0.56840301 -0.041276753 0.054218292 0.56840301 0.15023133 0.054218292 0.23362088 -0.09575405 0.054218292
		 0.23362088 0.09575405 0.054218292 -0.24841166 -0.095754042 0.054218292 -0.24841166 0.095754035 0.054218292
		 -0.56840301 0.15023133 -0.054218292 -0.36106586 0.09575405 -0.054218292 -0.36106586 -0.09575405 -0.054218292
		 -0.56840301 -0.041276753 -0.054218292 0.34376895 0.09575405 -0.054218292 0.34376895 -0.09575405 -0.054218292
		 0.56840301 0.15023133 -0.054218292 0.56840301 -0.041276753 -0.054218292 0.23362088 0.09575405 -0.054218292
		 0.23362088 -0.09575405 -0.054218292 -0.24841166 0.095754035 -0.054218292 -0.24841166 -0.095754042 -0.054218292;
	setAttr -s 108 ".ed[0:107]"  0 21 0 2 22 0 4 23 0 6 20 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 7 0 9 1 0 8 9 0 10 3 0 11 5 0 10 11 1 12 8 0 13 9 0
		 12 13 0 14 10 0 15 11 0 14 15 1 16 12 0 17 13 0 16 17 0 18 14 0 19 15 0 18 19 1 20 16 0
		 21 17 0 20 21 0 22 18 0 23 19 0 22 23 1 12 24 0 8 25 0 24 25 0 9 26 0 25 26 0 13 27 0
		 27 26 0 24 27 0 20 28 0 16 29 0 28 29 0 17 30 0 29 30 0 21 31 0 31 30 0 28 31 0 0 32 0
		 21 33 0 32 33 0 22 34 0 33 34 1 2 35 0 35 34 0 32 35 0 9 36 0 10 37 0 36 37 1 1 38 0
		 36 38 0 3 39 0 38 39 0 37 39 0 13 40 0 14 41 0 40 41 1 40 36 0 41 37 0 17 42 0 18 43 0
		 42 43 1 42 40 0 43 41 0 33 42 0 34 43 0 4 44 0 23 45 0 44 45 0 20 46 0 45 46 1 6 47 0
		 47 46 0 44 47 0 11 48 0 8 49 0 48 49 1 5 50 0 48 50 0 7 51 0 50 51 0 49 51 0 15 52 0
		 12 53 0 52 53 1 52 48 0 53 49 0 19 54 0 16 55 0 54 55 1 54 52 0 55 53 0 45 54 0 46 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 54 56 -59 -60
		mu 0 4 42 43 44 45
		f 4 1 35 -3 -7
		mu 0 4 2 32 33 4
		f 4 82 84 -87 -88
		mu 0 4 46 47 48 49
		f 4 3 32 -1 -11
		mu 0 4 6 29 31 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 11 -14 -15
		mu 0 4 14 7 9 16
		f 4 -63 64 66 -68
		mu 0 4 53 50 51 52
		f 4 -18 15 7 -17
		mu 0 4 18 17 3 5
		f 4 -91 92 94 -96
		mu 0 4 57 54 55 56
		f 4 38 40 -43 -44
		mu 0 4 34 35 36 37
		f 4 -71 71 62 -73
		mu 0 4 59 58 50 53
		f 4 -24 21 17 -23
		mu 0 4 23 22 17 18
		f 4 -99 99 90 -101
		mu 0 4 61 60 54 57
		f 4 24 20 -26 -27
		mu 0 4 24 19 21 26
		f 4 -76 76 70 -78
		mu 0 4 63 62 58 59
		f 4 -30 27 23 -29
		mu 0 4 28 27 22 23
		f 4 -104 104 98 -106
		mu 0 4 65 64 60 61
		f 4 46 48 -51 -52
		mu 0 4 38 39 40 41
		f 4 -57 78 75 -80
		mu 0 4 44 43 62 63
		f 4 -36 33 29 -35
		mu 0 4 33 32 27 28
		f 4 -85 106 103 -108
		mu 0 4 48 47 64 65
		f 4 18 37 -39 -37
		mu 0 4 19 14 35 34
		f 4 14 39 -41 -38
		mu 0 4 14 16 36 35
		f 4 -20 41 42 -40
		mu 0 4 16 21 37 36
		f 4 -21 36 43 -42
		mu 0 4 21 19 34 37
		f 4 30 45 -47 -45
		mu 0 4 29 24 39 38
		f 4 26 47 -49 -46
		mu 0 4 24 26 40 39
		f 4 -32 49 50 -48
		mu 0 4 26 31 41 40
		f 4 -33 44 51 -50
		mu 0 4 31 29 38 41
		f 4 0 53 -55 -53
		mu 0 4 0 30 43 42
		f 4 -2 57 58 -56
		mu 0 4 32 2 45 44
		f 4 -5 52 59 -58
		mu 0 4 2 0 42 45
		f 4 13 63 -65 -61
		mu 0 4 66 67 68 69
		f 4 5 65 -67 -64
		mu 0 4 70 71 72 73
		f 4 -16 61 67 -66
		mu 0 4 71 74 75 72
		f 4 19 60 -72 -69
		mu 0 4 15 76 77 78
		f 4 -22 69 72 -62
		mu 0 4 79 80 81 82
		f 4 25 68 -77 -74
		mu 0 4 83 84 85 86
		f 4 -28 74 77 -70
		mu 0 4 87 88 89 90
		f 4 31 73 -79 -54
		mu 0 4 91 92 93 94
		f 4 -34 55 79 -75
		mu 0 4 95 96 97 98
		f 4 2 81 -83 -81
		mu 0 4 20 99 100 101
		f 4 -4 85 86 -84
		mu 0 4 102 103 104 105
		f 4 -9 80 87 -86
		mu 0 4 106 107 108 109
		f 4 16 91 -93 -89
		mu 0 4 110 111 112 113
		f 4 9 93 -95 -92
		mu 0 4 25 114 115 116
		f 4 -13 89 95 -94
		mu 0 4 117 118 119 120
		f 4 22 88 -100 -97
		mu 0 4 121 122 123 124
		f 4 -19 97 100 -90
		mu 0 4 125 126 127 128
		f 4 28 96 -105 -102
		mu 0 4 129 130 131 132
		f 4 -25 102 105 -98
		mu 0 4 133 134 135 136
		f 4 34 101 -107 -82
		mu 0 4 33 28 64 47
		f 4 -31 83 107 -103
		mu 0 4 24 29 48 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube40" -p "boat_moorings";
	rename -uid "8EF46E5C-4CF8-1F77-7437-A4BF70928615";
	setAttr ".t" -type "double3" 1.2314211993320898 2.5789360605015639 -4.4334978132042853 ;
	setAttr ".r" -type "double3" 0 -21.098020653150215 0 ;
	setAttr ".s" -type "double3" 0.55852424283895441 0.55852424283895441 0.55852424283895441 ;
createNode mesh -n "pCubeShape40" -p "pCube40";
	rename -uid "AED2C53E-48F5-7092-8BB1-9CBA1305FC99";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[2]" "f[9]" "f[13]" "f[17]" "f[21]" "f[42:53]" "f[59:61]" "f[67:69]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 7 "f[3]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22:29]" "f[70:85]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[7]" "f[11]" "f[15]" "f[19]" "f[30:41]" "f[56:58]" "f[64:66]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[62:63]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[54:55]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[1]" "f[8]" "f[12]" "f[16]" "f[20]";
	setAttr ".pv" -type "double2" 0.50694043934345245 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 175 ".uvst[0].uvsp[0:174]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.57559973 0.75 0.57559973 0 0.57559973 1 0.57559973
		 0.25 0.57559973 0.5 0.55137658 0.75 0.55137658 0 0.55137658 1 0.55137658 0.25 0.55137658
		 0.5 0.46305543 0.75 0.46305543 0 0.46305543 1 0.46305543 0.25 0.46305543 0.5 0.43828115
		 0.75 0.43828115 0 0.43828115 1 0.43828115 0.25 0.43828115 0.5 0.55137658 0.75 0.57559973
		 0.75 0.57559973 1 0.55137658 1 0.43828115 0.75 0.46305543 0.75 0.46305543 1 0.43828115
		 1 0.375 0 0.43828115 0 0.43828115 0.25 0.375 0.25 0.375 0.5 0.43828115 0.5 0.43828115
		 0.75 0.375 0.75 0.57559973 0 0.625 0 0.625 0.25 0.57559973 0.25 0.57559973 0.5 0.625
		 0.5 0.625 0.75 0.57559973 0.75 0.55137658 0 0.55137658 0.25 0.55137658 0.5 0.55137658
		 0.75 0.46305543 0 0.46305543 0.25 0.46305543 0.5 0.46305543 0.75 0.375 0.5 0.43828115
		 0.5 0.43828115 0.5 0.375 0.5 0.43828115 0.75 0.375 0.75 0.375 0.75 0.43828115 0.75
		 0.375 0.5 0.375 0.5 0.625 0 0.625 0 0.57559973 0 0.625 0 0.625 0.25 0.625 0.25 0.625
		 0 0.625 0.25 0.57559973 0.25 0.57559973 0.25 0.625 0.25 0.57559973 0.5 0.625 0.5
		 0.625 0.5 0.57559973 0.5 0.625 0.5 0.625 0.75 0.625 0.75 0.625 0.5 0.625 0.75 0.57559973
		 0.75 0.57559973 0.75 0.625 0.75 0.57559973 0 0.57559973 0 0.55137658 0 0.57559973
		 0.25 0.55137658 0.25 0.55137658 0.25 0.57559973 0.25 0.55137658 0.5 0.57559973 0.5
		 0.57559973 0.5 0.55137658 0.5 0.57559973 0.75 0.55137658 0.75 0.55137658 0.75 0.57559973
		 0.75 0.55137658 0 0.55137658 0 0.46305543 0 0.55137658 0.25 0.46305543 0.25 0.46305543
		 0.25 0.55137658 0.25 0.46305543 0.5 0.55137658 0.5 0.55137658 0.5 0.46305543 0.5
		 0.55137658 0.75 0.46305543 0.75 0.46305543 0.75 0.55137658 0.75 0.43828115 0 0.46305543
		 0 0.46305543 0 0.43828115 0 0.46305543 0.25 0.43828115 0.25 0.43828115 0.25 0.46305543
		 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25
		 0.375 0 0.375 0.25 0.375 0.75 0.375 0.75 0.43828115 0.75 0.43828115 0.75 0.57559973
		 0.5 0.57559973 0.5 0.55137658 0.5 0.55137658 0.5 0.55137658 0 0.55137658 0 0.46305543
		 0 0.46305543 0 0.57559973 0.75 0.57559973 1 0.57559973 1 0.57559973 0.75 0.43828115
		 1 0.43828115 0.75 0.43828115 0.75 0.43828115 1 0.55137658 1 0.55137658 0.75 0.55137658
		 0.75 0.55137658 1 0.46305543 0.75 0.46305543 1 0.46305543 1 0.46305543 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[8]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[9]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[12]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[13]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[16]" -type "float3" -2.910383e-11 0 3.1813979e-06 ;
	setAttr ".pt[17]" -type "float3" -2.910383e-11 0 3.0770898e-06 ;
	setAttr ".pt[20]" -type "float3" -2.910383e-11 0 -3.1664968e-06 ;
	setAttr ".pt[21]" -type "float3" -2.910383e-11 0 -3.1590462e-06 ;
	setAttr ".pt[24]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[25]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[26]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[27]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[28]" -type "float3" -2.910383e-11 0 -3.1664968e-06 ;
	setAttr ".pt[29]" -type "float3" -2.910383e-11 0 3.1813979e-06 ;
	setAttr ".pt[30]" -type "float3" -2.910383e-11 0 3.0770898e-06 ;
	setAttr ".pt[31]" -type "float3" -2.910383e-11 0 -3.1590462e-06 ;
	setAttr ".pt[80]" -type "float3" -0.015615884 0 0.0056104367 ;
	setAttr ".pt[81]" -type "float3" -0.015615884 0 -0.0060416902 ;
	setAttr ".pt[82]" -type "float3" -0.015615884 0 0.0056104367 ;
	setAttr ".pt[83]" -type "float3" -0.015615884 0 -0.0060416902 ;
	setAttr ".pt[84]" -type "float3" 0.015615884 0 0.0056104367 ;
	setAttr ".pt[85]" -type "float3" 0.015615884 0 -0.0060416902 ;
	setAttr ".pt[86]" -type "float3" 0.015615884 0 -0.0060416902 ;
	setAttr ".pt[87]" -type "float3" 0.015615884 0 0.0056104367 ;
	setAttr -s 88 ".vt[0:87]"  -0.56840289 -0.041276932 0.054221153 0.56840301 -0.041276932 0.054218292
		 -0.56840289 0.15023136 0.054221153 0.56840301 0.15023136 0.054218292 -0.56840289 0.15023136 -0.054217339
		 0.56840301 0.15023136 -0.054218292 -0.56840289 -0.041276932 -0.054217339 0.56840301 -0.041276932 -0.054218292
		 0.34376872 -0.09575367 -0.054217339 0.34376895 -0.09575367 0.054218292 0.34376895 0.095754147 0.054218292
		 0.34376872 0.095754147 -0.054217339 0.233621 -0.09575367 -0.054218292 0.23362064 -0.09575367 0.054218292
		 0.23362064 0.095754147 0.054218292 0.233621 0.095754147 -0.054218292 -0.2484113 -0.09575367 -0.054218292
		 -0.24841154 -0.09575367 0.054221153 -0.24841154 0.095754147 0.054221153 -0.2484113 0.095754147 -0.054218292
		 -0.36106575 -0.09575367 -0.054218292 -0.36106575 -0.09575367 0.0542202 -0.36106575 0.095754147 0.0542202
		 -0.36106575 0.095754147 -0.054218292 0.233621 -0.30421257 -0.054218292 0.34376872 -0.30421257 -0.054217339
		 0.34376895 -0.30421257 0.054218292 0.23362064 -0.30421257 0.054218292 -0.36106575 -0.30421257 -0.054218292
		 -0.2484113 -0.30421257 -0.054218292 -0.24841154 -0.30421257 0.054221153 -0.36106575 -0.30421257 0.0542202
		 -0.56840312 -0.03041935 0.071551323 -0.36106598 -0.063644886 0.071550369 -0.36106598 0.053155899 0.071550369
		 -0.56840312 0.086381435 0.071551323 0.34376895 -0.063644886 0.071551323 0.34376895 0.053155899 0.071551323
		 0.56840301 -0.03041935 0.07155323 0.56840301 0.086381435 0.07155323 0.23362076 -0.063644886 0.071550369
		 0.23362076 0.053155899 0.071550369 -0.24841177 -0.063644886 0.071551323 -0.24841177 0.053155899 0.071551323
		 -0.56840241 0.086381435 -0.071552277 -0.36106598 0.053155899 -0.071548462 -0.36106598 -0.063644886 -0.071548462
		 -0.56840241 -0.03041935 -0.071552277 0.34376895 0.053155899 -0.071551323 0.34376895 -0.063644886 -0.071551323
		 0.56840312 0.086381435 -0.071551323 0.56840312 -0.03041935 -0.071551323 0.233621 0.053155899 -0.071549416
		 0.233621 -0.063644886 -0.071549416 -0.24841225 0.053155899 -0.071548462 -0.24841225 -0.063644886 -0.071548462
		 0.67404366 0.046075821 -0.037231445 0.67404377 0.046075821 0.038097382 0.65514219 0.17776299 -0.037229538
		 0.65514219 0.17776299 0.038099289 0.66144383 0.13385773 0.050138474 0.67297208 0.05354166 0.050138474
		 0.6729722 0.05354166 -0.049271584 0.66144407 0.13385773 -0.04927063 -0.67404354 0.046075821 -0.037230492
		 -0.67404377 0.046075821 0.038100243 -0.65514219 0.17776299 0.038100243 -0.65514195 0.17776299 -0.037229538
		 -0.67297184 0.05354166 0.050140381 -0.66144407 0.13385773 0.050139427 -0.66144383 0.13385773 -0.04927063
		 -0.67297208 0.05354166 -0.04927063 0.37650764 -0.086489201 -0.036594391 0.37650764 -0.086489201 0.036596298
		 0.37650764 -0.31347752 0.036596298 0.37650764 -0.31347752 -0.036594391 -0.39380419 -0.086489201 -0.036594391
		 -0.39380443 -0.086489201 0.036598206 -0.39380419 -0.31347752 -0.036594391 -0.39380443 -0.31347752 0.036598206
		 0.20622134 -0.09575367 -0.054218292 0.20622098 -0.09575367 0.054219246 0.20622134 -0.30421257 -0.054218292
		 0.20622098 -0.30421257 0.054219246 -0.22101152 -0.09575367 -0.054216385 -0.22101176 -0.09575367 0.054221153
		 -0.22101176 -0.30421257 0.054221153 -0.22101152 -0.30421257 -0.054216385;
	setAttr -s 172 ".ed";
	setAttr ".ed[0:165]"  0 21 0 2 22 0 4 23 0 6 20 0 2 4 1 3 5 1 6 0 1 7 1 1
		 8 7 0 9 1 0 8 9 0 10 3 0 11 5 0 10 11 1 12 8 0 13 9 0 12 13 0 14 10 0 15 11 0 14 15 1
		 16 12 0 17 13 0 16 17 0 18 14 0 19 15 0 18 19 1 20 16 0 21 17 0 20 21 0 22 18 0 23 19 0
		 22 23 1 12 24 1 8 25 1 24 25 0 9 26 1 25 26 1 13 27 1 27 26 0 24 27 1 20 28 1 16 29 1
		 28 29 0 17 30 1 29 30 1 21 31 1 31 30 0 28 31 1 0 32 1 21 33 0 32 33 0 22 34 0 33 34 1
		 2 35 1 35 34 0 32 35 1 9 36 0 10 37 0 36 37 1 1 38 1 36 38 0 3 39 1 38 39 1 37 39 0
		 13 40 0 14 41 0 40 41 1 40 36 0 41 37 0 17 42 0 18 43 0 42 43 1 42 40 0 43 41 0 33 42 0
		 34 43 0 4 44 1 23 45 0 44 45 0 20 46 0 45 46 1 6 47 1 47 46 0 44 47 1 11 48 0 8 49 0
		 48 49 1 5 50 1 48 50 0 7 51 1 50 51 1 49 51 0 15 52 0 12 53 0 52 53 1 52 48 0 53 49 0
		 19 54 0 16 55 0 54 55 1 54 52 0 55 53 0 45 54 0 46 55 0 7 56 0 1 57 0 56 57 0 5 58 0
		 58 56 0 3 59 0 59 58 0 57 59 0 39 60 1 59 60 0 38 61 0 61 60 0 57 61 0 51 62 0 56 62 0
		 50 63 1 63 62 0 58 63 0 6 64 0 0 65 0 64 65 0 2 66 0 65 66 0 4 67 0 66 67 0 67 64 0
		 32 68 0 65 68 0 35 69 1 68 69 0 66 69 0 44 70 1 67 70 0 47 71 0 70 71 0 64 71 0 8 72 0
		 9 73 0 72 73 0 26 74 0 73 74 0 25 75 0 75 74 0 72 75 0 20 76 0 21 77 0 76 77 0 28 78 0
		 76 78 0 31 79 0 78 79 0 77 79 0 12 80 0 13 81 0 80 81 0 24 82 0 80 82 0 27 83 0 82 83 0
		 81 83 0 16 84 0 17 85 0;
	setAttr ".ed[166:171]" 84 85 0 30 86 0 85 86 0 29 87 0 87 86 0 84 87 0;
	setAttr -s 86 -ch 344 ".fc[0:85]" -type "polyFaces" 
		f 4 50 52 -55 -56
		mu 0 4 42 43 44 45
		f 4 1 31 -3 -5
		mu 0 4 2 32 33 4
		f 4 78 80 -83 -84
		mu 0 4 46 47 48 49
		f 4 3 28 -1 -7
		mu 0 4 6 29 31 8
		f 4 -107 -109 -111 -112
		mu 0 4 137 138 139 140
		f 4 124 126 128 129
		mu 0 4 141 142 143 144
		f 4 8 7 -10 -11
		mu 0 4 14 7 9 16
		f 4 -59 60 62 -64
		mu 0 4 53 50 51 52
		f 4 -14 11 5 -13
		mu 0 4 18 17 3 5
		f 4 -87 88 90 -92
		mu 0 4 57 54 55 56
		f 4 34 36 -39 -40
		mu 0 4 34 35 36 37
		f 4 -67 67 58 -69
		mu 0 4 59 58 50 53
		f 4 -20 17 13 -19
		mu 0 4 23 22 17 18
		f 4 -95 95 86 -97
		mu 0 4 61 60 54 57
		f 4 20 16 -22 -23
		mu 0 4 24 19 21 26
		f 4 -72 72 66 -74
		mu 0 4 63 62 58 59
		f 4 -26 23 19 -25
		mu 0 4 28 27 22 23
		f 4 -100 100 94 -102
		mu 0 4 65 64 60 61
		f 4 42 44 -47 -48
		mu 0 4 38 39 40 41
		f 4 -53 74 71 -76
		mu 0 4 44 43 62 63
		f 4 -32 29 25 -31
		mu 0 4 33 32 27 28
		f 4 -81 102 99 -104
		mu 0 4 48 47 64 65
		f 4 14 33 -35 -33
		mu 0 4 19 14 35 34
		f 4 142 144 -147 -148
		mu 0 4 159 160 161 162
		f 4 -16 37 38 -36
		mu 0 4 16 21 37 36
		f 4 -159 160 162 -164
		mu 0 4 167 168 169 170
		f 4 26 41 -43 -41
		mu 0 4 29 24 39 38
		f 4 166 168 -171 -172
		mu 0 4 171 172 173 174
		f 4 -28 45 46 -44
		mu 0 4 26 31 41 40
		f 4 -151 152 154 -156
		mu 0 4 163 164 165 166
		f 4 0 49 -51 -49
		mu 0 4 0 30 43 42
		f 4 -2 53 54 -52
		mu 0 4 32 2 45 44
		f 4 -127 131 133 -135
		mu 0 4 143 142 145 146
		f 4 9 59 -61 -57
		mu 0 4 66 67 68 69
		f 4 111 113 -116 -117
		mu 0 4 150 147 148 149
		f 4 -12 57 63 -62
		mu 0 4 71 74 75 72
		f 4 15 56 -68 -65
		mu 0 4 15 76 77 78
		f 4 -18 65 68 -58
		mu 0 4 79 80 81 82
		f 4 21 64 -73 -70
		mu 0 4 83 84 85 86
		f 4 -24 70 73 -66
		mu 0 4 87 88 89 90
		f 4 27 69 -75 -50
		mu 0 4 91 92 93 94
		f 4 -30 51 75 -71
		mu 0 4 95 96 97 98
		f 4 2 77 -79 -77
		mu 0 4 20 99 100 101
		f 4 -4 81 82 -80
		mu 0 4 102 103 104 105
		f 4 -130 136 138 -140
		mu 0 4 154 151 152 153
		f 4 12 87 -89 -85
		mu 0 4 110 111 112 113
		f 4 108 118 -121 -122
		mu 0 4 158 155 156 157
		f 4 -9 85 91 -90
		mu 0 4 117 118 119 120
		f 4 18 84 -96 -93
		mu 0 4 121 122 123 124
		f 4 -15 93 96 -86
		mu 0 4 125 126 127 128
		f 4 24 92 -101 -98
		mu 0 4 129 130 131 132
		f 4 -21 98 101 -94
		mu 0 4 133 134 135 136
		f 4 30 97 -103 -78
		mu 0 4 33 28 64 47
		f 4 -27 79 103 -99
		mu 0 4 24 29 48 65
		f 4 -8 104 106 -106
		mu 0 4 1 10 138 137
		f 4 -6 109 110 -108
		mu 0 4 11 3 140 139
		f 4 61 112 -114 -110
		mu 0 4 12 0 142 141
		f 4 -63 114 115 -113
		mu 0 4 2 13 144 143
		f 4 -60 105 116 -115
		mu 0 4 0 42 145 142
		f 4 89 117 -119 -105
		mu 0 4 42 45 146 145
		f 4 -91 119 120 -118
		mu 0 4 45 2 143 146
		f 4 -88 107 121 -120
		mu 0 4 71 72 148 147
		f 4 6 123 -125 -123
		mu 0 4 72 73 149 148
		f 4 4 127 -129 -126
		mu 0 4 73 70 150 149
		f 4 48 130 -132 -124
		mu 0 4 107 108 152 151
		f 4 55 132 -134 -131
		mu 0 4 108 109 153 152
		f 4 -54 125 134 -133
		mu 0 4 109 106 154 153
		f 4 76 135 -137 -128
		mu 0 4 114 115 156 155
		f 4 83 137 -139 -136
		mu 0 4 115 116 157 156
		f 4 -82 122 139 -138
		mu 0 4 116 25 158 157
		f 4 10 141 -143 -141
		mu 0 4 14 16 160 159
		f 4 35 143 -145 -142
		mu 0 4 16 36 161 160
		f 4 -37 145 146 -144
		mu 0 4 36 35 162 161
		f 4 -34 140 147 -146
		mu 0 4 35 14 159 162
		f 4 -29 148 150 -150
		mu 0 4 31 29 164 163
		f 4 40 151 -153 -149
		mu 0 4 29 38 165 164
		f 4 47 153 -155 -152
		mu 0 4 38 41 166 165
		f 4 -46 149 155 -154
		mu 0 4 41 31 163 166
		f 4 -17 156 158 -158
		mu 0 4 21 19 168 167
		f 4 32 159 -161 -157
		mu 0 4 19 34 169 168
		f 4 39 161 -163 -160
		mu 0 4 34 37 170 169
		f 4 -38 157 163 -162
		mu 0 4 37 21 167 170
		f 4 22 165 -167 -165
		mu 0 4 24 26 172 171
		f 4 43 167 -169 -166
		mu 0 4 26 40 173 172
		f 4 -45 169 170 -168
		mu 0 4 40 39 174 173
		f 4 -42 164 171 -170
		mu 0 4 39 24 171 174;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "pCube40";
	rename -uid "76F505B8-40E3-15F6-0862-3491DBDA9545";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 6 "f[2]" "f[9]" "f[13]" "f[17]" "f[21]" "f[42:53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 6 "f[3]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22:29]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[0]" "f[7]" "f[11]" "f[15]" "f[19]" "f[30:41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[1]" "f[8]" "f[12]" "f[16]" "f[20]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 137 ".uvst[0].uvsp[0:136]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.57559973 0.75 0.57559973 0 0.57559973 1 0.57559973
		 0.25 0.57559973 0.5 0.55137658 0.75 0.55137658 0 0.55137658 1 0.55137658 0.25 0.55137658
		 0.5 0.46305543 0.75 0.46305543 0 0.46305543 1 0.46305543 0.25 0.46305543 0.5 0.43828115
		 0.75 0.43828115 0 0.43828115 1 0.43828115 0.25 0.43828115 0.5 0.55137658 0.75 0.57559973
		 0.75 0.57559973 1 0.55137658 1 0.43828115 0.75 0.46305543 0.75 0.46305543 1 0.43828115
		 1 0.375 0 0.43828115 0 0.43828115 0.25 0.375 0.25 0.375 0.5 0.43828115 0.5 0.43828115
		 0.75 0.375 0.75 0.57559973 0 0.625 0 0.625 0.25 0.57559973 0.25 0.57559973 0.5 0.625
		 0.5 0.625 0.75 0.57559973 0.75 0.55137658 0 0.55137658 0.25 0.55137658 0.5 0.55137658
		 0.75 0.46305543 0 0.46305543 0.25 0.46305543 0.5 0.46305543 0.75 0.375 0.5 0.43828115
		 0.5 0.43828115 0.5 0.375 0.5 0.43828115 0.75 0.375 0.75 0.375 0.75 0.43828115 0.75
		 0.375 0.5 0.375 0.5 0.625 0 0.625 0 0.57559973 0 0.625 0 0.625 0.25 0.625 0.25 0.625
		 0 0.625 0.25 0.57559973 0.25 0.57559973 0.25 0.625 0.25 0.57559973 0.5 0.625 0.5
		 0.625 0.5 0.57559973 0.5 0.625 0.5 0.625 0.75 0.625 0.75 0.625 0.5 0.625 0.75 0.57559973
		 0.75 0.57559973 0.75 0.625 0.75 0.57559973 0 0.57559973 0 0.55137658 0 0.57559973
		 0.25 0.55137658 0.25 0.55137658 0.25 0.57559973 0.25 0.55137658 0.5 0.57559973 0.5
		 0.57559973 0.5 0.55137658 0.5 0.57559973 0.75 0.55137658 0.75 0.55137658 0.75 0.57559973
		 0.75 0.55137658 0 0.55137658 0 0.46305543 0 0.55137658 0.25 0.46305543 0.25 0.46305543
		 0.25 0.55137658 0.25 0.46305543 0.5 0.55137658 0.5 0.55137658 0.5 0.46305543 0.5
		 0.55137658 0.75 0.46305543 0.75 0.46305543 0.75 0.55137658 0.75 0.43828115 0 0.46305543
		 0 0.46305543 0 0.43828115 0 0.46305543 0.25 0.43828115 0.25 0.43828115 0.25 0.46305543
		 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt";
	setAttr ".pt[0]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[1]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[2]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[3]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[4]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[5]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[6]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[7]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[32]" -type "float3" 7.4505806e-09 0.010857345 0.017332556 ;
	setAttr ".pt[33]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[34]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[35]" -type "float3" 7.4505806e-09 -0.063849747 0.017332556 ;
	setAttr ".pt[36]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[37]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[38]" -type "float3" -7.4505806e-09 0.010857345 0.017332556 ;
	setAttr ".pt[39]" -type "float3" -7.4505806e-09 -0.063849747 0.017332556 ;
	setAttr ".pt[40]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[41]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[42]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[43]" -type "float3" 0 -0.04259821 0.017332556 ;
	setAttr ".pt[44]" -type "float3" 7.4505806e-09 -0.063849747 -0.017332556 ;
	setAttr ".pt[45]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[46]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[47]" -type "float3" 7.4505806e-09 0.010857345 -0.017332556 ;
	setAttr ".pt[48]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[49]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[50]" -type "float3" -7.4505806e-09 -0.063849747 -0.017332556 ;
	setAttr ".pt[51]" -type "float3" -7.4505806e-09 0.010857345 -0.017332556 ;
	setAttr ".pt[52]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[53]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[54]" -type "float3" 0 -0.04259821 -0.017332556 ;
	setAttr ".pt[55]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr -s 56 ".vt[0:55]"  -0.56840301 -0.041276753 0.054218292 0.56840301 -0.041276753 0.054218292
		 -0.56840301 0.15023133 0.054218292 0.56840301 0.15023133 0.054218292 -0.56840301 0.15023133 -0.054218292
		 0.56840301 0.15023133 -0.054218292 -0.56840301 -0.041276753 -0.054218292 0.56840301 -0.041276753 -0.054218292
		 0.34376895 -0.09575405 -0.054218292 0.34376895 -0.09575405 0.054218292 0.34376895 0.09575405 0.054218292
		 0.34376895 0.09575405 -0.054218292 0.23362088 -0.09575405 -0.054218292 0.23362088 -0.09575405 0.054218292
		 0.23362088 0.09575405 0.054218292 0.23362088 0.09575405 -0.054218292 -0.24841166 -0.095754042 -0.054218292
		 -0.24841166 -0.095754042 0.054218292 -0.24841166 0.095754035 0.054218292 -0.24841166 0.095754035 -0.054218292
		 -0.36106586 -0.09575405 -0.054218292 -0.36106586 -0.09575405 0.054218292 -0.36106586 0.09575405 0.054218292
		 -0.36106586 0.09575405 -0.054218292 0.23362088 -0.30421254 -0.054218292 0.34376895 -0.30421254 -0.054218292
		 0.34376895 -0.30421254 0.054218292 0.23362088 -0.30421254 0.054218292 -0.36106586 -0.30421257 -0.054218292
		 -0.24841166 -0.30421257 -0.054218292 -0.24841166 -0.30421257 0.054218292 -0.36106586 -0.30421257 0.054218292
		 -0.56840301 -0.041276753 0.054218292 -0.36106586 -0.09575405 0.054218292 -0.36106586 0.09575405 0.054218292
		 -0.56840301 0.15023133 0.054218292 0.34376895 -0.09575405 0.054218292 0.34376895 0.09575405 0.054218292
		 0.56840301 -0.041276753 0.054218292 0.56840301 0.15023133 0.054218292 0.23362088 -0.09575405 0.054218292
		 0.23362088 0.09575405 0.054218292 -0.24841166 -0.095754042 0.054218292 -0.24841166 0.095754035 0.054218292
		 -0.56840301 0.15023133 -0.054218292 -0.36106586 0.09575405 -0.054218292 -0.36106586 -0.09575405 -0.054218292
		 -0.56840301 -0.041276753 -0.054218292 0.34376895 0.09575405 -0.054218292 0.34376895 -0.09575405 -0.054218292
		 0.56840301 0.15023133 -0.054218292 0.56840301 -0.041276753 -0.054218292 0.23362088 0.09575405 -0.054218292
		 0.23362088 -0.09575405 -0.054218292 -0.24841166 0.095754035 -0.054218292 -0.24841166 -0.095754042 -0.054218292;
	setAttr -s 108 ".ed[0:107]"  0 21 0 2 22 0 4 23 0 6 20 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 7 0 9 1 0 8 9 0 10 3 0 11 5 0 10 11 1 12 8 0 13 9 0
		 12 13 0 14 10 0 15 11 0 14 15 1 16 12 0 17 13 0 16 17 0 18 14 0 19 15 0 18 19 1 20 16 0
		 21 17 0 20 21 0 22 18 0 23 19 0 22 23 1 12 24 0 8 25 0 24 25 0 9 26 0 25 26 0 13 27 0
		 27 26 0 24 27 0 20 28 0 16 29 0 28 29 0 17 30 0 29 30 0 21 31 0 31 30 0 28 31 0 0 32 0
		 21 33 0 32 33 0 22 34 0 33 34 1 2 35 0 35 34 0 32 35 0 9 36 0 10 37 0 36 37 1 1 38 0
		 36 38 0 3 39 0 38 39 0 37 39 0 13 40 0 14 41 0 40 41 1 40 36 0 41 37 0 17 42 0 18 43 0
		 42 43 1 42 40 0 43 41 0 33 42 0 34 43 0 4 44 0 23 45 0 44 45 0 20 46 0 45 46 1 6 47 0
		 47 46 0 44 47 0 11 48 0 8 49 0 48 49 1 5 50 0 48 50 0 7 51 0 50 51 0 49 51 0 15 52 0
		 12 53 0 52 53 1 52 48 0 53 49 0 19 54 0 16 55 0 54 55 1 54 52 0 55 53 0 45 54 0 46 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 54 56 -59 -60
		mu 0 4 42 43 44 45
		f 4 1 35 -3 -7
		mu 0 4 2 32 33 4
		f 4 82 84 -87 -88
		mu 0 4 46 47 48 49
		f 4 3 32 -1 -11
		mu 0 4 6 29 31 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 11 -14 -15
		mu 0 4 14 7 9 16
		f 4 -63 64 66 -68
		mu 0 4 53 50 51 52
		f 4 -18 15 7 -17
		mu 0 4 18 17 3 5
		f 4 -91 92 94 -96
		mu 0 4 57 54 55 56
		f 4 38 40 -43 -44
		mu 0 4 34 35 36 37
		f 4 -71 71 62 -73
		mu 0 4 59 58 50 53
		f 4 -24 21 17 -23
		mu 0 4 23 22 17 18
		f 4 -99 99 90 -101
		mu 0 4 61 60 54 57
		f 4 24 20 -26 -27
		mu 0 4 24 19 21 26
		f 4 -76 76 70 -78
		mu 0 4 63 62 58 59
		f 4 -30 27 23 -29
		mu 0 4 28 27 22 23
		f 4 -104 104 98 -106
		mu 0 4 65 64 60 61
		f 4 46 48 -51 -52
		mu 0 4 38 39 40 41
		f 4 -57 78 75 -80
		mu 0 4 44 43 62 63
		f 4 -36 33 29 -35
		mu 0 4 33 32 27 28
		f 4 -85 106 103 -108
		mu 0 4 48 47 64 65
		f 4 18 37 -39 -37
		mu 0 4 19 14 35 34
		f 4 14 39 -41 -38
		mu 0 4 14 16 36 35
		f 4 -20 41 42 -40
		mu 0 4 16 21 37 36
		f 4 -21 36 43 -42
		mu 0 4 21 19 34 37
		f 4 30 45 -47 -45
		mu 0 4 29 24 39 38
		f 4 26 47 -49 -46
		mu 0 4 24 26 40 39
		f 4 -32 49 50 -48
		mu 0 4 26 31 41 40
		f 4 -33 44 51 -50
		mu 0 4 31 29 38 41
		f 4 0 53 -55 -53
		mu 0 4 0 30 43 42
		f 4 -2 57 58 -56
		mu 0 4 32 2 45 44
		f 4 -5 52 59 -58
		mu 0 4 2 0 42 45
		f 4 13 63 -65 -61
		mu 0 4 66 67 68 69
		f 4 5 65 -67 -64
		mu 0 4 70 71 72 73
		f 4 -16 61 67 -66
		mu 0 4 71 74 75 72
		f 4 19 60 -72 -69
		mu 0 4 15 76 77 78
		f 4 -22 69 72 -62
		mu 0 4 79 80 81 82
		f 4 25 68 -77 -74
		mu 0 4 83 84 85 86
		f 4 -28 74 77 -70
		mu 0 4 87 88 89 90
		f 4 31 73 -79 -54
		mu 0 4 91 92 93 94
		f 4 -34 55 79 -75
		mu 0 4 95 96 97 98
		f 4 2 81 -83 -81
		mu 0 4 20 99 100 101
		f 4 -4 85 86 -84
		mu 0 4 102 103 104 105
		f 4 -9 80 87 -86
		mu 0 4 106 107 108 109
		f 4 16 91 -93 -89
		mu 0 4 110 111 112 113
		f 4 9 93 -95 -92
		mu 0 4 25 114 115 116
		f 4 -13 89 95 -94
		mu 0 4 117 118 119 120
		f 4 22 88 -100 -97
		mu 0 4 121 122 123 124
		f 4 -19 97 100 -90
		mu 0 4 125 126 127 128
		f 4 28 96 -105 -102
		mu 0 4 129 130 131 132
		f 4 -25 102 105 -98
		mu 0 4 133 134 135 136
		f 4 34 101 -107 -82
		mu 0 4 33 28 64 47
		f 4 -31 83 107 -103
		mu 0 4 24 29 48 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube41" -p "boat_moorings";
	rename -uid "93438162-45C3-8A53-2870-34BDE70685C9";
	setAttr ".t" -type "double3" 1.2393115620799897 2.5789360605015639 -2.7246718956263161 ;
	setAttr ".r" -type "double3" 0 22.144387696120411 0 ;
	setAttr ".s" -type "double3" 0.55852424283895441 0.55852424283895441 0.55852424283895441 ;
createNode mesh -n "pCubeShape41" -p "pCube41";
	rename -uid "B8DF2503-4478-1C62-A1E4-25A5164A37AC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 8 "f[2]" "f[9]" "f[13]" "f[17]" "f[21]" "f[42:53]" "f[59:61]" "f[67:69]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 7 "f[3]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22:29]" "f[70:85]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 8 "f[0]" "f[7]" "f[11]" "f[15]" "f[19]" "f[30:41]" "f[56:58]" "f[64:66]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[5]" "f[62:63]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[54:55]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[1]" "f[8]" "f[12]" "f[16]" "f[20]";
	setAttr ".pv" -type "double2" 0.50694043934345245 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 175 ".uvst[0].uvsp[0:174]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.57559973 0.75 0.57559973 0 0.57559973 1 0.57559973
		 0.25 0.57559973 0.5 0.55137658 0.75 0.55137658 0 0.55137658 1 0.55137658 0.25 0.55137658
		 0.5 0.46305543 0.75 0.46305543 0 0.46305543 1 0.46305543 0.25 0.46305543 0.5 0.43828115
		 0.75 0.43828115 0 0.43828115 1 0.43828115 0.25 0.43828115 0.5 0.55137658 0.75 0.57559973
		 0.75 0.57559973 1 0.55137658 1 0.43828115 0.75 0.46305543 0.75 0.46305543 1 0.43828115
		 1 0.375 0 0.43828115 0 0.43828115 0.25 0.375 0.25 0.375 0.5 0.43828115 0.5 0.43828115
		 0.75 0.375 0.75 0.57559973 0 0.625 0 0.625 0.25 0.57559973 0.25 0.57559973 0.5 0.625
		 0.5 0.625 0.75 0.57559973 0.75 0.55137658 0 0.55137658 0.25 0.55137658 0.5 0.55137658
		 0.75 0.46305543 0 0.46305543 0.25 0.46305543 0.5 0.46305543 0.75 0.375 0.5 0.43828115
		 0.5 0.43828115 0.5 0.375 0.5 0.43828115 0.75 0.375 0.75 0.375 0.75 0.43828115 0.75
		 0.375 0.5 0.375 0.5 0.625 0 0.625 0 0.57559973 0 0.625 0 0.625 0.25 0.625 0.25 0.625
		 0 0.625 0.25 0.57559973 0.25 0.57559973 0.25 0.625 0.25 0.57559973 0.5 0.625 0.5
		 0.625 0.5 0.57559973 0.5 0.625 0.5 0.625 0.75 0.625 0.75 0.625 0.5 0.625 0.75 0.57559973
		 0.75 0.57559973 0.75 0.625 0.75 0.57559973 0 0.57559973 0 0.55137658 0 0.57559973
		 0.25 0.55137658 0.25 0.55137658 0.25 0.57559973 0.25 0.55137658 0.5 0.57559973 0.5
		 0.57559973 0.5 0.55137658 0.5 0.57559973 0.75 0.55137658 0.75 0.55137658 0.75 0.57559973
		 0.75 0.55137658 0 0.55137658 0 0.46305543 0 0.55137658 0.25 0.46305543 0.25 0.46305543
		 0.25 0.55137658 0.25 0.46305543 0.5 0.55137658 0.5 0.55137658 0.5 0.46305543 0.5
		 0.55137658 0.75 0.46305543 0.75 0.46305543 0.75 0.55137658 0.75 0.43828115 0 0.46305543
		 0 0.46305543 0 0.43828115 0 0.46305543 0.25 0.43828115 0.25 0.43828115 0.25 0.46305543
		 0.25 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25
		 0.375 0 0.375 0.25 0.375 0.75 0.375 0.75 0.43828115 0.75 0.43828115 0.75 0.57559973
		 0.5 0.57559973 0.5 0.55137658 0.5 0.55137658 0.5 0.55137658 0 0.55137658 0 0.46305543
		 0 0.46305543 0 0.57559973 0.75 0.57559973 1 0.57559973 1 0.57559973 0.75 0.43828115
		 1 0.43828115 0.75 0.43828115 0.75 0.43828115 1 0.55137658 1 0.55137658 0.75 0.55137658
		 0.75 0.55137658 1 0.46305543 0.75 0.46305543 1 0.46305543 1 0.46305543 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt";
	setAttr ".pt[8]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[9]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[12]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[13]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[16]" -type "float3" -2.910383e-11 0 3.1813979e-06 ;
	setAttr ".pt[17]" -type "float3" -2.910383e-11 0 3.0770898e-06 ;
	setAttr ".pt[20]" -type "float3" -2.910383e-11 0 -3.1664968e-06 ;
	setAttr ".pt[21]" -type "float3" -2.910383e-11 0 -3.1590462e-06 ;
	setAttr ".pt[24]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[25]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[26]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[27]" -type "float3" 2.910383e-11 0 0 ;
	setAttr ".pt[28]" -type "float3" -2.910383e-11 0 -3.1664968e-06 ;
	setAttr ".pt[29]" -type "float3" -2.910383e-11 0 3.1813979e-06 ;
	setAttr ".pt[30]" -type "float3" -2.910383e-11 0 3.0770898e-06 ;
	setAttr ".pt[31]" -type "float3" -2.910383e-11 0 -3.1590462e-06 ;
	setAttr ".pt[80]" -type "float3" -0.015615884 0 0.0056104367 ;
	setAttr ".pt[81]" -type "float3" -0.015615884 0 -0.0060416902 ;
	setAttr ".pt[82]" -type "float3" -0.015615884 0 0.0056104367 ;
	setAttr ".pt[83]" -type "float3" -0.015615884 0 -0.0060416902 ;
	setAttr ".pt[84]" -type "float3" 0.015615884 0 0.0056104367 ;
	setAttr ".pt[85]" -type "float3" 0.015615884 0 -0.0060416902 ;
	setAttr ".pt[86]" -type "float3" 0.015615884 0 -0.0060416902 ;
	setAttr ".pt[87]" -type "float3" 0.015615884 0 0.0056104367 ;
	setAttr -s 88 ".vt[0:87]"  -0.56840289 -0.041276932 0.054221153 0.56840301 -0.041276932 0.054218292
		 -0.56840289 0.15023136 0.054221153 0.56840301 0.15023136 0.054218292 -0.56840289 0.15023136 -0.054217339
		 0.56840301 0.15023136 -0.054218292 -0.56840289 -0.041276932 -0.054217339 0.56840301 -0.041276932 -0.054218292
		 0.34376872 -0.09575367 -0.054217339 0.34376895 -0.09575367 0.054218292 0.34376895 0.095754147 0.054218292
		 0.34376872 0.095754147 -0.054217339 0.233621 -0.09575367 -0.054218292 0.23362064 -0.09575367 0.054218292
		 0.23362064 0.095754147 0.054218292 0.233621 0.095754147 -0.054218292 -0.2484113 -0.09575367 -0.054218292
		 -0.24841154 -0.09575367 0.054221153 -0.24841154 0.095754147 0.054221153 -0.2484113 0.095754147 -0.054218292
		 -0.36106575 -0.09575367 -0.054218292 -0.36106575 -0.09575367 0.0542202 -0.36106575 0.095754147 0.0542202
		 -0.36106575 0.095754147 -0.054218292 0.233621 -0.30421257 -0.054218292 0.34376872 -0.30421257 -0.054217339
		 0.34376895 -0.30421257 0.054218292 0.23362064 -0.30421257 0.054218292 -0.36106575 -0.30421257 -0.054218292
		 -0.2484113 -0.30421257 -0.054218292 -0.24841154 -0.30421257 0.054221153 -0.36106575 -0.30421257 0.0542202
		 -0.56840312 -0.03041935 0.071551323 -0.36106598 -0.063644886 0.071550369 -0.36106598 0.053155899 0.071550369
		 -0.56840312 0.086381435 0.071551323 0.34376895 -0.063644886 0.071551323 0.34376895 0.053155899 0.071551323
		 0.56840301 -0.03041935 0.07155323 0.56840301 0.086381435 0.07155323 0.23362076 -0.063644886 0.071550369
		 0.23362076 0.053155899 0.071550369 -0.24841177 -0.063644886 0.071551323 -0.24841177 0.053155899 0.071551323
		 -0.56840241 0.086381435 -0.071552277 -0.36106598 0.053155899 -0.071548462 -0.36106598 -0.063644886 -0.071548462
		 -0.56840241 -0.03041935 -0.071552277 0.34376895 0.053155899 -0.071551323 0.34376895 -0.063644886 -0.071551323
		 0.56840312 0.086381435 -0.071551323 0.56840312 -0.03041935 -0.071551323 0.233621 0.053155899 -0.071549416
		 0.233621 -0.063644886 -0.071549416 -0.24841225 0.053155899 -0.071548462 -0.24841225 -0.063644886 -0.071548462
		 0.67404366 0.046075821 -0.037231445 0.67404377 0.046075821 0.038097382 0.65514219 0.17776299 -0.037229538
		 0.65514219 0.17776299 0.038099289 0.66144383 0.13385773 0.050138474 0.67297208 0.05354166 0.050138474
		 0.6729722 0.05354166 -0.049271584 0.66144407 0.13385773 -0.04927063 -0.67404354 0.046075821 -0.037230492
		 -0.67404377 0.046075821 0.038100243 -0.65514219 0.17776299 0.038100243 -0.65514195 0.17776299 -0.037229538
		 -0.67297184 0.05354166 0.050140381 -0.66144407 0.13385773 0.050139427 -0.66144383 0.13385773 -0.04927063
		 -0.67297208 0.05354166 -0.04927063 0.37650764 -0.086489201 -0.036594391 0.37650764 -0.086489201 0.036596298
		 0.37650764 -0.31347752 0.036596298 0.37650764 -0.31347752 -0.036594391 -0.39380419 -0.086489201 -0.036594391
		 -0.39380443 -0.086489201 0.036598206 -0.39380419 -0.31347752 -0.036594391 -0.39380443 -0.31347752 0.036598206
		 0.20622134 -0.09575367 -0.054218292 0.20622098 -0.09575367 0.054219246 0.20622134 -0.30421257 -0.054218292
		 0.20622098 -0.30421257 0.054219246 -0.22101152 -0.09575367 -0.054216385 -0.22101176 -0.09575367 0.054221153
		 -0.22101176 -0.30421257 0.054221153 -0.22101152 -0.30421257 -0.054216385;
	setAttr -s 172 ".ed";
	setAttr ".ed[0:165]"  0 21 0 2 22 0 4 23 0 6 20 0 2 4 1 3 5 1 6 0 1 7 1 1
		 8 7 0 9 1 0 8 9 0 10 3 0 11 5 0 10 11 1 12 8 0 13 9 0 12 13 0 14 10 0 15 11 0 14 15 1
		 16 12 0 17 13 0 16 17 0 18 14 0 19 15 0 18 19 1 20 16 0 21 17 0 20 21 0 22 18 0 23 19 0
		 22 23 1 12 24 1 8 25 1 24 25 0 9 26 1 25 26 1 13 27 1 27 26 0 24 27 1 20 28 1 16 29 1
		 28 29 0 17 30 1 29 30 1 21 31 1 31 30 0 28 31 1 0 32 1 21 33 0 32 33 0 22 34 0 33 34 1
		 2 35 1 35 34 0 32 35 1 9 36 0 10 37 0 36 37 1 1 38 1 36 38 0 3 39 1 38 39 1 37 39 0
		 13 40 0 14 41 0 40 41 1 40 36 0 41 37 0 17 42 0 18 43 0 42 43 1 42 40 0 43 41 0 33 42 0
		 34 43 0 4 44 1 23 45 0 44 45 0 20 46 0 45 46 1 6 47 1 47 46 0 44 47 1 11 48 0 8 49 0
		 48 49 1 5 50 1 48 50 0 7 51 1 50 51 1 49 51 0 15 52 0 12 53 0 52 53 1 52 48 0 53 49 0
		 19 54 0 16 55 0 54 55 1 54 52 0 55 53 0 45 54 0 46 55 0 7 56 0 1 57 0 56 57 0 5 58 0
		 58 56 0 3 59 0 59 58 0 57 59 0 39 60 1 59 60 0 38 61 0 61 60 0 57 61 0 51 62 0 56 62 0
		 50 63 1 63 62 0 58 63 0 6 64 0 0 65 0 64 65 0 2 66 0 65 66 0 4 67 0 66 67 0 67 64 0
		 32 68 0 65 68 0 35 69 1 68 69 0 66 69 0 44 70 1 67 70 0 47 71 0 70 71 0 64 71 0 8 72 0
		 9 73 0 72 73 0 26 74 0 73 74 0 25 75 0 75 74 0 72 75 0 20 76 0 21 77 0 76 77 0 28 78 0
		 76 78 0 31 79 0 78 79 0 77 79 0 12 80 0 13 81 0 80 81 0 24 82 0 80 82 0 27 83 0 82 83 0
		 81 83 0 16 84 0 17 85 0;
	setAttr ".ed[166:171]" 84 85 0 30 86 0 85 86 0 29 87 0 87 86 0 84 87 0;
	setAttr -s 86 -ch 344 ".fc[0:85]" -type "polyFaces" 
		f 4 50 52 -55 -56
		mu 0 4 42 43 44 45
		f 4 1 31 -3 -5
		mu 0 4 2 32 33 4
		f 4 78 80 -83 -84
		mu 0 4 46 47 48 49
		f 4 3 28 -1 -7
		mu 0 4 6 29 31 8
		f 4 -107 -109 -111 -112
		mu 0 4 137 138 139 140
		f 4 124 126 128 129
		mu 0 4 141 142 143 144
		f 4 8 7 -10 -11
		mu 0 4 14 7 9 16
		f 4 -59 60 62 -64
		mu 0 4 53 50 51 52
		f 4 -14 11 5 -13
		mu 0 4 18 17 3 5
		f 4 -87 88 90 -92
		mu 0 4 57 54 55 56
		f 4 34 36 -39 -40
		mu 0 4 34 35 36 37
		f 4 -67 67 58 -69
		mu 0 4 59 58 50 53
		f 4 -20 17 13 -19
		mu 0 4 23 22 17 18
		f 4 -95 95 86 -97
		mu 0 4 61 60 54 57
		f 4 20 16 -22 -23
		mu 0 4 24 19 21 26
		f 4 -72 72 66 -74
		mu 0 4 63 62 58 59
		f 4 -26 23 19 -25
		mu 0 4 28 27 22 23
		f 4 -100 100 94 -102
		mu 0 4 65 64 60 61
		f 4 42 44 -47 -48
		mu 0 4 38 39 40 41
		f 4 -53 74 71 -76
		mu 0 4 44 43 62 63
		f 4 -32 29 25 -31
		mu 0 4 33 32 27 28
		f 4 -81 102 99 -104
		mu 0 4 48 47 64 65
		f 4 14 33 -35 -33
		mu 0 4 19 14 35 34
		f 4 142 144 -147 -148
		mu 0 4 159 160 161 162
		f 4 -16 37 38 -36
		mu 0 4 16 21 37 36
		f 4 -159 160 162 -164
		mu 0 4 167 168 169 170
		f 4 26 41 -43 -41
		mu 0 4 29 24 39 38
		f 4 166 168 -171 -172
		mu 0 4 171 172 173 174
		f 4 -28 45 46 -44
		mu 0 4 26 31 41 40
		f 4 -151 152 154 -156
		mu 0 4 163 164 165 166
		f 4 0 49 -51 -49
		mu 0 4 0 30 43 42
		f 4 -2 53 54 -52
		mu 0 4 32 2 45 44
		f 4 -127 131 133 -135
		mu 0 4 143 142 145 146
		f 4 9 59 -61 -57
		mu 0 4 66 67 68 69
		f 4 111 113 -116 -117
		mu 0 4 150 147 148 149
		f 4 -12 57 63 -62
		mu 0 4 71 74 75 72
		f 4 15 56 -68 -65
		mu 0 4 15 76 77 78
		f 4 -18 65 68 -58
		mu 0 4 79 80 81 82
		f 4 21 64 -73 -70
		mu 0 4 83 84 85 86
		f 4 -24 70 73 -66
		mu 0 4 87 88 89 90
		f 4 27 69 -75 -50
		mu 0 4 91 92 93 94
		f 4 -30 51 75 -71
		mu 0 4 95 96 97 98
		f 4 2 77 -79 -77
		mu 0 4 20 99 100 101
		f 4 -4 81 82 -80
		mu 0 4 102 103 104 105
		f 4 -130 136 138 -140
		mu 0 4 154 151 152 153
		f 4 12 87 -89 -85
		mu 0 4 110 111 112 113
		f 4 108 118 -121 -122
		mu 0 4 158 155 156 157
		f 4 -9 85 91 -90
		mu 0 4 117 118 119 120
		f 4 18 84 -96 -93
		mu 0 4 121 122 123 124
		f 4 -15 93 96 -86
		mu 0 4 125 126 127 128
		f 4 24 92 -101 -98
		mu 0 4 129 130 131 132
		f 4 -21 98 101 -94
		mu 0 4 133 134 135 136
		f 4 30 97 -103 -78
		mu 0 4 33 28 64 47
		f 4 -27 79 103 -99
		mu 0 4 24 29 48 65
		f 4 -8 104 106 -106
		mu 0 4 1 10 138 137
		f 4 -6 109 110 -108
		mu 0 4 11 3 140 139
		f 4 61 112 -114 -110
		mu 0 4 12 0 142 141
		f 4 -63 114 115 -113
		mu 0 4 2 13 144 143
		f 4 -60 105 116 -115
		mu 0 4 0 42 145 142
		f 4 89 117 -119 -105
		mu 0 4 42 45 146 145
		f 4 -91 119 120 -118
		mu 0 4 45 2 143 146
		f 4 -88 107 121 -120
		mu 0 4 71 72 148 147
		f 4 6 123 -125 -123
		mu 0 4 72 73 149 148
		f 4 4 127 -129 -126
		mu 0 4 73 70 150 149
		f 4 48 130 -132 -124
		mu 0 4 107 108 152 151
		f 4 55 132 -134 -131
		mu 0 4 108 109 153 152
		f 4 -54 125 134 -133
		mu 0 4 109 106 154 153
		f 4 76 135 -137 -128
		mu 0 4 114 115 156 155
		f 4 83 137 -139 -136
		mu 0 4 115 116 157 156
		f 4 -82 122 139 -138
		mu 0 4 116 25 158 157
		f 4 10 141 -143 -141
		mu 0 4 14 16 160 159
		f 4 35 143 -145 -142
		mu 0 4 16 36 161 160
		f 4 -37 145 146 -144
		mu 0 4 36 35 162 161
		f 4 -34 140 147 -146
		mu 0 4 35 14 159 162
		f 4 -29 148 150 -150
		mu 0 4 31 29 164 163
		f 4 40 151 -153 -149
		mu 0 4 29 38 165 164
		f 4 47 153 -155 -152
		mu 0 4 38 41 166 165
		f 4 -46 149 155 -154
		mu 0 4 41 31 163 166
		f 4 -17 156 158 -158
		mu 0 4 21 19 168 167
		f 4 32 159 -161 -157
		mu 0 4 19 34 169 168
		f 4 39 161 -163 -160
		mu 0 4 34 37 170 169
		f 4 -38 157 163 -162
		mu 0 4 37 21 167 170
		f 4 22 165 -167 -165
		mu 0 4 24 26 172 171
		f 4 43 167 -169 -166
		mu 0 4 26 40 173 172
		f 4 -45 169 170 -168
		mu 0 4 40 39 174 173
		f 4 -42 164 171 -170
		mu 0 4 39 24 171 174;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape4" -p "pCube41";
	rename -uid "B17DCCCB-4642-2F9C-D43D-179C7C32B6C9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 6 "f[2]" "f[9]" "f[13]" "f[17]" "f[21]" "f[42:53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 6 "f[3]" "f[6]" "f[10]" "f[14]" "f[18]" "f[22:29]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[0]" "f[7]" "f[11]" "f[15]" "f[19]" "f[30:41]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 5 "f[1]" "f[8]" "f[12]" "f[16]" "f[20]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 137 ".uvst[0].uvsp[0:136]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.57559973 0.75 0.57559973 0 0.57559973 1 0.57559973
		 0.25 0.57559973 0.5 0.55137658 0.75 0.55137658 0 0.55137658 1 0.55137658 0.25 0.55137658
		 0.5 0.46305543 0.75 0.46305543 0 0.46305543 1 0.46305543 0.25 0.46305543 0.5 0.43828115
		 0.75 0.43828115 0 0.43828115 1 0.43828115 0.25 0.43828115 0.5 0.55137658 0.75 0.57559973
		 0.75 0.57559973 1 0.55137658 1 0.43828115 0.75 0.46305543 0.75 0.46305543 1 0.43828115
		 1 0.375 0 0.43828115 0 0.43828115 0.25 0.375 0.25 0.375 0.5 0.43828115 0.5 0.43828115
		 0.75 0.375 0.75 0.57559973 0 0.625 0 0.625 0.25 0.57559973 0.25 0.57559973 0.5 0.625
		 0.5 0.625 0.75 0.57559973 0.75 0.55137658 0 0.55137658 0.25 0.55137658 0.5 0.55137658
		 0.75 0.46305543 0 0.46305543 0.25 0.46305543 0.5 0.46305543 0.75 0.375 0.5 0.43828115
		 0.5 0.43828115 0.5 0.375 0.5 0.43828115 0.75 0.375 0.75 0.375 0.75 0.43828115 0.75
		 0.375 0.5 0.375 0.5 0.625 0 0.625 0 0.57559973 0 0.625 0 0.625 0.25 0.625 0.25 0.625
		 0 0.625 0.25 0.57559973 0.25 0.57559973 0.25 0.625 0.25 0.57559973 0.5 0.625 0.5
		 0.625 0.5 0.57559973 0.5 0.625 0.5 0.625 0.75 0.625 0.75 0.625 0.5 0.625 0.75 0.57559973
		 0.75 0.57559973 0.75 0.625 0.75 0.57559973 0 0.57559973 0 0.55137658 0 0.57559973
		 0.25 0.55137658 0.25 0.55137658 0.25 0.57559973 0.25 0.55137658 0.5 0.57559973 0.5
		 0.57559973 0.5 0.55137658 0.5 0.57559973 0.75 0.55137658 0.75 0.55137658 0.75 0.57559973
		 0.75 0.55137658 0 0.55137658 0 0.46305543 0 0.55137658 0.25 0.46305543 0.25 0.46305543
		 0.25 0.55137658 0.25 0.46305543 0.5 0.55137658 0.5 0.55137658 0.5 0.46305543 0.5
		 0.55137658 0.75 0.46305543 0.75 0.46305543 0.75 0.55137658 0.75 0.43828115 0 0.46305543
		 0 0.46305543 0 0.43828115 0 0.46305543 0.25 0.43828115 0.25 0.43828115 0.25 0.46305543
		 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt";
	setAttr ".pt[0]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[1]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[2]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[3]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[4]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[5]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[6]" -type "float3" 7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[7]" -type "float3" -7.4505806e-09 9.3132257e-10 1.1641532e-10 ;
	setAttr ".pt[32]" -type "float3" 7.4505806e-09 0.010857345 0.017332556 ;
	setAttr ".pt[33]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[34]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[35]" -type "float3" 7.4505806e-09 -0.063849747 0.017332556 ;
	setAttr ".pt[36]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[37]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[38]" -type "float3" -7.4505806e-09 0.010857345 0.017332556 ;
	setAttr ".pt[39]" -type "float3" -7.4505806e-09 -0.063849747 0.017332556 ;
	setAttr ".pt[40]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[41]" -type "float3" 0 -0.042598218 0.017332556 ;
	setAttr ".pt[42]" -type "float3" 0 0.032108881 0.017332556 ;
	setAttr ".pt[43]" -type "float3" 0 -0.04259821 0.017332556 ;
	setAttr ".pt[44]" -type "float3" 7.4505806e-09 -0.063849747 -0.017332556 ;
	setAttr ".pt[45]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[46]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[47]" -type "float3" 7.4505806e-09 0.010857345 -0.017332556 ;
	setAttr ".pt[48]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[49]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[50]" -type "float3" -7.4505806e-09 -0.063849747 -0.017332556 ;
	setAttr ".pt[51]" -type "float3" -7.4505806e-09 0.010857345 -0.017332556 ;
	setAttr ".pt[52]" -type "float3" 0 -0.042598218 -0.017332556 ;
	setAttr ".pt[53]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr ".pt[54]" -type "float3" 0 -0.04259821 -0.017332556 ;
	setAttr ".pt[55]" -type "float3" 0 0.032108881 -0.017332556 ;
	setAttr -s 56 ".vt[0:55]"  -0.56840301 -0.041276753 0.054218292 0.56840301 -0.041276753 0.054218292
		 -0.56840301 0.15023133 0.054218292 0.56840301 0.15023133 0.054218292 -0.56840301 0.15023133 -0.054218292
		 0.56840301 0.15023133 -0.054218292 -0.56840301 -0.041276753 -0.054218292 0.56840301 -0.041276753 -0.054218292
		 0.34376895 -0.09575405 -0.054218292 0.34376895 -0.09575405 0.054218292 0.34376895 0.09575405 0.054218292
		 0.34376895 0.09575405 -0.054218292 0.23362088 -0.09575405 -0.054218292 0.23362088 -0.09575405 0.054218292
		 0.23362088 0.09575405 0.054218292 0.23362088 0.09575405 -0.054218292 -0.24841166 -0.095754042 -0.054218292
		 -0.24841166 -0.095754042 0.054218292 -0.24841166 0.095754035 0.054218292 -0.24841166 0.095754035 -0.054218292
		 -0.36106586 -0.09575405 -0.054218292 -0.36106586 -0.09575405 0.054218292 -0.36106586 0.09575405 0.054218292
		 -0.36106586 0.09575405 -0.054218292 0.23362088 -0.30421254 -0.054218292 0.34376895 -0.30421254 -0.054218292
		 0.34376895 -0.30421254 0.054218292 0.23362088 -0.30421254 0.054218292 -0.36106586 -0.30421257 -0.054218292
		 -0.24841166 -0.30421257 -0.054218292 -0.24841166 -0.30421257 0.054218292 -0.36106586 -0.30421257 0.054218292
		 -0.56840301 -0.041276753 0.054218292 -0.36106586 -0.09575405 0.054218292 -0.36106586 0.09575405 0.054218292
		 -0.56840301 0.15023133 0.054218292 0.34376895 -0.09575405 0.054218292 0.34376895 0.09575405 0.054218292
		 0.56840301 -0.041276753 0.054218292 0.56840301 0.15023133 0.054218292 0.23362088 -0.09575405 0.054218292
		 0.23362088 0.09575405 0.054218292 -0.24841166 -0.095754042 0.054218292 -0.24841166 0.095754035 0.054218292
		 -0.56840301 0.15023133 -0.054218292 -0.36106586 0.09575405 -0.054218292 -0.36106586 -0.09575405 -0.054218292
		 -0.56840301 -0.041276753 -0.054218292 0.34376895 0.09575405 -0.054218292 0.34376895 -0.09575405 -0.054218292
		 0.56840301 0.15023133 -0.054218292 0.56840301 -0.041276753 -0.054218292 0.23362088 0.09575405 -0.054218292
		 0.23362088 -0.09575405 -0.054218292 -0.24841166 0.095754035 -0.054218292 -0.24841166 -0.095754042 -0.054218292;
	setAttr -s 108 ".ed[0:107]"  0 21 0 2 22 0 4 23 0 6 20 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 7 0 9 1 0 8 9 0 10 3 0 11 5 0 10 11 1 12 8 0 13 9 0
		 12 13 0 14 10 0 15 11 0 14 15 1 16 12 0 17 13 0 16 17 0 18 14 0 19 15 0 18 19 1 20 16 0
		 21 17 0 20 21 0 22 18 0 23 19 0 22 23 1 12 24 0 8 25 0 24 25 0 9 26 0 25 26 0 13 27 0
		 27 26 0 24 27 0 20 28 0 16 29 0 28 29 0 17 30 0 29 30 0 21 31 0 31 30 0 28 31 0 0 32 0
		 21 33 0 32 33 0 22 34 0 33 34 1 2 35 0 35 34 0 32 35 0 9 36 0 10 37 0 36 37 1 1 38 0
		 36 38 0 3 39 0 38 39 0 37 39 0 13 40 0 14 41 0 40 41 1 40 36 0 41 37 0 17 42 0 18 43 0
		 42 43 1 42 40 0 43 41 0 33 42 0 34 43 0 4 44 0 23 45 0 44 45 0 20 46 0 45 46 1 6 47 0
		 47 46 0 44 47 0 11 48 0 8 49 0 48 49 1 5 50 0 48 50 0 7 51 0 50 51 0 49 51 0 15 52 0
		 12 53 0 52 53 1 52 48 0 53 49 0 19 54 0 16 55 0 54 55 1 54 52 0 55 53 0 45 54 0 46 55 0;
	setAttr -s 54 -ch 216 ".fc[0:53]" -type "polyFaces" 
		f 4 54 56 -59 -60
		mu 0 4 42 43 44 45
		f 4 1 35 -3 -7
		mu 0 4 2 32 33 4
		f 4 82 84 -87 -88
		mu 0 4 46 47 48 49
		f 4 3 32 -1 -11
		mu 0 4 6 29 31 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 11 -14 -15
		mu 0 4 14 7 9 16
		f 4 -63 64 66 -68
		mu 0 4 53 50 51 52
		f 4 -18 15 7 -17
		mu 0 4 18 17 3 5
		f 4 -91 92 94 -96
		mu 0 4 57 54 55 56
		f 4 38 40 -43 -44
		mu 0 4 34 35 36 37
		f 4 -71 71 62 -73
		mu 0 4 59 58 50 53
		f 4 -24 21 17 -23
		mu 0 4 23 22 17 18
		f 4 -99 99 90 -101
		mu 0 4 61 60 54 57
		f 4 24 20 -26 -27
		mu 0 4 24 19 21 26
		f 4 -76 76 70 -78
		mu 0 4 63 62 58 59
		f 4 -30 27 23 -29
		mu 0 4 28 27 22 23
		f 4 -104 104 98 -106
		mu 0 4 65 64 60 61
		f 4 46 48 -51 -52
		mu 0 4 38 39 40 41
		f 4 -57 78 75 -80
		mu 0 4 44 43 62 63
		f 4 -36 33 29 -35
		mu 0 4 33 32 27 28
		f 4 -85 106 103 -108
		mu 0 4 48 47 64 65
		f 4 18 37 -39 -37
		mu 0 4 19 14 35 34
		f 4 14 39 -41 -38
		mu 0 4 14 16 36 35
		f 4 -20 41 42 -40
		mu 0 4 16 21 37 36
		f 4 -21 36 43 -42
		mu 0 4 21 19 34 37
		f 4 30 45 -47 -45
		mu 0 4 29 24 39 38
		f 4 26 47 -49 -46
		mu 0 4 24 26 40 39
		f 4 -32 49 50 -48
		mu 0 4 26 31 41 40
		f 4 -33 44 51 -50
		mu 0 4 31 29 38 41
		f 4 0 53 -55 -53
		mu 0 4 0 30 43 42
		f 4 -2 57 58 -56
		mu 0 4 32 2 45 44
		f 4 -5 52 59 -58
		mu 0 4 2 0 42 45
		f 4 13 63 -65 -61
		mu 0 4 66 67 68 69
		f 4 5 65 -67 -64
		mu 0 4 70 71 72 73
		f 4 -16 61 67 -66
		mu 0 4 71 74 75 72
		f 4 19 60 -72 -69
		mu 0 4 15 76 77 78
		f 4 -22 69 72 -62
		mu 0 4 79 80 81 82
		f 4 25 68 -77 -74
		mu 0 4 83 84 85 86
		f 4 -28 74 77 -70
		mu 0 4 87 88 89 90
		f 4 31 73 -79 -54
		mu 0 4 91 92 93 94
		f 4 -34 55 79 -75
		mu 0 4 95 96 97 98
		f 4 2 81 -83 -81
		mu 0 4 20 99 100 101
		f 4 -4 85 86 -84
		mu 0 4 102 103 104 105
		f 4 -9 80 87 -86
		mu 0 4 106 107 108 109
		f 4 16 91 -93 -89
		mu 0 4 110 111 112 113
		f 4 9 93 -95 -92
		mu 0 4 25 114 115 116
		f 4 -13 89 95 -94
		mu 0 4 117 118 119 120
		f 4 22 88 -100 -97
		mu 0 4 121 122 123 124
		f 4 -19 97 100 -90
		mu 0 4 125 126 127 128
		f 4 28 96 -105 -102
		mu 0 4 129 130 131 132
		f 4 -25 102 105 -98
		mu 0 4 133 134 135 136
		f 4 34 101 -107 -82
		mu 0 4 33 28 64 47
		f 4 -31 83 107 -103
		mu 0 4 24 29 48 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube42";
	rename -uid "F2A3975D-4DBC-7F62-4324-B68392BD09E1";
	setAttr ".t" -type "double3" 0.33589679544628748 2.544361229782734 -3.5542268079122978 ;
	setAttr ".s" -type "double3" 0.70081173613114323 0.70081173613114323 0.70081173613114323 ;
createNode mesh -n "pCubeShape42" -p "pCube42";
	rename -uid "D26CF61A-41DC-C129-F2A9-F59B1276F176";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46253673732280731 0.37500002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[16:31]" -type "float3"  -5.1347815e-16 0 0.1438165 
		-8.2572837e-16 0 0.19758242 -9.1766872e-16 0 0.13172831 -1.5404344e-15 0 0.1724896 
		3.1225023e-16 0 -0.19758242 5.1347815e-16 0 -0.14381664 -1.0928758e-16 0 -0.13172846 
		-5.1347815e-16 0 -0.17248975 -6.1062266e-16 0 -0.090161748 -1.0269563e-15 0 -0.11900613 
		-1.4432899e-15 0 0.090161748 -1.0269563e-15 0 0.11921278 -1.0269563e-15 0 0.033669285 
		-2.0539126e-15 0 0.055763349 -1.0269563e-15 0 -0.033932783 -2.0539126e-15 0 -0.055763349;
createNode transform -n "pCylinder27";
	rename -uid "24D32A88-4F30-4BE8-C163-4C8FA11D94B4";
	setAttr ".t" -type "double3" -0.55584636483969652 0.53187864242995864 -4.8554224959096226 ;
	setAttr ".r" -type "double3" 0 36.140650573901667 0 ;
	setAttr ".s" -type "double3" 0.40837782505738152 0.40837782505738152 0.40837782505738152 ;
createNode mesh -n "pCylinderShape27" -p "pCylinder27";
	rename -uid "1A7F6C8C-4246-2540-BD62-ACB620F5482B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:20]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[21]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 21 "f[20:39]" "f[60]" "f[63]" "f[65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77]" "f[79]" "f[81]" "f[83]" "f[85]" "f[87]" "f[89]" "f[91]" "f[93]" "f[95]" "f[97]" "f[99]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 20 "f[40:59]" "f[61:62]" "f[64]" "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[80]" "f[82]" "f[84]" "f[86]" "f[88]" "f[90]" "f[92]" "f[94]" "f[96]" "f[98]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.49460795521736145 0.6913236677646637 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 125 ".uvst[0].uvsp[0:124]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.5 0.15625 0.375 0.3125 0.38749999
		 0.3125 0.375 0.53122675 0.39999998 0.3125 0.38749999 0.50680512 0.41249996 0.3125
		 0.39999998 0.50411224 0.42499995 0.3125 0.41249996 0.4585942 0.43749994 0.3125 0.42460731
		 0.47499973 0.44999993 0.3125 0.43749994 0.47335893 0.46249992 0.3125 0.44999993 0.47415093
		 0.4749999 0.3125 0.46249992 0.47435057 0.48749989 0.3125 0.4749999 0.47421885 0.49999988
		 0.3125 0.48749989 0.47340563 0.51249987 0.3125 0.49999988 0.47206303 0.52499986 0.3125
		 0.51249987 0.47050047 0.53749985 0.3125 0.52499986 0.46901679 0.54999983 0.3125 0.53749985
		 0.46774563 0.56249982 0.3125 0.54999983 0.46702451 0.57499981 0.3125 0.56249982 0.49378595
		 0.5874998 0.3125 0.57499987 0.51600325 0.59999979 0.3125 0.5874998 0.55235142 0.61249977
		 0.3125 0.59999979 0.5447669 0.62499976 0.3125 0.61249977 0.53709531 0.58281833 0.90392101
		 0.56004965 0.92640126 0.53001064 0.93611324 0.50366247 0.93328243 0.46554363 0.92846209
		 0.43774414 0.91443533 0.4172681 0.89394355 0.4054563 0.87072521 0.40179276 0.84687275
		 0.40586582 0.82274944 0.41823131 0.79926515 0.43898696 0.77915317 0.46644697 0.76575667
		 0.49981132 0.76101357 0.52001661 0.76208949 0.55308485 0.77068496 0.56912249 0.79352963
		 0.5890969 0.81480068 0.60155916 0.84375 0.59636879 0.87506211 0.5 0.84375 0.62499976
		 0.53122687 0.375 0.6875 0.6486026 0.89203393 0.62499976 0.6875 0.38749999 0.6875
		 0.62640893 0.93559146 0.39999998 0.6875 0.59184146 0.97015893 0.41249996 0.6875 0.54828387
		 0.9923526 0.42499995 0.6875 0.5 1 0.43749994 0.6875 0.4517161 0.9923526 0.44999993
		 0.6875 0.40815854 0.97015893 0.46249992 0.6875 0.37359107 0.93559146 0.4749999 0.6875
		 0.3513974 0.89203393 0.48749989 0.6875 0.34374997 0.84375 0.49999988 0.6875 0.3513974
		 0.79546607 0.51249987 0.6875 0.37359107 0.75190854 0.52499986 0.6875 0.40815851 0.71734107
		 0.53749985 0.6875 0.45171607 0.69514734 0.54999983 0.6875 0.5 0.68749994 0.56249982
		 0.6875 0.54828393 0.69514734 0.57499981 0.6875 0.59184152 0.71734101 0.5874998 0.6875
		 0.62640899 0.75190848 0.59999979 0.6875 0.64860266 0.79546607 0.65625 0.84375 0.61249977
		 0.6875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".pt[0:81]" -type "float3"  -0.42709696 0.050761405 -0.10076314 
		-0.36789024 0.048426811 -0.031842943 -0.21969894 0.047023289 0.12403466 -0.12391464 
		0.047968894 0.17256029 0.021862954 0.049014658 0.048861254 0.014320687 0.049747474 
		0.013706512 -0.010864323 0.051126841 0.064578332 0.045134738 0.052661464 -0.02504269 
		0.084680401 0.053750072 -0.1671056 0.085037328 0.053935979 -0.28134316 0.083566062 
		0.053096518 -0.32792473 0.038272046 0.051483624 -0.46090958 -0.027393252 0.049618199 
		-0.57129925 -0.10674201 0.04808256 -0.64777642 -0.097589634 0.0473064 -0.6856423 
		-0.24286316 0.054186318 -0.73201507 -0.33384717 0.058616448 -0.66639799 -0.40248349 
		0.06347423 -0.55695969 -0.44263464 0.060581829 -0.41656223 -0.45102304 0.055032868 
		-0.25937727 -0.28980568 0.032650758 -0.2891171 -0.25706998 0.098071903 -0.32910532 
		-0.3629854 4.9960036e-15 0.0030986937 -0.3156386 4.6629367e-15 0.019901434 -0.2483075 
		7.5495166e-15 -0.040145032 -0.41626102 0.096124992 -0.018227607 -0.38552114 0.096124992 
		-0.055427633 -0.32363689 0.096124992 -0.12562461 -0.27129215 4.9960036e-15 0.13649531 
		-0.24789096 7.5495166e-15 0.087311395 -0.20414919 7.5495166e-15 -0.011533451 -0.19118413 
		5.9119376e-15 0.22692184 -0.18252073 4.9960036e-15 0.1686687 -0.15678261 7.5495166e-15 
		0.037115112 -0.059216019 7.1609385e-15 0.10509077 -0.043266188 7.7715612e-15 0.16129404 
		-0.086162731 7.5495166e-15 0.004299405 0.024180952 7.5495166e-15 0.074373774 0.018502701 
		7.7715612e-15 0.13644406 -0.020701215 7.5495166e-15 -0.0026965472 0.06764622 8.7985175e-15 
		0.049679261 0.070090584 7.7715612e-15 0.1126243 0.023078974 7.5495166e-15 -0.033892002 
		0.11963928 8.826273e-15 -0.037509575 0.11601605 7.7715612e-15 0.035847887 0.035235547 
		7.5495166e-15 -0.18080428 0.1501096 8.826273e-15 -0.1536043 0.14237362 8.5487173e-15 
		-0.064520925 0.051509615 7.5495166e-15 -0.24256815 0.15588383 8.826273e-15 -0.28763732 
		0.33622721 0.028805038 -0.1130172 0.072976284 7.5495166e-15 -0.21326169 0.15513435 
		8.826273e-15 -0.33107024 0.21942782 7.5495166e-15 -0.34503365 0.14038567 0.028805038 
		-0.28701049 0.11222026 8.826273e-15 -0.46128443 0.16707587 0.028805038 -0.43640116 
		0.11640011 0.028805038 -0.3577067 0.05034956 7.9936058e-15 -0.56955904 0.11229917 
		0.028805038 -0.5315991 0.079046756 0.028805038 -0.42148209 -0.024173087 7.5495166e-15 
		-0.64478827 -0.029331867 7.5495166e-15 -0.64563501 -0.045868121 7.5495166e-15 -0.46382493 
		-0.10385 6.9666495e-15 -0.67920041 -0.10022739 7.5495166e-15 -0.70862496 -0.10112868 
		7.5495166e-15 -0.48662782 -0.20880818 6.2727601e-15 -0.70485914 -0.17351538 6.4392935e-15 
		-0.6376307 -0.13098317 7.5495166e-15 -0.49322507 -0.28112462 5.3013149e-15 -0.61303782 
		-0.23850551 4.9960036e-15 -0.54985988 -0.18246336 7.5495166e-15 -0.44366556 -0.33777577 
		4.9960036e-15 -0.43179685 -0.28992119 7.327472e-15 -0.37074879 -0.21282136 7.5495166e-15 
		-0.31864095 -0.37614653 4.9960036e-15 -0.29881492 -0.32594693 4.5519144e-15 -0.25303957 
		-0.24625692 7.5495166e-15 -0.24203214 -0.38484061 4.9960036e-15 -0.14907764 -0.33629367 
		3.9968029e-15 -0.11665282 -0.26362482 7.5495166e-15 -0.14042112;
	setAttr -s 82 ".vt[0:81]"  1.60625601 -0.15252209 0.084875345 1.43026733 -0.15018654 -0.1845181
		 1.15426683 -0.14878392 -0.39358807 0.80284691 -0.14972955 -0.52449965 0.26900101 -0.15077531 -0.43747449
		 -0.042644501 -0.15150815 -0.39541864 -0.32543039 -0.15288752 -0.27293324 -0.55095387 -0.15442216 -0.081232309
		 -0.69626617 -0.15551078 0.16186333 -0.74645042 -0.15569669 0.43330383 -0.69633102 -0.15485722 0.70679426
		 -0.55107117 -0.15324432 0.95527363 -0.3255806 -0.15137887 1.1536696 -0.042809963 -0.14984322 1.2816292
		 0.26883078 -0.14906704 1.32586896 0.80346584 -0.15594703 1.37623203 1.15542078 -0.1603772 1.22186923
		 1.43176556 -0.16523504 0.98770738 1.60723352 -0.16234261 0.70072627 1.66700935 -0.15679359 0.38967657
		 0.45657682 -0.13441032 0.47041631 0.32586241 0.53833306 0.49996328 1.45204353 0.42123458 -0.12018442
		 1.26612854 0.67387664 -0.13911414 0.98473835 0.72823411 0.00278759 1.38762331 0.26048726 -0.15034127
		 1.25717354 0.52112895 -0.065875053 0.99550629 0.60651082 0.094731331 1.11242437 0.25622252 -0.35968399
		 1.0088911057 0.52053154 -0.25341988 0.81396437 0.60732114 -0.040892839 0.81042576 0.11776962 -0.51639986
		 0.76398468 0.41469622 -0.39652252 0.63442135 0.53744054 -0.12386417 0.29473209 0.14410883 -0.43155336
		 0.30731678 0.41898805 -0.31077456 0.345397 0.533876 -0.03569603 -0.033509254 0.13757847 -0.3874836
		 0.0051503181 0.41270757 -0.27103806 0.082228661 0.52876526 -0.0010755062 -0.31629086 0.13767311 -0.26498055
		 -0.24833822 0.41198242 -0.16200042 -0.099147797 0.52760023 0.07540822 -0.54184914 0.1365179 -0.073305607
		 -0.4475255 0.41075271 0.0068283081 -0.2333827 0.52647769 0.1883893 -0.68720293 0.13517815 0.16974759
		 -0.57324886 0.40966114 0.21696281 -0.31096649 0.52579981 0.3177166 -0.73744154 0.13348056 0.44112515
		 -0.61572886 0.40884638 0.44859743 -0.33499861 0.52566504 0.45181775 -0.68737555 0.13182595 0.7145443
		 -0.57208061 0.40849739 0.68235373 -0.30807161 0.52608711 0.58869958 -0.54215813 0.13052674 0.96295667
		 -0.44505501 0.40867186 0.89753032 -0.22648478 0.52709514 0.72335291 -0.3166976 0.12961282 1.16129398
		 -0.24531126 0.40916425 1.071794748 -0.090044022 0.52847195 0.83989024 -0.033953667 0.12875572 1.28919864
		 0.0073862076 0.40955177 1.18503237 0.08945179 0.52977568 0.91843724 0.277668 0.12814513 1.33339465
		 0.29113054 0.40964171 1.22444332 0.30579472 0.53056479 0.94694996 0.69215107 0.16918932 1.35204923
		 0.56464911 0.42196217 1.22791994 0.42383337 0.52744788 0.9508462 0.99991179 0.20460275 1.1446774
		 0.84229469 0.43186677 1.030994415 0.63971853 0.52321619 0.83501148 1.26314735 0.46103922 0.76238394
		 1.084164143 0.67398405 0.65462828 0.78643179 0.68903112 0.57403398 1.44351244 0.44654846 0.48288727
		 1.25205851 0.67637682 0.40658402 0.93564415 0.70764542 0.40946317 1.50860739 0.4321669 0.17900896
		 1.32105827 0.67755038 0.12903714 1.025673389 0.72568482 0.19965243;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 20 10 1 20 11 1
		 20 12 1 20 13 1 20 14 1 20 15 1 20 16 1 20 17 1 20 18 1 20 19 1 80 79 1 79 22 1 24 81 1
		 81 80 1 24 23 0 27 24 1 23 22 0 22 25 0 27 26 0 30 27 1 26 25 0 25 28 1 30 29 1 33 30 1
		 29 28 1 28 31 1 33 32 1 36 33 1 32 31 1 31 34 1 36 35 1 39 36 1 35 34 1 34 37 1 39 38 1
		 42 39 1 38 37 1 37 40 1 42 41 1 45 42 1 41 40 1 40 43 1 45 44 1 48 45 1 44 43 1 43 46 1
		 48 47 1 51 48 1 47 46 1 46 49 1 51 50 1 54 51 1 50 49 1 49 52 1 54 53 1 57 54 1 53 52 1
		 52 55 1 57 56 1 60 57 1 56 55 1 55 58 1 60 59 1 63 60 1 59 58 1 58 61 1 63 62 1 66 63 1
		 62 61 1 61 64 1 66 65 1 69 66 1 65 64 1 64 67 1 69 68 1 72 69 1 68 67 0 67 70 1 72 71 1
		 75 72 1 71 70 1 70 73 1 75 74 1 78 75 1 74 73 1 73 76 1 78 77 1 81 78 1 77 76 1 76 79 1
		 1 25 1 22 0 1 2 28 1 3 31 0 4 34 1 5 37 1 6 40 1 7 43 1 8 46 1 9 49 1 10 52 1 11 55 1
		 12 58 1 13 61 1 14 64 1 15 67 0 16 70 1 17 73 1 18 76 1 19 79 1 27 21 0 21 24 0 30 21 1
		 33 21 1 36 21 1 39 21 1 42 21 1 45 21 1 48 21 1 51 21 1 54 21 1 57 21 1 60 21 1 63 21 1
		 66 21 1 69 21 1 72 21 0 75 21 0 78 21 1 81 21 1 23 80 0 23 26 1 26 29 0 29 32 0 32 35 0
		 35 38 0;
	setAttr ".ed[166:179]" 38 41 0 41 44 0 44 47 0 47 50 0 50 53 0 53 56 0 56 59 0
		 59 62 0 62 65 0 65 68 0 68 71 0 71 74 0 74 77 0 77 80 0;
	setAttr -s 100 -ch 360 ".fc[0:99]" -type "polyFaces" 
		f 3 -1 -21 21
		mu 0 3 1 0 20
		f 3 -2 -22 22
		mu 0 3 2 1 20
		f 3 -3 -23 23
		mu 0 3 3 2 20
		f 3 -4 -24 24
		mu 0 3 4 3 20
		f 3 -5 -25 25
		mu 0 3 5 4 20
		f 3 -6 -26 26
		mu 0 3 6 5 20
		f 3 -7 -27 27
		mu 0 3 7 6 20
		f 3 -8 -28 28
		mu 0 3 8 7 20
		f 3 -9 -29 29
		mu 0 3 9 8 20
		f 3 -10 -30 30
		mu 0 3 10 9 20
		f 3 -11 -31 31
		mu 0 3 11 10 20
		f 3 -12 -32 32
		mu 0 3 12 11 20
		f 3 -13 -33 33
		mu 0 3 13 12 20
		f 3 -14 -34 34
		mu 0 3 14 13 20
		f 3 -15 -35 35
		mu 0 3 15 14 20
		f 3 -16 -36 36
		mu 0 3 16 15 20
		f 3 -17 -37 37
		mu 0 3 17 16 20
		f 3 -18 -38 38
		mu 0 3 18 17 20
		f 3 -19 -39 39
		mu 0 3 19 18 20
		f 3 -20 -40 20
		mu 0 3 0 19 20
		f 4 0 120 -48 121
		mu 0 4 21 22 25 23
		f 4 1 122 -52 -121
		mu 0 4 22 24 27 25
		f 4 2 123 -56 -123
		mu 0 4 24 26 29 27
		f 4 3 124 -60 -124
		mu 0 4 26 28 31 29
		f 4 4 125 -64 -125
		mu 0 4 28 30 33 31
		f 4 5 126 -68 -126
		mu 0 4 30 32 35 33
		f 4 6 127 -72 -127
		mu 0 4 32 34 37 35
		f 4 7 128 -76 -128
		mu 0 4 34 36 39 37
		f 4 8 129 -80 -129
		mu 0 4 36 38 41 39
		f 4 9 130 -84 -130
		mu 0 4 38 40 43 41
		f 4 10 131 -88 -131
		mu 0 4 40 42 45 43
		f 4 11 132 -92 -132
		mu 0 4 42 44 47 45
		f 4 12 133 -96 -133
		mu 0 4 44 46 49 47
		f 4 13 134 -100 -134
		mu 0 4 46 48 51 49
		f 4 14 135 -104 -135
		mu 0 4 48 50 53 51
		f 4 15 136 -108 -136
		mu 0 4 50 52 55 53
		f 4 16 137 -112 -137
		mu 0 4 52 54 57 55
		f 4 17 138 -116 -138
		mu 0 4 54 56 59 57
		f 4 18 139 -120 -139
		mu 0 4 56 58 61 59
		f 4 19 -122 -42 -140
		mu 0 4 58 60 83 61
		f 3 -46 140 141
		mu 0 3 81 62 82
		f 3 -50 142 -141
		mu 0 3 62 63 82
		f 3 -54 143 -143
		mu 0 3 63 64 82
		f 3 -58 144 -144
		mu 0 3 64 65 82
		f 3 -62 145 -145
		mu 0 3 65 66 82
		f 3 -66 146 -146
		mu 0 3 66 67 82
		f 3 -70 147 -147
		mu 0 3 67 68 82
		f 3 -74 148 -148
		mu 0 3 68 69 82
		f 3 -78 149 -149
		mu 0 3 69 70 82
		f 3 -82 150 -150
		mu 0 3 70 71 82
		f 3 -86 151 -151
		mu 0 3 71 72 82
		f 3 -90 152 -152
		mu 0 3 72 73 82
		f 3 -94 153 -153
		mu 0 3 73 74 82
		f 3 -98 154 -154
		mu 0 3 74 75 82
		f 3 -102 155 -155
		mu 0 3 75 76 82
		f 3 -106 156 -156
		mu 0 3 76 77 82
		f 3 -110 157 -157
		mu 0 3 77 78 82
		f 3 -114 158 -158
		mu 0 3 78 79 82
		f 3 -118 159 -159
		mu 0 3 79 80 82
		f 3 -43 -142 -160
		mu 0 3 80 81 82
		f 4 -47 160 40 41
		mu 0 4 83 86 124 61
		f 4 -45 42 43 -161
		mu 0 4 85 81 80 123
		f 4 44 161 -49 45
		mu 0 4 81 85 88 62
		f 4 46 47 -51 -162
		mu 0 4 84 23 25 87
		f 4 48 162 -53 49
		mu 0 4 62 88 90 63
		f 4 50 51 -55 -163
		mu 0 4 87 25 27 89
		f 4 52 163 -57 53
		mu 0 4 63 90 92 64
		f 4 54 55 -59 -164
		mu 0 4 89 27 29 91
		f 4 56 164 -61 57
		mu 0 4 64 92 94 65
		f 4 58 59 -63 -165
		mu 0 4 91 29 31 93
		f 4 60 165 -65 61
		mu 0 4 65 94 96 66
		f 4 62 63 -67 -166
		mu 0 4 93 31 33 95
		f 4 64 166 -69 65
		mu 0 4 66 96 98 67
		f 4 66 67 -71 -167
		mu 0 4 95 33 35 97
		f 4 68 167 -73 69
		mu 0 4 67 98 100 68
		f 4 70 71 -75 -168
		mu 0 4 97 35 37 99
		f 4 72 168 -77 73
		mu 0 4 68 100 102 69
		f 4 74 75 -79 -169
		mu 0 4 99 37 39 101
		f 4 76 169 -81 77
		mu 0 4 69 102 104 70
		f 4 78 79 -83 -170
		mu 0 4 101 39 41 103
		f 4 80 170 -85 81
		mu 0 4 70 104 106 71
		f 4 82 83 -87 -171
		mu 0 4 103 41 43 105
		f 4 84 171 -89 85
		mu 0 4 71 106 108 72
		f 4 86 87 -91 -172
		mu 0 4 105 43 45 107
		f 4 88 172 -93 89
		mu 0 4 72 108 110 73
		f 4 90 91 -95 -173
		mu 0 4 107 45 47 109
		f 4 92 173 -97 93
		mu 0 4 73 110 112 74
		f 4 94 95 -99 -174
		mu 0 4 109 47 49 111
		f 4 96 174 -101 97
		mu 0 4 74 112 114 75
		f 4 98 99 -103 -175
		mu 0 4 111 49 51 113
		f 4 100 175 -105 101
		mu 0 4 75 114 116 76
		f 4 102 103 -107 -176
		mu 0 4 113 51 53 115
		f 4 104 176 -109 105
		mu 0 4 76 116 118 77
		f 4 106 107 -111 -177
		mu 0 4 115 53 55 117
		f 4 108 177 -113 109
		mu 0 4 77 118 120 78
		f 4 110 111 -115 -178
		mu 0 4 117 55 57 119
		f 4 112 178 -117 113
		mu 0 4 78 120 122 79
		f 4 114 115 -119 -179
		mu 0 4 119 57 59 121
		f 4 116 179 -44 117
		mu 0 4 79 122 123 80
		f 4 118 119 -41 -180
		mu 0 4 121 59 61 124;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder28";
	rename -uid "296A0C09-4B5E-BBD3-163B-B897E9161A22";
	setAttr ".t" -type "double3" -0.21346419413721973 0.53187864242995864 -4.3907653602374204 ;
	setAttr ".r" -type "double3" 0 -7.6177575800369031 0 ;
	setAttr ".s" -type "double3" 0.40837782505738152 0.40837782505738152 0.40837782505738152 ;
createNode mesh -n "pCylinderShape28" -p "pCylinder28";
	rename -uid "598D29C2-4AAF-5055-8030-7D823DA270BD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:20]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[21]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 21 "f[20:39]" "f[60]" "f[63]" "f[65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77]" "f[79]" "f[81]" "f[83]" "f[85]" "f[87]" "f[89]" "f[91]" "f[93]" "f[95]" "f[97]" "f[99]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 20 "f[40:59]" "f[61:62]" "f[64]" "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[80]" "f[82]" "f[84]" "f[86]" "f[88]" "f[90]" "f[92]" "f[94]" "f[96]" "f[98]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.49460795521736145 0.6913236677646637 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 125 ".uvst[0].uvsp[0:124]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.5 0.15625 0.375 0.3125 0.38749999
		 0.3125 0.375 0.53122675 0.39999998 0.3125 0.38749999 0.50680512 0.41249996 0.3125
		 0.39999998 0.50411224 0.42499995 0.3125 0.41249996 0.4585942 0.43749994 0.3125 0.42460731
		 0.47499973 0.44999993 0.3125 0.43749994 0.47335893 0.46249992 0.3125 0.44999993 0.47415093
		 0.4749999 0.3125 0.46249992 0.47435057 0.48749989 0.3125 0.4749999 0.47421885 0.49999988
		 0.3125 0.48749989 0.47340563 0.51249987 0.3125 0.49999988 0.47206303 0.52499986 0.3125
		 0.51249987 0.47050047 0.53749985 0.3125 0.52499986 0.46901679 0.54999983 0.3125 0.53749985
		 0.46774563 0.56249982 0.3125 0.54999983 0.46702451 0.57499981 0.3125 0.56249982 0.49378595
		 0.5874998 0.3125 0.57499987 0.51600325 0.59999979 0.3125 0.5874998 0.55235142 0.61249977
		 0.3125 0.59999979 0.5447669 0.62499976 0.3125 0.61249977 0.53709531 0.58281833 0.90392101
		 0.56004965 0.92640126 0.53001064 0.93611324 0.50366247 0.93328243 0.46554363 0.92846209
		 0.43774414 0.91443533 0.4172681 0.89394355 0.4054563 0.87072521 0.40179276 0.84687275
		 0.40586582 0.82274944 0.41823131 0.79926515 0.43898696 0.77915317 0.46644697 0.76575667
		 0.49981132 0.76101357 0.52001661 0.76208949 0.55308485 0.77068496 0.56912249 0.79352963
		 0.5890969 0.81480068 0.60155916 0.84375 0.59636879 0.87506211 0.5 0.84375 0.62499976
		 0.53122687 0.375 0.6875 0.6486026 0.89203393 0.62499976 0.6875 0.38749999 0.6875
		 0.62640893 0.93559146 0.39999998 0.6875 0.59184146 0.97015893 0.41249996 0.6875 0.54828387
		 0.9923526 0.42499995 0.6875 0.5 1 0.43749994 0.6875 0.4517161 0.9923526 0.44999993
		 0.6875 0.40815854 0.97015893 0.46249992 0.6875 0.37359107 0.93559146 0.4749999 0.6875
		 0.3513974 0.89203393 0.48749989 0.6875 0.34374997 0.84375 0.49999988 0.6875 0.3513974
		 0.79546607 0.51249987 0.6875 0.37359107 0.75190854 0.52499986 0.6875 0.40815851 0.71734107
		 0.53749985 0.6875 0.45171607 0.69514734 0.54999983 0.6875 0.5 0.68749994 0.56249982
		 0.6875 0.54828393 0.69514734 0.57499981 0.6875 0.59184152 0.71734101 0.5874998 0.6875
		 0.62640899 0.75190848 0.59999979 0.6875 0.64860266 0.79546607 0.65625 0.84375 0.61249977
		 0.6875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".pt[0:81]" -type "float3"  -0.42709696 0.050761405 -0.10076314 
		-0.36789024 0.048426811 -0.031842943 -0.21969894 0.047023289 0.12403466 -0.12391464 
		0.047968894 0.17256029 0.021862954 0.049014658 0.048861254 0.014320687 0.049747474 
		0.013706512 -0.010864323 0.051126841 0.064578332 0.045134738 0.052661464 -0.02504269 
		0.084680401 0.053750072 -0.1671056 0.085037328 0.053935979 -0.28134316 0.083566062 
		0.053096518 -0.32792473 0.038272046 0.051483624 -0.46090958 -0.027393252 0.049618199 
		-0.57129925 -0.10674201 0.04808256 -0.64777642 -0.097589634 0.0473064 -0.6856423 
		-0.24286316 0.054186318 -0.73201507 -0.33384717 0.058616448 -0.66639799 -0.40248349 
		0.06347423 -0.55695969 -0.44263464 0.060581829 -0.41656223 -0.45102304 0.055032868 
		-0.25937727 -0.28980568 0.032650758 -0.2891171 -0.25706998 0.098071903 -0.32910532 
		-0.3629854 4.9960036e-15 0.0030986937 -0.3156386 4.6629367e-15 0.019901434 -0.2483075 
		7.5495166e-15 -0.040145032 -0.41626102 0.096124992 -0.018227607 -0.38552114 0.096124992 
		-0.055427633 -0.32363689 0.096124992 -0.12562461 -0.27129215 4.9960036e-15 0.13649531 
		-0.24789096 7.5495166e-15 0.087311395 -0.20414919 7.5495166e-15 -0.011533451 -0.19118413 
		5.9119376e-15 0.22692184 -0.18252073 4.9960036e-15 0.1686687 -0.15678261 7.5495166e-15 
		0.037115112 -0.059216019 7.1609385e-15 0.10509077 -0.043266188 7.7715612e-15 0.16129404 
		-0.086162731 7.5495166e-15 0.004299405 0.024180952 7.5495166e-15 0.074373774 0.018502701 
		7.7715612e-15 0.13644406 -0.020701215 7.5495166e-15 -0.0026965472 0.06764622 8.7985175e-15 
		0.049679261 0.070090584 7.7715612e-15 0.1126243 0.023078974 7.5495166e-15 -0.033892002 
		0.11963928 8.826273e-15 -0.037509575 0.11601605 7.7715612e-15 0.035847887 0.035235547 
		7.5495166e-15 -0.18080428 0.1501096 8.826273e-15 -0.1536043 0.14237362 8.5487173e-15 
		-0.064520925 0.051509615 7.5495166e-15 -0.24256815 0.15588383 8.826273e-15 -0.28763732 
		0.33622721 0.028805038 -0.1130172 0.072976284 7.5495166e-15 -0.21326169 0.15513435 
		8.826273e-15 -0.33107024 0.21942782 7.5495166e-15 -0.34503365 0.14038567 0.028805038 
		-0.28701049 0.11222026 8.826273e-15 -0.46128443 0.16707587 0.028805038 -0.43640116 
		0.11640011 0.028805038 -0.3577067 0.05034956 7.9936058e-15 -0.56955904 0.11229917 
		0.028805038 -0.5315991 0.079046756 0.028805038 -0.42148209 -0.024173087 7.5495166e-15 
		-0.64478827 -0.029331867 7.5495166e-15 -0.64563501 -0.045868121 7.5495166e-15 -0.46382493 
		-0.10385 6.9666495e-15 -0.67920041 -0.10022739 7.5495166e-15 -0.70862496 -0.10112868 
		7.5495166e-15 -0.48662782 -0.20880818 6.2727601e-15 -0.70485914 -0.17351538 6.4392935e-15 
		-0.6376307 -0.13098317 7.5495166e-15 -0.49322507 -0.28112462 5.3013149e-15 -0.61303782 
		-0.23850551 4.9960036e-15 -0.54985988 -0.18246336 7.5495166e-15 -0.44366556 -0.33777577 
		4.9960036e-15 -0.43179685 -0.28992119 7.327472e-15 -0.37074879 -0.21282136 7.5495166e-15 
		-0.31864095 -0.37614653 4.9960036e-15 -0.29881492 -0.32594693 4.5519144e-15 -0.25303957 
		-0.24625692 7.5495166e-15 -0.24203214 -0.38484061 4.9960036e-15 -0.14907764 -0.33629367 
		3.9968029e-15 -0.11665282 -0.26362482 7.5495166e-15 -0.14042112;
	setAttr -s 82 ".vt[0:81]"  1.60625601 -0.15252209 0.084875345 1.43026733 -0.15018654 -0.1845181
		 1.15426683 -0.14878392 -0.39358807 0.80284691 -0.14972955 -0.52449965 0.26900101 -0.15077531 -0.43747449
		 -0.042644501 -0.15150815 -0.39541864 -0.32543039 -0.15288752 -0.27293324 -0.55095387 -0.15442216 -0.081232309
		 -0.69626617 -0.15551078 0.16186333 -0.74645042 -0.15569669 0.43330383 -0.69633102 -0.15485722 0.70679426
		 -0.55107117 -0.15324432 0.95527363 -0.3255806 -0.15137887 1.1536696 -0.042809963 -0.14984322 1.2816292
		 0.26883078 -0.14906704 1.32586896 0.80346584 -0.15594703 1.37623203 1.15542078 -0.1603772 1.22186923
		 1.43176556 -0.16523504 0.98770738 1.60723352 -0.16234261 0.70072627 1.66700935 -0.15679359 0.38967657
		 0.45657682 -0.13441032 0.47041631 0.32586241 0.53833306 0.49996328 1.45204353 0.42123458 -0.12018442
		 1.26612854 0.67387664 -0.13911414 0.98473835 0.72823411 0.00278759 1.38762331 0.26048726 -0.15034127
		 1.25717354 0.52112895 -0.065875053 0.99550629 0.60651082 0.094731331 1.11242437 0.25622252 -0.35968399
		 1.0088911057 0.52053154 -0.25341988 0.81396437 0.60732114 -0.040892839 0.81042576 0.11776962 -0.51639986
		 0.76398468 0.41469622 -0.39652252 0.63442135 0.53744054 -0.12386417 0.29473209 0.14410883 -0.43155336
		 0.30731678 0.41898805 -0.31077456 0.345397 0.533876 -0.03569603 -0.033509254 0.13757847 -0.3874836
		 0.0051503181 0.41270757 -0.27103806 0.082228661 0.52876526 -0.0010755062 -0.31629086 0.13767311 -0.26498055
		 -0.24833822 0.41198242 -0.16200042 -0.099147797 0.52760023 0.07540822 -0.54184914 0.1365179 -0.073305607
		 -0.4475255 0.41075271 0.0068283081 -0.2333827 0.52647769 0.1883893 -0.68720293 0.13517815 0.16974759
		 -0.57324886 0.40966114 0.21696281 -0.31096649 0.52579981 0.3177166 -0.73744154 0.13348056 0.44112515
		 -0.61572886 0.40884638 0.44859743 -0.33499861 0.52566504 0.45181775 -0.68737555 0.13182595 0.7145443
		 -0.57208061 0.40849739 0.68235373 -0.30807161 0.52608711 0.58869958 -0.54215813 0.13052674 0.96295667
		 -0.44505501 0.40867186 0.89753032 -0.22648478 0.52709514 0.72335291 -0.3166976 0.12961282 1.16129398
		 -0.24531126 0.40916425 1.071794748 -0.090044022 0.52847195 0.83989024 -0.033953667 0.12875572 1.28919864
		 0.0073862076 0.40955177 1.18503237 0.08945179 0.52977568 0.91843724 0.277668 0.12814513 1.33339465
		 0.29113054 0.40964171 1.22444332 0.30579472 0.53056479 0.94694996 0.69215107 0.16918932 1.35204923
		 0.56464911 0.42196217 1.22791994 0.42383337 0.52744788 0.9508462 0.99991179 0.20460275 1.1446774
		 0.84229469 0.43186677 1.030994415 0.63971853 0.52321619 0.83501148 1.26314735 0.46103922 0.76238394
		 1.084164143 0.67398405 0.65462828 0.78643179 0.68903112 0.57403398 1.44351244 0.44654846 0.48288727
		 1.25205851 0.67637682 0.40658402 0.93564415 0.70764542 0.40946317 1.50860739 0.4321669 0.17900896
		 1.32105827 0.67755038 0.12903714 1.025673389 0.72568482 0.19965243;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 20 10 1 20 11 1
		 20 12 1 20 13 1 20 14 1 20 15 1 20 16 1 20 17 1 20 18 1 20 19 1 80 79 1 79 22 1 24 81 1
		 81 80 1 24 23 0 27 24 1 23 22 0 22 25 0 27 26 0 30 27 1 26 25 0 25 28 1 30 29 1 33 30 1
		 29 28 1 28 31 1 33 32 1 36 33 1 32 31 1 31 34 1 36 35 1 39 36 1 35 34 1 34 37 1 39 38 1
		 42 39 1 38 37 1 37 40 1 42 41 1 45 42 1 41 40 1 40 43 1 45 44 1 48 45 1 44 43 1 43 46 1
		 48 47 1 51 48 1 47 46 1 46 49 1 51 50 1 54 51 1 50 49 1 49 52 1 54 53 1 57 54 1 53 52 1
		 52 55 1 57 56 1 60 57 1 56 55 1 55 58 1 60 59 1 63 60 1 59 58 1 58 61 1 63 62 1 66 63 1
		 62 61 1 61 64 1 66 65 1 69 66 1 65 64 1 64 67 1 69 68 1 72 69 1 68 67 0 67 70 1 72 71 1
		 75 72 1 71 70 1 70 73 1 75 74 1 78 75 1 74 73 1 73 76 1 78 77 1 81 78 1 77 76 1 76 79 1
		 1 25 1 22 0 1 2 28 1 3 31 0 4 34 1 5 37 1 6 40 1 7 43 1 8 46 1 9 49 1 10 52 1 11 55 1
		 12 58 1 13 61 1 14 64 1 15 67 0 16 70 1 17 73 1 18 76 1 19 79 1 27 21 0 21 24 0 30 21 1
		 33 21 1 36 21 1 39 21 1 42 21 1 45 21 1 48 21 1 51 21 1 54 21 1 57 21 1 60 21 1 63 21 1
		 66 21 1 69 21 1 72 21 0 75 21 0 78 21 1 81 21 1 23 80 0 23 26 1 26 29 0 29 32 0 32 35 0
		 35 38 0;
	setAttr ".ed[166:179]" 38 41 0 41 44 0 44 47 0 47 50 0 50 53 0 53 56 0 56 59 0
		 59 62 0 62 65 0 65 68 0 68 71 0 71 74 0 74 77 0 77 80 0;
	setAttr -s 100 -ch 360 ".fc[0:99]" -type "polyFaces" 
		f 3 -1 -21 21
		mu 0 3 1 0 20
		f 3 -2 -22 22
		mu 0 3 2 1 20
		f 3 -3 -23 23
		mu 0 3 3 2 20
		f 3 -4 -24 24
		mu 0 3 4 3 20
		f 3 -5 -25 25
		mu 0 3 5 4 20
		f 3 -6 -26 26
		mu 0 3 6 5 20
		f 3 -7 -27 27
		mu 0 3 7 6 20
		f 3 -8 -28 28
		mu 0 3 8 7 20
		f 3 -9 -29 29
		mu 0 3 9 8 20
		f 3 -10 -30 30
		mu 0 3 10 9 20
		f 3 -11 -31 31
		mu 0 3 11 10 20
		f 3 -12 -32 32
		mu 0 3 12 11 20
		f 3 -13 -33 33
		mu 0 3 13 12 20
		f 3 -14 -34 34
		mu 0 3 14 13 20
		f 3 -15 -35 35
		mu 0 3 15 14 20
		f 3 -16 -36 36
		mu 0 3 16 15 20
		f 3 -17 -37 37
		mu 0 3 17 16 20
		f 3 -18 -38 38
		mu 0 3 18 17 20
		f 3 -19 -39 39
		mu 0 3 19 18 20
		f 3 -20 -40 20
		mu 0 3 0 19 20
		f 4 0 120 -48 121
		mu 0 4 21 22 25 23
		f 4 1 122 -52 -121
		mu 0 4 22 24 27 25
		f 4 2 123 -56 -123
		mu 0 4 24 26 29 27
		f 4 3 124 -60 -124
		mu 0 4 26 28 31 29
		f 4 4 125 -64 -125
		mu 0 4 28 30 33 31
		f 4 5 126 -68 -126
		mu 0 4 30 32 35 33
		f 4 6 127 -72 -127
		mu 0 4 32 34 37 35
		f 4 7 128 -76 -128
		mu 0 4 34 36 39 37
		f 4 8 129 -80 -129
		mu 0 4 36 38 41 39
		f 4 9 130 -84 -130
		mu 0 4 38 40 43 41
		f 4 10 131 -88 -131
		mu 0 4 40 42 45 43
		f 4 11 132 -92 -132
		mu 0 4 42 44 47 45
		f 4 12 133 -96 -133
		mu 0 4 44 46 49 47
		f 4 13 134 -100 -134
		mu 0 4 46 48 51 49
		f 4 14 135 -104 -135
		mu 0 4 48 50 53 51
		f 4 15 136 -108 -136
		mu 0 4 50 52 55 53
		f 4 16 137 -112 -137
		mu 0 4 52 54 57 55
		f 4 17 138 -116 -138
		mu 0 4 54 56 59 57
		f 4 18 139 -120 -139
		mu 0 4 56 58 61 59
		f 4 19 -122 -42 -140
		mu 0 4 58 60 83 61
		f 3 -46 140 141
		mu 0 3 81 62 82
		f 3 -50 142 -141
		mu 0 3 62 63 82
		f 3 -54 143 -143
		mu 0 3 63 64 82
		f 3 -58 144 -144
		mu 0 3 64 65 82
		f 3 -62 145 -145
		mu 0 3 65 66 82
		f 3 -66 146 -146
		mu 0 3 66 67 82
		f 3 -70 147 -147
		mu 0 3 67 68 82
		f 3 -74 148 -148
		mu 0 3 68 69 82
		f 3 -78 149 -149
		mu 0 3 69 70 82
		f 3 -82 150 -150
		mu 0 3 70 71 82
		f 3 -86 151 -151
		mu 0 3 71 72 82
		f 3 -90 152 -152
		mu 0 3 72 73 82
		f 3 -94 153 -153
		mu 0 3 73 74 82
		f 3 -98 154 -154
		mu 0 3 74 75 82
		f 3 -102 155 -155
		mu 0 3 75 76 82
		f 3 -106 156 -156
		mu 0 3 76 77 82
		f 3 -110 157 -157
		mu 0 3 77 78 82
		f 3 -114 158 -158
		mu 0 3 78 79 82
		f 3 -118 159 -159
		mu 0 3 79 80 82
		f 3 -43 -142 -160
		mu 0 3 80 81 82
		f 4 -47 160 40 41
		mu 0 4 83 86 124 61
		f 4 -45 42 43 -161
		mu 0 4 85 81 80 123
		f 4 44 161 -49 45
		mu 0 4 81 85 88 62
		f 4 46 47 -51 -162
		mu 0 4 84 23 25 87
		f 4 48 162 -53 49
		mu 0 4 62 88 90 63
		f 4 50 51 -55 -163
		mu 0 4 87 25 27 89
		f 4 52 163 -57 53
		mu 0 4 63 90 92 64
		f 4 54 55 -59 -164
		mu 0 4 89 27 29 91
		f 4 56 164 -61 57
		mu 0 4 64 92 94 65
		f 4 58 59 -63 -165
		mu 0 4 91 29 31 93
		f 4 60 165 -65 61
		mu 0 4 65 94 96 66
		f 4 62 63 -67 -166
		mu 0 4 93 31 33 95
		f 4 64 166 -69 65
		mu 0 4 66 96 98 67
		f 4 66 67 -71 -167
		mu 0 4 95 33 35 97
		f 4 68 167 -73 69
		mu 0 4 67 98 100 68
		f 4 70 71 -75 -168
		mu 0 4 97 35 37 99
		f 4 72 168 -77 73
		mu 0 4 68 100 102 69
		f 4 74 75 -79 -169
		mu 0 4 99 37 39 101
		f 4 76 169 -81 77
		mu 0 4 69 102 104 70
		f 4 78 79 -83 -170
		mu 0 4 101 39 41 103
		f 4 80 170 -85 81
		mu 0 4 70 104 106 71
		f 4 82 83 -87 -171
		mu 0 4 103 41 43 105
		f 4 84 171 -89 85
		mu 0 4 71 106 108 72
		f 4 86 87 -91 -172
		mu 0 4 105 43 45 107
		f 4 88 172 -93 89
		mu 0 4 72 108 110 73
		f 4 90 91 -95 -173
		mu 0 4 107 45 47 109
		f 4 92 173 -97 93
		mu 0 4 73 110 112 74
		f 4 94 95 -99 -174
		mu 0 4 109 47 49 111
		f 4 96 174 -101 97
		mu 0 4 74 112 114 75
		f 4 98 99 -103 -175
		mu 0 4 111 49 51 113
		f 4 100 175 -105 101
		mu 0 4 75 114 116 76
		f 4 102 103 -107 -176
		mu 0 4 113 51 53 115
		f 4 104 176 -109 105
		mu 0 4 76 116 118 77
		f 4 106 107 -111 -177
		mu 0 4 115 53 55 117
		f 4 108 177 -113 109
		mu 0 4 77 118 120 78
		f 4 110 111 -115 -178
		mu 0 4 117 55 57 119
		f 4 112 178 -117 113
		mu 0 4 78 120 122 79
		f 4 114 115 -119 -179
		mu 0 4 119 57 59 121
		f 4 116 179 -44 117
		mu 0 4 79 122 123 80
		f 4 118 119 -41 -180
		mu 0 4 121 59 61 124;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder29";
	rename -uid "40E57C3C-4B32-DF54-EE09-F29B6451FE16";
	setAttr ".t" -type "double3" 0.060951009804324219 0.53187864242995864 -4.9330921280540192 ;
	setAttr ".r" -type "double3" 0 -7.6177575800369031 0 ;
	setAttr ".s" -type "double3" 0.40837782505738152 0.40837782505738152 0.40837782505738152 ;
createNode mesh -n "pCylinderShape29" -p "pCylinder29";
	rename -uid "A3BA2411-4A7D-B35C-AE89-8991969914EA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:20]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[21]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 21 "f[20:39]" "f[60]" "f[63]" "f[65]" "f[67]" "f[69]" "f[71]" "f[73]" "f[75]" "f[77]" "f[79]" "f[81]" "f[83]" "f[85]" "f[87]" "f[89]" "f[91]" "f[93]" "f[95]" "f[97]" "f[99]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 20 "f[40:59]" "f[61:62]" "f[64]" "f[66]" "f[68]" "f[70]" "f[72]" "f[74]" "f[76]" "f[78]" "f[80]" "f[82]" "f[84]" "f[86]" "f[88]" "f[90]" "f[92]" "f[94]" "f[96]" "f[98]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.49460795521736145 0.6913236677646637 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 125 ".uvst[0].uvsp[0:124]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.5 0.15625 0.375 0.3125 0.38749999
		 0.3125 0.375 0.53122675 0.39999998 0.3125 0.38749999 0.50680512 0.41249996 0.3125
		 0.39999998 0.50411224 0.42499995 0.3125 0.41249996 0.4585942 0.43749994 0.3125 0.42460731
		 0.47499973 0.44999993 0.3125 0.43749994 0.47335893 0.46249992 0.3125 0.44999993 0.47415093
		 0.4749999 0.3125 0.46249992 0.47435057 0.48749989 0.3125 0.4749999 0.47421885 0.49999988
		 0.3125 0.48749989 0.47340563 0.51249987 0.3125 0.49999988 0.47206303 0.52499986 0.3125
		 0.51249987 0.47050047 0.53749985 0.3125 0.52499986 0.46901679 0.54999983 0.3125 0.53749985
		 0.46774563 0.56249982 0.3125 0.54999983 0.46702451 0.57499981 0.3125 0.56249982 0.49378595
		 0.5874998 0.3125 0.57499987 0.51600325 0.59999979 0.3125 0.5874998 0.55235142 0.61249977
		 0.3125 0.59999979 0.5447669 0.62499976 0.3125 0.61249977 0.53709531 0.58281833 0.90392101
		 0.56004965 0.92640126 0.53001064 0.93611324 0.50366247 0.93328243 0.46554363 0.92846209
		 0.43774414 0.91443533 0.4172681 0.89394355 0.4054563 0.87072521 0.40179276 0.84687275
		 0.40586582 0.82274944 0.41823131 0.79926515 0.43898696 0.77915317 0.46644697 0.76575667
		 0.49981132 0.76101357 0.52001661 0.76208949 0.55308485 0.77068496 0.56912249 0.79352963
		 0.5890969 0.81480068 0.60155916 0.84375 0.59636879 0.87506211 0.5 0.84375 0.62499976
		 0.53122687 0.375 0.6875 0.6486026 0.89203393 0.62499976 0.6875 0.38749999 0.6875
		 0.62640893 0.93559146 0.39999998 0.6875 0.59184146 0.97015893 0.41249996 0.6875 0.54828387
		 0.9923526 0.42499995 0.6875 0.5 1 0.43749994 0.6875 0.4517161 0.9923526 0.44999993
		 0.6875 0.40815854 0.97015893 0.46249992 0.6875 0.37359107 0.93559146 0.4749999 0.6875
		 0.3513974 0.89203393 0.48749989 0.6875 0.34374997 0.84375 0.49999988 0.6875 0.3513974
		 0.79546607 0.51249987 0.6875 0.37359107 0.75190854 0.52499986 0.6875 0.40815851 0.71734107
		 0.53749985 0.6875 0.45171607 0.69514734 0.54999983 0.6875 0.5 0.68749994 0.56249982
		 0.6875 0.54828393 0.69514734 0.57499981 0.6875 0.59184152 0.71734101 0.5874998 0.6875
		 0.62640899 0.75190848 0.59999979 0.6875 0.64860266 0.79546607 0.65625 0.84375 0.61249977
		 0.6875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 82 ".pt[0:81]" -type "float3"  -0.42709696 0.072810873 -0.10076314 
		-0.36789024 0.070476085 -0.031842943 -0.21969894 0.069072753 0.12403466 -0.12391464 
		0.070018351 0.17256029 0.021862954 0.071064115 0.048861254 0.014320687 0.071796939 
		0.013706512 -0.010864323 0.073176309 0.064578332 0.045134738 0.07471095 -0.02504269 
		0.084680401 0.075799569 -0.1671056 0.085037328 0.075985476 -0.28134316 0.083566062 
		0.075146005 -0.32792473 0.038272046 0.073533103 -0.46090958 -0.027393252 0.071667656 
		-0.57129925 -0.10674201 0.070132017 -0.64777642 -0.097589634 0.06935586 -0.6856423 
		-0.24286316 0.076235816 -0.73201507 -0.33384717 0.080665968 -0.66639799 -0.40248349 
		0.085523754 -0.55695969 -0.44263464 0.08263135 -0.41656223 -0.45102304 0.077082381 
		-0.25937727 -0.28980568 0.054699995 -0.2891171 -0.25706998 -0.039824184 -0.32910532 
		-0.3629854 -0.09127304 0.0030986937 -0.3156386 -0.14601545 0.019901434 -0.2483075 
		-0.1577936 -0.040145032 -0.41626102 0.018854326 -0.018227607 -0.38552114 -0.037621468 
		-0.055427633 -0.32363689 -0.056121975 -0.12562461 -0.27129215 -0.055518243 0.13649531 
		-0.24789096 -0.11278867 0.087311395 -0.20414919 -0.1315942 -0.011533451 -0.19118413 
		-0.025518298 0.22692184 -0.18252073 -0.089856289 0.1686687 -0.15678261 -0.11645249 
		0.037115112 -0.059216019 -0.031225469 0.10509077 -0.043266188 -0.090786226 0.16129404 
		-0.086162731 -0.11568014 0.004299405 0.024180952 -0.029810479 0.074373774 0.018502701 
		-0.0894254 0.13644406 -0.020701215 -0.11457276 -0.0026965472 0.06764622 -0.029830987 
		0.049679261 0.070090584 -0.089268252 0.1126243 0.023078974 -0.11432029 -0.033892002 
		0.11963928 -0.029580673 -0.037509575 0.11601605 -0.089001812 0.035847887 0.035235547 
		-0.11407708 -0.18080428 0.1501096 -0.029290376 -0.1536043 0.14237362 -0.088765293 
		-0.064520925 0.051509615 -0.1139302 -0.24256815 0.15588383 -0.028922537 -0.28763732 
		0.33622721 -0.066025183 -0.1130172 0.072976284 -0.113901 -0.21326169 0.15513435 -0.028564021 
		-0.33107024 0.21942782 -0.088513136 -0.34503365 0.14038567 -0.091428876 -0.28701049 
		0.11222026 -0.028282503 -0.46128443 0.16707587 -0.065987363 -0.43640116 0.11640011 
		-0.09164729 -0.3577067 0.05034956 -0.028084481 -0.56955904 0.11229917 -0.066094056 
		-0.5315991 0.079046756 -0.091945626 -0.42148209 -0.024173087 -0.027898762 -0.64478827 
		-0.029331867 -0.088741578 -0.64563501 -0.045868121 -0.11479167 -0.46382493 -0.10385 
		-0.027766464 -0.67920041 -0.10022739 -0.088761084 -0.70862496 -0.10112868 -0.11496267 
		-0.48662782 -0.20880818 -0.036659904 -0.70485914 -0.17351538 -0.091430672 -0.6376307 
		-0.13098317 -0.11428729 -0.49322507 -0.28112462 -0.044333283 -0.61303782 -0.23850551 
		-0.093576804 -0.54985988 -0.18246336 -0.11337039 -0.44366556 -0.33777577 -0.099897869 
		-0.43179685 -0.28992119 -0.14603873 -0.37074879 -0.21282136 -0.14929913 -0.31864095 
		-0.37614653 -0.096758023 -0.29881492 -0.32594693 -0.14655718 -0.25303957 -0.24625692 
		-0.15333246 -0.24203214 -0.38484061 -0.09364184 -0.14907764 -0.33629367 -0.14681149 
		-0.11665282 -0.26362482 -0.15724124 -0.14042112;
	setAttr -s 82 ".vt[0:81]"  1.60625601 -0.15252209 0.084875345 1.43026733 -0.15018654 -0.1845181
		 1.15426683 -0.14878392 -0.39358807 0.80284691 -0.14972955 -0.52449965 0.26900101 -0.15077531 -0.43747449
		 -0.042644501 -0.15150815 -0.39541864 -0.32543039 -0.15288752 -0.27293324 -0.55095387 -0.15442216 -0.081232309
		 -0.69626617 -0.15551078 0.16186333 -0.74645042 -0.15569669 0.43330383 -0.69633102 -0.15485722 0.70679426
		 -0.55107117 -0.15324432 0.95527363 -0.3255806 -0.15137887 1.1536696 -0.042809963 -0.14984322 1.2816292
		 0.26883078 -0.14906704 1.32586896 0.80346584 -0.15594703 1.37623203 1.15542078 -0.1603772 1.22186923
		 1.43176556 -0.16523504 0.98770738 1.60723352 -0.16234261 0.70072627 1.66700935 -0.15679359 0.38967657
		 0.45657682 -0.13441032 0.47041631 0.32586241 0.53833306 0.49996328 1.45204353 0.42123458 -0.12018442
		 1.26612854 0.67387664 -0.13911414 0.98473835 0.72823411 0.00278759 1.38762331 0.26048726 -0.15034127
		 1.25717354 0.52112895 -0.065875053 0.99550629 0.60651082 0.094731331 1.11242437 0.25622252 -0.35968399
		 1.0088911057 0.52053154 -0.25341988 0.81396437 0.60732114 -0.040892839 0.81042576 0.11776962 -0.51639986
		 0.76398468 0.41469622 -0.39652252 0.63442135 0.53744054 -0.12386417 0.29473209 0.14410883 -0.43155336
		 0.30731678 0.41898805 -0.31077456 0.345397 0.533876 -0.03569603 -0.033509254 0.13757847 -0.3874836
		 0.0051503181 0.41270757 -0.27103806 0.082228661 0.52876526 -0.0010755062 -0.31629086 0.13767311 -0.26498055
		 -0.24833822 0.41198242 -0.16200042 -0.099147797 0.52760023 0.07540822 -0.54184914 0.1365179 -0.073305607
		 -0.4475255 0.41075271 0.0068283081 -0.2333827 0.52647769 0.1883893 -0.68720293 0.13517815 0.16974759
		 -0.57324886 0.40966114 0.21696281 -0.31096649 0.52579981 0.3177166 -0.73744154 0.13348056 0.44112515
		 -0.61572886 0.40884638 0.44859743 -0.33499861 0.52566504 0.45181775 -0.68737555 0.13182595 0.7145443
		 -0.57208061 0.40849739 0.68235373 -0.30807161 0.52608711 0.58869958 -0.54215813 0.13052674 0.96295667
		 -0.44505501 0.40867186 0.89753032 -0.22648478 0.52709514 0.72335291 -0.3166976 0.12961282 1.16129398
		 -0.24531126 0.40916425 1.071794748 -0.090044022 0.52847195 0.83989024 -0.033953667 0.12875572 1.28919864
		 0.0073862076 0.40955177 1.18503237 0.08945179 0.52977568 0.91843724 0.277668 0.12814513 1.33339465
		 0.29113054 0.40964171 1.22444332 0.30579472 0.53056479 0.94694996 0.69215107 0.16918932 1.35204923
		 0.56464911 0.42196217 1.22791994 0.42383337 0.52744788 0.9508462 0.99991179 0.20460275 1.1446774
		 0.84229469 0.43186677 1.030994415 0.63971853 0.52321619 0.83501148 1.26314735 0.46103922 0.76238394
		 1.084164143 0.67398405 0.65462828 0.78643179 0.68903112 0.57403398 1.44351244 0.44654846 0.48288727
		 1.25205851 0.67637682 0.40658402 0.93564415 0.70764542 0.40946317 1.50860739 0.4321669 0.17900896
		 1.32105827 0.67755038 0.12903714 1.025673389 0.72568482 0.19965243;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 20 10 1 20 11 1
		 20 12 1 20 13 1 20 14 1 20 15 1 20 16 1 20 17 1 20 18 1 20 19 1 80 79 1 79 22 1 24 81 1
		 81 80 1 24 23 0 27 24 1 23 22 0 22 25 0 27 26 0 30 27 1 26 25 0 25 28 1 30 29 1 33 30 1
		 29 28 1 28 31 1 33 32 1 36 33 1 32 31 1 31 34 1 36 35 1 39 36 1 35 34 1 34 37 1 39 38 1
		 42 39 1 38 37 1 37 40 1 42 41 1 45 42 1 41 40 1 40 43 1 45 44 1 48 45 1 44 43 1 43 46 1
		 48 47 1 51 48 1 47 46 1 46 49 1 51 50 1 54 51 1 50 49 1 49 52 1 54 53 1 57 54 1 53 52 1
		 52 55 1 57 56 1 60 57 1 56 55 1 55 58 1 60 59 1 63 60 1 59 58 1 58 61 1 63 62 1 66 63 1
		 62 61 1 61 64 1 66 65 1 69 66 1 65 64 1 64 67 1 69 68 1 72 69 1 68 67 0 67 70 1 72 71 1
		 75 72 1 71 70 1 70 73 1 75 74 1 78 75 1 74 73 1 73 76 1 78 77 1 81 78 1 77 76 1 76 79 1
		 1 25 1 22 0 1 2 28 1 3 31 0 4 34 1 5 37 1 6 40 1 7 43 1 8 46 1 9 49 1 10 52 1 11 55 1
		 12 58 1 13 61 1 14 64 1 15 67 0 16 70 1 17 73 1 18 76 1 19 79 1 27 21 0 21 24 0 30 21 1
		 33 21 1 36 21 1 39 21 1 42 21 1 45 21 1 48 21 1 51 21 1 54 21 1 57 21 1 60 21 1 63 21 1
		 66 21 1 69 21 1 72 21 0 75 21 0 78 21 1 81 21 1 23 80 0 23 26 1 26 29 0 29 32 0 32 35 0
		 35 38 0;
	setAttr ".ed[166:179]" 38 41 0 41 44 0 44 47 0 47 50 0 50 53 0 53 56 0 56 59 0
		 59 62 0 62 65 0 65 68 0 68 71 0 71 74 0 74 77 0 77 80 0;
	setAttr -s 100 -ch 360 ".fc[0:99]" -type "polyFaces" 
		f 3 -1 -21 21
		mu 0 3 1 0 20
		f 3 -2 -22 22
		mu 0 3 2 1 20
		f 3 -3 -23 23
		mu 0 3 3 2 20
		f 3 -4 -24 24
		mu 0 3 4 3 20
		f 3 -5 -25 25
		mu 0 3 5 4 20
		f 3 -6 -26 26
		mu 0 3 6 5 20
		f 3 -7 -27 27
		mu 0 3 7 6 20
		f 3 -8 -28 28
		mu 0 3 8 7 20
		f 3 -9 -29 29
		mu 0 3 9 8 20
		f 3 -10 -30 30
		mu 0 3 10 9 20
		f 3 -11 -31 31
		mu 0 3 11 10 20
		f 3 -12 -32 32
		mu 0 3 12 11 20
		f 3 -13 -33 33
		mu 0 3 13 12 20
		f 3 -14 -34 34
		mu 0 3 14 13 20
		f 3 -15 -35 35
		mu 0 3 15 14 20
		f 3 -16 -36 36
		mu 0 3 16 15 20
		f 3 -17 -37 37
		mu 0 3 17 16 20
		f 3 -18 -38 38
		mu 0 3 18 17 20
		f 3 -19 -39 39
		mu 0 3 19 18 20
		f 3 -20 -40 20
		mu 0 3 0 19 20
		f 4 0 120 -48 121
		mu 0 4 21 22 25 23
		f 4 1 122 -52 -121
		mu 0 4 22 24 27 25
		f 4 2 123 -56 -123
		mu 0 4 24 26 29 27
		f 4 3 124 -60 -124
		mu 0 4 26 28 31 29
		f 4 4 125 -64 -125
		mu 0 4 28 30 33 31
		f 4 5 126 -68 -126
		mu 0 4 30 32 35 33
		f 4 6 127 -72 -127
		mu 0 4 32 34 37 35
		f 4 7 128 -76 -128
		mu 0 4 34 36 39 37
		f 4 8 129 -80 -129
		mu 0 4 36 38 41 39
		f 4 9 130 -84 -130
		mu 0 4 38 40 43 41
		f 4 10 131 -88 -131
		mu 0 4 40 42 45 43
		f 4 11 132 -92 -132
		mu 0 4 42 44 47 45
		f 4 12 133 -96 -133
		mu 0 4 44 46 49 47
		f 4 13 134 -100 -134
		mu 0 4 46 48 51 49
		f 4 14 135 -104 -135
		mu 0 4 48 50 53 51
		f 4 15 136 -108 -136
		mu 0 4 50 52 55 53
		f 4 16 137 -112 -137
		mu 0 4 52 54 57 55
		f 4 17 138 -116 -138
		mu 0 4 54 56 59 57
		f 4 18 139 -120 -139
		mu 0 4 56 58 61 59
		f 4 19 -122 -42 -140
		mu 0 4 58 60 83 61
		f 3 -46 140 141
		mu 0 3 81 62 82
		f 3 -50 142 -141
		mu 0 3 62 63 82
		f 3 -54 143 -143
		mu 0 3 63 64 82
		f 3 -58 144 -144
		mu 0 3 64 65 82
		f 3 -62 145 -145
		mu 0 3 65 66 82
		f 3 -66 146 -146
		mu 0 3 66 67 82
		f 3 -70 147 -147
		mu 0 3 67 68 82
		f 3 -74 148 -148
		mu 0 3 68 69 82
		f 3 -78 149 -149
		mu 0 3 69 70 82
		f 3 -82 150 -150
		mu 0 3 70 71 82
		f 3 -86 151 -151
		mu 0 3 71 72 82
		f 3 -90 152 -152
		mu 0 3 72 73 82
		f 3 -94 153 -153
		mu 0 3 73 74 82
		f 3 -98 154 -154
		mu 0 3 74 75 82
		f 3 -102 155 -155
		mu 0 3 75 76 82
		f 3 -106 156 -156
		mu 0 3 76 77 82
		f 3 -110 157 -157
		mu 0 3 77 78 82
		f 3 -114 158 -158
		mu 0 3 78 79 82
		f 3 -118 159 -159
		mu 0 3 79 80 82
		f 3 -43 -142 -160
		mu 0 3 80 81 82
		f 4 -47 160 40 41
		mu 0 4 83 86 124 61
		f 4 -45 42 43 -161
		mu 0 4 85 81 80 123
		f 4 44 161 -49 45
		mu 0 4 81 85 88 62
		f 4 46 47 -51 -162
		mu 0 4 84 23 25 87
		f 4 48 162 -53 49
		mu 0 4 62 88 90 63
		f 4 50 51 -55 -163
		mu 0 4 87 25 27 89
		f 4 52 163 -57 53
		mu 0 4 63 90 92 64
		f 4 54 55 -59 -164
		mu 0 4 89 27 29 91
		f 4 56 164 -61 57
		mu 0 4 64 92 94 65
		f 4 58 59 -63 -165
		mu 0 4 91 29 31 93
		f 4 60 165 -65 61
		mu 0 4 65 94 96 66
		f 4 62 63 -67 -166
		mu 0 4 93 31 33 95
		f 4 64 166 -69 65
		mu 0 4 66 96 98 67
		f 4 66 67 -71 -167
		mu 0 4 95 33 35 97
		f 4 68 167 -73 69
		mu 0 4 67 98 100 68
		f 4 70 71 -75 -168
		mu 0 4 97 35 37 99
		f 4 72 168 -77 73
		mu 0 4 68 100 102 69
		f 4 74 75 -79 -169
		mu 0 4 99 37 39 101
		f 4 76 169 -81 77
		mu 0 4 69 102 104 70
		f 4 78 79 -83 -170
		mu 0 4 101 39 41 103
		f 4 80 170 -85 81
		mu 0 4 70 104 106 71
		f 4 82 83 -87 -171
		mu 0 4 103 41 43 105
		f 4 84 171 -89 85
		mu 0 4 71 106 108 72
		f 4 86 87 -91 -172
		mu 0 4 105 43 45 107
		f 4 88 172 -93 89
		mu 0 4 72 108 110 73
		f 4 90 91 -95 -173
		mu 0 4 107 45 47 109
		f 4 92 173 -97 93
		mu 0 4 73 110 112 74
		f 4 94 95 -99 -174
		mu 0 4 109 47 49 111
		f 4 96 174 -101 97
		mu 0 4 74 112 114 75
		f 4 98 99 -103 -175
		mu 0 4 111 49 51 113
		f 4 100 175 -105 101
		mu 0 4 75 114 116 76
		f 4 102 103 -107 -176
		mu 0 4 113 51 53 115
		f 4 104 176 -109 105
		mu 0 4 76 116 118 77
		f 4 106 107 -111 -177
		mu 0 4 115 53 55 117
		f 4 108 177 -113 109
		mu 0 4 77 118 120 78
		f 4 110 111 -115 -178
		mu 0 4 117 55 57 119
		f 4 112 178 -117 113
		mu 0 4 78 120 122 79
		f 4 114 115 -119 -179
		mu 0 4 119 57 59 121
		f 4 116 179 -44 117
		mu 0 4 79 122 123 80
		f 4 118 119 -41 -180
		mu 0 4 121 59 61 124;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "round_box_thing";
	rename -uid "9EA89C4D-451F-6CE4-C6C6-55A5A11FC3E2";
	setAttr ".t" -type "double3" 0 0 -0.19307482170020773 ;
createNode transform -n "pCube31" -p "round_box_thing";
	rename -uid "09E8832A-4B2A-5CDA-E5C7-63AE4D7BEB4C";
	setAttr ".t" -type "double3" 0.44925691258740419 3.1182487010955793 0.76624859849108007 ;
	setAttr ".s" -type "double3" 0.82430879515938338 0.82430879515938338 0.82430879515938338 ;
	setAttr ".rp" -type "double3" 0 -0.95582032203674139 0 ;
	setAttr ".sp" -type "double3" 0 -1.1595415791383483 0 ;
	setAttr ".spt" -type "double3" 0 0.2037212571016013 0 ;
createNode mesh -n "pCubeShape31" -p "pCube31";
	rename -uid "DA86FF11-4347-48E6-68E5-8390835AB3EE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder6" -p "round_box_thing";
	rename -uid "CE789271-4185-24E7-3AB5-6C87EF3F3DE8";
	setAttr ".t" -type "double3" 0.81476943620809439 3.2270165008015805 0.28410546481609344 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.34636877705996738 0.069988713052253071 0.34636877705996738 ;
	setAttr ".rp" -type "double3" 0 0.069988712668418884 0 ;
	setAttr ".rpt" -type "double3" 0 -0.069988712668418884 0.069988712668418884 ;
	setAttr ".sp" -type "double3" 0 0.99999999451577015 0 ;
	setAttr ".spt" -type "double3" 0 -0.93001128184735127 0 ;
createNode mesh -n "pCylinderShape6" -p "pCylinder6";
	rename -uid "F2C773DF-4A08-BA7E-A0AC-9283CCC15E85";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42569869756698608 0.202170729637146 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder30";
	rename -uid "FEF6D6DD-4348-3FA6-8C71-E4BC76E548A9";
	setAttr ".t" -type "double3" 0.46551009354501005 2.3319516758397336 -1.5277007288238647 ;
	setAttr ".r" -type "double3" 0 -180 0 ;
	setAttr ".s" -type "double3" 0.27672815913282783 0.27672815913282783 0.27672815913282783 ;
createNode mesh -n "pCylinderShape30" -p "pCylinder30";
	rename -uid "52D4312F-4A17-6A78-159C-CCABE40E116B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20:39]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[40]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[40:119]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".pv" -type "double2" 0.50000001490116119 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 144 ".uvst[0].uvsp[0:143]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999
		 0.6875 0.39999998 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993
		 0.6875 0.46249992 0.6875 0.4749999 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987
		 0.6875 0.52499986 0.6875 0.53749985 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981
		 0.6875 0.5874998 0.6875 0.59999979 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.5
		 0.15625 0.5 0.84375 0.62640893 0.93559146 0.64860255 0.89203399 0.59184146 0.97015893
		 0.62640893 0.93559146 0.54828387 0.9923526 0.59184146 0.97015893 0.5 1 0.54828387
		 0.9923526 0.4517161 0.9923526 0.5 1 0.40815854 0.97015893 0.45171613 0.9923526 0.3735911
		 0.93559152 0.40815854 0.97015893 0.35139742 0.89203399 0.37359107 0.93559146 0.34374997
		 0.84375006 0.35139742 0.89203399 0.3513974 0.79546607 0.34374997 0.84375012 0.37359104
		 0.7519086 0.3513974 0.79546607 0.40815842 0.71734113 0.37359104 0.75190854 0.45171592
		 0.6951474 0.40815842 0.71734113 0.5 0.68749994 0.45171595 0.69514745 0.54828393 0.69514734
		 0.5 0.68749994 0.59184152 0.71734101 0.54828393 0.69514734 0.62640899 0.75190848
		 0.59184152 0.71734101 0.64860266 0.79546607 0.62640899 0.75190848 0.65625 0.84375
		 0.64860266 0.79546607 0.6486026 0.89203393 0.65625 0.84375 0.62640893 0.93559146
		 0.64860249 0.89203411 0.59184146 0.97015893 0.62640882 0.93559158 0.54828387 0.9923526
		 0.59184134 0.97015899 0.5 1 0.54828376 0.9923526 0.4517161 0.9923526 0.5 1 0.40815854
		 0.97015893 0.4517161 0.9923526 0.37359107 0.93559146 0.40815854 0.97015893 0.3513974
		 0.89203393 0.37359107 0.93559146 0.34374997 0.84375 0.3513974 0.89203393 0.3513974
		 0.79546607 0.34374997 0.84375 0.37359107 0.75190854 0.3513974 0.79546607 0.40815851
		 0.71734107 0.37359107 0.75190854 0.45171607 0.69514734 0.40815851 0.71734107 0.50000006
		 0.68749994 0.45171607 0.69514734 0.54828393 0.69514734 0.5 0.68749994 0.59184152
		 0.71734101 0.54828393 0.69514734 0.62640899 0.75190848 0.59184152 0.71734101 0.64860266
		 0.79546607 0.62640905 0.75190854 0.65625 0.84375 0.64860266 0.79546618 0.6486026
		 0.89203393 0.65625 0.84375018;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 31 ".pt";
	setAttr ".pt[20]" -type "float3" -0.12260605 -0.41906437 0.41791776 ;
	setAttr ".pt[21]" -type "float3" -0.10429493 -0.41906437 0.41791776 ;
	setAttr ".pt[22]" -type "float3" -0.07577467 -0.41906437 0.41791776 ;
	setAttr ".pt[23]" -type "float3" -0.039837148 -0.41906437 0.41791776 ;
	setAttr ".pt[24]" -type "float3" -1.0396484e-07 -0.41906437 0.41791776 ;
	setAttr ".pt[25]" -type "float3" 0.039837148 -0.41906437 0.41791776 ;
	setAttr ".pt[26]" -type "float3" 0.07577467 -0.41906437 0.41791776 ;
	setAttr ".pt[27]" -type "float3" 0.10429493 -0.41906437 0.41791776 ;
	setAttr ".pt[28]" -type "float3" 0.12260605 -0.41906437 0.41791776 ;
	setAttr ".pt[29]" -type "float3" 0 -0.31737471 0.2156343 ;
	setAttr ".pt[39]" -type "float3" 0 -0.31737471 0.2156343 ;
	setAttr ".pt[63]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[65]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[67]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[69]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[71]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[73]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[75]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[77]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[79]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[81]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[83]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[85]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[87]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[89]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[91]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[93]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[95]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[97]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[99]" -type "float3" 0 0.084651023 0 ;
	setAttr ".pt[101]" -type "float3" 0 0.084651023 0 ;
	setAttr -s 102 ".vt[0:101]"  0.48658943 -0.95086384 0.14504623 0.4139185 -0.95086384 0.0024199486
		 0.3007288 -0.95086384 -0.11076927 0.15810299 -0.95086384 -0.18344116 0 -0.95086384 -0.20848179
		 -0.15810394 -0.95086384 -0.18343973 -0.3007288 -0.95086384 -0.11076927 -0.41391945 -0.95086384 0.0024209023
		 -0.48658943 -0.95086384 0.14504719 -0.51163149 -0.95086384 0.3031497 -0.48658943 -0.95086384 0.46125126
		 -0.41391945 -0.95086384 0.6038785 -0.3007288 -0.95086384 0.71706772 -0.15810204 -0.95086384 0.78973866
		 0 -0.95086384 0.81478071 0.15810108 -0.95086384 0.78973866 0.3007288 -0.95086384 0.71706772
		 0.41391659 -0.95086384 0.6038785 0.48658848 -0.95086384 0.46125126 0.51163101 -0.95086384 0.3031497
		 0.56233501 0.89183998 -0.28883266 0.47835064 0.89183998 -0.54939222 0.34754181 0.89183998 -0.75617361
		 0.18271351 0.89183998 -0.88893557 0 0.89183998 -0.93468189 -0.18271446 0.89183998 -0.88893557
		 -0.34754276 0.89183998 -0.75617361 -0.47835159 0.89183998 -0.54939222 -0.56233597 0.89183998 -0.28883266
		 -0.59127522 0.89183998 -9.5367432e-07 -0.56233597 0.89183998 0.28883171 -0.47835159 0.89183998 0.54939127
		 -0.34754276 0.89183998 0.7561717 -0.18271446 0.89183998 0.88893414 0 0.89183998 0.93468094
		 0.18271351 0.89183998 0.88893414 0.34754181 0.89183998 0.7561717 0.47835064 0.89183998 0.54939127
		 0.56233501 0.89183998 0.28883171 0.59127522 0.89183998 -9.5367432e-07 0 -0.95086384 0.3031497
		 0.34988976 1.37922668 -0.42324734 0.29763365 1.37922668 -0.58574104 0 1.37922668 -0.24312305
		 0.21624327 1.37922668 -0.71469593 0.11368561 1.37922668 -0.7974906 0 1.37922668 -0.82601833
		 -0.11368656 1.37922668 -0.7974906 -0.2162447 1.37922668 -0.71469593 -0.2976346 1.37922668 -0.58574104
		 -0.34989071 1.37922668 -0.42324734 -0.36789703 1.37922668 -0.24312305 -0.34989071 1.37922668 -0.062998295
		 -0.2976346 1.37922668 0.099495411 -0.2162447 1.37922668 0.2284503 -0.11368656 1.37922668 0.31124496
		 0 1.37922668 0.33977461 0.11368561 1.37922668 0.31124496 0.21624327 1.37922668 0.2284503
		 0.29763365 1.37922668 0.099495411 0.34988976 1.37922668 -0.062998295 0.36789608 1.37922668 -0.24312305
		 0.56233501 0.97427082 -0.28883266 0.52666235 1.097121239 -0.31140232 0.47835064 0.97509861 -0.54939222
		 0.44700193 1.099005699 -0.55569792 0.34754181 0.97566223 -0.75617361 0.32427979 1.10025978 -0.74882555
		 0.18271351 0.97601986 -0.88893557 0.17033434 1.10099411 -0.87253618 0 0.97620678 -0.93468189
		 0 1.10129642 -0.91509771 -0.18271446 0.97601986 -0.88893557 -0.17033434 1.10099411 -0.87253618
		 -0.34754276 0.97566223 -0.75617361 -0.32428122 1.10025978 -0.74882555 -0.47835159 0.97509861 -0.54939222
		 -0.44700289 1.099005699 -0.55569792 -0.56233597 0.97427082 -0.28883266 -0.5266633 1.097121239 -0.31140232
		 -0.59127522 0.97309399 -9.5367432e-07 -0.55551767 1.094465256 -0.038919449 -0.56233597 0.97147655 0.28883171
		 -0.53056479 1.090896606 0.23621416 -0.47835159 0.96940422 0.54939127 -0.45371342 1.086417198 0.48805237
		 -0.34754276 0.96720314 0.7561717 -0.33153391 1.081534386 0.69182539 -0.18271446 0.9660244 0.88893414
		 -0.17506599 1.077760696 0.82492352 0 0.96730423 0.93468094 0 1.077116013 0.86989307
		 0.18271351 0.9660244 0.88893414 0.17506504 1.077760696 0.82492352 0.34754181 0.96720314 0.7561717
		 0.33153296 1.081534386 0.69182539 0.47835064 0.96940422 0.54939127 0.45371246 1.086417198 0.48805237
		 0.56233501 0.97147655 0.28883171 0.53056383 1.090896606 0.23621416 0.59127522 0.97309399 -9.5367432e-07
		 0.55551624 1.094465256 -0.038919449;
	setAttr -s 220 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1 40 3 1 40 4 1
		 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1 40 14 1 40 15 1
		 40 16 1 40 17 1 40 18 1 40 19 1 41 42 0 42 43 1 41 43 1 42 44 0 44 43 1 44 45 0 45 43 1
		 45 46 0 46 43 1 46 47 0 47 43 1 47 48 0 48 43 1 48 49 0 49 43 1 49 50 0 50 43 1 50 51 0
		 51 43 1 51 52 0 52 43 1 52 53 0 53 43 1 53 54 0 54 43 1 54 55 0 55 43 1 55 56 0 56 43 1
		 56 57 0 57 43 1 57 58 0 58 43 1 58 59 0 59 43 1 59 60 0 60 43 1 60 61 0 61 43 1 61 41 0
		 62 63 1 63 101 1 101 100 1 100 62 1 62 64 1 64 65 1 65 63 1 64 66 1 66 67 1 67 65 1
		 66 68 1 68 69 1 69 67 1 68 70 1 70 71 1 71 69 1 70 72 1 72 73 1 73 71 1 72 74 1 74 75 1
		 75 73 1 74 76 1 76 77 1 77 75 1 76 78 1 78 79 1 79 77 1 78 80 1 80 81 1 81 79 1 80 82 1
		 82 83 1 83 81 1 82 84 1 84 85 1 85 83 1 84 86 1 86 87 1 87 85 1 86 88 1 88 89 1 89 87 1
		 88 90 1 90 91 1 91 89 1;
	setAttr ".ed[166:219]" 90 92 1 92 93 1 93 91 1 92 94 1 94 95 1 95 93 1 94 96 1
		 96 97 1 97 95 1 96 98 1 98 99 1 99 97 1 98 100 1 101 99 1 21 64 1 62 20 1 22 66 1
		 23 68 1 24 70 1 25 72 1 26 74 1 27 76 1 28 78 1 29 80 1 30 82 1 31 84 1 32 86 1 33 88 1
		 34 90 1 35 92 1 36 94 1 37 96 1 38 98 1 39 100 1 65 42 1 41 63 1 67 44 1 69 45 1
		 71 46 1 73 47 1 75 48 1 77 49 1 79 50 1 81 51 1 83 52 1 85 53 1 87 54 1 89 55 1 91 56 1
		 93 57 1 95 58 1 97 59 1 99 60 1 101 61 1;
	setAttr -s 120 -ch 440 ".fc[0:119]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 62
		f 3 -2 -62 62
		mu 0 3 2 1 62
		f 3 -3 -63 63
		mu 0 3 3 2 62
		f 3 -4 -64 64
		mu 0 3 4 3 62
		f 3 -5 -65 65
		mu 0 3 5 4 62
		f 3 -6 -66 66
		mu 0 3 6 5 62
		f 3 -7 -67 67
		mu 0 3 7 6 62
		f 3 -8 -68 68
		mu 0 3 8 7 62
		f 3 -9 -69 69
		mu 0 3 9 8 62
		f 3 -10 -70 70
		mu 0 3 10 9 62
		f 3 -11 -71 71
		mu 0 3 11 10 62
		f 3 -12 -72 72
		mu 0 3 12 11 62
		f 3 -13 -73 73
		mu 0 3 13 12 62
		f 3 -14 -74 74
		mu 0 3 14 13 62
		f 3 -15 -75 75
		mu 0 3 15 14 62
		f 3 -16 -76 76
		mu 0 3 16 15 62
		f 3 -17 -77 77
		mu 0 3 17 16 62
		f 3 -18 -78 78
		mu 0 3 18 17 62
		f 3 -19 -79 79
		mu 0 3 19 18 62
		f 3 -20 -80 60
		mu 0 3 0 19 62
		f 3 80 81 -83
		mu 0 3 105 107 63
		f 3 83 84 -82
		mu 0 3 107 109 63
		f 3 85 86 -85
		mu 0 3 109 111 63
		f 3 87 88 -87
		mu 0 3 111 113 63
		f 3 89 90 -89
		mu 0 3 113 115 63
		f 3 91 92 -91
		mu 0 3 115 117 63
		f 3 93 94 -93
		mu 0 3 117 119 63
		f 3 95 96 -95
		mu 0 3 119 121 63
		f 3 97 98 -97
		mu 0 3 121 123 63
		f 3 99 100 -99
		mu 0 3 123 125 63
		f 3 101 102 -101
		mu 0 3 125 127 63
		f 3 103 104 -103
		mu 0 3 127 129 63
		f 3 105 106 -105
		mu 0 3 129 131 63
		f 3 107 108 -107
		mu 0 3 131 133 63
		f 3 109 110 -109
		mu 0 3 133 135 63
		f 3 111 112 -111
		mu 0 3 135 137 63
		f 3 113 114 -113
		mu 0 3 137 139 63
		f 3 115 116 -115
		mu 0 3 139 141 63
		f 3 117 118 -117
		mu 0 3 141 143 63
		f 3 119 82 -119
		mu 0 3 143 105 63
		f 4 120 121 122 123
		mu 0 4 65 142 140 103
		f 4 -121 124 125 126
		mu 0 4 142 65 67 104
		f 4 -126 127 128 129
		mu 0 4 104 67 69 106
		f 4 -129 130 131 132
		mu 0 4 106 69 71 108
		f 4 -132 133 134 135
		mu 0 4 108 71 73 110
		f 4 -135 136 137 138
		mu 0 4 110 73 75 112
		f 4 -138 139 140 141
		mu 0 4 112 75 77 114
		f 4 -141 142 143 144
		mu 0 4 114 77 79 116
		f 4 -144 145 146 147
		mu 0 4 116 79 81 118
		f 4 -147 148 149 150
		mu 0 4 118 81 83 120
		f 4 -150 151 152 153
		mu 0 4 120 83 85 122
		f 4 -153 154 155 156
		mu 0 4 122 85 87 124
		f 4 -156 157 158 159
		mu 0 4 124 87 89 126
		f 4 -159 160 161 162
		mu 0 4 126 89 91 128
		f 4 -162 163 164 165
		mu 0 4 128 91 93 130
		f 4 -165 166 167 168
		mu 0 4 130 93 95 132
		f 4 -168 169 170 171
		mu 0 4 132 95 97 134
		f 4 -171 172 173 174
		mu 0 4 134 97 99 136
		f 4 -174 175 176 177
		mu 0 4 136 99 101 138
		f 4 -177 178 -123 179
		mu 0 4 138 101 103 140
		f 4 20 180 -125 181
		mu 0 4 102 64 67 65
		f 4 21 182 -128 -181
		mu 0 4 64 66 69 67
		f 4 22 183 -131 -183
		mu 0 4 66 68 71 69
		f 4 23 184 -134 -184
		mu 0 4 68 70 73 71
		f 4 24 185 -137 -185
		mu 0 4 70 72 75 73
		f 4 25 186 -140 -186
		mu 0 4 72 74 77 75
		f 4 26 187 -143 -187
		mu 0 4 74 76 79 77
		f 4 27 188 -146 -188
		mu 0 4 76 78 81 79
		f 4 28 189 -149 -189
		mu 0 4 78 80 83 81
		f 4 29 190 -152 -190
		mu 0 4 80 82 85 83
		f 4 30 191 -155 -191
		mu 0 4 82 84 87 85
		f 4 31 192 -158 -192
		mu 0 4 84 86 89 87
		f 4 32 193 -161 -193
		mu 0 4 86 88 91 89
		f 4 33 194 -164 -194
		mu 0 4 88 90 93 91
		f 4 34 195 -167 -195
		mu 0 4 90 92 95 93
		f 4 35 196 -170 -196
		mu 0 4 92 94 97 95
		f 4 36 197 -173 -197
		mu 0 4 94 96 99 97
		f 4 37 198 -176 -198
		mu 0 4 96 98 101 99
		f 4 38 199 -179 -199
		mu 0 4 98 100 103 101
		f 4 39 -182 -124 -200
		mu 0 4 100 102 65 103
		f 4 -127 200 -81 201
		mu 0 4 142 104 107 105
		f 4 -130 202 -84 -201
		mu 0 4 104 106 109 107
		f 4 -133 203 -86 -203
		mu 0 4 106 108 111 109
		f 4 -136 204 -88 -204
		mu 0 4 108 110 113 111
		f 4 -139 205 -90 -205
		mu 0 4 110 112 115 113
		f 4 -142 206 -92 -206
		mu 0 4 112 114 117 115
		f 4 -145 207 -94 -207
		mu 0 4 114 116 119 117
		f 4 -148 208 -96 -208
		mu 0 4 116 118 121 119
		f 4 -151 209 -98 -209
		mu 0 4 118 120 123 121
		f 4 -154 210 -100 -210
		mu 0 4 120 122 125 123
		f 4 -157 211 -102 -211
		mu 0 4 122 124 127 125
		f 4 -160 212 -104 -212
		mu 0 4 124 126 129 127
		f 4 -163 213 -106 -213
		mu 0 4 126 128 131 129
		f 4 -166 214 -108 -214
		mu 0 4 128 130 133 131
		f 4 -169 215 -110 -215
		mu 0 4 130 132 135 133
		f 4 -172 216 -112 -216
		mu 0 4 132 134 137 135
		f 4 -175 217 -114 -217
		mu 0 4 134 136 139 137
		f 4 -178 218 -116 -218
		mu 0 4 136 138 141 139
		f 4 -180 219 -118 -219
		mu 0 4 138 140 143 141
		f 4 -122 -202 -120 -220
		mu 0 4 140 142 105 143;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPipe1";
	rename -uid "175E85F4-49C3-F273-F836-44A136DF629F";
	setAttr ".t" -type "double3" -1.784354875446946 3.0566704489888799 1.0191808063092225 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.23042603072902706 0.23042603072902706 0.23042603072902706 ;
createNode mesh -n "pPipeShape1" -p "pPipe1";
	rename -uid "B783E7F9-4BFD-59C3-A5A8-69A49BA49DE7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 138 ".pt[0:137]" -type "float3"  -0.082149185 -0.073953122 
		8.7007981e-16 -0.078128517 -0.073953122 1.0547119e-15 -0.066460058 -0.073953122 1.6653345e-16 
		-0.048286106 -0.073953122 0 -0.025385518 -0.073953122 0 1.1123834e-15 -0.073953122 
		0 0.025385547 -0.073953122 0 0.048286136 -0.073953122 0 0.06646014 -0.073953122 1.6653345e-16 
		0.078128614 -0.073953122 1.0547119e-15 0.082149252 -0.073953122 8.7007981e-16 0.078128614 
		-0.073953122 1.0547119e-15 0.06646014 -0.073953122 1.6653345e-16 0.048286136 -0.073953122 
		0 0.025385547 -0.073953122 0 1.1123834e-15 -0.073953122 0 -0.025385518 -0.073953122 
		0 -0.048286106 -0.073953122 0 -0.06646017 -0.073953122 1.6653345e-16 -0.078128591 
		-0.073953122 1.0547119e-15 -0.082149185 0.073953122 -8.7007981e-16 -0.078128517 0.073953122 
		-1.0547119e-15 -0.066460058 0.073953122 -1.6653345e-16 -0.048286106 0.073953122 0 
		-0.025385518 0.073953122 0 2.091661e-15 0.073953122 0 0.025385547 0.073953122 0 0.048286136 
		0.073953122 0 0.06646014 0.073953122 -1.6653345e-16 0.078128614 0.073953122 -1.0547119e-15 
		0.082149252 0.073953122 -8.7007981e-16 0.078128614 0.073953122 -1.0547119e-15 0.06646014 
		0.073953122 -1.6653345e-16 0.048286136 0.073953122 0 0.025385547 0.073953122 0 2.091661e-15 
		0.073953122 0 -0.025385518 0.073953122 0 -0.048286106 0.073953122 0 -0.06646017 0.073953122 
		-1.6653345e-16 -0.078128591 0.073953122 -1.0547119e-15 -0.11811467 0.073953122 -8.7007981e-16 
		-0.11233366 0.073953122 -1.6653345e-16 -0.095556766 0.073953122 0 -0.06942606 0.073953122 
		0 -0.036499403 0.073953122 0 2.091661e-15 0.073953122 0 0.036499459 0.073953122 0 
		0.06942609 0.073953122 0 0.095556796 0.073953122 0 0.11522423 0.073953122 -1.6653345e-16 
		0.11522426 0.073953122 -8.7007981e-16 0.11522423 0.073953122 -1.6653345e-16 0.095556825 
		0.073953122 0 0.06942609 0.073953122 0 0.036499459 0.073953122 0 2.091661e-15 0.073953122 
		0 -0.036499459 0.073953122 0 -0.06942606 0.073953122 0 -0.095556766 0.073953122 0 
		-0.11233376 0.073953122 -1.6653345e-16 -0.24370359 -0.073953122 6.8747333e-08 -0.23169959 
		-0.073953122 0.044552125 -0.19686317 -0.073953122 0.084743194 -0.14260407 -0.073953122 
		0.11663901 -0.074233495 -0.073953122 0.13711733 0.001555711 -0.073953122 0.1441737 
		0.077345051 -0.073953122 0.13711733 0.14571555 -0.073953122 0.11663901 0.19997469 
		-0.073953122 0.084743194 0.24081311 -0.073953122 0.02453696 0.11563504 -0.086688571 
		1.019916e-15 0.24081311 -0.073953122 -0.024536751 0.19997472 -0.073953122 -0.084743135 
		0.14571555 -0.073953122 -0.11663894 0.077345051 -0.073953122 -0.13711725 0.001555711 
		-0.073953122 -0.1441737 -0.074233621 -0.073953122 -0.13711725 -0.14260407 -0.073953122 
		-0.11663894 -0.19686317 -0.073953122 -0.084743135 -0.23169975 -0.073953122 -0.044552125 
		0.37133628 0.073953122 0 0.37133628 0.073953122 -8.7007987e-16 0.37133628 -0.073953122 
		1.6653345e-16 0.37092549 -0.15737103 1.8515153e-15 0.37133628 0.073953122 0 0.37133628 
		-0.073953122 1.6653345e-16 0.38579321 0.073810957 0 0.4786745 0.073810957 -8.6840719e-16 
		0.38579321 -0.074094482 1.6653345e-16 0.47826371 -0.020137601 2.3692454e-16 0.38579321 
		-0.074094482 1.6653345e-16 0.38579321 0.073810957 0 0.4786745 0.073810957 -8.6840867e-16 
		0.38579321 0.023165118 0 0.38579321 0.073810957 0 0.38579321 0.023165118 0 0.37133628 
		0.073953122 0 0.37133628 0.023307294 0 0.37133628 0.073953122 -8.7008114e-16 0.37133628 
		0.073953122 0 0.37133628 0.023307294 0 0.15896329 -0.073953122 1.0547119e-15 0.15896329 
		0.073953122 -1.6653345e-16 0.16297087 0.073953122 -8.7007981e-16 0.15896329 0.073953122 
		-1.6653345e-16 0.15896329 -0.073953122 1.0547119e-15 0.16322848 -0.09986531 1.174944e-15 
		0.18628313 -0.073953122 1.0547119e-15 0.18628313 0.073953122 -1.6653345e-16 0.18628317 
		0.073953122 -8.7007981e-16 0.18628313 0.073953122 -1.6653345e-16 0.18628313 -0.073953122 
		1.0547119e-15 0.18646598 -0.1062994 1.2506438e-15 0.16605492 -0.0045191334 0 0.16605492 
		0.073953122 0 0.18319902 -0.0045191334 0 0.18319902 0.073953122 0 0.16605492 0.073953122 
		0 0.16605492 -0.0045191334 0 0.18319902 0.073953122 0 0.18319902 -0.0045191334 0 
		0.38579321 -0.019326534 0 0.34218934 -0.019185143 0 0.34218934 0.073953122 0 0.38579321 
		0.073810957 0 0.4786745 0.073810957 -8.6840698e-16 0.37133628 0.073953122 -8.7008114e-16 
		0.34218934 0.073953122 0 0.34218934 -0.019185143 0 0.38579321 -0.019326534 0 0.31746441 
		0.013258503 0 0.31746441 0.073953122 0 0.46808094 0.023307294 -0.1687773 0.46808094 
		0.073953122 -0.18406653 0.31746441 0.073953122 0 0.31746441 0.013258503 0 0.46808094 
		0.073953122 0.18406653 0.46808094 0.023307294 0.16877714;
createNode polyExtrudeFace -n "polyExtrudeFace31";
	rename -uid "BA82349C-4542-98F6-6A35-0F93B5FBDA1C";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -115.63359634247249 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.51884 0.60413814 -115.34724 ;
	setAttr ".rs" 35863;
	setAttr ".lt" -type "double3" -2.2204460492503131e-16 -2.8421709430404007e-14 1.2154733019684714 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.2172729969024658 0.60413813591003418 -116.51031295624202 ;
	setAttr ".cbx" -type "double3" 1.8204069137573242 0.60413813591003418 -114.18417159882014 ;
createNode polyTweak -n "polyTweak44";
	rename -uid "7781B7E5-4929-A463-9D88-63AA6E0916B5";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[68:79]" -type "float3"  0.63637125 0 0 0.63637125
		 0 0 0.63637125 0 0 0.63637125 0 0 0.63637125 0 0 0.63637125 0 0 0.63637125 0 0 0.63637125
		 0 0 0.63637125 0 0 0.63637125 0 0 0.63637125 0 0 0.63637125 0 0;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "BDB67932-431A-C19C-4BDE-9089E29FA401";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:3]" "e[43]" "e[47]" "e[54]" "e[58]" "e[65]" "e[69]" "e[104]" "e[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -115.63359634247249 1;
	setAttr ".wt" 0.53417575359344482;
	setAttr ".re" 54;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak43";
	rename -uid "2251B637-4BA9-16CA-3E37-FCA46B35B038";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[8]" -type "float3" 0.27571309 0 0.085018322 ;
	setAttr ".tk[9]" -type "float3" 0.27571309 0 -0.085018322 ;
	setAttr ".tk[10]" -type "float3" 0.27571309 0 -0.085018322 ;
	setAttr ".tk[11]" -type "float3" 0.27571309 0 0.085018322 ;
	setAttr ".tk[16]" -type "float3" 0.27571309 0 0.037966467 ;
	setAttr ".tk[17]" -type "float3" 0.27571309 0 0.014591569 ;
	setAttr ".tk[18]" -type "float3" 0.27571309 0 0.037966467 ;
	setAttr ".tk[19]" -type "float3" 0.27571309 0 0.014591569 ;
	setAttr ".tk[20]" -type "float3" 0.27571309 0 -0.037966475 ;
	setAttr ".tk[21]" -type "float3" 0.27571309 0 -0.014591569 ;
	setAttr ".tk[22]" -type "float3" 0.27571309 0 -0.037966475 ;
	setAttr ".tk[23]" -type "float3" 0.27571309 0 -0.014591569 ;
	setAttr ".tk[30]" -type "float3" 0.27571309 0 -0.053794704 ;
	setAttr ".tk[37]" -type "float3" 0.27571309 0 0.049687363 ;
	setAttr ".tk[44]" -type "float3" 0.27571309 0 0.049687363 ;
	setAttr ".tk[45]" -type "float3" 0.27571309 0 0.085018322 ;
	setAttr ".tk[46]" -type "float3" 0.27571309 0 -0.053794704 ;
	setAttr ".tk[47]" -type "float3" 0.27571309 0 -0.085018322 ;
	setAttr ".tk[48]" -type "float3" 0.27571309 0 -0.037966475 ;
	setAttr ".tk[49]" -type "float3" 0.27571309 0 -0.014591569 ;
	setAttr ".tk[50]" -type "float3" 0.27571309 0 0.014591569 ;
	setAttr ".tk[51]" -type "float3" 0.27571309 0 0.037966467 ;
	setAttr ".tk[58]" -type "float3" 0.27571309 0 0.048622563 ;
	setAttr ".tk[59]" -type "float3" 0.27571309 0 0.048622563 ;
	setAttr ".tk[60]" -type "float3" 0.27571309 0 0.048622563 ;
	setAttr ".tk[61]" -type "float3" 0.27571309 0 0.028416507 ;
	setAttr ".tk[62]" -type "float3" 0.27571309 0 -0.030765627 ;
	setAttr ".tk[63]" -type "float3" 0.27571309 0 -0.048622534 ;
	setAttr ".tk[64]" -type "float3" 0.27571309 0 -0.048622534 ;
	setAttr ".tk[65]" -type "float3" 0.27571309 0 -0.048622534 ;
	setAttr ".tk[66]" -type "float3" 0.27571309 0 -0.030765627 ;
	setAttr ".tk[67]" -type "float3" 0.27571309 0 0.028416507 ;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "29193E58-4D94-6F3A-52A6-C1B5C0B03690";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[22:25]" "e[51]" "e[62]" "e[90:91]" "e[94]" "e[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -115.63359634247249 1;
	setAttr ".wt" 0.46328774094581604;
	setAttr ".re" 97;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak42";
	rename -uid "8052A770-4851-FA20-F9D8-37B3E9859094";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[8]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[16]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.24170671 0 0 ;
	setAttr ".tk[40]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[41]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[42]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[43]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[44]" -type "float3" 0.24170671 -1.4901161e-08 0 ;
	setAttr ".tk[45]" -type "float3" 0.24170671 -1.4901161e-08 0 ;
	setAttr ".tk[46]" -type "float3" 0.24170671 -1.4901161e-08 0 ;
	setAttr ".tk[47]" -type "float3" 0.24170671 -1.4901161e-08 0 ;
	setAttr ".tk[48]" -type "float3" 0.24170671 -1.4901161e-08 0 ;
	setAttr ".tk[49]" -type "float3" 0.24170671 -1.4901161e-08 0 ;
	setAttr ".tk[50]" -type "float3" 0.24170671 -1.4901161e-08 0 ;
	setAttr ".tk[51]" -type "float3" 0.24170671 -1.4901161e-08 0 ;
	setAttr ".tk[52]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[53]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[54]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[55]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[56]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[57]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[58]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[59]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[60]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[61]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[62]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[63]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[64]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[65]" -type "float3" 0 -1.4901161e-08 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace30";
	rename -uid "EA368A9F-445B-8EC3-6806-AC91DF2C197B";
	setAttr ".ics" -type "componentList" 6 "f[1]" "f[8]" "f[12]" "f[16]" "f[20]" "f[27:29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -115.63359634247249 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.5302404 0.26153612 -115.34724 ;
	setAttr ".rs" 47975;
	setAttr ".lt" -type "double3" -1.1102230246251565e-16 0 0.34260204146140072 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 0.2615361213684082 -116.51031295624202 ;
	setAttr ".cbx" -type "double3" 3.5604808330535889 0.2615361213684082 -114.18417159882014 ;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "674DC382-4656-99B1-CEE9-5E9074484140";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[10:11]" "e[20]" "e[28]" "e[42:43]" "e[45]" "e[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -115.63359634247249 1;
	setAttr ".wt" 0.74547946453094482;
	setAttr ".dr" no;
	setAttr ".re" 47;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "22C6B510-4F15-3307-3F8E-59B4D54BE9AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[20]" "e[22]" "e[28]" "e[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -115.63359634247249 1;
	setAttr ".wt" 0.18362757563591003;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak41";
	rename -uid "CE3E3D10-40A6-3C8D-6926-838CF73877F2";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[3]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[4]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[5]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[10]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[11]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[14]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[15]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[18]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[19]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[22]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[23]" -type "float3" 0 -1.2306455 0 ;
	setAttr ".tk[24]" -type "float3" -2.682209e-07 1.7881393e-07 -1.3411045e-07 ;
	setAttr ".tk[25]" -type "float3" -3.3527613e-08 1.7881393e-07 -1.3411045e-07 ;
	setAttr ".tk[26]" -type "float3" -3.3527613e-08 1.7881393e-07 1.3411045e-07 ;
	setAttr ".tk[27]" -type "float3" -2.682209e-07 1.7881393e-07 1.3411045e-07 ;
	setAttr ".tk[28]" -type "float3" 1.4901161e-08 5.9604645e-08 1.4901161e-08 ;
	setAttr ".tk[29]" -type "float3" 1.4901161e-08 5.9604645e-08 -1.4901161e-08 ;
	setAttr ".tk[30]" -type "float3" -2.0861626e-07 5.9604645e-08 -6.7055225e-08 ;
	setAttr ".tk[31]" -type "float3" -2.0861626e-07 5.9604645e-08 8.1956387e-08 ;
	setAttr ".tk[32]" -type "float3" -2.0861626e-07 5.9604645e-08 -1.1175871e-08 ;
	setAttr ".tk[33]" -type "float3" 2.9802322e-07 5.9604645e-08 1.8626451e-09 ;
	setAttr ".tk[34]" -type "float3" 2.9802322e-07 5.9604645e-08 -1.8626451e-09 ;
	setAttr ".tk[35]" -type "float3" -2.0861626e-07 5.9604645e-08 1.1175871e-08 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "16FDBC7A-4F97-D657-EF53-3B8D849A6F6A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -115.63359634247249 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak40";
	rename -uid "4FDF347E-4373-F54A-8B73-27866845D681";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  0 -5.9604645e-08 0 0 -5.9604645e-08
		 0 0 0.16896354 0 0 0.16896354 0 0 0.16896354 0 0 0.16896354 0 0 0 0 0 0 0 0 0 0.073640779
		 0 0 -0.073640779 0 0.16896354 0.073640779 0 0.16896354 -0.073640779 0 0 -0.068141676
		 0 0 0.068141684 0 0.16896354 0.068141684 0 0.16896354 -0.068141676 0 0 -0.13444647
		 0 0 0.13444647 0 0.16896354 0.13444647 0 0.16896354 -0.13444647;
createNode polySplit -n "polySplit11";
	rename -uid "5D834244-4AEF-DE8C-0A54-8BBEFBBD3554";
	setAttr -s 5 ".e[0:4]"  0.42322099 0.42322099 0.42322099 0.42322099
		 0.42322099;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483635 -2147483631 -2147483633 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "B4B156F3-458D-EBAD-7151-51A476D9CAC0";
	setAttr -s 5 ".e[0:4]"  0.67982697 0.67982697 0.67982697 0.67982697
		 0.67982697;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483635 -2147483631 -2147483633 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak39";
	rename -uid "405B8540-413B-962A-374A-4DAD20082F57";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0 0 0.22921829 0 0 0.22921829
		 0 0 0.22921829 0 0 0.22921829 0 0 -0.22921829 0 0 -0.22921829 0 0 -0.22921829 0 0
		 -0.22921829 0.063638225 0 0.640576 0.063638225 0 -0.640576 0.063638225 0 0.640576
		 0.063638225 0 -0.640576;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	rename -uid "B97165C7-42DA-56A2-C2FC-7C8E7D578072";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -115.63359634247249 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8204068 0.41160905 -115.34724 ;
	setAttr ".rs" 62049;
	setAttr ".lt" -type "double3" 0 1.6740412400530533e-17 1.6764359541660627 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.8204067945480347 -0.5 -116.28109489050334 ;
	setAttr ".cbx" -type "double3" 1.8204067945480347 1.3232181072235107 -114.41338972416347 ;
createNode polyTweak -n "polyTweak38";
	rename -uid "5805531C-4958-6966-5FC1-E8B9B41022F8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 0 0.72020662 1.32040679
		 0 0.72020662 0 0.82321817 0.72020662 1.32040679 0.82321817 0.72020662 0 0.82321817
		 -0.14749856 1.32040679 0.82321817 -0.14749856 0 0 -0.14749856 1.32040679 0 -0.14749856;
createNode polyCube -n "polyCube7";
	rename -uid "E9FF44E0-4E55-40FA-B45C-B5816645797C";
	setAttr ".cuv" 4;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "76CDFEEA-4AEC-8995-8A66-5D82B4CEF4C2";
	setAttr -s 16 ".lnk";
	setAttr -s 16 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "342F21EB-414F-50F4-A50B-94BECF52F6D4";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CA9014C4-42C4-66A7-8F17-5980C6B825D4";
createNode displayLayerManager -n "layerManager";
	rename -uid "162D147F-4B73-BD55-35FF-BD881F810AF0";
createNode displayLayer -n "defaultLayer";
	rename -uid "3E2622CC-4B2C-5623-6E17-C99F00AEA31A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C4F1E166-4075-2435-A45D-F798C14C2D0D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F8486A38-48B9-7C25-EBB1-26B6064F3DDE";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "926E30F1-43BE-2B8E-56C8-3CB544EA1692";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.3.1.1";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=cameraShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1  1;Background.Offset=0  0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1  1;Foreground.Offset=0  0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "11A35D26-4950-ED6E-ED0E-EEAC834C8DA6";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "4F50A8E9-4992-13FD-2876-D192DA15AE56";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "EFFA3C1F-4B88-F688-66EC-1CA85302DAA8";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "08007EC4-44EF-E419-F7D0-3D844FAD60CB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1280\n            -height 535\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1280\\n    -height 535\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1280\\n    -height 535\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "75D3F257-4539-452B-8ECC-F9947E69CA55";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 185 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube8";
	rename -uid "74ECC581-4573-E0DD-18E5-EA8CB4208513";
	setAttr ".w" 8;
	setAttr ".h" 0.65826853594840673;
	setAttr ".d" 2;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube9";
	rename -uid "F1EB2A3C-4B5E-419F-3267-B88FEBA87FB6";
	setAttr ".w" 8;
	setAttr ".h" 0.4478185137414008;
	setAttr ".d" 5;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube10";
	rename -uid "9EB86701-45C6-D150-5C1B-C4B59FF17CFE";
	setAttr ".w" 1.2432608254474964;
	setAttr ".h" 1.1054638408134461;
	setAttr ".d" 2.4562602846782742;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace32";
	rename -uid "A35E5FF1-4B67-E1E6-47D5-EA941BC1B98D";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.11746971950594243 4.4603140705867892 -3.6628654219656687 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.73910016 4.0320082 -3.6628654 ;
	setAttr ".rs" 36000;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.73910014972750004 3.907582139377225 -4.8909955241232614 ;
	setAttr ".cbx" -type "double3" 0.73910014972750004 4.1564337366863375 -2.4347353198080759 ;
createNode polyTweak -n "polyTweak45";
	rename -uid "8D287C38-4DE9-F95A-F265-ECB28B7E4D43";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 -0.85661227 0 0 -0.85661227
		 0 0 -0.85661227 0 0 -0.85661227 0;
createNode polyExtrudeFace -n "polyExtrudeFace33";
	rename -uid "21404E0B-44F5-56A0-F606-AA93A31BD6E7";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.11746971950594243 4.4603140705867892 -3.6628654219656687 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.6290833 4.0320082 -3.6628654 ;
	setAttr ".rs" 45580;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6290832246774072 3.9075820797725802 -4.8909955241232614 ;
	setAttr ".cbx" -type "double3" -1.6290832246774072 4.1564338558956271 -2.4347353198080759 ;
createNode polyTweak -n "polyTweak46";
	rename -uid "6C3C62C8-4F89-02EB-80F0-719E05929547";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" -1.1249225 0 0 ;
	setAttr ".tk[2]" -type "float3" -1.1249225 0 0 ;
	setAttr ".tk[4]" -type "float3" -1.1249225 0 0 ;
	setAttr ".tk[6]" -type "float3" -1.1249225 0 0 ;
	setAttr ".tk[8]" -type "float3" 0.87596703 0 0.35811526 ;
	setAttr ".tk[9]" -type "float3" 0.87596703 0 -0.35811526 ;
	setAttr ".tk[10]" -type "float3" 0.87596703 0 0.35811526 ;
	setAttr ".tk[11]" -type "float3" 0.87596703 0 -0.35811526 ;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "E6B3FEB2-4034-D7DB-364C-D6B18B29A5DF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[0:3]" "e[47]" "e[58]" "e[65]" "e[106]" "e[128:129]" "e[131]" "e[149]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".wt" 0.22041985392570496;
	setAttr ".re" 106;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak47";
	rename -uid "A418020D-41A0-0ABC-DA9D-DAB7D8838027";
	setAttr ".uopa" yes;
	setAttr -s 88 ".tk[0:87]" -type "float3"  -1.1929934 0 0.33883089 -0.11525626
		 0 0.33883089 -1.1929934 -0.26795179 0.33883089 -0.11525626 -0.26795179 0.33883089
		 -1.1929934 -0.26795179 -0.33883092 -0.11525626 -0.26795179 -0.33883092 -1.1929934
		 0 -0.33883092 -0.11525626 0 -0.33883092 -5.9604645e-08 0 -0.16164958 -5.9604645e-08
		 0 0.16164958 -5.9604645e-08 -0.26795179 0.16164958 -5.9604645e-08 -0.26795179 -0.16164958
		 -0.4727309 0 -0.42454064 -0.4727309 0 0.42454064 -0.4727309 -0.26795179 0.42454064
		 -0.4727309 -0.26795179 -0.42454064 -5.9604645e-08 0 -0.07218878 -2.9802322e-07 0
		 -0.027742852 -5.9604645e-08 -0.26795179 -0.07218878 -2.9802322e-07 -0.26795179 -0.027742852
		 -5.9604645e-08 0 0.07218878 -2.9802322e-07 0 0.027742855 -5.9604645e-08 -0.26795179
		 0.07218878 -2.9802322e-07 -0.26795179 0.027742855 -1.0430813e-07 -0.26795185 0.19304648
		 -0.11525626 -0.26795185 0.21439263 -1.1929934 -0.26795182 0.21439263 -1.1929934 0
		 0.21439263 -0.11525626 0 0.21439263 -0.4727309 0 0.26862594 -5.9604645e-08 0 0.10228316
		 -1.0430813e-07 -0.26795185 -0.17830601 -0.1152563 -0.26795185 -0.19802292 -1.1929934
		 -0.26795182 -0.19802292 -1.1929934 0 -0.19802292 -0.1152563 0 -0.19802292 -0.4727309
		 0 -0.24811442 -1.7881393e-07 0 -0.09447284 -1.1929934 0 0.33883089 -0.11525626 0
		 0.33883089 -0.11525626 0 0.21439262 -1.1929934 0 0.21439263 -0.4727309 0 0.42454064
		 -0.4727309 0 0.26862594 -5.9604645e-08 0 -0.09447284 -5.9604645e-08 0 -0.16164958
		 -5.9604645e-08 0 0.10228316 -5.9604645e-08 0 0.16164958 -5.9604645e-08 0 0.07218878
		 -2.9802322e-07 0 0.027742855 -2.9802322e-07 0 -0.027742852 -5.9604645e-08 0 -0.07218878
		 -0.4727309 0 -0.24811442 -0.4727309 0 -0.42454064 -0.1152563 0 -0.19802292 -0.11525626
		 0 -0.33883092 -1.1929934 0 -0.19802292 -1.1929934 0 -0.33883092 5.9604645e-08 0 -0.23594762
		 5.9604645e-08 -0.26795179 -0.23594762 5.9604645e-08 0 -0.23594762 -5.9604645e-08
		 0 -0.13789639 5.9604645e-08 0 0.14929399 5.9604645e-08 0 0.23594762 5.9604645e-08
		 -0.26795179 0.23594762 5.9604645e-08 0 0.23594762 5.9604645e-08 0 0.14929399 5.9604645e-08
		 0 -0.13789639 -0.11525634 -0.26795182 -0.19802292 -0.11525634 -0.26795182 0.21439263
		 0.038650244 0 0.21439262 0.038650244 -2.9802322e-08 0.33883089 -0.11525634 -0.26795179
		 0.33883089 -0.11525634 0 0.33883089 -0.11525634 0 0.21439263 -0.11525634 0 -0.19802292
		 -0.11525634 0 -0.33883092 -0.11525634 -0.26795179 -0.33883092 0.038650244 0 -0.33883092
		 0.038650244 0 -0.19802292 0.11968283 -0.10876421 -0.018844645 -0.13973096 -0.10876427
		 -0.018844645 -0.13973096 -0.10876427 -0.011923805 0.11968283 -0.10876427 -0.011923805
		 -0.13973098 -0.10876427 0.011013322 0.11968283 -0.10876427 0.011013322 -0.13973096
		 -0.10876427 0.018844645 0.11968283 -0.10876427 0.018844645;
createNode polyExtrudeFace -n "polyExtrudeFace34";
	rename -uid "FBF61E0F-4592-5D4A-679C-A98CA992D26C";
	setAttr ".ics" -type "componentList" 1 "f[62]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2792032 1.6889917 -3.5333378 ;
	setAttr ".rs" 54774;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5505801922144533 1.6889916664964566 -4.3385907173412193 ;
	setAttr ".cbx" -type "double3" -2.0078262637090911 1.6889916664964566 -2.728084894616948 ;
createNode polyExtrudeFace -n "polyExtrudeFace35";
	rename -uid "A6B83B29-4180-0861-192A-08B80D26B06B";
	setAttr ".ics" -type "componentList" 1 "f[62]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2792034 1.6889917 -3.5333381 ;
	setAttr ".rs" 60464;
	setAttr ".lt" -type "double3" 0 -8.8817841970012523e-16 0.19285141268219452 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5505801922144533 1.6889916306729003 -4.0482929685972744 ;
	setAttr ".cbx" -type "double3" -2.0078264737524494 1.6889916306729003 -3.0183834047680675 ;
createNode polyTweak -n "polyTweak48";
	rename -uid "FD8846B8-4160-D99D-8BA2-0B9D0DC68834";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[100:103]" -type "float3"  0 0 -0.32951513 0 0 -0.32951513
		 0 0 0.32951513 0 0 0.32951513;
createNode polyExtrudeFace -n "polyExtrudeFace36";
	rename -uid "89D96EF7-41DF-D038-EAD8-B18288599096";
	setAttr ".ics" -type "componentList" 1 "f[62]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2792034 1.8818429 -3.5333385 ;
	setAttr ".rs" 41850;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5505801922144533 1.8818428748933314 -4.0482935199610903 ;
	setAttr ".cbx" -type "double3" -2.0078266837958076 1.8818428748933314 -3.0183837198331052 ;
createNode polyExtrudeFace -n "polyExtrudeFace37";
	rename -uid "495ACAE8-415F-9650-C59A-139E4D1CDAB0";
	setAttr ".ics" -type "componentList" 1 "f[62]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2792037 1.8818429 -3.5333393 ;
	setAttr ".rs" 52271;
	setAttr ".lt" -type "double3" 4.4408920985006262e-16 0 0.097872401765024319 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5922690728820221 1.8818428748933314 -4.1274013623740782 ;
	setAttr ".cbx" -type "double3" -1.9661380131715975 1.8818428748933314 -2.9392769276369091 ;
createNode polyTweak -n "polyTweak49";
	rename -uid "935A28F3-4C05-B28D-51E6-DC950AB93CC8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[108:111]" -type "float3"  0.047320753 0 0.089794219
		 -0.047320753 0 0.089794219 0.047320753 0 -0.089794219 -0.047320753 0 -0.089794219;
createNode polyExtrudeFace -n "polyExtrudeFace38";
	rename -uid "DF933619-46F9-10DA-9631-6FA6692F6F50";
	setAttr ".ics" -type "componentList" 1 "f[23]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.5505803 1.3923374 -3.5333395 ;
	setAttr ".rs" 36498;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5505801922144533 1.0956835363992177 -4.338592345177247 ;
	setAttr ".cbx" -type "double3" -2.5505801922144533 1.6889913440844484 -2.7280867850071737 ;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "3BD84BA8-4DE8-A099-7327-428E37E7EC92";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[4:5]" "e[7:8]" "e[20:21]" "e[27:28]" "e[35:38]" "e[45]" "e[56]" "e[112]" "e[120]" "e[138]" "e[146]" "e[172]" "e[180]" "e[228]" "e[231]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".wt" 0.62048882246017456;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace39";
	rename -uid "CBC64779-4B83-25FC-59E1-AD879C5CCA96";
	setAttr ".ics" -type "componentList" 3 "f[5]" "f[23]" "f[30]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.5505803 1.504921 -3.5653026 ;
	setAttr ".rs" 53436;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5505802972361327 1.3208504586111656 -4.8884564514079329 ;
	setAttr ".cbx" -type "double3" -2.5505801922144533 1.6889913440844484 -2.2421487447765758 ;
createNode polyExtrudeFace -n "polyExtrudeFace40";
	rename -uid "2E8187CE-4D6A-8BB4-FB79-B9AC364F963A";
	setAttr ".ics" -type "componentList" 3 "f[5]" "f[23]" "f[30]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.5505803 1.5049208 -3.5653028 ;
	setAttr ".rs" 34781;
	setAttr ".lt" -type "double3" 4.4408920985006262e-16 2.2204460492503131e-16 0.6056922209001252 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5505801922144533 1.3208502794933832 -5.1093427730808187 ;
	setAttr ".cbx" -type "double3" -2.5505801922144533 1.6889913440844484 -2.021263158255445 ;
createNode polyTweak -n "polyTweak50";
	rename -uid "023560B5-403D-7D23-80CA-A68CD3CD3934";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[116]" -type "float3" -8.9406967e-08 0 -7.4505806e-09 ;
	setAttr ".tk[117]" -type "float3" -8.9406967e-08 0 -7.4505806e-09 ;
	setAttr ".tk[118]" -type "float3" -8.9406967e-08 0 -7.4505806e-09 ;
	setAttr ".tk[119]" -type "float3" -8.9406967e-08 0 -7.4505806e-09 ;
	setAttr ".tk[122]" -type "float3" -8.9406967e-08 0 -7.4505455e-09 ;
	setAttr ".tk[123]" -type "float3" -8.9406967e-08 0 -7.4505455e-09 ;
	setAttr ".tk[126]" -type "float3" -8.9406967e-08 0 -7.4505451e-09 ;
	setAttr ".tk[127]" -type "float3" -8.9406967e-08 0 -7.4505451e-09 ;
	setAttr ".tk[142]" -type "float3" 0 0 0.15864486 ;
	setAttr ".tk[143]" -type "float3" 0 0 0.2507259 ;
	setAttr ".tk[144]" -type "float3" 0 0 0.2507259 ;
	setAttr ".tk[145]" -type "float3" 0 0 0.15864486 ;
	setAttr ".tk[146]" -type "float3" 0 0 -0.14653161 ;
	setAttr ".tk[147]" -type "float3" 0 0 0.15864486 ;
	setAttr ".tk[148]" -type "float3" 0 0 0.15864486 ;
	setAttr ".tk[149]" -type "float3" 0 0 -0.14653161 ;
	setAttr ".tk[150]" -type "float3" 0 0 -0.2507259 ;
	setAttr ".tk[151]" -type "float3" 0 0 -0.14653161 ;
	setAttr ".tk[152]" -type "float3" 0 0 -0.14653161 ;
	setAttr ".tk[153]" -type "float3" 0 0 -0.2507259 ;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "0B94214F-4524-0A6F-08B5-F9A510C6C71A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 33 "e[7:8]" "e[21]" "e[28]" "e[36]" "e[38]" "e[45]" "e[56]" "e[112]" "e[138]" "e[172]" "e[228]" "e[231]" "e[241]" "e[243]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[259]" "e[271]" "e[280]" "e[283]" "e[288]" "e[291]" "e[296]" "e[299]" "e[304]" "e[307]" "e[312]" "e[315]" "e[320]" "e[323]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".wt" 0.56512618064880371;
	setAttr ".dr" no;
	setAttr ".re" 304;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak51";
	rename -uid "7F9C28D2-4F98-C2C3-7BBD-B59F51CEDE90";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[101]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".tk[103]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".tk[105]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".tk[107]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".tk[109]" -type "float3" 0.047320783 0 0 ;
	setAttr ".tk[111]" -type "float3" 0.047320783 0 0 ;
	setAttr ".tk[113]" -type "float3" 0.047320783 0 0 ;
	setAttr ".tk[115]" -type "float3" 0.047320783 0 0 ;
	setAttr ".tk[143]" -type "float3" 0 0 -0.22269692 ;
	setAttr ".tk[144]" -type "float3" 4.4408921e-16 0.2619372 -0.22269692 ;
	setAttr ".tk[145]" -type "float3" 4.4408921e-16 0.2619372 -5.7509553e-14 ;
	setAttr ".tk[148]" -type "float3" 4.4408921e-16 0.2619372 -5.7509553e-14 ;
	setAttr ".tk[149]" -type "float3" 4.4408921e-16 0.2619372 -5.7509553e-14 ;
	setAttr ".tk[150]" -type "float3" 0 0 0.22269692 ;
	setAttr ".tk[152]" -type "float3" 4.4408921e-16 0.2619372 -5.7509553e-14 ;
	setAttr ".tk[153]" -type "float3" 4.4408921e-16 0.2619372 0.22269692 ;
	setAttr ".tk[154]" -type "float3" 0.11581571 1.6653345e-16 -5.7509553e-14 ;
	setAttr ".tk[155]" -type "float3" 0.11581571 1.6653345e-16 -0.22269692 ;
	setAttr ".tk[156]" -type "float3" 0.11581571 0.2619372 -0.22269692 ;
	setAttr ".tk[157]" -type "float3" 0.11581571 0.2619372 -1.1501911e-13 ;
	setAttr ".tk[158]" -type "float3" 0.11581571 1.6653345e-16 -5.7509553e-14 ;
	setAttr ".tk[159]" -type "float3" 0.11581571 1.6653345e-16 -5.7509553e-14 ;
	setAttr ".tk[160]" -type "float3" 0.11581571 0.2619372 -1.1501911e-13 ;
	setAttr ".tk[161]" -type "float3" 0.11581571 0.2619372 -1.1501911e-13 ;
	setAttr ".tk[162]" -type "float3" 0.11581571 1.6653345e-16 0.22269692 ;
	setAttr ".tk[163]" -type "float3" 0.11581571 1.6653345e-16 -5.7509553e-14 ;
	setAttr ".tk[164]" -type "float3" 0.11581571 0.2619372 -1.1501911e-13 ;
	setAttr ".tk[165]" -type "float3" 0.11581571 0.2619372 0.22269692 ;
createNode polyExtrudeFace -n "polyExtrudeFace41";
	rename -uid "8B3D3B22-44DB-5FD6-0F68-6D94DAEF80DC";
	setAttr ".ics" -type "componentList" 4 "f[160]" "f[166]" "f[172:173]" "f[193]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.8024104 1.8553407 -3.5653033 ;
	setAttr ".rs" 43498;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.0542406408103631 1.7068313677328666 -4.9131503038603421 ;
	setAttr ".cbx" -type "double3" -2.5505801922144533 2.0038500986745116 -2.2174563626276758 ;
createNode polyExtrudeFace -n "polyExtrudeFace42";
	rename -uid "42F9D224-4A84-2029-7C45-73AAD8D91959";
	setAttr ".ics" -type "componentList" 3 "f[20]" "f[45]" "f[60]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4596233 2.0559464 -3.5339806 ;
	setAttr ".rs" 35765;
	setAttr ".lt" -type "double3" -2.2204460492503131e-16 0 -0.19662411980364691 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.87657084075680958 1.6889913440844484 -4.3230991269746744 ;
	setAttr ".cbx" -type "double3" 2.0426759051241237 2.4229012373575309 -2.7448618978260848 ;
createNode polyTweak -n "polyTweak52";
	rename -uid "AE33C874-4FAC-76DC-0E95-299DDDACCAF0";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[43]" -type "float3" 0.34881398 -3.3306691e-16 -6.2616579e-14 ;
	setAttr ".tk[52]" -type "float3" 0.34881398 -3.3306691e-16 -6.2505556e-14 ;
	setAttr ".tk[200]" -type "float3" -0.2131992 3.694961e-16 0.27789214 ;
	setAttr ".tk[201]" -type "float3" -0.2131992 3.694961e-16 0.20142856 ;
	setAttr ".tk[202]" -type "float3" -0.2131992 3.8857806e-16 0.2778922 ;
	setAttr ".tk[203]" -type "float3" -0.2131992 3.8857806e-16 0.20142856 ;
	setAttr ".tk[204]" -type "float3" 1.1920929e-07 0 0.27789214 ;
	setAttr ".tk[205]" -type "float3" 1.1920929e-07 0 0.2778922 ;
	setAttr ".tk[206]" -type "float3" -0.2131992 3.694961e-16 0.20142856 ;
	setAttr ".tk[207]" -type "float3" -0.2131992 3.694961e-16 -0.18604869 ;
	setAttr ".tk[208]" -type "float3" -0.2131992 3.8857806e-16 0.20142856 ;
	setAttr ".tk[209]" -type "float3" -0.2131992 3.8857806e-16 -0.18604869 ;
	setAttr ".tk[210]" -type "float3" -0.2131992 3.694961e-16 -0.18604869 ;
	setAttr ".tk[211]" -type "float3" -0.2131992 3.694961e-16 -0.2778922 ;
	setAttr ".tk[212]" -type "float3" -0.2131992 3.8857806e-16 -0.18604869 ;
	setAttr ".tk[213]" -type "float3" -0.2131992 3.8857806e-16 -0.2778922 ;
	setAttr ".tk[214]" -type "float3" 1.1920929e-07 0 -0.2778922 ;
	setAttr ".tk[215]" -type "float3" 1.1920929e-07 0 -0.2778922 ;
createNode polyExtrudeFace -n "polyExtrudeFace43";
	rename -uid "5190D8B1-421C-DD16-0635-55B509041681";
	setAttr ".ics" -type "componentList" 2 "f[21]" "f[212]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.76007766 1.703456 -3.5333419 ;
	setAttr ".rs" 57356;
	setAttr ".lt" -type "double3" -1.1102230246251565e-16 -4.0061255228991998e-16 0.5381563114900223 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.44313586852287368 1.6889913440844484 -4.3385948656975479 ;
	setAttr ".cbx" -type "double3" 1.0770194185486197 1.7179207287540896 -2.7280890954841164 ;
createNode polyTweak -n "polyTweak53";
	rename -uid "6709742F-4C3D-27CC-1A1C-D4B84D15E921";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[216:223]" -type "float3"  0.11714675 -0.14693713 -1.9095836e-14
		 0.11714675 -0.14693713 -1.9206858e-14 -4.4408921e-16 -0.053116661 -1.9206858e-14
		 -4.4408921e-16 -0.053116661 -1.9151347e-14 -0.11714675 0 0 -0.11714675 0 0 -4.4408921e-16
		 -0.053116661 -1.9206858e-14 -4.4408921e-16 -0.053116661 -1.9151347e-14;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "AFC3AC16-41CD-FE78-94C4-5C99D7D6E0F5";
	setAttr ".r" 0.4741876449948747;
	setAttr ".h" 0.67060259866151029;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace46";
	rename -uid "C9CF9CF8-4D78-98D5-7882-1E87A880AC87";
	setAttr ".ics" -type "componentList" 1 "f[20:59]";
	setAttr ".ix" -type "matrix" 0.61078110252752915 0 0 0 0 1.3617258186101702 0 0 0 0 0.61078110252752915 0
		 1.6705257731680772 1.6105118782300836 -4.8835945382692261 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.6705258 1.6105119 -4.8835945 ;
	setAttr ".rs" 61021;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3809008493664503 1.1539234276289487 -5.1732195348816346 ;
	setAttr ".cbx" -type "double3" 1.9601506241589228 2.0671003288312186 -4.5939696508729897 ;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "3C4940E6-4688-38D3-9D5E-74AF608F0026";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 40 "e[62]" "e[66]" "e[69]" "e[72]" "e[75]" "e[78]" "e[81]" "e[84]" "e[87]" "e[90]" "e[93]" "e[96]" "e[99]" "e[102]" "e[105]" "e[108]" "e[111]" "e[114]" "e[117]" "e[119]" "e[122]" "e[126]" "e[129]" "e[132]" "e[135]" "e[138]" "e[141]" "e[144]" "e[147]" "e[150]" "e[153]" "e[156]" "e[159]" "e[162]" "e[165]" "e[168]" "e[171]" "e[174]" "e[177]" "e[179]";
	setAttr ".ix" -type "matrix" 0.61078110252752915 0 0 0 0 1.3617258186101702 0 0 0 0 0.61078110252752915 0
		 1.6705257731680772 1.6105118782300836 -4.8835945382692261 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.9;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak56";
	rename -uid "EBEC1572-433F-510C-24E0-B9A33D3BF35E";
	setAttr ".uopa" yes;
	setAttr -s 45 ".tk";
	setAttr ".tk[11]" -type "float3" 0 -0.035347335 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.035347335 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.035347335 0 ;
	setAttr ".tk[40]" -type "float3" -0.16494086 -0.066011809 0.053592157 ;
	setAttr ".tk[41]" -type "float3" -0.14030707 -0.066011809 0.10193875 ;
	setAttr ".tk[42]" -type "float3" -4.3599499e-08 -0.10831807 -1.74398e-07 ;
	setAttr ".tk[43]" -type "float3" -0.10193907 -0.066011809 0.14030667 ;
	setAttr ".tk[44]" -type "float3" -0.05359254 -0.066011809 0.16494076 ;
	setAttr ".tk[45]" -type "float3" -4.3599499e-08 -0.066011809 0.17342903 ;
	setAttr ".tk[46]" -type "float3" 0.053592455 -0.10831807 0.16494076 ;
	setAttr ".tk[47]" -type "float3" 0.10193899 -0.10831807 0.14030667 ;
	setAttr ".tk[48]" -type "float3" 0.14030698 -0.10831807 0.10193875 ;
	setAttr ".tk[49]" -type "float3" 0.16494077 -0.10831807 0.053592157 ;
	setAttr ".tk[50]" -type "float3" 0.17342901 -0.10831807 -1.74398e-07 ;
	setAttr ".tk[51]" -type "float3" 0.16494077 -0.10831807 -0.053592674 ;
	setAttr ".tk[52]" -type "float3" 0.14030698 -0.10831807 -0.1019391 ;
	setAttr ".tk[53]" -type "float3" 0.10193899 -0.10831807 -0.14030737 ;
	setAttr ".tk[54]" -type "float3" 0.053592455 -0.10831807 -0.1649411 ;
	setAttr ".tk[55]" -type "float3" -4.3599499e-08 -0.10831807 -0.17342903 ;
	setAttr ".tk[56]" -type "float3" -0.05359254 -0.066011809 -0.1649411 ;
	setAttr ".tk[57]" -type "float3" -0.10193899 -0.066011809 -0.14030737 ;
	setAttr ".tk[58]" -type "float3" -0.14030698 -0.066011809 -0.1019391 ;
	setAttr ".tk[59]" -type "float3" -0.16494077 -0.066011809 -0.053592674 ;
	setAttr ".tk[60]" -type "float3" -0.17342901 -0.066011809 -1.74398e-07 ;
	setAttr ".tk[61]" -type "float3" -0.16494086 0.10831807 0.053592157 ;
	setAttr ".tk[62]" -type "float3" -0.14030707 0.10831807 0.10193875 ;
	setAttr ".tk[63]" -type "float3" -4.3599499e-08 0.10831807 -1.74398e-07 ;
	setAttr ".tk[64]" -type "float3" -0.10193907 0.10831807 0.14030667 ;
	setAttr ".tk[65]" -type "float3" -0.05359254 0.10831807 0.16494076 ;
	setAttr ".tk[66]" -type "float3" -4.3599499e-08 0.10831807 0.17342903 ;
	setAttr ".tk[67]" -type "float3" 0.053592455 0.10831807 0.16494076 ;
	setAttr ".tk[68]" -type "float3" 0.10193899 0.10831807 0.14030667 ;
	setAttr ".tk[69]" -type "float3" 0.14030698 0.10831807 0.10193875 ;
	setAttr ".tk[70]" -type "float3" 0.16494077 0.10831807 0.053592157 ;
	setAttr ".tk[71]" -type "float3" 0.17342901 0.10831807 -1.74398e-07 ;
	setAttr ".tk[72]" -type "float3" 0.16494077 0.10831807 -0.053592674 ;
	setAttr ".tk[73]" -type "float3" 0.14030698 0.10831807 -0.1019391 ;
	setAttr ".tk[74]" -type "float3" 0.10193899 0.10831807 -0.14030737 ;
	setAttr ".tk[75]" -type "float3" 0.053592455 0.10831807 -0.1649411 ;
	setAttr ".tk[76]" -type "float3" -4.3599499e-08 0.10831807 -0.17342903 ;
	setAttr ".tk[77]" -type "float3" -0.05359254 0.10831807 -0.1649411 ;
	setAttr ".tk[78]" -type "float3" -0.10193899 0.10831807 -0.14030737 ;
	setAttr ".tk[79]" -type "float3" -0.14030698 0.10831807 -0.1019391 ;
	setAttr ".tk[80]" -type "float3" -0.16494077 0.10831807 -0.053592674 ;
	setAttr ".tk[81]" -type "float3" -0.17342901 0.10831807 -1.74398e-07 ;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "F6704DF7-472E-E2A7-B246-3C96A6ED2C25";
	setAttr ".r" 1.1343989243984087;
	setAttr ".h" 1.7574847995685603;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace47";
	rename -uid "45A1716C-4DE3-653F-F03F-D896CFCB85B7";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.73416234025256044 0 0 0 0 0.56237059817510171 0 0
		 0 0 0.73416234025256044 0 2.9831384977143269 2.6809984788135313 0.98664198270118963 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9831383 3.2261724 0.98664182 ;
	setAttr ".rs" 39809;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1503053441430104 3.2261723293069933 0.15380856657296027 ;
	setAttr ".cbx" -type "double3" 3.8159714762477011 3.2261723293069933 1.8194750487535349 ;
createNode polyTweak -n "polyTweak57";
	rename -uid "138960D0-47A2-F754-A69D-A490583DFC6F";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[20]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.090678558 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.090678558 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace48";
	rename -uid "E302FB7D-400C-8B51-8B7C-BA82DF89C4FF";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.73416234025256044 0 0 0 0 0.56237059817510171 0 0
		 0 0 0.73416234025256044 0 2.9831384977143269 2.6809984788135313 0.98664198270118963 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9831386 3.2261722 0.98664188 ;
	setAttr ".rs" 63301;
	setAttr ".lt" -type "double3" 0 0 -0.31239520119533193 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.5011158186118561 3.2261722957870935 0.50461912856077662 ;
	setAttr ".cbx" -type "double3" 3.4651613518547402 3.2261722957870935 1.4686646618036607 ;
createNode polyTweak -n "polyTweak58";
	rename -uid "ACBE4922-4930-E098-FC30-B8901A86EBA7";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[41:61]" -type "float3"  -0.45445064 0 0.14765987 -0.38657877
		 0 0.28086585 5.0213966e-08 0 -5.0213966e-08 -0.28086591 0 0.3865788 -0.14766005 0
		 0.45445049 5.0213966e-08 0 0.47783774 0.14765996 0 0.45445049 0.28086591 0 0.38657871
		 0.38657865 0 0.28086579 0.45445046 0 0.14765979 0.47783774 0 -5.0213966e-08 0.45445046
		 0 -0.14765996 0.38657865 0 -0.28086591 0.28086579 0 -0.38657877 0.14765972 0 -0.45445055
		 5.0213966e-08 0 -0.47783774 -0.14765985 0 -0.45445046 -0.28086591 0 -0.38657865 -0.38657877
		 0 -0.28086591 -0.45445055 0 -0.14765996 -0.47783774 0 -5.0213966e-08;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "CC3BEDCD-4F03-DF38-C3CE-2A83FD0CB54E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 0.73416234025256044 0 0 0 0 0.56237059817510171 0 0
		 0 0 0.73416234025256044 0 2.9831384977143269 2.6809984788135313 0.98664198270118963 1;
	setAttr ".wt" 0.76471632719039917;
	setAttr ".dr" no;
	setAttr ".re" 59;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "B09FDD84-4258-47C8-EF85-DBB4A7A945FC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 0.73416234025256044 0 0 0 0 0.56237059817510171 0 0
		 0 0 0.73416234025256044 0 2.9831384977143269 2.6809984788135313 0.98664198270118963 1;
	setAttr ".wt" 0.81231832504272461;
	setAttr ".dr" no;
	setAttr ".re" 59;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace49";
	rename -uid "B7B56DA0-4F2C-371F-1C14-48B21163E349";
	setAttr ".ics" -type "componentList" 1 "f[120:139]";
	setAttr ".ix" -type "matrix" 0.73416234025256044 0 0 0 0 0.56237059817510171 0 0
		 0 0 0.73416234025256044 0 2.9831384977143269 2.6809984788135313 0.98664198270118963 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9831386 2.9070439 0.98664194 ;
	setAttr ".rs" 54236;
	setAttr ".lt" -type "double3" 1.1449174941446927e-16 -4.4408920985006262e-16 0.087226460225059976 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.1503053441430104 2.8324582463319321 0.1538087416109023 ;
	setAttr ".cbx" -type "double3" 3.8159718263235853 2.9816295432555324 1.8194751362725059 ;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "0586449D-4815-B096-FDA6-F1A5E34C316E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 39 "e[242]" "e[246]" "e[249]" "e[251]" "e[254]" "e[256]" "e[259]" "e[261]" "e[264]" "e[266]" "e[269]" "e[271]" "e[274]" "e[276]" "e[279]" "e[281]" "e[284]" "e[286]" "e[289]" "e[291]" "e[294]" "e[296]" "e[299]" "e[301]" "e[304]" "e[306]" "e[309]" "e[311]" "e[314]" "e[316]" "e[319]" "e[321]" "e[324]" "e[326]" "e[329]" "e[331]" "e[334]" "e[336]" "e[338:339]";
	setAttr ".ix" -type "matrix" 0.73416234025256044 0 0 0 0 0.56237059817510171 0 0
		 0 0 0.73416234025256044 0 2.9831384977143269 2.6809984788135313 0.98664198270118963 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak59";
	rename -uid "4CDB43CA-411F-A486-6B3A-21964C97625C";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[122:161]" -type "float3"  0 0.022865126 0 0 0.022865126
		 0 0 -0.022865128 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128 0 0 0.022865126
		 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128
		 0 0 0.022865126 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128 0 0 0.022865126
		 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128
		 0 0 0.022865126 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128 0 0 0.022865126
		 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128
		 0 0 0.022865126 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128 0 0 0.022865126
		 0 0 -0.022865128 0 0 0.022865126 0 0 -0.022865128 0;
createNode polyCube -n "polyCube12";
	rename -uid "D104B954-435A-700F-A637-92B01D57EEDD";
	setAttr ".w" 2;
	setAttr ".h" 2.3190832258027623;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace50";
	rename -uid "530BE2D4-493F-8E46-5686-319D7FE33760";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7 1.1595416129013811 0.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7 1.451986 0.5 ;
	setAttr ".rs" 49545;
	setAttr ".lt" -type "double3" 0 0 0.29776484190972674 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6 1.4519859612366472 0 ;
	setAttr ".cbx" -type "double3" 8 1.4519859612366472 1 ;
createNode polyTweak -n "polyTweak60";
	rename -uid "168546A5-4083-6541-20B8-858B97E2E8E9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 -0.86709726 0 0 -0.86709726
		 0 0 -0.86709726 0 0 -0.86709726 0;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "22F0C779-4123-317D-A678-2789CA690631";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7 1.1595416129013811 0.5 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.8;
	setAttr ".sg" 4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak61";
	rename -uid "D69F056B-46F9-15A5-4F02-1AA66E61CDC6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.19428718 0.15132621 0 -0.19428718
		 0.15132621 0 -0.19428718 0.15132621 0 0.19428718 0.15132621 0;
createNode polyCylinder -n "polyCylinder3";
	rename -uid "1BF9BC9B-4646-2F78-264A-E29D9149F251";
	setAttr ".r" 0.51163084583042584;
	setAttr ".h" 1.9017272891641832;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace51";
	rename -uid "B1B469B7-4315-BDAD-0DEC-DDAC42997EC5";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.5915258274800147 0 0 0 0 0.5915258274800147 0 0 0 0 0.5915258274800147 0
		 5.6610755824919359 0.9508636445820916 5.9219848826613237 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.6610756 1.513324 5.9219847 ;
	setAttr ".rs" 48805;
	setAttr ".lt" -type "double3" 8.8817841970012523e-16 0 0.062351934073006543 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.3113211273556047 1.5133240575186249 5.5024477438700181 ;
	setAttr ".cbx" -type "double3" 6.010829967112894 1.5133240575186249 6.3415219156795688 ;
createNode polyTweak -n "polyTweak62";
	rename -uid "59975667-48DA-D5DD-E324-84ADC7CEE875";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[20]" -type "float3" 0.075746097 0 -0.061066248 ;
	setAttr ".tk[21]" -type "float3" 0.064433478 0 -0.11615495 ;
	setAttr ".tk[22]" -type "float3" 0.046813659 0 -0.15987357 ;
	setAttr ".tk[23]" -type "float3" 0.024611397 0 -0.18794267 ;
	setAttr ".tk[24]" -type "float3" 9.278482e-09 0 -0.19761461 ;
	setAttr ".tk[25]" -type "float3" -0.024611378 0 -0.18794265 ;
	setAttr ".tk[26]" -type "float3" -0.046813637 0 -0.15987353 ;
	setAttr ".tk[27]" -type "float3" -0.064433433 0 -0.11615489 ;
	setAttr ".tk[28]" -type "float3" -0.075746037 0 -0.061066229 ;
	setAttr ".tk[29]" -type "float3" -0.079644091 0 3.4532935e-08 ;
	setAttr ".tk[30]" -type "float3" -0.075746037 0 0.061066292 ;
	setAttr ".tk[31]" -type "float3" -0.064433426 0 0.11615498 ;
	setAttr ".tk[32]" -type "float3" -0.046813615 0 0.15987357 ;
	setAttr ".tk[33]" -type "float3" -0.024611374 0 0.18794267 ;
	setAttr ".tk[34]" -type "float3" 6.9049033e-09 0 0.19761461 ;
	setAttr ".tk[35]" -type "float3" 0.024611386 0 0.18794265 ;
	setAttr ".tk[36]" -type "float3" 0.046813637 0 0.15987356 ;
	setAttr ".tk[37]" -type "float3" 0.064433433 0 0.11615495 ;
	setAttr ".tk[38]" -type "float3" 0.075746037 0 0.061066281 ;
	setAttr ".tk[39]" -type "float3" 0.079644091 0 3.4532935e-08 ;
	setAttr ".tk[41]" -type "float3" 9.278482e-09 0 3.4532935e-08 ;
createNode polyExtrudeFace -n "polyExtrudeFace52";
	rename -uid "3515A26B-4F05-84F3-90E8-ACAFE058C37A";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.5915258274800147 0 0 0 0 0.5915258274800147 0 0 0 0 0.5915258274800147 0
		 5.6610755824919359 0.9508636445820916 5.9219848826613237 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.6610756 1.5756761 5.9219847 ;
	setAttr ".rs" 63236;
	setAttr ".lt" -type "double3" 0 0 0.15003627893280136 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.3113210215825442 1.5756760426450276 5.5024477438700181 ;
	setAttr ".cbx" -type "double3" 6.0108301434013276 1.5756760426450276 6.3415220214526293 ;
createNode polyCylinder -n "polyCylinder4";
	rename -uid "DE43DAF8-488B-06C9-61BA-158F838530D7";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace53";
	rename -uid "FE6C595D-447D-1A36-5752-BA887FF189F5";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 0.34636877705996738 0 0 0 0 0 0.069988713052253071 0
		 0 -0.34636877705996738 0 0 0.81476943620809439 3.2270165008015805 0.28410546481609344 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81476939 3.2270164 0.21411675 ;
	setAttr ".rs" 46673;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.46840057656737533 2.8806476824512375 0.21411675176384037 ;
	setAttr ".cbx" -type "double3" 1.1611382132680617 3.5733854430230512 0.21411675176384037 ;
createNode polyExtrudeFace -n "polyExtrudeFace54";
	rename -uid "00DE8660-4F7C-0C6B-EB31-7FA8D6C0B523";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 0.34636877705996738 0 0 0 0 0 0.069988713052253071 0
		 0 -0.34636877705996738 0 0 0.81476943620809439 3.2270165008015805 0.28410546481609344 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81476939 3.2270164 0.21411675 ;
	setAttr ".rs" 49981;
	setAttr ".lt" -type "double3" 0 1.1947626977896514e-17 -0.097559777939361103 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.51714109878646441 2.9293879775732594 0.21411675176384037 ;
	setAttr ".cbx" -type "double3" 1.1123976497585968 3.5246446937068949 0.21411675176384037 ;
createNode polyTweak -n "polyTweak63";
	rename -uid "AC8CD8D4-45AA-B795-49E2-5884DE6A6D31";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[41:61]" -type "float3"  -0.13383152 0 0.043484423
		 -0.11384388 0 0.082712375 -2.5162475e-08 0 -6.7099904e-08 -0.082712427 0 0.1138438
		 -0.043484509 0 0.1338315 -2.5162475e-08 0 0.14071874 0.043484479 0 0.1338315 0.082712397
		 0 0.1138438 0.11384387 0 0.082712375 0.13383149 0 0.043484423 0.14071871 0 -6.7099904e-08
		 0.13383149 0 -0.043484569 0.11384387 0 -0.082712375 0.082712375 0 -0.11384391 0.043484479
		 0 -0.1338315 -2.5162475e-08 0 -0.14071874 -0.04348449 0 -0.1338315 -0.082712397 0
		 -0.11384391 -0.11384384 0 -0.082712375 -0.13383149 0 -0.043484423 -0.14071871 0 -6.7099904e-08;
createNode polyExtrudeFace -n "polyExtrudeFace55";
	rename -uid "2CB6FDAF-4B61-0AFF-FE24-CC8F6CC9287B";
	setAttr ".ics" -type "componentList" 1 "f[60:79]";
	setAttr ".ix" -type "matrix" 0.34636877705996738 0 0 0 0 0 0.069988713052253071 0
		 0 -0.34636877705996738 0 0 0.81476943620809439 3.2270165008015805 0.28410546481609344 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81476939 3.227016 0.21411675 ;
	setAttr ".rs" 48565;
	setAttr ".lt" -type "double3" 0 -3.7180380575802668e-18 0.03036008472131646 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.46840053527699949 2.8806470630955996 0.21411675176384037 ;
	setAttr ".cbx" -type "double3" 1.1611382132680617 3.5733849475385413 0.21411675176384037 ;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "9B125E0F-4DB1-2EDB-3D67-4FA17406A420";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 39 "e[162]" "e[166]" "e[169]" "e[171]" "e[174]" "e[176]" "e[179]" "e[181]" "e[184]" "e[186]" "e[189]" "e[191]" "e[194]" "e[196]" "e[199]" "e[201]" "e[204]" "e[206]" "e[209]" "e[211]" "e[214]" "e[216]" "e[219]" "e[221]" "e[224]" "e[226]" "e[229]" "e[231]" "e[234]" "e[236]" "e[239]" "e[241]" "e[244]" "e[246]" "e[249]" "e[251]" "e[254]" "e[256]" "e[258:259]";
	setAttr ".ix" -type "matrix" 0.34636877705996738 0 0 0 0 0 0.069988713052253071 0
		 0 -0.34636877705996738 0 0 0.81476943620809439 3.2270165008015805 0.28410546481609344 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCylinder -n "polyCylinder5";
	rename -uid "B4152ED2-41DF-79D7-B013-4E9467095D80";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCylinder -n "polyCylinder6";
	rename -uid "4E247511-4D72-BF4D-1915-648BF6FFCC37";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode lambert -n "stone";
	rename -uid "B80FC9F9-4E6B-B993-16BD-D8AD7EF52311";
	setAttr ".c" -type "float3" 0.093877554 0.093877554 0.093877554 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "2FAA2597-407F-8A0C-A0F6-3A84A05AFDFA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "817AE935-41FC-CE88-A0F1-EAB99F813676";
createNode lambert -n "Sand";
	rename -uid "7A7A8026-4C44-B6BE-F76B-10B79020425C";
	setAttr ".c" -type "float3" 0.61199999 0.5057568 0.22032 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "E826A579-43DC-B28D-6807-B69288C77055";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "39A8AB01-411E-2C08-6521-9DBFBCFE10DB";
createNode lambert -n "wood";
	rename -uid "1057C463-409E-BC97-919F-FEB0EF954F10";
	setAttr ".c" -type "float3" 0.29899999 0.22982165 0.11122799 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "530A9829-4026-4DD9-EFA7-5EA2551F41B9";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "35C6F921-45F3-152B-989D-308C3AD1C89D";
createNode lambert -n "water1";
	rename -uid "44A2345B-4976-9BE0-31FE-D394306B897B";
	setAttr ".c" -type "float3" 0.1965 0.326747 0.5 ;
	setAttr ".it" -type "float3" 0.1755102 0.1755102 0.1755102 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "72AE0F17-4916-324D-11F5-D1B358B94352";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "03740AA4-45AA-EB8D-DC80-8AA813C0AD36";
createNode lambert -n "white";
	rename -uid "8C369CA7-4B0F-D873-2378-9580C301345A";
	setAttr ".c" -type "float3" 0.46530613 0.46530613 0.46530613 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "85330938-44A3-5AC3-86EA-CEA359880F45";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo5";
	rename -uid "DE8E67AD-42D2-D5E0-F383-488F22256878";
createNode shadingEngine -n "lambert1SG";
	rename -uid "D8F89C07-4DE3-342B-368E-B5A1F02EE66F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "F4977333-4B8B-295D-3392-098B40D5374D";
createNode lambert -n "Bouy";
	rename -uid "9B585060-4F4A-A722-9596-04B9C680E78C";
	setAttr ".c" -type "float3" 0.023 0.023 0.023 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "64C7CE1C-4AC5-F78D-E56E-56B15E509AB2";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "B673C5CC-4F1A-48E1-4986-47B5B901D3B6";
createNode blinn -n "steel";
	rename -uid "91B1A561-4C92-8009-80BE-04826F8AE6F1";
	setAttr ".c" -type "float3" 0.25714287 0.25714287 0.25714287 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "22693972-4772-E942-1CF2-67A4A953528A";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo8";
	rename -uid "06A5090D-4653-328B-25AC-B8A76A350111";
createNode lambert -n "lader";
	rename -uid "B70BE3D9-4992-1B9C-4EB9-019990F39ADB";
	setAttr ".c" -type "float3" 0.27755103 0.011102047 0.011102047 ;
createNode shadingEngine -n "lambert8SG";
	rename -uid "93B7F36E-4B38-8C13-F88C-7A810A76FFC6";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "E99C3B4C-4A5C-5ADF-BFBE-4C98583E24E7";
createNode polyCube -n "polyCube13";
	rename -uid "1C9BA4DA-4402-F162-80F9-72BB7B635379";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel7";
	rename -uid "B542A1C6-498F-97A8-7351-D6B3E4BDFF8A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.67525338878091468 2.4447075017356523 -0.5181368044558109 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak64";
	rename -uid "C7619C67-4204-9516-283E-19924AE73A52";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[4:7]" -type "float3"  0 0 0.31274837 0 0 0.31274837
		 0 0 0.31274837 0 0 0.31274837;
createNode polyExtrudeFace -n "polyExtrudeFace56";
	rename -uid "291DC838-4A17-A276-2A01-3F9B7B501054";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.67525338878091468 2.4447075017356523 -0.5181368044558109 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.67525339 2.7947226 -0.36176261 ;
	setAttr ".rs" 59870;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1752533887809147 2.6447375901603349 -0.70538843190103184 ;
	setAttr ".cbx" -type "double3" -0.17525338878091468 2.9447075017356523 -0.018136804455810895 ;
createNode polyExtrudeFace -n "polyExtrudeFace57";
	rename -uid "52374BA4-4B19-BACE-477D-BBAEBA07E4E9";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.67525338878091468 2.4447075017356523 -0.5181368044558109 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.67525339 2.7947226 -0.36176258 ;
	setAttr ".rs" 45213;
	setAttr ".ls" -type "double3" 0.8166666669952799 0.8166666669952799 0.8166666669952799 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1752533887809147 2.6447375901603349 -0.70538838719754826 ;
	setAttr ".cbx" -type "double3" -0.17525338878091468 2.9447075017356523 -0.018136804455810895 ;
createNode polyExtrudeFace -n "polyExtrudeFace58";
	rename -uid "E5C7BA1A-48E0-1A19-7C26-7484A4C4EFAD";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.67525338878091468 2.4447075017356523 -0.5181368044558109 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.65691727 2.8084712 -0.36176261 ;
	setAttr ".rs" 54534;
	setAttr ".lt" -type "double3" 1.951563910473908e-17 0 0.15305573845640305 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1110839818900455 2.6722348817252763 -0.64239037548928868 ;
	setAttr ".cbx" -type "double3" -0.20275062074121131 2.9447075017356523 -0.081134860867554059 ;
createNode polyCylinder -n "polyCylinder7";
	rename -uid "701B4BA2-4E23-778E-BFF8-A8B72F8822AC";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace59";
	rename -uid "C99A39AE-42BC-4B5C-AB6C-1589950D84C7";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 7.9163413216804415 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0.059372723 7.9163413 ;
	setAttr ".rs" 61792;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0000002384185791 0.05937272310256958 6.9163408448432833 ;
	setAttr ".cbx" -type "double3" 1 0.05937272310256958 8.916341440889731 ;
createNode polyTweak -n "polyTweak65";
	rename -uid "9DF0CA2B-4D3E-C6CD-8A13-EA98A8A46ABC";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  0 0.94062728 0 0 0.94062728
		 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728
		 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728
		 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728 0 0 0.94062728
		 0 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0
		 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0 0
		 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728
		 0 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0 0 -0.94062728 0 0 0.94062728 0
		 0 -0.94062728 0;
createNode polyExtrudeFace -n "polyExtrudeFace60";
	rename -uid "421943C6-4874-41BD-000C-D9A35FCB456D";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 7.9163413216804415 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0.059372723 7.9163413 ;
	setAttr ".rs" 45236;
	setAttr ".lt" -type "double3" 0 8.8573033566388269e-16 0.55630569547220921 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.85281902551651001 0.05937272310256958 7.0635221173499971 ;
	setAttr ".cbx" -type "double3" 0.85281878709793091 0.05937272310256958 8.7691605260108858 ;
createNode polyTweak -n "polyTweak66";
	rename -uid "09FBBBB7-4E96-0B14-6205-F089E867E854";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[41:61]" -type "float3"  -0.1399778 0 0.045481537 -0.11907216
		 0 0.086511023 -1.7545368e-08 0 0 -0.086511023 0 0.11907216 -0.045481544 0 0.13997775
		 -1.7545368e-08 0 0.14718129 0.045481488 0 0.13997775 0.086510971 0 0.1190721 0.11907209
		 0 0.086510956 0.13997771 0 0.045481537 0.14718123 0 0 0.13997771 0 -0.045481447 0.11907209
		 0 -0.086510956 0.086510956 0 -0.11907207 0.045481481 0 -0.13997775 -1.3159025e-08
		 0 -0.14718129 -0.045481529 0 -0.13997775 -0.086510971 0 -0.11907207 -0.11907209 0
		 -0.086510956 -0.13997771 0 -0.045481447 -0.14718123 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace61";
	rename -uid "00D303DF-4465-2A2D-B879-6184B2DF31C8";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 7.9163413216804415 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0.61567837 7.9163413 ;
	setAttr ".rs" 36386;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.85281902551651001 0.61567836999893188 7.0635223557685762 ;
	setAttr ".cbx" -type "double3" 0.85281878709793091 0.61567842960357666 8.7691602875923067 ;
createNode polyExtrudeFace -n "polyExtrudeFace62";
	rename -uid "DA65146A-4B49-D99E-E22A-4684FCEE8683";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 7.9163413216804415 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1920929e-07 0.61567837 7.9163413 ;
	setAttr ".rs" 45692;
	setAttr ".lt" -type "double3" -4.3768544886291799e-17 -8.8817841970012523e-16 -0.41658624212754697 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.78751444816589355 0.61567836999893188 7.1288269331191927 ;
	setAttr ".cbx" -type "double3" 0.78751420974731445 0.61567842960357666 8.7038557102416902 ;
createNode polyTweak -n "polyTweak67";
	rename -uid "935D0FAD-4255-1440-EF24-0796A0BC6399";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[81:101]" -type "float3"  -0.062108397 -2.3682789e-09
		 0.020180222 -0.052832555 -2.3682789e-09 0.038385089 -7.7849114e-09 2.3682791e-09
		 0 -0.038385097 -2.3682789e-09 0.052832566 -0.02018024 -2.3682789e-09 0.062108349
		 -7.7849114e-09 -2.3682789e-09 0.065304592 0.020180227 -2.3682789e-09 0.062108349
		 0.038385078 -2.3682789e-09 0.052832544 0.052832518 -2.3682789e-09 0.038385049 0.062108345
		 -2.3682789e-09 0.020180222 0.065304577 -2.3682789e-09 0 0.062108345 -2.3682789e-09
		 -0.020180186 0.052832518 -2.3682789e-09 -0.038385089 0.038385063 -2.3682789e-09 -0.052832492
		 0.020180218 -2.3682789e-09 -0.062108397 -5.8386838e-09 -2.3682789e-09 -0.065304592
		 -0.020180227 -2.3682789e-09 -0.062108397 -0.038385078 -2.3682789e-09 -0.052832492
		 -0.052832518 -2.3682789e-09 -0.038385089 -0.062108345 -2.3682789e-09 -0.020180186
		 -0.065304577 -2.3682789e-09 0;
createNode polyCube -n "polyCube14";
	rename -uid "046DFDCE-4521-D664-C88F-4A8A8DAF36F2";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "7DA192CE-41B9-6247-A6E1-32A3AAE58D9B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.0614601434907716 2.9856146637031333 1.1895036519636744 1;
	setAttr ".wt" 0.78220647573471069;
	setAttr ".dr" no;
	setAttr ".re" 6;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak68";
	rename -uid "9B7AB00D-4165-3AD9-DEB8-8A82B450D404";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.40693155 5.3290705e-15 0
		 -0.27476403 5.3290705e-15 0 0.40693155 5.3290705e-15 0 -0.27476403 5.3290705e-15
		 0 0.40693155 5.3290705e-15 -0.78521603 -0.27476403 5.3290705e-15 -0.78521603 0.40693155
		 5.3290705e-15 -0.78521603 -0.27476403 5.3290705e-15 -0.78521603;
createNode polyExtrudeFace -n "polyExtrudeFace63";
	rename -uid "D1940A34-4758-E30C-70FC-43A79FDBF5AA";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.0614601434907716 2.9856146637031333 1.3188705360103479 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1545286 2.9856148 0.41648138 ;
	setAttr ".rs" 42187;
	setAttr ".lt" -type "double3" -2.2204460492503131e-16 0 1.9990066221113238 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1545285941800874 2.4856146637031333 0.22207712284811643 ;
	setAttr ".cbx" -type "double3" -2.1545285941800874 3.4856146637031333 0.61088561169394162 ;
createNode polyTweak -n "polyTweak69";
	rename -uid "46265CFD-4631-CDEA-9297-5B8EF2C07D09";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[4:11]" -type "float3"  0 0 0.18842266 0 0 0.18842266
		 0 0 0.18842266 0 0 0.18842266 0 0 0.18842266 0 0 0.18842266 0 0 0.18842266 0 0 0.18842266;
createNode polyExtrudeFace -n "polyExtrudeFace64";
	rename -uid "BF5D8969-4066-F934-E645-7D8121E3508C";
	setAttr ".ics" -type "componentList" 3 "f[1]" "f[9]" "f[12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.0614601434907716 2.6832825008460777 1.4999999915767541 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.918112 3.1832826 1.2016033 ;
	setAttr ".rs" 46410;
	setAttr ".lt" -type "double3" 0 0 0.073704996500878917 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.000000006123523 3.1832825008460777 0.40320657841452268 ;
	setAttr ".cbx" -type "double3" -1.8362242044648927 3.1832825008460777 1.9999999915767541 ;
createNode polyTweak -n "polyTweak70";
	rename -uid "F580E78F-4F74-C3DE-DD1B-6894FCCFB9C3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0 -0.084051192 0 0 -0.084051192
		 0 0 -0.08405146 0 0 -0.08405146 0.15353525 0 0 0.15353525 0 -0.084051192 0.15353525
		 0 -0.084051192 0.15353525 0 0;
createNode polyBevel3 -n "polyBevel8";
	rename -uid "579598DC-4FE4-392B-6811-D6A020B19A69";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[28]" "e[30]" "e[33]" "e[35]" "e[37]" "e[40]" "e[42:43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.0614601434907716 2.6832825008460777 1.4999999915767541 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCylinder -n "polyCylinder8";
	rename -uid "81FCE63A-4A94-3C83-9D4A-39B7129407FE";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube15";
	rename -uid "A166B297-4E10-FEA0-B853-4AA94DF702AF";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "680413EE-4DAD-47D7-555C-F783CFD1D4F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 0.97620518889699881 -0.21684886250698887 0 0 0.21684886250698887 0.97620518889699881 0 0
		 0 0 1 0 -2.749557328381786 5.0609456521584182 1.2345766931089628 1;
	setAttr ".wt" 0.32428038120269775;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak71";
	rename -uid "839002EF-4E8C-5A1F-8C9E-4DA6ED072D59";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.8384043 0.40604407 0.4630169
		 0.8384043 0.40604407 0.4630169 -0.8384043 -0.40604407 0.4630169 0.8384043 -0.40604407
		 0.4630169 -0.8384043 -0.40604407 -0.4630169 0.8384043 -0.40604407 -0.4630169 -0.8384043
		 0.40604407 -0.4630169 0.8384043 0.40604407 -0.4630169;
createNode polySplitRing -n "polySplitRing24";
	rename -uid "5A84D23A-49FF-B5EF-711A-7CA842760BD1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10:13]";
	setAttr ".ix" -type "matrix" 0.97620518889699881 -0.21684886250698887 0 0 0.21684886250698887 0.97620518889699881 0 0
		 0 0 1 0 -2.749557328381786 5.0609456521584182 1.2345766931089628 1;
	setAttr ".wt" 0.52180379629135132;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace65";
	rename -uid "3C26FF20-410F-0357-D341-A2B7DC30D18F";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 0.97620518889699881 -0.21684886250698887 0 0 0.21684886250698887 0.97620518889699881 0 0
		 0 0 1 0 -2.749557328381786 5.0609456521584182 1.2345766931089628 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.4430001 4.7707143 1.2334656 ;
	setAttr ".rs" 47325;
	setAttr ".lt" -type "double3" -1.1657341758564144e-15 -4.2581478542304356e-16 0.33722701733607391 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4633743454234152 4.6789939322547767 0.89391248517362953 ;
	setAttr ".cbx" -type "double3" -1.4226258705753647 4.862434472944833 1.5730186312708128 ;
createNode polyExtrudeFace -n "polyExtrudeFace66";
	rename -uid "54A084BE-4552-F3CA-EA6E-D6AD08382C69";
	setAttr ".ics" -type "componentList" 2 "f[5]" "f[11]";
	setAttr ".ix" -type "matrix" 0.97620518889699881 -0.21684886250698887 0 0 0.21684886250698887 0.97620518889699881 0 0
		 0 0 1 0 -2.749557328381786 5.0609456521584182 1.2345766931089628 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.0561142 5.3511767 1.2345767 ;
	setAttr ".rs" 45787;
	setAttr ".lt" -type "double3" 3.0531133177191805e-16 2.2204460492503131e-16 0.19337894855052071 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.0764882172497714 5.2594566439336461 0.27155982547132851 ;
	setAttr ".cbx" -type "double3" -4.0357397165513227 5.442897300996429 2.1975936799558866 ;
createNode polyCylinder -n "polyCylinder9";
	rename -uid "64D733FF-40EB-E914-A85A-DAAC84EE20C2";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing25";
	rename -uid "664A51A4-46ED-9F9D-31E6-05B499E4356D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 0 0.40594056319669664 0 0 -0.40594056319669664 0 0 0
		 0 0 0.40594056319669664 0 4.0828007557273862 1.6405763726261979 0.52936861432918125 1;
	setAttr ".wt" 0.51484870910644531;
	setAttr ".re" 42;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyBevel3 -n "polyBevel9";
	rename -uid "D76C16FC-4AC9-D352-2039-10ACA899E160";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
	setAttr ".ix" -type "matrix" 0 0.40594056319669664 0 0 -0.40594056319669664 0 0 0
		 0 0 0.40594056319669664 0 4.0828007557273862 1.3718815208609136 1.4917462954030296 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.6;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCylinder -n "polyCylinder10";
	rename -uid "EBDA3B8A-4D6C-164F-3330-CCA6726CCC68";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBevel3 -n "polyBevel10";
	rename -uid "26121CEC-4789-7AA4-9AF3-DCB448189E95";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.7687434846019201 0 -3.0306412068211515 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak72";
	rename -uid "811217E1-4A8F-36E8-9F62-EEA1B587CF39";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  0.65519887 0.84747791 0.39389247
		 0.62125003 0.84981346 0.40326738 0.56648111 0.85121608 0.41542938 0.49382979 0.85027045
		 0.42655748 0.26900098 0.84922469 0.56252599 0.26637274 0.84849185 0.55563831 0.26235524
		 0.84711248 0.53608406 0.2580635 0.84557784 0.50655323 0.25479075 0.84448922 0.47088039
		 0.25354967 0.84430331 0.4333038 0.25472572 0.84514278 0.3977772 0.25794619 0.84675568
		 0.36748832 0.26220497 0.84862113 0.34465247 0.26620698 0.85015678 0.33057255 0.26883087
		 0.85093296 0.32586882 0.49444872 0.84405297 0.42517543 0.56763542 0.8396228 0.41285217
		 0.62274843 0.83476496 0.39992195 0.65617692 0.83765739 0.39170927 0.66700929 0.84320641
		 0.38967648 0.3908065 -0.1688354 0.042324483 0.53894877 -0.35760456 0.46922731 0.4845922
		 -0.35615486 0.48178232 0.51328349 -0.46310288 0.44734818 0.28968197 -0.47034812 0.58249879
		 0.28766897 -0.47757941 0.57413685 0.283557 -0.4788413 0.55453283 0.27915859 -0.48032814
		 0.52491885 0.27580675 -0.48144948 0.48916286 0.27454546 -0.48175204 0.45153156 0.27577236
		 -0.4811036 0.41599131 0.2791 -0.47973907 0.38572311 0.28348807 -0.47814918 0.36291975
		 0.28759947 -0.47688025 0.34885675 0.29027736 -0.47632813 0.34413204 0.26418865 -0.48338467
		 0.37515214 0.28107607 -0.48782045 0.27060899 0.35911924 -0.18607527 0.047635913 0.39184582
		 -0.17927504 0.040003538 0.40253085 -0.17342371 0.037931319 0.45657682 0.86558968
		 0.47041634 0.32586229 -0.46166694 0.49996334;
createNode polyCylinder -n "polyCylinder11";
	rename -uid "38B171AE-4206-273D-6A98-C4890A96052C";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing26";
	rename -uid "29364A01-4B8E-2623-368C-49B54AB5153F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.5097321184867525 0 10.274463690301143 1;
	setAttr ".wt" 0.081070989370346069;
	setAttr ".re" 41;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace67";
	rename -uid "C2CC09A7-42F3-D991-E97A-CA955D5A951E";
	setAttr ".ics" -type "componentList" 1 "f[0:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.5097321184867525 0 10.274463690301143 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.5097322 -0.87191957 10.274464 ;
	setAttr ".rs" 50500;
	setAttr ".lt" -type "double3" 1.4085954624931674e-15 -2.3239978916501467e-16 0.084556496184802321 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.5097323569053316 -1 9.2744632134639851 ;
	setAttr ".cbx" -type "double3" -1.5097321184867525 -0.74383914470672607 11.274463809510433 ;
createNode polyTweak -n "polyTweak73";
	rename -uid "3FFC6824-4D80-F881-59C9-8E8420D9B9CE";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[42:61]" -type "float3"  0 0.094018832 0 0 0.094018832
		 0 0 0.094018832 0 0 0.094018832 0 0 0.094018832 0 0 0.094018832 0 0 0.094018832 0
		 0 0.094018832 0 0 0.094018832 0 0 0.094018832 0 0 0.094018832 0 0 0.094018832 0 0
		 0.094018832 0 0 0.094018832 0 0 0.094018832 0 0 0.094018832 0 0 0.094018832 0 0 0.094018832
		 0 0 0.094018832 0 0 0.094018832 0;
createNode polyBevel3 -n "polyBevel11";
	rename -uid "3EF394E4-4C84-F9DE-0774-C8A13751E9A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[126]" "e[132]" "e[137]" "e[142]" "e[147]" "e[152]" "e[157]" "e[162]" "e[167]" "e[172]" "e[177]" "e[182]" "e[187]" "e[192]" "e[197]" "e[202]" "e[207]" "e[212]" "e[217]" "e[219]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.5097321184867525 0 10.274463690301143 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace68";
	rename -uid "E155780A-4350-EFE5-0A25-4E941F9C4B39";
	setAttr ".ics" -type "componentList" 1 "f[20:39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.5097321184867525 0 10.274463690301143 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.5097322 1 10.274464 ;
	setAttr ".rs" 61017;
	setAttr ".lt" -type "double3" 2.2204460492503131e-16 0 0.54557014772831813 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.7057404431098604 1 9.078455723305904 ;
	setAttr ".cbx" -type "double3" -1.3137240322822237 1 11.470471657296383 ;
createNode polyTweak -n "polyTweak74";
	rename -uid "1E6DECD6-4C34-55B5-0E13-F9A4DE393E0A";
	setAttr ".uopa" yes;
	setAttr -s 61 ".tk";
	setAttr ".tk[20]" -type "float3" 0.18641487 0 -0.060569849 ;
	setAttr ".tk[21]" -type "float3" 0.15857397 0 -0.11521072 ;
	setAttr ".tk[22]" -type "float3" 0.11521072 0 -0.15857387 ;
	setAttr ".tk[23]" -type "float3" 0.060569867 0 -0.1864149 ;
	setAttr ".tk[24]" -type "float3" 2.3365979e-08 0 -0.19600803 ;
	setAttr ".tk[25]" -type "float3" -0.060569823 0 -0.1864149 ;
	setAttr ".tk[26]" -type "float3" -0.11521066 0 -0.15857387 ;
	setAttr ".tk[27]" -type "float3" -0.15857384 0 -0.11521072 ;
	setAttr ".tk[28]" -type "float3" -0.18641475 0 -0.060569849 ;
	setAttr ".tk[29]" -type "float3" -0.19600804 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.18641475 0 0.060569849 ;
	setAttr ".tk[31]" -type "float3" -0.15857384 0 0.11521072 ;
	setAttr ".tk[32]" -type "float3" -0.11521066 0 0.15857387 ;
	setAttr ".tk[33]" -type "float3" -0.060569782 0 0.18641472 ;
	setAttr ".tk[34]" -type "float3" 2.3365979e-08 0 0.19600803 ;
	setAttr ".tk[35]" -type "float3" 0.060569823 0 0.18641472 ;
	setAttr ".tk[36]" -type "float3" 0.11521066 0 0.15857387 ;
	setAttr ".tk[37]" -type "float3" 0.15857384 0 0.11521072 ;
	setAttr ".tk[38]" -type "float3" 0.18641475 0 0.060569849 ;
	setAttr ".tk[39]" -type "float3" 0.19600804 0 0 ;
	setAttr ".tk[41]" -type "float3" 2.3365979e-08 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.10820333 0 -0.035157349 ;
	setAttr ".tk[63]" -type "float3" 0.092043228 0 -0.066873237 ;
	setAttr ".tk[64]" -type "float3" 0.066873357 0 -0.092043139 ;
	setAttr ".tk[65]" -type "float3" 0.035157401 0 -0.1082033 ;
	setAttr ".tk[66]" -type "float3" 2.5034502e-08 0 -0.11377159 ;
	setAttr ".tk[67]" -type "float3" -0.035157349 0 -0.1082033 ;
	setAttr ".tk[68]" -type "float3" -0.066873305 0 -0.092043139 ;
	setAttr ".tk[69]" -type "float3" -0.092043161 0 -0.066873237 ;
	setAttr ".tk[70]" -type "float3" -0.10820323 0 -0.035157349 ;
	setAttr ".tk[71]" -type "float3" -0.11377165 0 0 ;
	setAttr ".tk[72]" -type "float3" -0.10820323 0 0.035157349 ;
	setAttr ".tk[73]" -type "float3" -0.092043161 0 0.066873237 ;
	setAttr ".tk[74]" -type "float3" -0.066873282 0 0.092043139 ;
	setAttr ".tk[75]" -type "float3" -0.035157327 0 0.10820321 ;
	setAttr ".tk[76]" -type "float3" 2.5034502e-08 0 0.11377159 ;
	setAttr ".tk[77]" -type "float3" 0.035157382 0 0.10820321 ;
	setAttr ".tk[78]" -type "float3" 0.066873297 0 0.092043139 ;
	setAttr ".tk[79]" -type "float3" 0.092043184 0 0.066873237 ;
	setAttr ".tk[80]" -type "float3" 0.10820325 0 0.035157349 ;
	setAttr ".tk[81]" -type "float3" 0.11377165 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.092043228 0 -0.066873237 ;
	setAttr ".tk[84]" -type "float3" 0.1082033 0 -0.035157349 ;
	setAttr ".tk[87]" -type "float3" 0.066873357 0 -0.092043139 ;
	setAttr ".tk[89]" -type "float3" 0.035157401 0 -0.1082033 ;
	setAttr ".tk[91]" -type "float3" 2.5034502e-08 0 -0.11377159 ;
	setAttr ".tk[93]" -type "float3" -0.035157349 0 -0.1082033 ;
	setAttr ".tk[95]" -type "float3" -0.066873305 0 -0.092043139 ;
	setAttr ".tk[97]" -type "float3" -0.092043161 0 -0.066873237 ;
	setAttr ".tk[99]" -type "float3" -0.10820323 0 -0.035157349 ;
	setAttr ".tk[101]" -type "float3" -0.11377165 0 0 ;
	setAttr ".tk[103]" -type "float3" -0.10820323 0 0.035157349 ;
	setAttr ".tk[105]" -type "float3" -0.092043161 0 0.066873237 ;
	setAttr ".tk[107]" -type "float3" -0.066873282 0 0.092043139 ;
	setAttr ".tk[109]" -type "float3" -0.035157327 0 0.10820321 ;
	setAttr ".tk[111]" -type "float3" 2.5034502e-08 0 0.11377159 ;
	setAttr ".tk[113]" -type "float3" 0.035157382 0 0.10820321 ;
	setAttr ".tk[115]" -type "float3" 0.066873297 0 0.092043139 ;
	setAttr ".tk[117]" -type "float3" 0.092043184 0 0.066873237 ;
	setAttr ".tk[119]" -type "float3" 0.10820325 0 0.035157349 ;
	setAttr ".tk[121]" -type "float3" 0.11377165 0 0 ;
createNode polyBevel3 -n "polyBevel12";
	rename -uid "CCC0CCC4-4109-9E1E-90CC-2F8977F40836";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[242]" "e[246]" "e[249]" "e[252]" "e[255]" "e[258]" "e[261]" "e[264]" "e[267]" "e[270]" "e[273]" "e[276]" "e[279]" "e[282]" "e[285]" "e[288]" "e[291]" "e[294]" "e[297]" "e[299]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.5097321184867525 0 10.274463690301143 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.7;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak75";
	rename -uid "BA5D934A-44D8-9D26-DBDC-A0A6B0363CE6";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[121:141]" -type "float3"  -0.24942416 0.11176314 0.081042781
		 -0.21217287 0.11176314 0.15415256 -3.92102e-08 0.11176314 0 -0.15415259 0.11176314
		 0.21217278 -0.081042878 0.11176314 0.24942414 -3.92102e-08 0.11176314 0.26225981
		 0.081042744 0.11176314 0.24942414 0.15415247 0.11176314 0.21217278 0.21217269 0.11176314
		 0.15415256 0.24942395 0.11176314 0.081042781 0.2622599 0.11176314 0 0.24942395 0.11176314
		 -0.081042781 0.21217269 0.11176314 -0.15415256 0.15415247 0.11176314 -0.21217278
		 0.081042692 0.11176314 -0.24942394 -3.92102e-08 0.11176314 -0.26225981 -0.081042767
		 0.11176314 -0.24942394 -0.15415251 0.11176314 -0.21217278 -0.21217272 0.11176314
		 -0.15415256 -0.24942398 0.11176314 -0.081042781 -0.26225993 0.11176314 0;
createNode polyExtrudeFace -n "polyExtrudeFace69";
	rename -uid "0D20650E-49A1-5ED9-C96F-359FD3862864";
	setAttr ".ics" -type "componentList" 1 "f[122:141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.5097321184867525 0 10.274463690301143 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.5097322 1.6573333 10.274464 ;
	setAttr ".rs" 32847;
	setAttr ".lt" -type "double3" 0 6.7343208887665339e-16 0.1916168232944101 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.0689529093497896 1.6573332548141479 9.7152424226009479 ;
	setAttr ".cbx" -type "double3" -1.9505115660422945 1.6573332548141479 10.833684004327022 ;
createNode polyTweak -n "polyTweak76";
	rename -uid "44B7087A-45E6-8C67-AE11-2AA1130E67F4";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[121]" -type "float3" 3.472746e-08 0 1.3890984e-07 ;
	setAttr ".tk[124]" -type "float3" 0.11998326 0 -0.03898491 ;
	setAttr ".tk[125]" -type "float3" 0.10206391 0 -0.074153543 ;
	setAttr ".tk[128]" -type "float3" 0.074153647 0 -0.10206386 ;
	setAttr ".tk[131]" -type "float3" 0.038985148 0 -0.11998323 ;
	setAttr ".tk[134]" -type "float3" 3.472746e-08 0 -0.12615778 ;
	setAttr ".tk[137]" -type "float3" -0.03898501 0 -0.11998323 ;
	setAttr ".tk[140]" -type "float3" -0.074153513 0 -0.10206386 ;
	setAttr ".tk[143]" -type "float3" -0.1020637 0 -0.074153543 ;
	setAttr ".tk[146]" -type "float3" -0.11998313 0 -0.03898463 ;
	setAttr ".tk[149]" -type "float3" -0.12615775 0 1.3890984e-07 ;
	setAttr ".tk[152]" -type "float3" -0.1199832 0 0.03898491 ;
	setAttr ".tk[155]" -type "float3" -0.1020637 0 0.074153826 ;
	setAttr ".tk[158]" -type "float3" -0.074153714 0 0.10206386 ;
	setAttr ".tk[161]" -type "float3" -0.038984947 0 0.11998323 ;
	setAttr ".tk[164]" -type "float3" 3.472746e-08 0 0.12615778 ;
	setAttr ".tk[167]" -type "float3" 0.03898501 0 0.11998323 ;
	setAttr ".tk[170]" -type "float3" 0.074153647 0 0.10206386 ;
	setAttr ".tk[173]" -type "float3" 0.1020637 0 0.074153826 ;
	setAttr ".tk[176]" -type "float3" 0.11998313 0 0.03898491 ;
	setAttr ".tk[179]" -type "float3" 0.12615775 0 -1.3890983e-07 ;
createNode polyExtrudeFace -n "polyExtrudeFace70";
	rename -uid "7E2B894E-4596-40B4-3037-9B807C6E033F";
	setAttr ".ics" -type "componentList" 1 "f[122:141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.5097321184867525 0 10.274463690301143 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.5097322 1.84895 10.274464 ;
	setAttr ".rs" 52339;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.0302582892173433 1.8489500284194946 9.7539370427333942 ;
	setAttr ".cbx" -type "double3" -1.9892061861747408 1.8489500284194946 10.794989384194576 ;
createNode polyTweak -n "polyTweak77";
	rename -uid "51A58F3A-4151-C9B9-75BB-A186AE4FDAE6";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[181:201]" -type "float3"  -0.031304665 0 0.022744127
		 -0.036800824 0 0.011957332 -8.2485521e-09 0 -3.2994208e-08 -0.022744136 0 0.031304672
		 -0.01195739 0 0.036800783 -8.2485521e-09 0 0.03869465 0.011957341 0 0.036800783 0.022744088
		 0 0.031304672 0.031304598 0 0.022744127 0.036800791 0 0.011957199 0.038694642 0 -3.2994208e-08
		 0.036800809 0 -0.011957332 0.031304598 0 -0.022744196 0.022744155 0 -0.031304672
		 0.011957324 0 -0.036800846 -8.2485521e-09 0 -0.03869465 -0.011957341 0 -0.036800846
		 -0.022744136 0 -0.031304672 -0.031304598 0 -0.022744196 -0.036800791 0 -0.011957332
		 -0.038694642 0 3.2994208e-08;
createNode polyExtrudeFace -n "polyExtrudeFace71";
	rename -uid "0678BBF7-46A4-8002-FBDA-5F8852BB6191";
	setAttr ".ics" -type "componentList" 1 "f[122:141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -2.5097321184867525 0 10.274463690301143 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.5097322 1.84895 10.274464 ;
	setAttr ".rs" 55633;
	setAttr ".lt" -type "double3" 0 3.5527136788005009e-15 0.1791011019802311 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.0806823881858492 1.8489500284194946 9.7035127053463093 ;
	setAttr ".cbx" -type "double3" -1.9387820872062349 1.8489500284194946 10.845413721581661 ;
createNode polyTweak -n "polyTweak78";
	rename -uid "B44EFDD2-4A53-2954-2E06-46838C2D4896";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[201:221]" -type "float3"  0.040794011 -1.4901161e-08
		 -0.029638518 0.047956206 -1.4901161e-08 -0.015581958 1.1547974e-08 -1.4901161e-08
		 4.6191889e-08 0.029638533 -1.4901161e-08 -0.040794045 0.015582015 -1.4901161e-08
		 -0.047956195 1.1547974e-08 -1.4901161e-08 -0.050424129 -0.015581945 -1.4901161e-08
		 -0.047956195 -0.029638462 -1.4901161e-08 -0.040794045 -0.040793918 -1.4901161e-08
		 -0.029638518 -0.047956157 -1.4901161e-08 -0.015581773 -0.050424099 -1.4901161e-08
		 4.6191889e-08 -0.04795618 -1.4901161e-08 0.015581958 -0.040793918 -1.4901161e-08
		 0.029638611 -0.029638555 -1.4901161e-08 0.040794045 -0.015581923 -1.4901161e-08 0.047956284
		 1.1547974e-08 -1.4901161e-08 0.050424129 0.015581945 -1.4901161e-08 0.047956284 0.029638533
		 -1.4901161e-08 0.040794045 0.040793918 -1.4901161e-08 0.029638611 0.047956157 -1.4901161e-08
		 0.015581958 0.050424099 -1.4901161e-08 -4.6191897e-08;
createNode blinn -n "Blue";
	rename -uid "206F19EC-447C-6328-7096-E19E10FFB307";
	setAttr ".c" -type "float3" 0 0.096905611 0.704 ;
createNode shadingEngine -n "blinn2SG";
	rename -uid "D4F3259D-4650-FD75-E87C-2B82917F7124";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "FA6EB38E-4448-EFA0-367F-E1A61DC28AC7";
createNode polyCylinder -n "polyCylinder12";
	rename -uid "66ACDE45-47D7-5362-EA8F-878D3EB4A443";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace72";
	rename -uid "D5A12F51-47D4-09BD-D836-CF8DF203E21F";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.25299498161351924 0 0 0 0 0.25299498161351924 0 0
		 0 0 0.25299498161351924 0 -0.083344798831017419 4.2830083980221403 -3.6886519215103082 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.083344832 4.2954865 -3.688652 ;
	setAttr ".rs" 40130;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.28000956023474793 4.2954863775293326 -3.8853167281530667 ;
	setAttr ".cbx" -type "double3" 0.11331990225400906 4.2954863775293326 -3.4919871902659296 ;
createNode polyTweak -n "polyTweak79";
	rename -uid "3BA7F8C4-415D-8112-93D8-1C80F523F49F";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  -0.21175656 -2.3425706e-14
		 0.068803824 -0.18013084 -1.9650948e-14 0.13087268 -0.13087268 -1.4099832e-14 0.18013078
		 -0.06880381 -6.5503158e-15 0.21175644 2.1305858e-15 1.2212453e-15 0.22265381 0.06880381
		 9.2148511e-15 0.21175644 0.13087262 1.6431301e-14 0.18013072 0.18013066 2.220446e-14
		 0.13087259 0.21175638 2.5979219e-14 0.068803795 0.22265375 2.7200464e-14 4.3787859e-15
		 0.21175638 2.5979219e-14 -0.068803795 0.1801306 2.220446e-14 -0.13087265 0.13087265
		 1.6431301e-14 -0.18013062 0.068803795 9.2148511e-15 -0.21175632 6.6355996e-09 1.2212453e-15
		 -0.22265375 -0.068803757 -6.5503158e-15 -0.21175626 -0.13087261 -1.4099832e-14 -0.18013062
		 -0.18013065 -1.9650948e-14 -0.13087264 -0.21175626 -2.3425706e-14 -0.068803765 -0.22265375
		 -2.4980018e-14 1.3705231e-15 -0.21175656 -0.95067894 0.068803824 -0.18013084 -0.95067894
		 0.13087268 -0.13087268 -0.95067894 0.18013078 -0.06880381 -0.95067894 0.21175644
		 2.3095416e-15 -0.95067894 0.22265381 0.06880381 -0.95067894 0.21175644 0.13087262
		 -0.95067894 0.18013072 0.18013066 -0.95067894 0.13087259 0.21175638 -0.95067894 0.068803795
		 0.22265375 -0.95067894 7.9690833e-15 0.21175638 -0.95067894 -0.068803795 0.1801306
		 -0.95067894 -0.13087265 0.13087265 -0.95067894 -0.18013062 0.068803795 -0.95067894
		 -0.21175632 6.6355996e-09 -0.95067894 -0.22265375 -0.068803757 -0.95067894 -0.21175626
		 -0.13087261 -0.95067894 -0.18013062 -0.18013065 -0.95067894 -0.13087264 -0.21175626
		 -0.95067894 -0.068803765 -0.22265375 -0.95067894 4.9608196e-15 2.1305858e-15 1.2212453e-15
		 2.8746543e-15 2.3095416e-15 -0.95067894 6.4649523e-15;
createNode polyExtrudeFace -n "polyExtrudeFace73";
	rename -uid "E6CFBD26-402A-FE0B-9C30-FCA4B4503E81";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 0.25299498161351924 0 0 0 0 0.25299498161351924 0 0
		 0 0 0.25299498161351924 0 -0.083344798831017419 4.2830083980221403 -3.6886519215103082 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.083344847 4.2954865 -3.6886523 ;
	setAttr ".rs" 32948;
	setAttr ".lt" -type "double3" 0 4.4408920985006262e-16 0.20213250998350407 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.39682221960276393 4.2954866489635011 -4.0021296137162228 ;
	setAttr ".cbx" -type "double3" 0.23013253146267298 4.2954866489635011 -3.3751747118540258 ;
createNode polyTweak -n "polyTweak80";
	rename -uid "96A0FA66-490E-1857-6AB1-92AABD1AB861";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[41:61]" -type "float3"  0.43912128 -4.8572257e-17
		 -0.14267971 0.37353891 -4.8572257e-17 -0.27139243 8.8508187e-08 -4.8572257e-17 -3.042348e-15
		 0.27139193 -4.8572257e-17 -0.37353906 0.1426792 -4.8572257e-17 -0.43912119 8.8508187e-08
		 -4.8572257e-17 -0.4617193 -0.14267902 -4.8572257e-17 -0.43912119 -0.27139169 -4.8572257e-17
		 -0.37353846 -0.37353864 -4.8572257e-17 -0.27139243 -0.43912095 -4.8572257e-17 -0.14267915
		 -0.46171919 -4.8572257e-17 -3.042348e-15 -0.43912095 -4.8572257e-17 0.14267857 -0.37353864
		 -4.8572257e-17 0.2713913 -0.27139157 -4.8572257e-17 0.37353846 -0.14267902 -4.8572257e-17
		 0.43912119 7.0806543e-08 -4.8572257e-17 0.4617193 0.14267914 -4.8572257e-17 0.43912119
		 0.27139175 -4.8572257e-17 0.37353846 0.3735387 -4.8572257e-17 0.2713913 0.43912104
		 -4.8572257e-17 0.14267857 0.46171919 -4.8572257e-17 -3.042348e-15;
createNode groupId -n "groupId2";
	rename -uid "8D8A949C-4C03-D279-1837-9489A031105B";
	setAttr ".ihi" 0;
createNode polyBevel3 -n "polyBevel13";
	rename -uid "0A49D55B-4AB1-50EA-DD83-62ADD0982B6A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[122]" "e[126]" "e[129]" "e[132]" "e[135]" "e[138]" "e[141]" "e[144]" "e[147]" "e[150]" "e[153]" "e[156]" "e[159]" "e[162]" "e[165]" "e[168]" "e[171]" "e[174]" "e[177]" "e[179]";
	setAttr ".ix" -type "matrix" 0.25299498161351924 0 0 0 0 0.25299498161351924 0 0
		 0 0 0.25299498161351924 0 -0.083344798831017419 4.2830083980221403 -3.6886519215103082 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak81";
	rename -uid "1A3016C4-4D29-E1B9-30CC-3F89202C80BE";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[61:81]" -type "float3"  -0.21596861 -2.1094237e-15
		 0.070173353 -0.18371391 -2.1094237e-15 0.1334763 -3.8232962e-08 -2.1094237e-15 1.7477923e-07
		 -0.13347597 -2.1094237e-15 0.18371436 -0.070172474 -2.1094237e-15 0.21596885 -3.8232962e-08
		 -2.1094237e-15 0.22708279 0.070172399 -2.1094237e-15 0.21596885 0.13347584 -2.1094237e-15
		 0.18371399 0.18371379 -2.1094237e-15 0.1334763 0.21596842 -2.1094237e-15 0.070172116
		 0.2270827 -2.1094237e-15 1.7477923e-07 0.21596842 -2.1094237e-15 -0.070171416 0.18371379
		 -2.1094237e-15 -0.13347596 0.13347584 -2.1094237e-15 -0.18371399 0.070172399 -2.1094237e-15
		 -0.21596852 -2.7309259e-08 -2.1094237e-15 -0.22708279 -0.070172451 -2.1094237e-15
		 -0.21596849 -0.13347587 -2.1094237e-15 -0.18371399 -0.18371381 -2.1094237e-15 -0.13347472
		 -0.21596852 -2.1094237e-15 -0.070171937 -0.2270827 -2.1094237e-15 -5.2433774e-07;
createNode polyCylinder -n "polyCylinder13";
	rename -uid "766F5C2B-43AB-13D6-17D9-AFB81799F9B4";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "groupId3";
	rename -uid "39FBA9DD-4D5C-386B-A482-6BAC372066E9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "94F44D99-413C-8B63-09E4-4B9E3B1D02B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
	setAttr ".irc" -type "componentList" 1 "f[40:59]";
createNode groupId -n "groupId4";
	rename -uid "5D281B94-4701-2499-8F3D-939EF70237C0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "10D6927B-421A-E121-BF66-44B33ED78EA9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "7116248C-425A-6465-E88D-179141DE7C6A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[40:59]";
createNode groupId -n "groupId6";
	rename -uid "AFE4926D-4366-2159-E89B-E8A71F14C5C9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "BA926BA1-4C3F-D356-C052-09AC2661AD71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:19]" "f[40:179]";
	setAttr ".irc" -type "componentList" 1 "f[20:39]";
createNode groupId -n "groupId7";
	rename -uid "C865AF4F-4921-A552-4899-238D59826930";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "FDD3AFA0-43AD-6525-C251-24B8E1DC551D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "D805FA2B-482E-E08F-4BB4-BB9118F85F80";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[20:39]";
createNode polyCube -n "polyCube16";
	rename -uid "9864BBBB-410C-93B5-5246-4C9C1BB760D1";
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak82";
	rename -uid "4EBBE805-4E5B-CC20-AB5B-F996CB18F0A2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 0.39260709 0 0 0.39260709
		 0 0 -0.39260709 0 0 -0.39260709 0 -0.6275624 -0.39260709 -0.52372384 0 -0.39260709
		 0 -0.6275624 0.39260709 -0.52372384 0 0.39260709 0;
createNode polySplit -n "polySplit12";
	rename -uid "C59F2CD8-4681-8F8D-0792-18ABF8133F38";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "EA9FEE10-49EF-92F6-0A03-EA8153BF8AAF";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483645 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "785A971D-4DD1-57C5-0709-DFA1E17F3C28";
	setAttr -s 3 ".e[0:2]"  1 0.68266898 0;
	setAttr -s 3 ".d[0:2]"  -2147483645 -2147483635 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "BEC59821-43CA-6E09-C312-74909C82BE38";
	setAttr -s 3 ".e[0:2]"  1 0.31733099 0;
	setAttr -s 3 ".d[0:2]"  -2147483641 -2147483636 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace74";
	rename -uid "A0853B7B-4169-F5F8-9D3B-C892C071901F";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.5070181854759497 0 4.2334064184104641 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.1932373 0.10080388 3.9715445 ;
	setAttr ".rs" 63087;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.3794557817970556 -0.10739290714263916 3.2096825776969631 ;
	setAttr ".cbx" -type "double3" 9.0070181854759497 0.30900067090988159 4.7334064184104641 ;
createNode polyTweak -n "polyTweak83";
	rename -uid "1AD87988-4CD4-C008-8C01-45A2B75B17B0";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" -0.11172624 0.20160776 0 ;
	setAttr ".tk[2]" -type "float3" -0.11172624 0.20160776 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.11968235 0 ;
	setAttr ".tk[5]" -type "float3" -0.11172624 0.20160776 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.11968235 0 ;
	setAttr ".tk[7]" -type "float3" -0.11172624 0.20160776 0 ;
	setAttr ".tk[8]" -type "float3" -0.11172624 0.20160776 0 ;
	setAttr ".tk[9]" -type "float3" -0.11172624 0.20160776 0 ;
createNode blinn -n "blinn3";
	rename -uid "1652104E-4327-020C-6EB1-7F9F462368BD";
createNode shadingEngine -n "blinn3SG";
	rename -uid "E49A7D85-482F-951C-4782-43B2912CD575";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "769C7F19-42BE-C77E-4603-839A4952E5F6";
createNode groupId -n "groupId10";
	rename -uid "203D3A78-4951-55C0-3089-B9981F4E1EFE";
	setAttr ".ihi" 0;
createNode blinn -n "Plant";
	rename -uid "1D5EA643-4430-10D5-20D3-4F9C9E440CD5";
	setAttr ".c" -type "float3" 0.32585505 0.47299999 0.15135999 ;
createNode shadingEngine -n "blinn4SG";
	rename -uid "F10F26AD-46A7-E1EE-6F29-D78BA30B5CF8";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "391AD0DE-435A-88AD-633C-EABF54B86BB2";
createNode polyBevel3 -n "polyBevel14";
	rename -uid "E3B8C5B8-4FEB-70D7-39A8-13983CBBD859";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20:39]";
	setAttr ".ix" -type "matrix" 0.73416234025256044 0 0 0 0 0.56237059817510171 0 0
		 0 0 0.73416234025256044 0 2.9831384977143269 2.6809984788135313 0.98664198270118963 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode groupId -n "groupId11";
	rename -uid "93230B95-4BD1-97CA-68E9-EC936EA495F1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "3FCADFC3-475D-A08E-FC46-3999CBED1CBC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 3 "f[0:35]" "f[38:79]" "f[180:239]";
	setAttr ".irc" -type "componentList" 2 "f[36:37]" "f[80:179]";
createNode groupId -n "groupId12";
	rename -uid "C424B495-4C7D-E785-EBBF-62AA97D5C372";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "A3217A0E-4CD7-FC6E-23F8-2DACDA36CAE6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "2F43B464-4788-9E39-EFFF-268E723DABBE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[36:37]" "f[80:179]";
createNode polySplitRing -n "polySplitRing27";
	rename -uid "E1F5A89B-41BA-FD81-9778-A7954BC4D7BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".wt" 0.91453760862350464;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing28";
	rename -uid "A82961C4-42E0-C9BA-9143-F481A33A88E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".wt" 0.91037756204605103;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing29";
	rename -uid "49E2DC7F-4982-3359-E3A7-3CA3550323E2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".wt" 0.89965349435806274;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing30";
	rename -uid "FAC0581F-44CF-B606-BD49-D0B401453FDA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".wt" 0.89251899719238281;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing31";
	rename -uid "5519081D-4573-116C-2D13-B2B57D9B78A4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".wt" 0.88714140653610229;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing32";
	rename -uid "3609E229-42A0-4691-0B7C-C89CB8AE5223";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".wt" 0.83843863010406494;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing33";
	rename -uid "FE5FEE86-4651-D522-AA5C-EDA5A0ADB8D0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".wt" 0.82179230451583862;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing34";
	rename -uid "8704DD1C-4EC2-F5A5-8D21-7BBE4BA483EF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".wt" 0.7727963924407959;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace75";
	rename -uid "A19E37E9-4106-F707-6360-CAAFC3EB9BBC";
	setAttr ".ics" -type "componentList" 1 "f[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.6581504 1.8169169 -1.7628314 ;
	setAttr ".rs" 46531;
	setAttr ".lt" -type "double3" 0 -1.162327417311081e-17 0.094911236294443313 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.3163008689880371 1.71148380962389 -1.762831449508667 ;
	setAttr ".cbx" -type "double3" 4 1.9223499754047191 -1.762831449508667 ;
createNode polyTweak -n "polyTweak84";
	rename -uid "0BD5F419-4438-8EA1-FCA6-9498A435E649";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[28]" -type "float3" 0.020544857 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.020544857 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.020544857 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.020544857 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.047736786 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.047736786 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.047736786 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.047736786 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.15042607 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.15042607 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.15042607 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.15042607 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace76";
	rename -uid "2D917424-4C00-22A7-AEE3-5D946894950E";
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9884486 1.8169169 -1.7628314 ;
	setAttr ".rs" 59479;
	setAttr ".lt" -type "double3" 4.4408920985006262e-16 -2.3423279879466013e-16 0.099524155684028281 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.6605961322784424 1.7114837421629292 -1.762831449508667 ;
	setAttr ".cbx" -type "double3" 3.3163008689880371 1.9223500353700176 -1.762831449508667 ;
createNode polyTweak -n "polyTweak85";
	rename -uid "B1D232F4-46D9-35C3-9131-CBB1BA6028CB";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[40]" -type "float3" 0.098503806 -5.7731597e-15 0 ;
	setAttr ".tk[41]" -type "float3" -0.098503806 -5.7731597e-15 0 ;
	setAttr ".tk[42]" -type "float3" -0.098503806 -5.7731597e-15 0 ;
	setAttr ".tk[43]" -type "float3" 0.098503806 -5.7731597e-15 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace77";
	rename -uid "14AE9E82-4ACC-6542-3553-45A0D60B90B9";
	setAttr ".ics" -type "componentList" 1 "f[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3264122 1.8169169 -1.7628314 ;
	setAttr ".rs" 56526;
	setAttr ".lt" -type "double3" 0 -9.8589835952341505e-18 0.080504710436497762 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.9922285079956055 1.7114837421629292 -1.762831449508667 ;
	setAttr ".cbx" -type "double3" 2.6605961322784424 1.9223501553006146 -1.762831449508667 ;
createNode polyTweak -n "polyTweak86";
	rename -uid "E03B5917-4DA2-E3FF-E6D0-BDACE59D0809";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[44]" -type "float3" 0.071584776 -6.2172489e-15 0 ;
	setAttr ".tk[45]" -type "float3" -0.071584776 -6.2172489e-15 0 ;
	setAttr ".tk[46]" -type "float3" -0.071584776 -6.2172489e-15 0 ;
	setAttr ".tk[47]" -type "float3" 0.071584776 -6.2172489e-15 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace78";
	rename -uid "872AAC70-4B02-2A1C-4C9C-F8AF54D4B724";
	setAttr ".ics" -type "componentList" 1 "f[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.6702031 1.8169171 -1.7628314 ;
	setAttr ".rs" 37934;
	setAttr ".lt" -type "double3" 0 2.0816468461092802e-16 0.11333815042644968 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3481777906417847 1.7114837421629292 -1.762831449508667 ;
	setAttr ".cbx" -type "double3" 1.9922285079956055 1.9223502752312116 -1.762831449508667 ;
createNode polyTweak -n "polyTweak87";
	rename -uid "F40E552E-4315-2967-B92A-32A11353697A";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[48]" -type "float3" 0.092010222 -1.0658141e-14 0 ;
	setAttr ".tk[49]" -type "float3" -0.092010222 -1.0658141e-14 0 ;
	setAttr ".tk[50]" -type "float3" -0.092010222 -1.0658141e-14 0 ;
	setAttr ".tk[51]" -type "float3" 0.092010222 -1.0658141e-14 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace79";
	rename -uid "F3624CB5-4E50-CDE2-BB40-1EA0991746BB";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0463839 1.8169171 -1.7628314 ;
	setAttr ".rs" 35513;
	setAttr ".lt" -type "double3" 0 -1.6233029558473791e-17 0.13255274557346541 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.74458992481231689 1.7114837421629292 -1.762831449508667 ;
	setAttr ".cbx" -type "double3" 1.3481777906417847 1.9223503951618086 -1.762831449508667 ;
createNode polyTweak -n "polyTweak88";
	rename -uid "45032967-4C1A-57FF-CF1C-98B163BC3D40";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[52]" -type "float3" 0.097274378 -9.7699626e-15 0 ;
	setAttr ".tk[53]" -type "float3" -0.097274393 -9.7699626e-15 0 ;
	setAttr ".tk[54]" -type "float3" -0.097274393 -9.7699626e-15 0 ;
	setAttr ".tk[55]" -type "float3" 0.097274378 -9.7699626e-15 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace80";
	rename -uid "B39EFD60-43F5-A0EC-7149-E088EF50BA7F";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.37159115 1.8169172 -1.7628314 ;
	setAttr ".rs" 45578;
	setAttr ".lt" -type "double3" 0 -1.6012812080589067e-17 0.1307545334029192 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.0014076530933380127 1.7114837421629292 -1.762831449508667 ;
	setAttr ".cbx" -type "double3" 0.74458992481231689 1.9223505150924058 -1.762831449508667 ;
createNode polyTweak -n "polyTweak89";
	rename -uid "F096F68F-41C4-944D-4719-82B5AC4DC306";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[56]" -type "float3" 0.099475011 -1.110223e-14 0 ;
	setAttr ".tk[57]" -type "float3" -0.099475026 -1.110223e-14 0 ;
	setAttr ".tk[58]" -type "float3" -0.099475026 -1.110223e-14 0 ;
	setAttr ".tk[59]" -type "float3" 0.099475011 -1.110223e-14 0 ;
createNode polyBevel3 -n "polyBevel15";
	rename -uid "B9E3A006-4BB0-EAA5-3E30-99BFEA457169";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[80]" "e[83]" "e[88]" "e[91]" "e[96]" "e[99]" "e[104]" "e[107]" "e[112]" "e[115]" "e[120]" "e[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak90";
	rename -uid "2426F778-4C46-9DC4-D713-4FAC0C4F8502";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[40:63]" -type "float3"  0 -1.2878587e-14 -0.011617167
		 0 -1.2878587e-14 -0.011617167 0 -1.2878587e-14 -0.011617167 0 -1.2878587e-14 -0.011617167
		 0 -1.2878587e-14 -0.0070043029 0 -1.2878587e-14 -0.0070043029 0 -1.2878587e-14 -0.0070043029
		 0 -1.2878587e-14 -0.0070043029 0 -1.2878587e-14 -0.026023708 0 -1.2878587e-14 -0.026023708
		 0 -1.2878587e-14 -0.026023708 0 -1.2878587e-14 -0.026023708 0 -1.2878587e-14 0.0068095429
		 0 -1.2878587e-14 0.0068095429 0 -1.2878587e-14 0.0068095429 0 -1.2878587e-14 0.0068095429
		 0 -1.2878587e-14 0.026023708 0 -1.2878587e-14 0.026023708 0 -1.2878587e-14 0.026023708
		 0 -1.2878587e-14 0.026023708 0.069581874 -2.0428104e-14 0.024225565 -0.069581874
		 -2.0428104e-14 0.024225565 -0.069581874 -2.0428104e-14 0.024225565 0.069581874 -2.0428104e-14
		 0.024225565;
createNode polyExtrudeFace -n "polyExtrudeFace81";
	rename -uid "ECFFE9DB-4CBF-A409-79C9-C78DBFFAFB06";
	setAttr ".ics" -type "componentList" 1 "f[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.34227106 1.8169173 -1.7628314 ;
	setAttr ".rs" 54585;
	setAttr ".lt" -type "double3" 0 -9.3266243820972178e-18 0.076157667570688758 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.68313443660736084 1.7114837421629292 -1.762831449508667 ;
	setAttr ".cbx" -type "double3" -0.0014076530933380127 1.9223508748841969 -1.762831449508667 ;
createNode polyBevel3 -n "polyBevel16";
	rename -uid "82DCF476-413E-3C84-3F3B-25BE70025CE7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[164]" "e[167]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.5030253828630874 0 0 0 0 1 0 0 1.7090892078625437 -2.5 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak91";
	rename -uid "31B3B700-4368-5EFB-B5F9-209455C2160F";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[88]" -type "float3" 0.054920811 -6.6613381e-15 -0.030371308 ;
	setAttr ".tk[89]" -type "float3" -0.054920815 -6.6613381e-15 -0.030371308 ;
	setAttr ".tk[90]" -type "float3" -0.054920815 -6.6613381e-15 -0.030371308 ;
	setAttr ".tk[91]" -type "float3" 0.054920811 -6.6613381e-15 -0.030371308 ;
createNode polyExtrudeFace -n "polyExtrudeFace82";
	rename -uid "EF471425-4C61-F12C-4312-CE9A0CA6DF69";
	setAttr ".ics" -type "componentList" 5 "f[4]" "f[18]" "f[41]" "f[127:128]" "f[183]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.4948802 1.7592926 -3.652086 ;
	setAttr ".rs" 64873;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.4562659808560792 1.0956840379290083 -3.8472055701862993 ;
	setAttr ".cbx" -type "double3" 2.5334943027872314 2.4229012373575309 -3.4569666447381571 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak92";
	rename -uid "54E34FD0-46CE-D5D1-5945-F084A2D905E2";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[44]" -type "float3" 0.16774721 -8.3266727e-15 0.29191238 ;
	setAttr ".tk[46]" -type "float3" 0.16774721 -8.3266727e-15 -0.29191238 ;
	setAttr ".tk[222]" -type "float3" 0.16774721 -4.3853809e-15 -0.29191238 ;
	setAttr ".tk[223]" -type "float3" 0.16774721 -4.3853809e-15 0.29191238 ;
	setAttr ".tk[224]" -type "float3" 0 -0.053840935 0.044170246 ;
	setAttr ".tk[225]" -type "float3" 0 -0.053840935 -0.044170238 ;
	setAttr ".tk[226]" -type "float3" 0 -0.04338032 0.075579546 ;
	setAttr ".tk[227]" -type "float3" 8.8817842e-16 -0.04338032 -0.066471972 ;
	setAttr ".tk[228]" -type "float3" 0.18455267 -0.056985557 0.075579546 ;
	setAttr ".tk[229]" -type "float3" 0.18455267 -0.056985557 -0.066471972 ;
createNode groupParts -n "groupParts7";
	rename -uid "20CCF256-4DC6-5211-9EB7-7D866C5C09DD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0:19]" "f[22:59]" "f[61:211]" "f[213:217]" "f[219:235]";
	setAttr ".irc" -type "componentList" 4 "f[20:21]" "f[60]" "f[212]" "f[218]";
	setAttr ".gi" 112;
createNode groupParts -n "groupParts8";
	rename -uid "CD583B11-4EAB-B679-046E-69849227B78B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[20:21]" "f[60]" "f[212]" "f[218]";
	setAttr ".gi" 114;
createNode polyExtrudeFace -n "polyExtrudeFace83";
	rename -uid "C24CFDB6-4AA0-71E9-F82D-DD90EE344645";
	setAttr ".ics" -type "componentList" 5 "f[4:5]" "f[32]" "f[34]" "f[44]" "f[46]";
	setAttr ".ix" -type "matrix" 0.55847100476428435 0 -0.0077114639594590365 0 0 0.55852424283895441 0 0
		 0.0077114639594590365 0 0.55847100476428435 0 -1.1556999437360682 2.5789360605015639 -4.7338628561868816 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1557 2.6093628 -4.7338629 ;
	setAttr ".rs" 42471;
	setAttr ".lt" -type "double3" 1.333677092374419e-15 1.8156781554936203e-16 0.036259565450102241 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4736883031554935 2.5558819933140065 -4.7782051483921339 ;
	setAttr ".cbx" -type "double3" -0.83771158431664294 2.6628439012267902 -4.6895205639816293 ;
createNode polyExtrudeFace -n "polyExtrudeFace84";
	rename -uid "579BD811-4501-BD60-B71F-D2B92AF7BDF7";
	setAttr ".ics" -type "componentList" 2 "f[23]" "f[29]";
	setAttr ".ix" -type "matrix" 0.55847100476428435 0 -0.0077114639594590365 0 0 0.55852424283895441 0 0
		 0.0077114639594590365 0 0.55847100476428435 0 -1.1556999437360682 2.5789360605015639 -4.7338628561868816 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.1605299 2.4672406 -4.7337961 ;
	setAttr ".rs" 36819;
	setAttr ".lt" -type "double3" 1.0288536515801194e-15 9.1562837438804223e-17 0.018285337006804448 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3577627957362375 2.4090259650738619 -4.7667926296305421 ;
	setAttr ".cbx" -type "double3" -0.96329684802767934 2.5254553146116665 -4.7007986339633119 ;
createNode polyTweak -n "polyTweak93";
	rename -uid "57DA47EE-4B26-B215-E338-BB93B3B9F07A";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[56]" -type "float3" 0.040720414 0.087352514 0.016987307 ;
	setAttr ".tk[57]" -type "float3" 0.040720414 0.087352514 -0.016120454 ;
	setAttr ".tk[58]" -type "float3" 0.021818828 0.027531656 0.016987307 ;
	setAttr ".tk[59]" -type "float3" 0.021818828 0.027531656 -0.016120454 ;
	setAttr ".tk[60]" -type "float3" 0.028120644 0.047476284 -0.021412285 ;
	setAttr ".tk[61]" -type "float3" 0.039648786 0.083960973 -0.021412285 ;
	setAttr ".tk[62]" -type "float3" 0.039648786 0.083960973 0.022279141 ;
	setAttr ".tk[63]" -type "float3" 0.028120644 0.047476284 0.022279141 ;
	setAttr ".tk[64]" -type "float3" -0.040720534 0.087352507 0.016987471 ;
	setAttr ".tk[65]" -type "float3" -0.040720355 0.087352544 -0.016120614 ;
	setAttr ".tk[66]" -type "float3" -0.021818768 0.02753167 -0.016120614 ;
	setAttr ".tk[67]" -type "float3" -0.021818828 0.02753167 0.016987471 ;
	setAttr ".tk[68]" -type "float3" -0.039648786 0.083960988 -0.021412427 ;
	setAttr ".tk[69]" -type "float3" -0.028120644 0.047476299 -0.021412427 ;
	setAttr ".tk[70]" -type "float3" -0.028120644 0.047476299 0.022279283 ;
	setAttr ".tk[71]" -type "float3" -0.039648786 0.083960988 0.022279283 ;
createNode polyExtrudeFace -n "polyExtrudeFace85";
	rename -uid "C305395D-453C-20CE-5503-32ACEFE32981";
	setAttr ".ics" -type "componentList" 2 "f[25]" "f[27]";
	setAttr ".ix" -type "matrix" 0.55847100476428435 0 -0.0077114639594590365 0 0 0.55852424283895441 0 0
		 0.0077114639594590365 0 0.55847100476428435 0 -1.1556999437360682 2.5789360605015639 -4.7338628561868816 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.15983 2.4672406 -4.7338052 ;
	setAttr ".rs" 38072;
	setAttr ".lt" -type "double3" 6.9144993550263045e-17 -4.4408920985006262e-16 0.015303284031953185 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2948485532187286 2.4090259650738619 -4.7659437602599697 ;
	setAttr ".cbx" -type "double3" -1.0248114857557928 2.5254553146116665 -4.7016668302374995 ;
createNode polyTweak -n "polyTweak94";
	rename -uid "9F56021A-4098-FFD6-3AA4-DCA5454DB1C4";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[72]" -type "float3" 0 0.0092648342 0.017622262 ;
	setAttr ".tk[73]" -type "float3" 0 0.0092648342 -0.017622262 ;
	setAttr ".tk[74]" -type "float3" 0 -0.0092648566 -0.017622262 ;
	setAttr ".tk[75]" -type "float3" 0 -0.0092648566 0.017622262 ;
	setAttr ".tk[76]" -type "float3" 0 0.0092648342 0.017622583 ;
	setAttr ".tk[77]" -type "float3" 0 0.0092648342 -0.017622583 ;
	setAttr ".tk[78]" -type "float3" 0 -0.0092648566 0.017622583 ;
	setAttr ".tk[79]" -type "float3" 0 -0.0092648566 -0.017622583 ;
createNode polyCube -n "polyCube17";
	rename -uid "E0B07578-45EF-F51A-083E-2C960DA67327";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace86";
	rename -uid "B1551449-43B9-03EE-291C-AF89935F58CD";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.70081173613114323 0 0 0 0 0.70081173613114323 0 0
		 0 0 0.70081173613114323 0 0.33589679544628748 2.544361229782734 -3.5542268079122978 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.41633859 2.534903 -3.5542269 ;
	setAttr ".rs" 43545;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.27150034864703365 2.2617648434635771 -4.3893709411910056 ;
	setAttr ".cbx" -type "double3" 0.56117685994206756 2.8080410389779424 -2.7190826746335901 ;
createNode polyTweak -n "polyTweak95";
	rename -uid "9E25D9F2-475E-F448-A1F8-3A96741703CE";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.8214559 0.09675847 0.69168109
		 0.13717628 0.09675847 0.44208986 0.40811163 -0.12375085 0.1244008 -0.2833457 -0.069765985
		 -0.039125964 0.40811163 -0.12375085 -0.1244008 -0.2833457 -0.069765985 0.039125964
		 0.8214559 0.09675847 -0.69168109 0.13717628 0.09675847 -0.44208986;
createNode polyExtrudeFace -n "polyExtrudeFace87";
	rename -uid "0114949C-40F5-4AA1-3965-119044E55D1A";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.70081173613114323 0 0 0 0 0.70081173613114323 0 0
		 0 0 0.70081173613114323 0 0.33589679544628748 2.544361229782734 -3.5542268079122978 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.67180711 2.2617648 -3.5542269 ;
	setAttr ".rs" 35649;
	setAttr ".lt" -type "double3" 0 0 0.093288685124713222 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.56117683905625027 2.2617647599203079 -4.3893707741044672 ;
	setAttr ".cbx" -type "double3" 0.78243740712812504 2.2617647599203079 -2.7190828417201285 ;
createNode polyBevel3 -n "polyBevel17";
	rename -uid "1666E240-43F6-9371-0FFD-50BD1F1766FD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[5]" "e[9]" "e[21]" "e[23]";
	setAttr ".ix" -type "matrix" 0.70081173613114323 0 0 0 0 0.70081173613114323 0 0
		 0 0 0.70081173613114323 0 0.33589679544628748 2.544361229782734 -3.5542268079122978 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel18";
	rename -uid "0DFCCAE9-4DA4-EE63-18AF-4B9B1D33C826";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0:1]" "e[19:21]";
	setAttr ".ix" -type "matrix" 0.70081173613114323 0 0 0 0 0.70081173613114323 0 0
		 0 0 0.70081173613114323 0 0.33589679544628748 2.544361229782734 -3.5542268079122978 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak96";
	rename -uid "5CF80E4A-4ED0-EC3E-E61F-B394EF896ECE";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[1]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[2]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.15809669 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.019964766 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.019964766 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.15809669 0 ;
createNode polyBevel3 -n "polyBevel19";
	rename -uid "734D4C9B-4591-1481-641D-7DB22F6A9CDA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[14]" "e[16]" "e[26]" "e[28]";
	setAttr ".ix" -type "matrix" 0.70081173613114323 0 0 0 0 0.70081173613114323 0 0
		 0 0 0.70081173613114323 0 0.33589679544628748 2.544361229782734 -3.5542268079122978 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel20";
	rename -uid "F12A70F4-49FC-3901-6DF2-0291C340B0A0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[14:16]" "e[23:26]";
	setAttr ".ix" -type "matrix" 0.70081173613114323 0 0 0 0 0.70081173613114323 0 0
		 0 0 0.70081173613114323 0 0.33589679544628748 2.544361229782734 -3.5542268079122978 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode blinn -n "blinn5";
	rename -uid "334CB587-4471-1F4E-F6DF-2B81CE26A5E4";
createNode shadingEngine -n "blinn5SG";
	rename -uid "01EFA924-4B07-5BFA-29FD-1EBF9AA8B088";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "13EEF6E9-4179-1AEB-036B-13BB973ED564";
createNode blinn -n "blinn6";
	rename -uid "1F854B91-48E5-FB1F-D1C3-B7A45FFE1EA7";
	setAttr ".c" -type "float3" 0.112036 0.12222821 0.148 ;
	setAttr ".it" -type "float3" 0.51428574 0.51428574 0.51428574 ;
createNode shadingEngine -n "blinn6SG";
	rename -uid "FD5B7496-47F3-C335-C5A6-19BCA0AF19E9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "86695049-44C6-658D-5D51-E7A7536B442E";
createNode polyTweak -n "polyTweak97";
	rename -uid "43951402-418A-2D61-D7E8-489A117ADB7F";
	setAttr ".uopa" yes;
	setAttr -s 53 ".tk";
	setAttr ".tk[18]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[19]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[20]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[21]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[22]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[23]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[40]" -type "float3" -1.9984014e-15 -9.9920072e-16 0.097992375 ;
	setAttr ".tk[41]" -type "float3" 1.9984014e-15 -9.9920072e-16 0.097992375 ;
	setAttr ".tk[48]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[49]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[50]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[51]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[54]" -type "float3" -1.9984014e-15 -9.9920072e-16 -0.097992383 ;
	setAttr ".tk[56]" -type "float3" 1.9984014e-15 -9.9920072e-16 -0.097992375 ;
	setAttr ".tk[70]" -type "float3" -1.9984014e-15 -9.9920072e-16 0.097992375 ;
	setAttr ".tk[79]" -type "float3" -1.9984014e-15 -9.9920072e-16 -0.097992383 ;
	setAttr ".tk[96]" -type "float3" 1.9984014e-15 -9.9920072e-16 0.097992375 ;
	setAttr ".tk[99]" -type "float3" 1.9984014e-15 -9.9920072e-16 -0.097992375 ;
	setAttr ".tk[132]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[133]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[187]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[188]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[189]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[190]" -type "float3" -5.9604645e-08 0 0 ;
	setAttr ".tk[215]" -type "float3" -2.6645353e-14 -5.8183946e-07 6.6613381e-14 ;
	setAttr ".tk[216]" -type "float3" -2.6645353e-14 -5.8183946e-07 8.5598195e-14 ;
	setAttr ".tk[217]" -type "float3" -2.6645353e-14 4.6330274e-07 8.6597396e-14 ;
	setAttr ".tk[218]" -type "float3" -2.6645353e-14 4.6330274e-07 9.6533892e-14 ;
	setAttr ".tk[221]" -type "float3" -2.6645353e-14 4.6330274e-07 1.0669243e-13 ;
	setAttr ".tk[222]" -type "float3" -2.6645353e-14 4.6330274e-07 1.0932921e-13 ;
	setAttr ".tk[223]" -type "float3" -1.3322676e-14 4.6330274e-07 3.9968029e-14 ;
	setAttr ".tk[224]" -type "float3" -1.3322676e-14 4.6330274e-07 6.6391337e-14 ;
	setAttr ".tk[225]" -type "float3" -2.6645353e-14 5.818394e-07 5.3290705e-14 ;
	setAttr ".tk[226]" -type "float3" -2.6645353e-14 5.818394e-07 7.9936058e-14 ;
	setAttr ".tk[227]" -type "float3" -2.6645353e-14 -5.8183946e-07 6.6613381e-14 ;
	setAttr ".tk[228]" -type "float3" -2.6645353e-14 -5.8183946e-07 8.5598195e-14 ;
	setAttr ".tk[229]" -type "float3" 0.00045347214 -0.0019831557 0.0022915571 ;
	setAttr ".tk[230]" -type "float3" 0.00045347214 -0.0037739337 0.0022915571 ;
	setAttr ".tk[231]" -type "float3" 0.00045347214 -0.0037739337 -0.00025316284 ;
	setAttr ".tk[232]" -type "float3" 0.00045347214 -0.0019831557 -0.00025316284 ;
	setAttr ".tk[233]" -type "float3" -0.00045353174 -0.0037739337 -0.0022915695 ;
	setAttr ".tk[234]" -type "float3" -0.00045353174 -0.0019831557 -0.0022915695 ;
	setAttr ".tk[235]" -type "float3" 0.00045347214 -0.00060512498 0.0022915571 ;
	setAttr ".tk[236]" -type "float3" 0.00045347214 -0.00060512498 -0.00025316284 ;
	setAttr ".tk[237]" -type "float3" 0.00045347214 0.0057120733 -0.00025316284 ;
	setAttr ".tk[238]" -type "float3" 0.00045347214 0.0057120733 0.0022915571 ;
	setAttr ".tk[239]" -type "float3" 0.00045347214 -0.0057120733 0.0022915571 ;
	setAttr ".tk[240]" -type "float3" 0.00045347214 -0.0057120733 -0.00025316284 ;
	setAttr ".tk[241]" -type "float3" -0.00045353174 -0.0057120733 -0.0022915695 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "F5A660BA-463A-B686-B76C-3B96EBB4F5D8";
	setAttr ".dc" -type "componentList" 10 "f[5]" "f[23]" "f[30]" "f[148:161]" "f[165:167]" "f[171]" "f[173]" "f[193:197]" "f[199:206]" "f[208:209]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "DB6F5A45-4ACC-2678-125F-6881BAEA1D3F";
	setAttr ".dc" -type "componentList" 1 "f[151]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "DC498238-43FF-A23F-136E-4098D41CB3B9";
	setAttr ".dc" -type "componentList" 1 "f[171]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "280317A7-4545-3313-7616-689C6F3B655A";
	setAttr ".dc" -type "componentList" 1 "f[139]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "9FF01BA7-4EB6-6CFD-3231-B2A8AFA07692";
	setAttr ".dc" -type "componentList" 1 "f[142]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "55076F10-4061-BCE4-79E5-AC87F5854377";
	setAttr ".dc" -type "componentList" 1 "f[139]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "4D188F2E-4EF7-572B-D86E-1F84F8A3A112";
	setAttr ".dc" -type "componentList" 1 "f[140]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "1510C6CE-4824-A290-8FF7-5BB80C81F550";
	setAttr ".dc" -type "componentList" 1 "f[144]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "F13837C8-4F13-1BD7-D607-C5847DFA8955";
	setAttr ".dc" -type "componentList" 1 "f[145]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "76FA37CE-4361-6EBF-C06B-DC8F324DACCA";
	setAttr ".dc" -type "componentList" 1 "f[136]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "9F2967A9-41BF-350F-5C24-57B7B39C3FC8";
	setAttr ".dc" -type "componentList" 1 "f[137]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "C9F3FC1B-4422-176D-D04A-2EADC149CA24";
	setAttr ".dc" -type "componentList" 1 "f[139]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "C83B6C85-485F-6BFA-B4E1-C3929993586A";
	setAttr ".dc" -type "componentList" 1 "f[140]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "10FA57D2-405A-996A-3F26-E8999FDB4006";
	setAttr ".dc" -type "componentList" 1 "f[160]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "EC10DDF1-420D-9AE9-F06D-C1B52B5A368B";
	setAttr ".dc" -type "componentList" 1 "f[135]";
createNode deleteComponent -n "deleteComponent16";
	rename -uid "E79F7471-4D52-5556-F101-879BD398FE56";
	setAttr ".dc" -type "componentList" 1 "f[140]";
createNode deleteComponent -n "deleteComponent17";
	rename -uid "B0D379B9-4891-F77F-CC4F-829196263BD6";
	setAttr ".dc" -type "componentList" 1 "f[137]";
createNode deleteComponent -n "deleteComponent18";
	rename -uid "13155FCE-472D-03D5-2608-BFACEAC87E51";
	setAttr ".dc" -type "componentList" 1 "f[134]";
createNode deleteComponent -n "deleteComponent19";
	rename -uid "57F13958-491F-1942-A033-81BF7DDC681C";
	setAttr ".dc" -type "componentList" 1 "f[155]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "F1E13D00-44EE-4F7D-849F-2ABA5BF30D2D";
	setAttr ".ics" -type "componentList" 6 "e[6]" "e[42]" "e[236]" "e[268:270]" "e[277]" "e[315]";
createNode groupParts -n "groupParts9";
	rename -uid "06D83BA0-4D74-F583-514B-9082651D2A54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0:18]" "f[21:56]" "f[58:156]" "f[158:162]" "f[164:180]";
	setAttr ".gi" 115;
createNode groupParts -n "groupParts10";
	rename -uid "D61DC2A3-4D87-236D-8CC6-919317C6709C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[19:20]" "f[57]" "f[157]" "f[163]";
	setAttr ".gi" 116;
createNode groupParts -n "groupParts11";
	rename -uid "45B91DB1-4F49-5961-DE91-9086974649DB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[181]";
	setAttr ".gi" 117;
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "1D003435-4C8D-9CEA-B234-EDA67D1CCCB6";
	setAttr ".ics" -type "componentList" 6 "e[7]" "e[50]" "e[226]" "e[229]" "e[280]" "e[283]";
createNode groupParts -n "groupParts12";
	rename -uid "753D333E-4AA5-1BE9-AE00-579E894D11B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0:18]" "f[21:56]" "f[58:156]" "f[158:162]" "f[164:180]";
	setAttr ".gi" 121;
createNode groupParts -n "groupParts13";
	rename -uid "18913529-46B7-4C68-D615-D786A828CEEF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[19:20]" "f[57]" "f[157]" "f[163]";
	setAttr ".gi" 122;
createNode groupParts -n "groupParts14";
	rename -uid "ECB28A97-4F65-DD61-1D28-85852246659C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[181:182]" "f[183]";
	setAttr ".gi" 123;
createNode deleteComponent -n "deleteComponent20";
	rename -uid "567F1BD5-4D39-1F4A-206A-9CA81108AB86";
	setAttr ".dc" -type "componentList" 1 "f[98]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "50402AF9-4675-FB0B-74F0-73B1463482AD";
	setAttr ".dc" -type "componentList" 1 "f[59]";
createNode deleteComponent -n "deleteComponent22";
	rename -uid "1A7F9D46-4A99-F64A-396B-498EC56895E5";
	setAttr ".dc" -type "componentList" 1 "f[104]";
createNode deleteComponent -n "deleteComponent23";
	rename -uid "BCF86B87-40EB-EEDD-5B14-9E91B401715D";
	setAttr ".dc" -type "componentList" 1 "f[103]";
createNode deleteComponent -n "deleteComponent24";
	rename -uid "26945E50-48F7-DB6F-E5A0-B1880CBD8308";
	setAttr ".dc" -type "componentList" 1 "f[99]";
createNode deleteComponent -n "deleteComponent25";
	rename -uid "224126F1-4B0B-4A6E-D201-3CA2A30D5946";
	setAttr ".dc" -type "componentList" 1 "f[96]";
createNode deleteComponent -n "deleteComponent26";
	rename -uid "07D8CA00-484E-12AB-9534-A68D44822FDE";
	setAttr ".dc" -type "componentList" 1 "f[95]";
createNode deleteComponent -n "deleteComponent27";
	rename -uid "B652BBCB-4A17-DB08-E831-0AB361AB301C";
	setAttr ".dc" -type "componentList" 1 "f[99]";
createNode deleteComponent -n "deleteComponent28";
	rename -uid "A4AE3970-4C52-EFD1-7AD8-5AA291BC2DF2";
	setAttr ".dc" -type "componentList" 1 "f[96]";
createNode deleteComponent -n "deleteComponent29";
	rename -uid "9878C995-4296-5D16-2B7C-D8AA455A781F";
	setAttr ".dc" -type "componentList" 1 "f[95]";
createNode deleteComponent -n "deleteComponent30";
	rename -uid "8FCA62BC-47EE-ACB3-8953-8B9804DE9592";
	setAttr ".dc" -type "componentList" 1 "f[94]";
createNode deleteComponent -n "deleteComponent31";
	rename -uid "9576745C-4258-9636-24C0-B8B2CB599C9C";
	setAttr ".dc" -type "componentList" 1 "f[95]";
createNode deleteComponent -n "deleteComponent32";
	rename -uid "060A9943-46C4-B558-0B03-7AAEBEB30B98";
	setAttr ".dc" -type "componentList" 1 "e[170]";
createNode deleteComponent -n "deleteComponent33";
	rename -uid "87141E03-4F1A-C2DA-899A-A583F1FBE8AE";
	setAttr ".dc" -type "componentList" 1 "e[197]";
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "E3A98EE3-4B08-DD39-73D5-AF8E3E246C37";
	setAttr ".ics" -type "componentList" 3 "e[188]" "e[190]" "e[192:194]";
createNode groupId -n "groupId14";
	rename -uid "06E3FE73-4D51-D358-2D34-FD8A0C132855";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "6C8915F5-43A1-AC85-AA96-AFBC8E80379F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 6 "f[0:18]" "f[21:56]" "f[58:143]" "f[145:149]" "f[151:167]" "f[171]";
createNode groupId -n "groupId15";
	rename -uid "7B90D6AC-46A9-1669-2E52-E4A10EEBC489";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "9FFABE99-4F2E-6E2E-7923-0BBB73B3742F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[19:20]" "f[57]" "f[144]" "f[150]";
createNode groupId -n "groupId16";
	rename -uid "E4FC8A80-4C00-E49A-AFE6-498E18343F9F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "582099BA-4E3C-B839-8ABA-C397BFCC4706";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[168:170]";
createNode groupId -n "groupId17";
	rename -uid "99C871EB-4AD9-D922-47D0-1F890DC2D55C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "4F6F0C7B-4DBD-318F-B362-7CAC53964425";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[172]";
	setAttr ".irc" -type "componentList" 1 "f[171]";
createNode polyBevel3 -n "polyBevel21";
	rename -uid "2D7D7C8D-4EC2-6801-3EAC-E29B2AA2EAFA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]";
	setAttr ".ix" -type "matrix" 0.82227089286913868 0 0 0 0 1 0 0 0 0 1 0 0.11746971950594243 4.3296484300984233 -3.5781139043449168 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak98";
	rename -uid "5B4519CD-4579-C3F0-FB43-348D5890BB8A";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[2]" -type "float3" 0.085813619 0 -0.19976711 ;
	setAttr ".tk[3]" -type "float3" -0.01028124 0 -0.19976711 ;
	setAttr ".tk[4]" -type "float3" 0.085813619 0 0.19976711 ;
	setAttr ".tk[5]" -type "float3" -0.01028124 0 0.19976711 ;
	setAttr ".tk[10]" -type "float3" -0.27292421 0 0.14151625 ;
	setAttr ".tk[11]" -type "float3" -0.27292421 0 -0.14151625 ;
	setAttr ".tk[12]" -type "float3" -0.70023823 0 0.46138054 ;
	setAttr ".tk[13]" -type "float3" -0.70023823 0 -0.46138054 ;
	setAttr ".tk[14]" -type "float3" -0.41118324 0 -0.58609974 ;
	setAttr ".tk[15]" -type "float3" -0.41118324 0 0.58609974 ;
createNode polyExtrudeFace -n "polyExtrudeFace88";
	rename -uid "7B19F4BB-41BA-6808-D0B9-F0A232CEE159";
	setAttr ".ics" -type "componentList" 6 "f[9]" "f[26:27]" "f[30:31]" "f[36:37]" "f[40:42]" "f[44]";
	setAttr ".ix" -type "matrix" 0.82227089286913868 0 0 0 0 1 0 0 0 0 1 0 0.11746971950594243 4.3296484300984233 -3.5781139043449168 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.27277777 3.7769165 -3.5781138 ;
	setAttr ".rs" 39131;
	setAttr ".lt" -type "double3" -5.5511151231257827e-17 -4.1799628515344603e-16 0.078227864074666101 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8944556382261666 3.7769164392842143 -4.80624400650251 ;
	setAttr ".cbx" -type "double3" 1.348900124702531 3.7769164392842143 -2.3499838021873241 ;
createNode polyBevel3 -n "polyBevel22";
	rename -uid "4E3927F2-409A-1C7B-45A9-589A3B117C6F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[30]" "e[34]";
	setAttr ".ix" -type "matrix" 0.97620518889699881 -0.21684886250698887 0 0 0.21684886250698887 0.97620518889699881 0 0
		 0 0 1 0 -2.749557328381786 5.0609456521584182 1.2345766931089628 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak99";
	rename -uid "1A198EFF-4CD5-B602-ABC7-F7A7C571A980";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  -0.039716959 -3.7252903e-08
		 0 -0.039716959 -3.7252903e-08 0 -0.039716959 -3.7252903e-08 0 -0.039716959 -3.7252903e-08
		 0;
createNode polyBevel3 -n "polyBevel23";
	rename -uid "F8AF932F-421F-3042-976C-CF856C280531";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[5]" "e[9]";
	setAttr ".ix" -type "matrix" 0.97620518889699881 -0.21684886250698887 0 0 0.21684886250698887 0.97620518889699881 0 0
		 0 0 1 0 -2.749557328381786 5.0609456521584182 1.2345766931089628 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel24";
	rename -uid "95EF9E34-4194-2205-A34A-18BA635333E7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[32]" "e[35]" "e[40]" "e[43]";
	setAttr ".ix" -type "matrix" 0.97620518889699881 -0.21684886250698887 0 0 0.21684886250698887 0.97620518889699881 0 0
		 0 0 1 0 -2.749557328381786 5.0609456521584182 1.2345766931089628 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace89";
	rename -uid "2FC0BCA2-4E5D-274C-4C46-CBBF9BEEB3CF";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.86686116538440172 5.1616106853981618 -4.0952668991497694 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.86686122 4.4063959 -4.0952668 ;
	setAttr ".rs" 62518;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.98867774091159288 4.4063958750267629 -4.2170834746769605 ;
	setAttr ".cbx" -type "double3" -0.74504464946185534 4.4063958750267629 -3.973450383227223 ;
createNode polyTweak -n "polyTweak100";
	rename -uid "2E32D047-4786-EF0A-203E-3CAC844990D0";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  -0.82674539 0 0.26862577 -0.70327163
		 0 0.51095682 -0.51095682 0 0.70327157 -0.26862574 0 0.82674527 0 0 0.86929148 0.26862574
		 0 0.82674521 0.5109567 0 0.70327139 0.70327133 0 0.51095665 0.82674503 0 0.26862565
		 0.86929125 0 0 0.82674503 0 -0.26862565 0.70327127 0 -0.51095659 0.51095659 0 -0.70327121
		 0.26862565 0 -0.82674491 2.5906893e-08 0 -0.86929119 -0.26862556 0 -0.82674485 -0.51095647
		 0 -0.70327115 -0.70327109 0 -0.51095653 -0.82674479 0 -0.26862559 -0.86929107 0 0
		 -0.83520269 -1.75521481 0.2713736 -0.71046561 -1.75521481 0.51618361 -0.51618361
		 -1.75521481 0.71046555 -0.27137357 -1.75521481 0.83520257 -2.0274995e-09 -1.75521481
		 0.8781839 0.27137357 -1.75521481 0.83520252 0.5161835 -1.75521481 0.71046537 0.71046531
		 -1.75521481 0.51618344 0.83520234 -1.75521481 0.27137348 0.87818366 -1.75521481 -2.0274995e-09
		 0.83520234 -1.75521481 -0.27137348 0.71046525 -1.75521481 -0.51618338 0.51618338
		 -1.75521481 -0.71046519 0.27137348 -1.75521481 -0.83520222 2.4144409e-08 -1.75521481
		 -0.8781836 -0.27137339 -1.75521481 -0.83520216 -0.51618326 -1.75521481 -0.71046513
		 -0.71046507 -1.75521481 -0.51618332 -0.8352021 -1.75521481 -0.27137342 -0.87818348
		 -1.75521481 -2.0274995e-09 0 0 0 -2.0274995e-09 -1.75521481 -2.0274995e-09;
createNode polyExtrudeFace -n "polyExtrudeFace90";
	rename -uid "6296B77D-46C0-5023-CAE4-9195385745AC";
	setAttr ".ics" -type "componentList" 6 "f[7]" "f[11]" "f[15]" "f[25:26]" "f[56]" "f[58]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4883151 2.4229012 -3.5653052 ;
	setAttr ".rs" 38761;
	setAttr ".lt" -type "double3" 0 0 0.10343243071445185 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.44313586852287368 2.4229012373575309 -4.8884589719282339 ;
	setAttr ".cbx" -type "double3" 2.5334943027872314 2.4229012373575309 -2.2421514753402354 ;
createNode polyExtrudeFace -n "polyExtrudeFace91";
	rename -uid "7A70E340-409B-5930-8623-7B911CCE7FD8";
	setAttr ".ics" -type "componentList" 6 "f[33]" "f[48]" "f[98]" "f[100]" "f[102]" "f[168:170]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.6943417 1.7592924 -3.5653055 ;
	setAttr ".rs" 43870;
	setAttr ".lt" -type "double3" -3.7543329907866871e-17 -1.3332319765606369e-16 0.33816025316663711 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6943418483535586 1.0956835363992177 -4.913152509315605 ;
	setAttr ".cbx" -type "double3" -2.6943414282668421 2.4229012373575309 -2.2174585680829386 ;
createNode polyTweak -n "polyTweak101";
	rename -uid "B900F8E3-40F0-F2CA-CDAE-2097059A0036";
	setAttr ".uopa" yes;
	setAttr -s 68 ".tk";
	setAttr ".tk[0]" -type "float3" -0.16318223 4.4408921e-16 -7.6161299e-14 ;
	setAttr ".tk[2]" -type "float3" -0.16318223 3.694961e-16 -7.6161299e-14 ;
	setAttr ".tk[4]" -type "float3" -0.16318223 3.694961e-16 -7.6161299e-14 ;
	setAttr ".tk[6]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[26]" -type "float3" -0.16318223 3.694961e-16 -7.6161299e-14 ;
	setAttr ".tk[27]" -type "float3" -0.16318223 4.4408921e-16 -7.6161299e-14 ;
	setAttr ".tk[33]" -type "float3" -0.16318223 3.694961e-16 -7.6161299e-14 ;
	setAttr ".tk[34]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[38]" -type "float3" -0.16318223 4.4408921e-16 -7.6161299e-14 ;
	setAttr ".tk[41]" -type "float3" -0.16318223 4.4408921e-16 -7.6161299e-14 ;
	setAttr ".tk[56]" -type "float3" -0.16318223 4.4408921e-16 -7.6161299e-14 ;
	setAttr ".tk[57]" -type "float3" -0.16318223 4.4408921e-16 -7.6161299e-14 ;
	setAttr ".tk[108]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[109]" -type "float3" -0.16318223 4.4408921e-16 -7.6161299e-14 ;
	setAttr ".tk[110]" -type "float3" -0.16318223 3.694961e-16 -7.6161299e-14 ;
	setAttr ".tk[111]" -type "float3" -0.16318223 3.694961e-16 -7.6161299e-14 ;
	setAttr ".tk[112]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[113]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[114]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[115]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[116]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[117]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[133]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[134]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[135]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[136]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[137]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[138]" -type "float3" -0.16318223 3.3306691e-16 -7.6161299e-14 ;
	setAttr ".tk[139]" -type "float3" -0.16318223 3.8857806e-16 -7.6161299e-14 ;
	setAttr ".tk[140]" -type "float3" -0.16318223 3.8857806e-16 -7.6161299e-14 ;
	setAttr ".tk[141]" -type "float3" -0.16318223 3.8857806e-16 -7.6161299e-14 ;
	setAttr ".tk[142]" -type "float3" -0.16318223 3.8857806e-16 -7.6161299e-14 ;
	setAttr ".tk[143]" -type "float3" -0.16318223 3.8857806e-16 -7.6161299e-14 ;
	setAttr ".tk[160]" -type "float3" -0.16318223 3.8857806e-16 -7.6161299e-14 ;
	setAttr ".tk[188]" -type "float3" -2.220446e-15 -1.110223e-15 -0.17580104 ;
	setAttr ".tk[189]" -type "float3" -0.22910282 -1.110223e-15 0.083728231 ;
	setAttr ".tk[190]" -type "float3" -2.220446e-15 -1.110223e-15 -0.1722782 ;
	setAttr ".tk[191]" -type "float3" -0.11544189 -1.110223e-15 0.073554739 ;
	setAttr ".tk[192]" -type "float3" 0.11182326 -1.4432899e-15 -0.018427219 ;
	setAttr ".tk[193]" -type "float3" -4.4408921e-15 -1.110223e-15 0.083871238 ;
	setAttr ".tk[194]" -type "float3" 0.11182326 -1.4432899e-15 0.0066357963 ;
	setAttr ".tk[195]" -type "float3" -4.4408921e-15 -1.110223e-15 -0.08387129 ;
	setAttr ".tk[196]" -type "float3" -4.4408921e-15 -1.110223e-15 -0.03745484 ;
	setAttr ".tk[197]" -type "float3" -8.8817842e-15 -1.110223e-15 -0.014394355 ;
	setAttr ".tk[198]" -type "float3" -8.8817842e-15 -1.110223e-15 0.014394187 ;
	setAttr ".tk[199]" -type "float3" -4.4408921e-15 -1.110223e-15 0.03745478 ;
	setAttr ".tk[200]" -type "float3" -4.4408921e-15 -1.110223e-15 -0.12242048 ;
	setAttr ".tk[201]" -type "float3" 0.075778738 -1.110223e-15 0.050125834 ;
	setAttr ".tk[202]" -type "float3" -0.11544189 -1.110223e-15 -0.082174189 ;
	setAttr ".tk[203]" -type "float3" -2.220446e-15 -1.110223e-15 0.17227761 ;
	setAttr ".tk[204]" -type "float3" 0.075778738 -1.110223e-15 -0.060535081 ;
	setAttr ".tk[205]" -type "float3" -4.4408921e-15 -1.110223e-15 0.12242051 ;
	setAttr ".tk[206]" -type "float3" -0.22910269 -1.110223e-15 -0.092221618 ;
	setAttr ".tk[207]" -type "float3" -2.220446e-15 -1.110223e-15 0.17580104 ;
createNode polyBevel3 -n "polyBevel25";
	rename -uid "FBB8EF9A-4A49-99C9-12E5-AFBFBA8433F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[60]" "e[118]" "e[136]" "e[155]" "e[167]" "e[169]" "e[175]" "e[398]" "e[400:401]" "e[419]" "e[421:422]";
	setAttr ".ix" -type "matrix" 0.88098569832603379 0 0 0 0 1.2020390893704853 0 0 0 0 0.88098569832603379 0
		 -1.0590772172682921 1.6967035826142509 -3.8175739134428568 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak102";
	rename -uid "0846CA7F-4DB5-8520-D6EC-22A7C759AAC6";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk";
	setAttr ".tk[208]" -type "float3" 9.7699626e-15 1.9081958e-17 -0.34129587 ;
	setAttr ".tk[209]" -type "float3" 9.7699626e-15 1.9081958e-17 -0.21595234 ;
	setAttr ".tk[210]" -type "float3" 9.7699626e-15 -2.4424907e-15 -0.34129587 ;
	setAttr ".tk[211]" -type "float3" 9.7699626e-15 -2.4424907e-15 -0.23822041 ;
	setAttr ".tk[212]" -type "float3" 9.7699626e-15 6.1062266e-16 -0.21595234 ;
	setAttr ".tk[213]" -type "float3" 9.7699626e-15 1.2212453e-15 -0.21595234 ;
	setAttr ".tk[214]" -type "float3" 9.7699626e-15 1.2212453e-15 -0.25200331 ;
	setAttr ".tk[215]" -type "float3" 9.7699626e-15 1.2212453e-15 -0.34766537 ;
	setAttr ".tk[216]" -type "float3" 9.7699626e-15 1.2212453e-15 -0.34129587 ;
	setAttr ".tk[217]" -type "float3" 9.7699626e-15 6.1062266e-16 -0.34129587 ;
	setAttr ".tk[218]" -type "float3" 9.7699626e-15 1.9081958e-17 0.19946356 ;
	setAttr ".tk[219]" -type "float3" 9.7699626e-15 1.9081958e-17 0.34129587 ;
	setAttr ".tk[220]" -type "float3" 9.7699626e-15 -2.4424907e-15 0.22173162 ;
	setAttr ".tk[221]" -type "float3" 9.7699626e-15 -2.4424907e-15 0.34129587 ;
	setAttr ".tk[222]" -type "float3" 9.7699626e-15 6.1062266e-16 0.34129587 ;
	setAttr ".tk[223]" -type "float3" 9.7699626e-15 1.2212453e-15 0.34129587 ;
	setAttr ".tk[224]" -type "float3" 9.7699626e-15 1.2212453e-15 0.34766537 ;
	setAttr ".tk[225]" -type "float3" 9.7699626e-15 1.2212453e-15 0.23276182 ;
	setAttr ".tk[226]" -type "float3" 9.7699626e-15 1.2212453e-15 0.19946356 ;
	setAttr ".tk[227]" -type "float3" 9.7699626e-15 6.1062266e-16 0.19946356 ;
	setAttr ".tk[228]" -type "float3" 9.7699626e-15 1.2212453e-15 0.34129587 ;
	setAttr ".tk[229]" -type "float3" 9.7699626e-15 1.2212453e-15 0.19946356 ;
	setAttr ".tk[230]" -type "float3" 9.7699626e-15 1.2212453e-15 0.19946356 ;
	setAttr ".tk[231]" -type "float3" 9.7699626e-15 1.2212453e-15 0.34129587 ;
	setAttr ".tk[232]" -type "float3" 9.7699626e-15 1.2212453e-15 0.19946356 ;
	setAttr ".tk[233]" -type "float3" 9.7699626e-15 2.4424907e-15 -0.21595234 ;
	setAttr ".tk[234]" -type "float3" 9.7699626e-15 1.2212453e-15 -0.21595234 ;
	setAttr ".tk[235]" -type "float3" 9.7699626e-15 1.2212453e-15 0.19946356 ;
	setAttr ".tk[236]" -type "float3" 9.7699626e-15 2.4424907e-15 -0.21595234 ;
	setAttr ".tk[237]" -type "float3" 9.7699626e-15 2.4424907e-15 -0.34129587 ;
	setAttr ".tk[238]" -type "float3" 9.7699626e-15 1.2212453e-15 -0.34129587 ;
	setAttr ".tk[239]" -type "float3" 9.7699626e-15 1.2212453e-15 -0.21595234 ;
	setAttr ".tk[240]" -type "float3" 9.7699626e-15 6.1062266e-16 0.19946356 ;
	setAttr ".tk[241]" -type "float3" 9.7699626e-15 1.2212453e-15 0.19946356 ;
	setAttr ".tk[242]" -type "float3" 9.7699626e-15 1.2212453e-15 0.23276182 ;
	setAttr ".tk[243]" -type "float3" 9.7699626e-15 1.2212453e-15 -0.25200331 ;
	setAttr ".tk[244]" -type "float3" 9.7699626e-15 1.2212453e-15 -0.21595234 ;
	setAttr ".tk[245]" -type "float3" 9.7699626e-15 6.1062266e-16 -0.21595234 ;
	setAttr ".tk[246]" -type "float3" 9.7699626e-15 1.9081958e-17 -0.21595234 ;
	setAttr ".tk[247]" -type "float3" 9.7699626e-15 1.9081958e-17 0.19946356 ;
createNode polyBevel3 -n "polyBevel26";
	rename -uid "CBD207A1-43BF-F31D-1E4F-2DAF7268DC17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[0:1]" "e[7]" "e[16:17]" "e[21:22]" "e[25]" "e[42]" "e[45]" "e[47]" "e[50]" "e[54]" "e[56]" "e[59]" "e[61:62]" "e[65]" "e[67]" "e[70]" "e[72]" "e[75]" "e[77]" "e[80]";
	setAttr ".ix" -type "matrix" 0.82227089286913868 0 0 0 0 1 0 0 0 0 1 0 0.11580487174929899 4.4431709367772401 -3.5912925313366979 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak103";
	rename -uid "37E7143A-462F-88D0-C9C6-A290F580DCE0";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[52]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[56]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[58]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[59]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[60]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[64]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[76]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.059002459 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.059002459 0 ;
createNode polyBevel3 -n "polyBevel27";
	rename -uid "7B5E3528-4806-9068-1CEB-C38F65494BD1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[82]" "e[84]" "e[86]" "e[88]" "e[90]" "e[92]" "e[94]" "e[96]" "e[98]" "e[100]" "e[102]" "e[104]" "e[106]" "e[108]" "e[110]" "e[112]" "e[114]" "e[116]" "e[118:119]";
	setAttr ".ix" -type "matrix" 0.27672815913282783 0 0 0 0 0.27672815913282783 0 0
		 0 0 0.27672815913282783 0 1.5611767543860071 2.3319516758397336 -1.5277007288238647 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak104";
	rename -uid "04150D18-41BB-C238-6280-9E985F6C10B0";
	setAttr ".uopa" yes;
	setAttr -s 82 ".tk[0:81]" -type "float3"  0 1.110223e-16 0.30314997
		 0 1.110223e-16 0.30314997 0 1.110223e-16 0.30314997 0 1.110223e-16 0.30314997 0 1.110223e-16
		 0.30314997 0 1.110223e-16 0.30314997 0 1.110223e-16 0.30314997 0 1.110223e-16 0.30314997
		 0 1.110223e-16 0.30314997 0 1.110223e-16 0.30314997 0 1.110223e-16 0.30314997 0 1.110223e-16
		 0.30314997 0 1.110223e-16 0.30314997 0 1.110223e-16 0.30314997 0 1.110223e-16 0.30314997
		 0 1.110223e-16 0.30314997 0 1.110223e-16 0.30314997 0 1.110223e-16 0.30314997 0 1.110223e-16
		 0.30314997 0 1.110223e-16 0.30314997 0 -0.059021913 -0.069663234 0 -0.059021913 -0.13250759
		 0 -0.059021913 -0.18238117 0 -0.059021913 -0.21440174 0 -0.059021913 -0.22543524
		 0 -0.059021913 -0.21440174 0 -0.059021913 -0.18238117 0 -0.059021913 -0.13250759
		 0 -0.059021913 -0.069663234 0 -0.059021913 0 0 -0.059021913 0.069663234 0 -0.059021913
		 0.13250759 0 -0.059021913 0.18238087 0 -0.059021913 0.21440174 0 -0.059021913 0.22543524
		 0 -0.059021913 0.21440174 0 -0.059021913 0.18238087 0 -0.059021913 0.13250759 0 -0.059021913
		 0.069663234 0 -0.059021913 0 0 1.110223e-16 0.30314997 0 -0.016077721 -0.069663234
		 0 -0.016077721 -0.13250759 0 -0.016077721 -0.18238117 0 -0.016077721 -0.21440174
		 0 -0.016077721 -0.22543524 0 -0.016077721 -0.21440174 0 -0.016077721 -0.18238117
		 0 -0.016077721 -0.13250759 0 -0.016077721 -0.069663234 0 -0.016077721 0 0 -0.016077721
		 0.069663234 0 -0.016077721 0.13250759 0 -0.016077721 0.18238087 0 -0.016077721 0.21440174
		 0 -0.016077721 0.22543524 0 -0.016077721 0.21440174 0 -0.016077721 0.18238087 0 -0.016077721
		 0.13250759 0 -0.016077721 0.069663234 0 -0.016077721 0 -0.21244594 0.069311388 -0.20407799
		 -0.1807173 0.069311388 -0.16885576 0 0.069311388 -0.24312198 -0.13129881 0.069311388
		 -0.14090323 -0.06902767 0.069311388 -0.1229568 0 0.069311388 -0.11677279 0.06902767
		 0.069311388 -0.1229568 0.13129881 0.069311388 -0.14090323 0.1807173 0.069311388 -0.16885576
		 0.21244594 0.069311388 -0.20407799 0.22337894 0.069311388 -0.24312198 0.21244594
		 0.069311388 -0.282166 0.1807173 0.069311388 -0.31738821 0.13129881 0.069311388 -0.34534049
		 0.06902767 0.069311388 -0.36328712 0 0.069311388 -0.3694711 -0.06902767 0.069311388
		 -0.36328712 -0.13129881 0.069311388 -0.34534049 -0.1807173 0.069311388 -0.31738821
		 -0.21244594 0.069311388 -0.282166 -0.22337894 0.069311388 -0.24312198;
createNode polySplitRing -n "polySplitRing35";
	rename -uid "A3A8AED1-465A-83A1-C939-48AF0C8525E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40:59]";
	setAttr ".ix" -type "matrix" 0 0.40594056319669664 0 0 -0.40594056319669664 0 0 0
		 0 0 0.40594056319669664 0 4.0828007557273862 0.63638203866415699 0.63955191674735867 1;
	setAttr ".wt" 0.61607778072357178;
	setAttr ".re" 41;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak105";
	rename -uid "0C3FAEA8-438D-4F00-F52A-3DAEF2ED6F48";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  -0.42912832 0.79602695 0.092611708
		 -0.38016486 0.79602695 0.17615803 -0.30390251 0.79602695 0.24246074 -0.20780629 0.79602695
		 0.28502971 -0.10128291 0.79602695 0.29969791 -0.070930809 0.79602695 0.32784528 0.025165357
		 0.79602695 0.27888182 0.1014277 0.79602695 0.20261948 0.15039112 0.79602695 0.10652329
		 0.16726273 0.79602695 -1.0140325e-07 0.15039112 0.79602695 -0.10652351 0.10142764
		 0.79602695 -0.20261966 0.025165334 0.79602695 -0.278882 -0.070930853 0.79602695 -0.32784539
		 -0.10128288 0.79602695 -0.29969802 -0.20780623 0.79602695 -0.2850298 -0.30390239
		 0.79602695 -0.2424608 -0.38016462 0.79602695 -0.1761581 -0.42912808 0.79602695 -0.092611827
		 -0.44599974 0.79602695 -7.4094849e-08 0.26593012 -0.79602695 -0.067546986 0.24600911
		 -0.79602695 -0.12848198 0.21498135 -0.79602695 -0.17684031 0.17588426 -0.79602695
		 -0.20788828 0.13254473 -0.79602695 -0.21858668 -0.043339506 -0.79602695 -0.13338535
		 -0.082436673 -0.79602695 -0.11346433 -0.11346427 -0.79602695 -0.082436636 -0.13338529
		 -0.79602695 -0.043339517 -0.14024962 -0.79602695 7.1333166e-16 -0.13338529 -0.79602695
		 0.043339517 -0.11346433 -0.79602695 0.082436644 -0.082436644 -0.79602695 0.11346431
		 -0.043339517 -0.79602695 0.13338526 0.13254473 -0.79602695 0.21858656 0.17588426
		 -0.79602695 0.20788817 0.21498132 -0.79602695 0.17684026 0.24600905 -0.79602695 0.12848197
		 0.26593 -0.79602695 0.067546979 0.27279431 -0.79602695 4.7518995e-08 -0.14112154
		 0.79602695 4.7518995e-08 0.13254473 -0.79602695 4.7518995e-08;
createNode polyPipe -n "polyPipe1";
	rename -uid "5144F35A-4985-BD32-1F2F-1BA5EC07F846";
	setAttr ".sc" 0;
createNode polyExtrudeFace -n "polyExtrudeFace92";
	rename -uid "A76E0C7B-42CC-80A1-C9BA-57BFBBE7922A";
	setAttr ".ics" -type "componentList" 1 "f[49:50]";
	setAttr ".ix" -type "matrix" 0 0.35655174397872469 0 0 -0.35655174397872469 0 0 0
		 0 0 0.35655174397872469 0 7.4803832896329023 0.92502346025687165 1.9255729392730299 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4803834 0.57719707 1.925573 ;
	setAttr ".rs" 50738;
	setAttr ".lt" -type "double3" -1.7763568394002505e-15 -4.9889139450446859e-16 0.7731232864135803 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.4156464976549135 0.57719697364242961 1.8153923668310035 ;
	setAttr ".cbx" -type "double3" 7.5451200816108912 0.57719716491169004 2.0357535117150563 ;
createNode polyTweak -n "polyTweak106";
	rename -uid "F7A76C02-4A58-4EE8-F25F-19B4AA3FFD2A";
	setAttr ".uopa" yes;
	setAttr -s 80 ".tk[0:79]" -type "float3"  0.19550407 0.31843647 -3.495883e-08
		 0.18593544 0.31843647 -0.060414117 0.1581661 0.31843647 -0.11491444 0.11491443 0.31843647
		 -0.15816616 0.060414102 0.31843647 -0.18593544 1.7479369e-08 0.31843647 -0.1955041
		 -0.060414068 0.31843647 -0.18593547 -0.11491439 0.31843647 -0.15816616 -0.1581661
		 0.31843647 -0.11491444 -0.18593544 0.31843647 -0.060414124 -0.19550407 0.31843647
		 -3.495883e-08 -0.18593544 0.31843647 0.06041405 -0.1581661 0.31843647 0.11491439
		 -0.11491443 0.31843647 0.1581661 -0.060414083 0.31843647 0.18593544 2.3305846e-08
		 0.31843647 0.1955041 0.060414124 0.31843647 0.18593547 0.11491451 0.31843647 0.15816616
		 0.15816623 0.31843647 0.11491443 0.18593554 0.31843647 0.060414076 0.19550407 -0.31843647
		 -3.495883e-08 0.18593544 -0.31843647 -0.060414117 0.1581661 -0.31843647 -0.11491444
		 0.11491443 -0.31843647 -0.15816616 0.060414102 -0.31843647 -0.18593544 1.7479369e-08
		 -0.31843647 -0.1955041 -0.060414068 -0.31843647 -0.18593547 -0.11491439 -0.31843647
		 -0.15816616 -0.1581661 -0.31843647 -0.11491444 -0.18593544 -0.31843647 -0.060414124
		 -0.19550407 -0.31843647 -3.495883e-08 -0.18593544 -0.31843647 0.06041405 -0.1581661
		 -0.31843647 0.11491439 -0.11491443 -0.31843647 0.1581661 -0.060414083 -0.31843647
		 0.18593544 2.3305846e-08 -0.31843647 0.1955041 0.060414124 -0.31843647 0.18593547
		 0.11491451 -0.31843647 0.15816616 0.15816623 -0.31843647 0.11491443 0.18593554 -0.31843647
		 0.060414076 -4.4964032e-14 -0.31843647 9.9920072e-15 -4.4964032e-14 -0.31843647 9.9920072e-15
		 -4.4964032e-14 -0.31843647 9.9920072e-15 -4.4964032e-14 -0.31843647 9.9920072e-15
		 -4.2466031e-14 -0.31843647 9.9920072e-15 -3.9968029e-14 -0.31843647 9.9920072e-15
		 -3.7470027e-14 -0.31843647 9.9920072e-15 -3.4972025e-14 -0.31843647 9.9920072e-15
		 -3.4972025e-14 -0.31843647 9.9920072e-15 -0.02447148 -0.31843647 9.9920072e-15 0.024471486
		 -0.31843647 1.0336987e-14 -0.02447148 -0.31843647 9.9920072e-15 -3.4972025e-14 -0.31843647
		 9.9920072e-15 -3.4972025e-14 -0.31843647 9.9920072e-15 -3.7470027e-14 -0.31843647
		 9.9920072e-15 -3.9968029e-14 -0.31843647 9.9920072e-15 -4.2466031e-14 -0.31843647
		 9.9920072e-15 -4.4964032e-14 -0.31843647 9.9920072e-15 -4.4964032e-14 -0.31843647
		 9.9920072e-15 -4.4964032e-14 -0.31843647 9.9920072e-15 -4.4964032e-14 0.31843647
		 9.9920072e-15 -4.4964032e-14 0.31843647 9.9920072e-15 -4.4964032e-14 0.31843647 9.9920072e-15
		 -4.4964032e-14 0.31843647 9.9920072e-15 -4.2466031e-14 0.31843647 9.9920072e-15 -3.9968029e-14
		 0.31843647 9.9920072e-15 -3.7470027e-14 0.31843647 9.9920072e-15 -3.4972025e-14 0.31843647
		 9.9920072e-15 -3.4972025e-14 0.31843647 9.9920072e-15 -0.02447148 0.31843647 9.9920072e-15
		 0.024471486 0.31843647 9.6470276e-15 -0.02447148 0.31843647 9.9920072e-15 -3.4972025e-14
		 0.31843647 9.9920072e-15 -3.4972025e-14 0.31843647 9.9920072e-15 -3.7470027e-14 0.31843647
		 9.9920072e-15 -3.9968029e-14 0.31843647 9.9920072e-15 -4.2466031e-14 0.31843647 9.9920072e-15
		 -4.4964032e-14 0.31843647 9.9920072e-15 -4.4964032e-14 0.31843647 9.9920072e-15 -4.4964032e-14
		 0.31843647 9.9920072e-15;
createNode polyExtrudeFace -n "polyExtrudeFace93";
	rename -uid "76E56DD6-4E05-383E-1B44-CC9821C17EFA";
	setAttr ".ics" -type "componentList" 1 "f[49:50]";
	setAttr ".ix" -type "matrix" 0 0.35655174397872469 0 0 -0.35655174397872469 0 0 0
		 0 0 0.35655174397872469 0 7.4803832896329023 0.92502346025687165 1.9255729392730299 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.5168943 -0.19530635 1.925573 ;
	setAttr ".rs" 59711;
	setAttr ".lt" -type "double3" -1.3603747854638829e-16 -7.0988137243488403e-17 0.043641498449075659 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.4156462107510226 -0.19592636193205526 1.7278044981747041 ;
	setAttr ".cbx" -type "double3" 7.6181426154449143 -0.19468634206477398 2.1233415503884761 ;
createNode polyTweak -n "polyTweak107";
	rename -uid "FC88F5CC-4F8E-32E4-E3F0-0B9F2A539739";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[70]" -type "float3" -0.003477633 -0.031267364 -3.0188119e-09 ;
	setAttr ".tk[80]" -type "float3" -1.7763568e-14 -1.110223e-15 -0.24564916 ;
	setAttr ".tk[81]" -type "float3" 5.9604645e-08 -1.110223e-15 -1.8952554e-07 ;
	setAttr ".tk[83]" -type "float3" 0.0034778714 -0.20480125 3.0188119e-09 ;
	setAttr ".tk[84]" -type "float3" -1.7763568e-14 -1.110223e-15 0.24564916 ;
createNode polyExtrudeFace -n "polyExtrudeFace94";
	rename -uid "C19B1FDD-47BB-5C24-B07C-D6952BD62B8C";
	setAttr ".ics" -type "componentList" 4 "f[49:50]" "f[87]" "f[89]" "f[91]";
	setAttr ".ix" -type "matrix" 0 0.35655174397872469 0 0 -0.35655174397872469 0 0 0
		 0 0 0.35655174397872469 0 7.4803832896329023 0.92502346025687165 1.9255729392730299 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.5169563 -0.35793674 1.9255731 ;
	setAttr ".rs" 42042;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.4156462107510226 -0.519947285128465 1.7278046044354043 ;
	setAttr ".cbx" -type "double3" 7.6182664941692302 -0.19592619191493488 2.1233416141448962 ;
createNode polyTweak -n "polyTweak108";
	rename -uid "78DEB0F7-498E-012E-0EDF-9CA7ED0DCC86";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[87]" -type "float3" -0.78636515 2.4702462e-15 0 ;
	setAttr ".tk[89]" -type "float3" -0.78636515 2.4980018e-15 0 ;
createNode polySplitRing -n "polySplitRing36";
	rename -uid "C59D714A-409B-530E-5C9E-8A9A64D31EE5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[159:160]" "e[162]" "e[164]" "e[166]" "e[168]";
	setAttr ".ix" -type "matrix" 0 0.35655174397872469 0 0 -0.35655174397872469 0 0 0
		 0 0 0.35655174397872469 0 7.4803832896329023 0.92502346025687165 1.9255729392730299 1;
	setAttr ".wt" 0.18642851710319519;
	setAttr ".re" 162;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak109";
	rename -uid "0AB5C2B2-485A-9D1D-08A8-E4B637308AAF";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[69]" -type "float3" -2.3092639e-14 1.4432899e-15 0.1388272 ;
	setAttr ".tk[70]" -type "float3" -2.3092639e-14 1.4432899e-15 -1.0711059e-07 ;
	setAttr ".tk[71]" -type "float3" -2.3092639e-14 1.4432899e-15 -0.1388272 ;
	setAttr ".tk[91]" -type "float3" -3.4194869e-14 -2.1371793e-15 -1.0455959 ;
	setAttr ".tk[92]" -type "float3" 0 -2.1371793e-15 -1.7990793e-06 ;
	setAttr ".tk[93]" -type "float3" -3.4194869e-14 2.1371793e-15 -0.58218533 ;
	setAttr ".tk[94]" -type "float3" 0 4.2743586e-15 -8.9953966e-07 ;
	setAttr ".tk[95]" -type "float3" -3.4194869e-14 -2.1371793e-15 1.0455929 ;
	setAttr ".tk[96]" -type "float3" -3.4194869e-14 2.1371793e-15 0.58218366 ;
	setAttr ".tk[97]" -type "float3" -3.4194869e-14 -2.1371793e-15 -1.0463684 ;
	setAttr ".tk[98]" -type "float3" -3.4194869e-14 2.1371793e-15 -0.58295906 ;
	setAttr ".tk[99]" -type "float3" -3.4194869e-14 -2.1371793e-15 -1.7990793e-06 ;
	setAttr ".tk[100]" -type "float3" -3.4194869e-14 -2.1371793e-15 1.0463684 ;
	setAttr ".tk[101]" -type "float3" -3.4194869e-14 2.1371793e-15 0.58295798 ;
createNode polySplitRing -n "polySplitRing37";
	rename -uid "AB10EBF1-47B0-8427-F6A3-889E2A61F492";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[204:205]" "e[207]" "e[209]" "e[211]" "e[213]";
	setAttr ".ix" -type "matrix" 0 0.35655174397872469 0 0 -0.35655174397872469 0 0 0
		 0 0 0.35655174397872469 0 7.4803832896329023 0.92502346025687165 1.9255729392730299 1;
	setAttr ".wt" 0.11188178509473801;
	setAttr ".re" 204;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace95";
	rename -uid "C8315909-4075-4737-7B11-4EBE36A8FD50";
	setAttr ".ics" -type "componentList" 2 "f[102]" "f[105]";
	setAttr ".ix" -type "matrix" 0 0.35655174397872469 0 0 -0.35655174397872469 0 0 0
		 0 0 0.35655174397872469 0 7.4803832896329023 0.92502346025687165 1.9255729392730299 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4803834 0.39787853 1.9255729 ;
	setAttr ".rs" 62399;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.4156462107510226 0.36269221723385381 1.7910909059771871 ;
	setAttr ".cbx" -type "double3" 7.5451203685147821 0.43306485360401381 2.0600549406906628 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "D509CF82-4B49-107A-7C00-C9886F4EA3C6";
	setAttr ".ics" -type "componentList" 2 "vtx[89]" "vtx[94]";
	setAttr ".ix" -type "matrix" 0 0.35655174397872469 0 0 -0.35655174397872469 0 0 0
		 0 0 0.35655174397872469 0 7.4803832896329023 0.92502346025687165 1.9255729392730299 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak110";
	rename -uid "BDE894BC-490A-875E-A1F4-34B139945433";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[89]" -type "float3" 0 -1.4901161e-08 0 ;
	setAttr ".tk[102]" -type "float3" 0.033929162 0 0 ;
	setAttr ".tk[103]" -type "float3" 0.033929162 0 0 ;
	setAttr ".tk[105]" -type "float3" 0.033929162 0 0 ;
	setAttr ".tk[106]" -type "float3" 0.033929162 0 0 ;
	setAttr ".tk[114]" -type "float3" -0.026111161 0.17047016 -0.33238479 ;
	setAttr ".tk[115]" -type "float3" -0.026111161 -2.5812685e-15 -0.38050413 ;
	setAttr ".tk[116]" -type "float3" 0.026111161 0.17047016 -0.35380673 ;
	setAttr ".tk[117]" -type "float3" 0.026111161 -2.5812685e-15 -0.40448332 ;
	setAttr ".tk[118]" -type "float3" -0.026111161 -2.5812685e-15 0.38050413 ;
	setAttr ".tk[119]" -type "float3" -0.026111161 0.17047016 0.33238414 ;
	setAttr ".tk[120]" -type "float3" 0.026111161 -2.5812685e-15 0.40448332 ;
	setAttr ".tk[121]" -type "float3" 0.026111161 0.17047016 0.35380673 ;
createNode polySplitRing -n "polySplitRing38";
	rename -uid "4F3F43B8-4C0D-C36F-904C-A3BD4A42EAAE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[179:180]" "e[182]" "e[187]" "e[190:191]" "e[195:196]" "e[200]";
	setAttr ".ix" -type "matrix" 0 0.35655174397872469 0 0 -0.35655174397872469 0 0 0
		 0 0 0.35655174397872469 0 7.4803832896329023 0.92502346025687165 1.9255729392730299 1;
	setAttr ".wt" 0.751487135887146;
	setAttr ".dr" no;
	setAttr ".re" 191;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak111";
	rename -uid "924E885C-44C3-CC1D-C333-C7AC6383FD7A";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[89]" -type "float3" 0 0.33727247 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace96";
	rename -uid "45521996-4618-000E-C758-1DAE998B6452";
	setAttr ".ics" -type "componentList" 2 "f[123]" "f[128]";
	setAttr ".ix" -type "matrix" 0 0.35655174397872469 0 0 -0.35655174397872469 0 0 0
		 0 0 0.35655174397872469 0 7.4803832896329023 0.92502346025687165 1.9255729392730299 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4564118 -0.19592619 1.9255731 ;
	setAttr ".rs" 40292;
	setAttr ".lt" -type "double3" 0 0 0.074636873947961466 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.4156462107510226 -0.19592619191493488 1.35472014064805 ;
	setAttr ".cbx" -type "double3" 7.497177639224577 -0.19592619191493488 2.4964259929236903 ;
createNode polyTweak -n "polyTweak112";
	rename -uid "C06B9102-49D8-945B-8282-2198C3AA0AA7";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[93]" -type "float3" -2.1316282e-14 0.23878562 -0.57530552 ;
	setAttr ".tk[95]" -type "float3" -2.1316282e-14 0.23878562 0.57530499 ;
	setAttr ".tk[96]" -type "float3" 4.4703484e-08 0 0 ;
	setAttr ".tk[97]" -type "float3" 4.4703484e-08 0.23878562 -0.57607037 ;
	setAttr ".tk[99]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[100]" -type "float3" 1.4901161e-08 0.23878562 0.57607037 ;
	setAttr ".tk[121]" -type "float3" -1.5543122e-14 0.13446219 -0.44519618 ;
	setAttr ".tk[122]" -type "float3" 4.4703484e-08 0.13446219 -0.44578791 ;
	setAttr ".tk[123]" -type "float3" 4.4703484e-08 0 0 ;
	setAttr ".tk[127]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[128]" -type "float3" 1.4901161e-08 0.13446219 0.44578791 ;
	setAttr ".tk[129]" -type "float3" -1.5543122e-14 0.13446219 0.44519585 ;
createNode polyTweak -n "polyTweak113";
	rename -uid "5E8BAE17-4600-49E0-9CA2-039E6E698C0F";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[122]" -type "float3" 0.24676809 1.7347235e-16 0.0091656893 ;
	setAttr ".tk[123]" -type "float3" 0.24676809 -1.9428903e-16 0.10494787 ;
	setAttr ".tk[127]" -type "float3" 0.24676809 -1.9428903e-16 -0.10494787 ;
	setAttr ".tk[128]" -type "float3" 0.24676809 1.7347235e-16 -0.0091656577 ;
	setAttr ".tk[130]" -type "float3" 0.24676809 0.079653293 -0.091339476 ;
	setAttr ".tk[131]" -type "float3" 0.24676809 0 0 ;
	setAttr ".tk[132]" -type "float3" 0.37007451 0 0 ;
	setAttr ".tk[133]" -type "float3" 0.37007451 0 0 ;
	setAttr ".tk[134]" -type "float3" 0.24676809 0 0 ;
	setAttr ".tk[135]" -type "float3" 0.24676809 0.079653293 0.091339476 ;
	setAttr ".tk[136]" -type "float3" 0.37007451 0 0 ;
	setAttr ".tk[137]" -type "float3" 0.37007451 0 0 ;
createNode deleteComponent -n "deleteComponent34";
	rename -uid "9B42FD34-4851-1594-48A0-D784D5447610";
	setAttr ".dc" -type "componentList" 1 "f[98]";
createNode deleteComponent -n "deleteComponent35";
	rename -uid "E54F2D8B-49CD-AB83-8EA9-969B31821A5F";
	setAttr ".dc" -type "componentList" 1 "f[126]";
createNode polyCloseBorder -n "polyCloseBorder4";
	rename -uid "5A64B017-4056-3627-F469-02B96B752132";
	setAttr ".ics" -type "componentList" 4 "e[167]" "e[195:197]" "e[252]" "e[254]";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "01E4F2BE-454D-411B-9A7C-EA8083F23256";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 16 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 18 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.039423078 0.055559762 0.064102568 ;
	setAttr ".it" -type "float3" 0.32692307 0.32692307 0.32692307 ;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.62199998 0.62199998 0.62199998 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyBevel25.out" "pCubeShape25.i";
connectAttr "groupId14.id" "pCubeShape25.iog.og[0].gid";
connectAttr "lambert6SG.mwc" "pCubeShape25.iog.og[0].gco";
connectAttr "groupId15.id" "pCubeShape25.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "pCubeShape25.iog.og[1].gco";
connectAttr "groupId16.id" "pCubeShape25.iog.og[2].gid";
connectAttr "lambert6SG.mwc" "pCubeShape25.iog.og[2].gco";
connectAttr "groupId17.id" "pCubeShape25.iog.og[4].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape25.iog.og[4].gco";
connectAttr "polyCube9.out" "seabedShape.i";
connectAttr "polyCube8.out" "Stone_dockShape.i";
connectAttr "polyBevel16.out" "planksShape.i";
connectAttr "polyBevel26.out" "pCubeShape26.i";
connectAttr "groupParts6.og" "pCylinderShape3.i";
connectAttr "groupId11.id" "pCylinderShape3.iog.og[0].gid";
connectAttr "lambert6SG.mwc" "pCylinderShape3.iog.og[0].gco";
connectAttr "groupId13.id" "pCylinderShape3.iog.og[1].gid";
connectAttr "blinn2SG.mwc" "pCylinderShape3.iog.og[1].gco";
connectAttr "groupId12.id" "pCylinderShape3.ciog.cog[0].cgid";
connectAttr "polyBevel27.out" "pCylinderShape4.i";
connectAttr "polyCylinder5.out" "pCylinderShape7.i";
connectAttr "polyCylinder6.out" "pCylinderShape11.i";
connectAttr "polyBevel8.out" "pCubeShape33.i";
connectAttr "polyExtrudeFace58.out" "pCubeShape32.i";
connectAttr "polyExtrudeFace62.out" "pCylinderShape14.i";
connectAttr "polyCylinder8.out" "pCylinderShape15.i";
connectAttr "polyBevel24.out" "pCubeShape34.i";
connectAttr "polySplitRing35.out" "pCylinderShape17.i";
connectAttr "polySplitRing25.out" "pCylinderShape18.i";
connectAttr "polyBevel9.out" "pCylinderShape19.i";
connectAttr "polyBevel10.out" "pCylinderShape20.i";
connectAttr "polyExtrudeFace71.out" "pCylinderShape24.i";
connectAttr "polyBevel13.out" "pCylinderShape25.i";
connectAttr "groupId3.id" "pCylinderShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape26.iog.og[0].gco";
connectAttr "groupId5.id" "pCylinderShape26.iog.og[1].gid";
connectAttr "lambert6SG.mwc" "pCylinderShape26.iog.og[1].gco";
connectAttr "polyExtrudeFace89.out" "pCylinderShape26.i";
connectAttr "groupId4.id" "pCylinderShape26.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace74.out" "pCubeShape35.i";
connectAttr "polyBevel3.out" "pCylinderShape1.i";
connectAttr "polyExtrudeFace85.out" "pCubeShape29.i";
connectAttr "polyBevel20.out" "pCubeShape42.i";
connectAttr "polyBevel5.out" "pCubeShape31.i";
connectAttr "groupParts4.og" "pCylinderShape6.i";
connectAttr "groupId6.id" "pCylinderShape6.iog.og[0].gid";
connectAttr "blinn1SG.mwc" "pCylinderShape6.iog.og[0].gco";
connectAttr "groupId8.id" "pCylinderShape6.iog.og[1].gid";
connectAttr "lambert7SG.mwc" "pCylinderShape6.iog.og[1].gco";
connectAttr "groupId7.id" "pCylinderShape6.ciog.cog[0].cgid";
connectAttr "polyCloseBorder4.out" "pPipeShape1.i";
connectAttr "polyTweak44.out" "polyExtrudeFace31.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace31.mp";
connectAttr "polySplitRing12.out" "polyTweak44.ip";
connectAttr "polyTweak43.out" "polySplitRing12.ip";
connectAttr "pCubeShape25.wm" "polySplitRing12.mp";
connectAttr "polySplitRing11.out" "polyTweak43.ip";
connectAttr "polyTweak42.out" "polySplitRing11.ip";
connectAttr "pCubeShape25.wm" "polySplitRing11.mp";
connectAttr "polyExtrudeFace30.out" "polyTweak42.ip";
connectAttr "polySplitRing10.out" "polyExtrudeFace30.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace30.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape25.wm" "polySplitRing10.mp";
connectAttr "polyTweak41.out" "polySplitRing9.ip";
connectAttr "pCubeShape25.wm" "polySplitRing9.mp";
connectAttr "polyBevel2.out" "polyTweak41.ip";
connectAttr "polyTweak40.out" "polyBevel2.ip";
connectAttr "pCubeShape25.wm" "polyBevel2.mp";
connectAttr "polySplit11.out" "polyTweak40.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polyTweak39.out" "polySplit10.ip";
connectAttr "polyExtrudeFace29.out" "polyTweak39.ip";
connectAttr "polyTweak38.out" "polyExtrudeFace29.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace29.mp";
connectAttr "polyCube7.out" "polyTweak38.ip";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyTweak45.out" "polyExtrudeFace32.ip";
connectAttr "pCubeShape26.wm" "polyExtrudeFace32.mp";
connectAttr "polyCube10.out" "polyTweak45.ip";
connectAttr "polyTweak46.out" "polyExtrudeFace33.ip";
connectAttr "pCubeShape26.wm" "polyExtrudeFace33.mp";
connectAttr "polyExtrudeFace32.out" "polyTweak46.ip";
connectAttr "polyTweak47.out" "polySplitRing13.ip";
connectAttr "pCubeShape25.wm" "polySplitRing13.mp";
connectAttr "polyExtrudeFace31.out" "polyTweak47.ip";
connectAttr "polySplitRing13.out" "polyExtrudeFace34.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace34.mp";
connectAttr "polyTweak48.out" "polyExtrudeFace35.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace35.mp";
connectAttr "polyExtrudeFace34.out" "polyTweak48.ip";
connectAttr "polyExtrudeFace35.out" "polyExtrudeFace36.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace36.mp";
connectAttr "polyTweak49.out" "polyExtrudeFace37.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace37.mp";
connectAttr "polyExtrudeFace36.out" "polyTweak49.ip";
connectAttr "polyExtrudeFace37.out" "polyExtrudeFace38.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace38.mp";
connectAttr "polyExtrudeFace38.out" "polySplitRing14.ip";
connectAttr "pCubeShape25.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polyExtrudeFace39.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace39.mp";
connectAttr "polyTweak50.out" "polyExtrudeFace40.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace40.mp";
connectAttr "polyExtrudeFace39.out" "polyTweak50.ip";
connectAttr "polyTweak51.out" "polySplitRing15.ip";
connectAttr "pCubeShape25.wm" "polySplitRing15.mp";
connectAttr "polyExtrudeFace40.out" "polyTweak51.ip";
connectAttr "polySplitRing15.out" "polyExtrudeFace41.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace41.mp";
connectAttr "polyTweak52.out" "polyExtrudeFace42.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace42.mp";
connectAttr "polyExtrudeFace41.out" "polyTweak52.ip";
connectAttr "polyTweak53.out" "polyExtrudeFace43.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace43.mp";
connectAttr "polyExtrudeFace42.out" "polyTweak53.ip";
connectAttr "polyCylinder1.out" "polyExtrudeFace46.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace46.mp";
connectAttr "polyTweak56.out" "polyBevel3.ip";
connectAttr "pCylinderShape1.wm" "polyBevel3.mp";
connectAttr "polyExtrudeFace46.out" "polyTweak56.ip";
connectAttr "polyTweak57.out" "polyExtrudeFace47.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace47.mp";
connectAttr "polyCylinder2.out" "polyTweak57.ip";
connectAttr "polyTweak58.out" "polyExtrudeFace48.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace48.mp";
connectAttr "polyExtrudeFace47.out" "polyTweak58.ip";
connectAttr "polyExtrudeFace48.out" "polySplitRing20.ip";
connectAttr "pCylinderShape3.wm" "polySplitRing20.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "pCylinderShape3.wm" "polySplitRing21.mp";
connectAttr "polySplitRing21.out" "polyExtrudeFace49.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace49.mp";
connectAttr "polyTweak59.out" "polyBevel4.ip";
connectAttr "pCylinderShape3.wm" "polyBevel4.mp";
connectAttr "polyExtrudeFace49.out" "polyTweak59.ip";
connectAttr "polyTweak60.out" "polyExtrudeFace50.ip";
connectAttr "pCubeShape31.wm" "polyExtrudeFace50.mp";
connectAttr "polyCube12.out" "polyTweak60.ip";
connectAttr "polyTweak61.out" "polyBevel5.ip";
connectAttr "pCubeShape31.wm" "polyBevel5.mp";
connectAttr "polyExtrudeFace50.out" "polyTweak61.ip";
connectAttr "polyTweak62.out" "polyExtrudeFace51.ip";
connectAttr "pCylinderShape4.wm" "polyExtrudeFace51.mp";
connectAttr "polyCylinder3.out" "polyTweak62.ip";
connectAttr "polyExtrudeFace51.out" "polyExtrudeFace52.ip";
connectAttr "pCylinderShape4.wm" "polyExtrudeFace52.mp";
connectAttr "polyCylinder4.out" "polyExtrudeFace53.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace53.mp";
connectAttr "polyTweak63.out" "polyExtrudeFace54.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace54.mp";
connectAttr "polyExtrudeFace53.out" "polyTweak63.ip";
connectAttr "polyExtrudeFace54.out" "polyExtrudeFace55.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace55.mp";
connectAttr "polyExtrudeFace55.out" "polyBevel6.ip";
connectAttr "pCylinderShape6.wm" "polyBevel6.mp";
connectAttr "stone.oc" "lambert2SG.ss";
connectAttr "Stone_dockShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "stone.msg" "materialInfo1.m";
connectAttr "Sand.oc" "lambert3SG.ss";
connectAttr "seabedShape.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "Sand.msg" "materialInfo2.m";
connectAttr "wood.oc" "lambert4SG.ss";
connectAttr "planksShape.iog" "lambert4SG.dsm" -na;
connectAttr "pCylinderShape7.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape34.iog" "lambert4SG.dsm" -na;
connectAttr "pCubeShape25.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "groupId15.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "wood.msg" "materialInfo3.m";
connectAttr "water1.oc" "lambert5SG.ss";
connectAttr "waterShape.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "water1.msg" "materialInfo4.m";
connectAttr "white.oc" "lambert6SG.ss";
connectAttr "pCubeShape26.iog" "lambert6SG.dsm" -na;
connectAttr "pCubeShape31.iog" "lambert6SG.dsm" -na;
connectAttr "pCubeShape33.iog" "lambert6SG.dsm" -na;
connectAttr "pCylinderShape26.iog.og[1]" "lambert6SG.dsm" -na;
connectAttr "pCylinderShape3.iog.og[0]" "lambert6SG.dsm" -na;
connectAttr "pCylinderShape3.ciog.cog[0]" "lambert6SG.dsm" -na;
connectAttr "pCubeShape25.iog.og[0]" "lambert6SG.dsm" -na;
connectAttr "pCubeShape25.iog.og[2]" "lambert6SG.dsm" -na;
connectAttr "groupId5.msg" "lambert6SG.gn" -na;
connectAttr "groupId11.msg" "lambert6SG.gn" -na;
connectAttr "groupId12.msg" "lambert6SG.gn" -na;
connectAttr "groupId14.msg" "lambert6SG.gn" -na;
connectAttr "groupId16.msg" "lambert6SG.gn" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "white.msg" "materialInfo5.m";
connectAttr ":lambert1.oc" "lambert1SG.ss";
connectAttr "lambert1SG.msg" "materialInfo6.sg";
connectAttr ":lambert1.msg" "materialInfo6.m";
connectAttr "Bouy.oc" "lambert7SG.ss";
connectAttr "pCylinderShape1.iog" "lambert7SG.dsm" -na;
connectAttr "pCylinderShape2.iog" "lambert7SG.dsm" -na;
connectAttr "pCylinderShape14.iog" "lambert7SG.dsm" -na;
connectAttr "pCylinderShape6.iog.og[1]" "lambert7SG.dsm" -na;
connectAttr "groupId8.msg" "lambert7SG.gn" -na;
connectAttr "lambert7SG.msg" "materialInfo7.sg";
connectAttr "Bouy.msg" "materialInfo7.m";
connectAttr "steel.oc" "blinn1SG.ss";
connectAttr "pCylinderShape4.iog" "blinn1SG.dsm" -na;
connectAttr "pCubeShape29.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape15.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape16.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape6.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape6.ciog.cog[0]" "blinn1SG.dsm" -na;
connectAttr "pCubeShape39.iog" "blinn1SG.dsm" -na;
connectAttr "pCubeShape40.iog" "blinn1SG.dsm" -na;
connectAttr "pCubeShape41.iog" "blinn1SG.dsm" -na;
connectAttr "pCylinderShape30.iog" "blinn1SG.dsm" -na;
connectAttr "groupId6.msg" "blinn1SG.gn" -na;
connectAttr "groupId7.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo8.sg";
connectAttr "steel.msg" "materialInfo8.m";
connectAttr "lader.oc" "lambert8SG.ss";
connectAttr "pCylinderShape9.iog" "lambert8SG.dsm" -na;
connectAttr "pCylinderShape12.iog" "lambert8SG.dsm" -na;
connectAttr "pCylinderShape13.iog" "lambert8SG.dsm" -na;
connectAttr "pCylinderShape11.iog" "lambert8SG.dsm" -na;
connectAttr "pCylinderShape10.iog" "lambert8SG.dsm" -na;
connectAttr "pCubeShape32.iog" "lambert8SG.dsm" -na;
connectAttr "lambert8SG.msg" "materialInfo9.sg";
connectAttr "lader.msg" "materialInfo9.m";
connectAttr "polyTweak64.out" "polyBevel7.ip";
connectAttr "pCubeShape32.wm" "polyBevel7.mp";
connectAttr "polyCube13.out" "polyTweak64.ip";
connectAttr "polyBevel7.out" "polyExtrudeFace56.ip";
connectAttr "pCubeShape32.wm" "polyExtrudeFace56.mp";
connectAttr "polyExtrudeFace56.out" "polyExtrudeFace57.ip";
connectAttr "pCubeShape32.wm" "polyExtrudeFace57.mp";
connectAttr "polyExtrudeFace57.out" "polyExtrudeFace58.ip";
connectAttr "pCubeShape32.wm" "polyExtrudeFace58.mp";
connectAttr "polyTweak65.out" "polyExtrudeFace59.ip";
connectAttr "pCylinderShape14.wm" "polyExtrudeFace59.mp";
connectAttr "polyCylinder7.out" "polyTweak65.ip";
connectAttr "polyTweak66.out" "polyExtrudeFace60.ip";
connectAttr "pCylinderShape14.wm" "polyExtrudeFace60.mp";
connectAttr "polyExtrudeFace59.out" "polyTweak66.ip";
connectAttr "polyExtrudeFace60.out" "polyExtrudeFace61.ip";
connectAttr "pCylinderShape14.wm" "polyExtrudeFace61.mp";
connectAttr "polyTweak67.out" "polyExtrudeFace62.ip";
connectAttr "pCylinderShape14.wm" "polyExtrudeFace62.mp";
connectAttr "polyExtrudeFace61.out" "polyTweak67.ip";
connectAttr "polyTweak68.out" "polySplitRing22.ip";
connectAttr "pCubeShape33.wm" "polySplitRing22.mp";
connectAttr "polyCube14.out" "polyTweak68.ip";
connectAttr "polyTweak69.out" "polyExtrudeFace63.ip";
connectAttr "pCubeShape33.wm" "polyExtrudeFace63.mp";
connectAttr "polySplitRing22.out" "polyTweak69.ip";
connectAttr "polyTweak70.out" "polyExtrudeFace64.ip";
connectAttr "pCubeShape33.wm" "polyExtrudeFace64.mp";
connectAttr "polyExtrudeFace63.out" "polyTweak70.ip";
connectAttr "polyExtrudeFace64.out" "polyBevel8.ip";
connectAttr "pCubeShape33.wm" "polyBevel8.mp";
connectAttr "polyTweak71.out" "polySplitRing23.ip";
connectAttr "pCubeShape34.wm" "polySplitRing23.mp";
connectAttr "polyCube15.out" "polyTweak71.ip";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "pCubeShape34.wm" "polySplitRing24.mp";
connectAttr "polySplitRing24.out" "polyExtrudeFace65.ip";
connectAttr "pCubeShape34.wm" "polyExtrudeFace65.mp";
connectAttr "polyExtrudeFace65.out" "polyExtrudeFace66.ip";
connectAttr "pCubeShape34.wm" "polyExtrudeFace66.mp";
connectAttr "polySurfaceShape1.o" "polySplitRing25.ip";
connectAttr "pCylinderShape18.wm" "polySplitRing25.mp";
connectAttr "polySurfaceShape2.o" "polyBevel9.ip";
connectAttr "pCylinderShape19.wm" "polyBevel9.mp";
connectAttr "polyTweak72.out" "polyBevel10.ip";
connectAttr "pCylinderShape20.wm" "polyBevel10.mp";
connectAttr "polyCylinder10.out" "polyTweak72.ip";
connectAttr "polyCylinder11.out" "polySplitRing26.ip";
connectAttr "pCylinderShape24.wm" "polySplitRing26.mp";
connectAttr "polyTweak73.out" "polyExtrudeFace67.ip";
connectAttr "pCylinderShape24.wm" "polyExtrudeFace67.mp";
connectAttr "polySplitRing26.out" "polyTweak73.ip";
connectAttr "polyExtrudeFace67.out" "polyBevel11.ip";
connectAttr "pCylinderShape24.wm" "polyBevel11.mp";
connectAttr "polyTweak74.out" "polyExtrudeFace68.ip";
connectAttr "pCylinderShape24.wm" "polyExtrudeFace68.mp";
connectAttr "polyBevel11.out" "polyTweak74.ip";
connectAttr "polyTweak75.out" "polyBevel12.ip";
connectAttr "pCylinderShape24.wm" "polyBevel12.mp";
connectAttr "polyExtrudeFace68.out" "polyTweak75.ip";
connectAttr "polyTweak76.out" "polyExtrudeFace69.ip";
connectAttr "pCylinderShape24.wm" "polyExtrudeFace69.mp";
connectAttr "polyBevel12.out" "polyTweak76.ip";
connectAttr "polyTweak77.out" "polyExtrudeFace70.ip";
connectAttr "pCylinderShape24.wm" "polyExtrudeFace70.mp";
connectAttr "polyExtrudeFace69.out" "polyTweak77.ip";
connectAttr "polyTweak78.out" "polyExtrudeFace71.ip";
connectAttr "pCylinderShape24.wm" "polyExtrudeFace71.mp";
connectAttr "polyExtrudeFace70.out" "polyTweak78.ip";
connectAttr "Blue.oc" "blinn2SG.ss";
connectAttr "pCylinderShape24.iog" "blinn2SG.dsm" -na;
connectAttr "pCylinderShape25.iog" "blinn2SG.dsm" -na;
connectAttr "pCylinderShape3.iog.og[1]" "blinn2SG.dsm" -na;
connectAttr "pPipeShape1.iog" "blinn2SG.dsm" -na;
connectAttr "groupId13.msg" "blinn2SG.gn" -na;
connectAttr "blinn2SG.msg" "materialInfo10.sg";
connectAttr "Blue.msg" "materialInfo10.m";
connectAttr "polyTweak79.out" "polyExtrudeFace72.ip";
connectAttr "pCylinderShape25.wm" "polyExtrudeFace72.mp";
connectAttr "polyCylinder12.out" "polyTweak79.ip";
connectAttr "polyTweak80.out" "polyExtrudeFace73.ip";
connectAttr "pCylinderShape25.wm" "polyExtrudeFace73.mp";
connectAttr "polyExtrudeFace72.out" "polyTweak80.ip";
connectAttr "polyTweak81.out" "polyBevel13.ip";
connectAttr "pCylinderShape25.wm" "polyBevel13.mp";
connectAttr "polyExtrudeFace73.out" "polyTweak81.ip";
connectAttr "polyCylinder13.out" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId5.id" "groupParts2.gi";
connectAttr "polyBevel6.out" "groupParts3.ig";
connectAttr "groupId6.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId8.id" "groupParts4.gi";
connectAttr "polyCube16.out" "polyTweak82.ip";
connectAttr "polyTweak82.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polyTweak83.out" "polyExtrudeFace74.ip";
connectAttr "pCubeShape35.wm" "polyExtrudeFace74.mp";
connectAttr "polySplit15.out" "polyTweak83.ip";
connectAttr "blinn3.oc" "blinn3SG.ss";
connectAttr "blinn3SG.msg" "materialInfo11.sg";
connectAttr "blinn3.msg" "materialInfo11.m";
connectAttr "Plant.oc" "blinn4SG.ss";
connectAttr "pCubeShape35.iog" "blinn4SG.dsm" -na;
connectAttr "pCubeShape36.iog" "blinn4SG.dsm" -na;
connectAttr "|group3|pCube37|pCubeShape37.iog" "blinn4SG.dsm" -na;
connectAttr "|group3|pCube38|pCubeShape38.iog" "blinn4SG.dsm" -na;
connectAttr "|group4|pCube37|pCubeShape37.iog" "blinn4SG.dsm" -na;
connectAttr "|group4|pCube38|pCubeShape38.iog" "blinn4SG.dsm" -na;
connectAttr "blinn4SG.msg" "materialInfo12.sg";
connectAttr "Plant.msg" "materialInfo12.m";
connectAttr "polyBevel4.out" "polyBevel14.ip";
connectAttr "pCylinderShape3.wm" "polyBevel14.mp";
connectAttr "polyBevel14.out" "groupParts5.ig";
connectAttr "groupId11.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId13.id" "groupParts6.gi";
connectAttr "polySurfaceShape3.o" "polySplitRing27.ip";
connectAttr "planksShape.wm" "polySplitRing27.mp";
connectAttr "polySplitRing27.out" "polySplitRing28.ip";
connectAttr "planksShape.wm" "polySplitRing28.mp";
connectAttr "polySplitRing28.out" "polySplitRing29.ip";
connectAttr "planksShape.wm" "polySplitRing29.mp";
connectAttr "polySplitRing29.out" "polySplitRing30.ip";
connectAttr "planksShape.wm" "polySplitRing30.mp";
connectAttr "polySplitRing30.out" "polySplitRing31.ip";
connectAttr "planksShape.wm" "polySplitRing31.mp";
connectAttr "polySplitRing31.out" "polySplitRing32.ip";
connectAttr "planksShape.wm" "polySplitRing32.mp";
connectAttr "polySplitRing32.out" "polySplitRing33.ip";
connectAttr "planksShape.wm" "polySplitRing33.mp";
connectAttr "polySplitRing33.out" "polySplitRing34.ip";
connectAttr "planksShape.wm" "polySplitRing34.mp";
connectAttr "polyTweak84.out" "polyExtrudeFace75.ip";
connectAttr "planksShape.wm" "polyExtrudeFace75.mp";
connectAttr "polySplitRing34.out" "polyTweak84.ip";
connectAttr "polyTweak85.out" "polyExtrudeFace76.ip";
connectAttr "planksShape.wm" "polyExtrudeFace76.mp";
connectAttr "polyExtrudeFace75.out" "polyTweak85.ip";
connectAttr "polyTweak86.out" "polyExtrudeFace77.ip";
connectAttr "planksShape.wm" "polyExtrudeFace77.mp";
connectAttr "polyExtrudeFace76.out" "polyTweak86.ip";
connectAttr "polyTweak87.out" "polyExtrudeFace78.ip";
connectAttr "planksShape.wm" "polyExtrudeFace78.mp";
connectAttr "polyExtrudeFace77.out" "polyTweak87.ip";
connectAttr "polyTweak88.out" "polyExtrudeFace79.ip";
connectAttr "planksShape.wm" "polyExtrudeFace79.mp";
connectAttr "polyExtrudeFace78.out" "polyTweak88.ip";
connectAttr "polyTweak89.out" "polyExtrudeFace80.ip";
connectAttr "planksShape.wm" "polyExtrudeFace80.mp";
connectAttr "polyExtrudeFace79.out" "polyTweak89.ip";
connectAttr "polyTweak90.out" "polyBevel15.ip";
connectAttr "planksShape.wm" "polyBevel15.mp";
connectAttr "polyExtrudeFace80.out" "polyTweak90.ip";
connectAttr "polyBevel15.out" "polyExtrudeFace81.ip";
connectAttr "planksShape.wm" "polyExtrudeFace81.mp";
connectAttr "polyTweak91.out" "polyBevel16.ip";
connectAttr "planksShape.wm" "polyBevel16.mp";
connectAttr "polyExtrudeFace81.out" "polyTweak91.ip";
connectAttr "polyTweak92.out" "polyExtrudeFace82.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace82.mp";
connectAttr "polyExtrudeFace43.out" "polyTweak92.ip";
connectAttr "polyExtrudeFace82.out" "groupParts7.ig";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "|boat_moorings|pCube29|polySurfaceShape4.o" "polyExtrudeFace83.ip";
connectAttr "pCubeShape29.wm" "polyExtrudeFace83.mp";
connectAttr "polyTweak93.out" "polyExtrudeFace84.ip";
connectAttr "pCubeShape29.wm" "polyExtrudeFace84.mp";
connectAttr "polyExtrudeFace83.out" "polyTweak93.ip";
connectAttr "polyTweak94.out" "polyExtrudeFace85.ip";
connectAttr "pCubeShape29.wm" "polyExtrudeFace85.mp";
connectAttr "polyExtrudeFace84.out" "polyTweak94.ip";
connectAttr "polyTweak95.out" "polyExtrudeFace86.ip";
connectAttr "pCubeShape42.wm" "polyExtrudeFace86.mp";
connectAttr "polyCube17.out" "polyTweak95.ip";
connectAttr "polyExtrudeFace86.out" "polyExtrudeFace87.ip";
connectAttr "pCubeShape42.wm" "polyExtrudeFace87.mp";
connectAttr "polyExtrudeFace87.out" "polyBevel17.ip";
connectAttr "pCubeShape42.wm" "polyBevel17.mp";
connectAttr "polyTweak96.out" "polyBevel18.ip";
connectAttr "pCubeShape42.wm" "polyBevel18.mp";
connectAttr "polyBevel17.out" "polyTweak96.ip";
connectAttr "polyBevel18.out" "polyBevel19.ip";
connectAttr "pCubeShape42.wm" "polyBevel19.mp";
connectAttr "polyBevel19.out" "polyBevel20.ip";
connectAttr "pCubeShape42.wm" "polyBevel20.mp";
connectAttr "blinn5.oc" "blinn5SG.ss";
connectAttr "blinn5SG.msg" "materialInfo13.sg";
connectAttr "blinn5.msg" "materialInfo13.m";
connectAttr "blinn6.oc" "blinn6SG.ss";
connectAttr "pCubeShape42.iog" "blinn6SG.dsm" -na;
connectAttr "blinn6SG.msg" "materialInfo14.sg";
connectAttr "blinn6.msg" "materialInfo14.m";
connectAttr "groupParts8.og" "polyTweak97.ip";
connectAttr "polyTweak97.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "groupParts9.ig";
connectAttr "groupParts9.og" "groupParts10.ig";
connectAttr "groupParts10.og" "groupParts11.ig";
connectAttr "groupParts11.og" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "groupParts12.ig";
connectAttr "groupParts12.og" "groupParts13.ig";
connectAttr "groupParts13.og" "groupParts14.ig";
connectAttr "groupParts14.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "deleteComponent31.ig";
connectAttr "deleteComponent31.og" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "deleteComponent33.ig";
connectAttr "deleteComponent33.og" "polyCloseBorder3.ip";
connectAttr "polyCloseBorder3.out" "groupParts15.ig";
connectAttr "groupId14.id" "groupParts15.gi";
connectAttr "groupParts15.og" "groupParts16.ig";
connectAttr "groupId15.id" "groupParts16.gi";
connectAttr "groupParts16.og" "groupParts17.ig";
connectAttr "groupId16.id" "groupParts17.gi";
connectAttr "groupParts17.og" "groupParts18.ig";
connectAttr "groupId17.id" "groupParts18.gi";
connectAttr "polyTweak98.out" "polyBevel21.ip";
connectAttr "pCubeShape26.wm" "polyBevel21.mp";
connectAttr "polyExtrudeFace33.out" "polyTweak98.ip";
connectAttr "polyBevel21.out" "polyExtrudeFace88.ip";
connectAttr "pCubeShape26.wm" "polyExtrudeFace88.mp";
connectAttr "polyTweak99.out" "polyBevel22.ip";
connectAttr "pCubeShape34.wm" "polyBevel22.mp";
connectAttr "polyExtrudeFace66.out" "polyTweak99.ip";
connectAttr "polyBevel22.out" "polyBevel23.ip";
connectAttr "pCubeShape34.wm" "polyBevel23.mp";
connectAttr "polyBevel23.out" "polyBevel24.ip";
connectAttr "pCubeShape34.wm" "polyBevel24.mp";
connectAttr "polyTweak100.out" "polyExtrudeFace89.ip";
connectAttr "pCylinderShape26.wm" "polyExtrudeFace89.mp";
connectAttr "groupParts2.og" "polyTweak100.ip";
connectAttr "groupParts18.og" "polyExtrudeFace90.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace90.mp";
connectAttr "polyTweak101.out" "polyExtrudeFace91.ip";
connectAttr "pCubeShape25.wm" "polyExtrudeFace91.mp";
connectAttr "polyExtrudeFace90.out" "polyTweak101.ip";
connectAttr "polyTweak102.out" "polyBevel25.ip";
connectAttr "pCubeShape25.wm" "polyBevel25.mp";
connectAttr "polyExtrudeFace91.out" "polyTweak102.ip";
connectAttr "polyTweak103.out" "polyBevel26.ip";
connectAttr "pCubeShape26.wm" "polyBevel26.mp";
connectAttr "polyExtrudeFace88.out" "polyTweak103.ip";
connectAttr "polyTweak104.out" "polyBevel27.ip";
connectAttr "pCylinderShape4.wm" "polyBevel27.mp";
connectAttr "polyExtrudeFace52.out" "polyTweak104.ip";
connectAttr "polyTweak105.out" "polySplitRing35.ip";
connectAttr "pCylinderShape17.wm" "polySplitRing35.mp";
connectAttr "polyCylinder9.out" "polyTweak105.ip";
connectAttr "polyTweak106.out" "polyExtrudeFace92.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeFace92.mp";
connectAttr "polyPipe1.out" "polyTweak106.ip";
connectAttr "polyTweak107.out" "polyExtrudeFace93.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeFace93.mp";
connectAttr "polyExtrudeFace92.out" "polyTweak107.ip";
connectAttr "polyTweak108.out" "polyExtrudeFace94.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeFace94.mp";
connectAttr "polyExtrudeFace93.out" "polyTweak108.ip";
connectAttr "polyTweak109.out" "polySplitRing36.ip";
connectAttr "pPipeShape1.wm" "polySplitRing36.mp";
connectAttr "polyExtrudeFace94.out" "polyTweak109.ip";
connectAttr "polySplitRing36.out" "polySplitRing37.ip";
connectAttr "pPipeShape1.wm" "polySplitRing37.mp";
connectAttr "polySplitRing37.out" "polyExtrudeFace95.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeFace95.mp";
connectAttr "polyTweak110.out" "polyMergeVert1.ip";
connectAttr "pPipeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace95.out" "polyTweak110.ip";
connectAttr "polyTweak111.out" "polySplitRing38.ip";
connectAttr "pPipeShape1.wm" "polySplitRing38.mp";
connectAttr "polyMergeVert1.out" "polyTweak111.ip";
connectAttr "polyTweak112.out" "polyExtrudeFace96.ip";
connectAttr "pPipeShape1.wm" "polyExtrudeFace96.mp";
connectAttr "polySplitRing38.out" "polyTweak112.ip";
connectAttr "polyExtrudeFace96.out" "polyTweak113.ip";
connectAttr "polyTweak113.out" "deleteComponent34.ig";
connectAttr "deleteComponent34.og" "deleteComponent35.ig";
connectAttr "deleteComponent35.og" "polyCloseBorder4.ip";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn5SG.pa" ":renderPartition.st" -na;
connectAttr "blinn6SG.pa" ":renderPartition.st" -na;
connectAttr "stone.msg" ":defaultShaderList1.s" -na;
connectAttr "Sand.msg" ":defaultShaderList1.s" -na;
connectAttr "wood.msg" ":defaultShaderList1.s" -na;
connectAttr "water1.msg" ":defaultShaderList1.s" -na;
connectAttr "white.msg" ":defaultShaderList1.s" -na;
connectAttr "Bouy.msg" ":defaultShaderList1.s" -na;
connectAttr "steel.msg" ":defaultShaderList1.s" -na;
connectAttr "lader.msg" ":defaultShaderList1.s" -na;
connectAttr "Blue.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn3.msg" ":defaultShaderList1.s" -na;
connectAttr "Plant.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn5.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn6.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape26.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog.og[4]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
// End of Outdoor_scene_.ma
