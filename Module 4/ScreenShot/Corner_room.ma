//Maya ASCII 2024 scene
//Name: Corner_room.ma
//Last modified: Fri, Sep 20, 2024 10:30:09 AM
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
fileInfo "UUID" "BAC5E371-40ED-3CFC-891F-D3A0E5920A4D";
createNode transform -s -n "persp";
	rename -uid "EB6DD354-4C68-BCAF-3394-DB900876FD27";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.944650517144842 11.777458537318745 7.77493611735912 ;
	setAttr ".r" -type "double3" -35.999999999993889 -305.60000000001617 0 ;
	setAttr ".rpt" -type "double3" 1.8869745210502117e-17 -3.8630176655322265e-17 1.4355466472962995e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F4915474-45D6-B304-5BD5-8CA5A71FE5CE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 16.113138084322372;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.52595356200669663 1.2205138742753339 2.6861254930757781 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CBC35376-4442-C18B-0C0D-B9ADF171B8E1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.52068147598447334 1000.1923218396025 13.600517203320841 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "609F7B03-4013-58A9-FE6A-AE930623F378";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.2189290763208;
	setAttr ".ow" 8.4235498554209975;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0.52068147598447356 -1.0266072367183154 13.600517203320841 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "4E902795-46CC-D4C0-B091-029EEC35F135";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9FB29B8E-4DF5-B4AF-2E20-A09A1E1C562B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "427D9F76-42E0-226D-0FB8-50902E77F47C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "56D23423-4F48-CC9C-5B3B-0C9C5F77CA72";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Whiteboox_room";
	rename -uid "E9F5AC8E-4214-1614-FF4B-89997A733235";
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "Whiteboox_roomShape" -p "Whiteboox_room";
	rename -uid "C1E826A2-425A-DB60-0F03-FFB6406C77D6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 3 "f[1]" "f[3]" "f[6:7]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.625 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.375 0 0.375 0.25
		 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.125 0 0.125 0.25 0.625 0.75 0.375 0.75 0.625
		 1 0.375 1 0.125 0 0.375 0 0.375 0.25 0.125 0.25 0.625 0.75 0.625 1 0.375 1 0.375
		 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  -3 0 2.97000003 3 0 3 -3 5.28307915 3.029999733
		 -3 5.28307915 -3 -3 0 -3 3 0 -3 -3.21970439 5.28307915 -3.22063565 3 -0.11999989 -3.22063565
		 -3.21970439 -0.11999989 -3.22063565 3 -0.11999989 3.000000238419 -3.21970439 -0.11999989 2.97000003
		 -3.21970439 5.28307915 3.029999971;
	setAttr -s 19 ".ed[0:18]"  0 1 0 4 5 0 0 2 0 2 3 0 3 4 0 4 0 0 5 1 0
		 3 6 0 5 7 0 8 7 0 6 8 0 1 9 0 7 9 0 0 10 0 10 9 0 8 10 0 2 11 0 10 11 0 11 6 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 9 12 -15 -16
		mu 0 4 2 16 17 18
		f 4 15 17 18 10
		mu 0 4 6 19 20 21
		f 4 5 0 -7 -2
		mu 0 4 9 11 10 8
		f 4 -5 -4 -3 -6
		mu 0 4 12 15 14 13
		f 4 6 11 -13 -9
		mu 0 4 3 5 17 16
		f 4 -1 13 14 -12
		mu 0 4 5 4 18 17
		f 4 2 16 -18 -14
		mu 0 4 0 1 20 19
		f 4 3 7 -19 -17
		mu 0 4 1 7 21 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tiles";
	rename -uid "FA72EA77-49A0-CCF1-451B-FE8866568FD4";
createNode transform -n "Tile03" -p "Tiles";
	rename -uid "09F7A995-4A99-1173-5AD9-02A3ACAAAEED";
	setAttr ".rp" -type "double3" 3 0 1 ;
	setAttr ".sp" -type "double3" 3 0 1 ;
createNode mesh -n "TileShape3" -p "Tile03";
	rename -uid "D5B468BC-4AD0-42DD-6736-06ACA572A880";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.5 0.5 2.5 0.5 0.5 2.5 
		0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 
		0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile04" -p "Tiles";
	rename -uid "EF3888CB-43EE-1F6D-5F0C-80A33BD35EA7";
	setAttr ".rp" -type "double3" 3 0 0 ;
	setAttr ".sp" -type "double3" 3 0 0 ;
createNode mesh -n "TileShape4" -p "Tile04";
	rename -uid "47F92D0E-40A6-A6AE-7BEF-9289313A8992";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.5 -0.5 2.5 0.5 -0.5 
		2.5 0.5 -0.5 2.5 0.5 -0.5 2.5 0.5 -0.5 2.5 0.5 -0.5 2.5 0.5 -0.5 2.5 0.5 -0.5 2.5 
		0.5 -0.5 2.5 0.5 -0.5 2.5 0.5 -0.5 2.5 0.5 -0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile06" -p "Tiles";
	rename -uid "257C09BB-4A3F-B9CA-56BB-0E9EABFCD8F8";
	setAttr ".rp" -type "double3" 3 0 -2 ;
	setAttr ".sp" -type "double3" 3 0 -2 ;
createNode mesh -n "TileShape6" -p "Tile06";
	rename -uid "863DBEB8-4D0E-33D7-EADF-A39BEB0E952A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.5 -2.5 2.5 0.5 -2.5 
		2.5 0.5 -2.5 2.5 0.5 -2.5 2.5 0.5 -2.5 2.5 0.5 -2.5 2.5 0.5 -2.5 2.5 0.5 -2.5 2.5 
		0.5 -2.5 2.5 0.5 -2.5 2.5 0.5 -2.5 2.5 0.5 -2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile07" -p "Tiles";
	rename -uid "956503E3-4AD0-184E-441E-D8AC84DBAA42";
	setAttr ".rp" -type "double3" 2 0 3 ;
	setAttr ".sp" -type "double3" 2 0 3 ;
createNode mesh -n "TileShape7" -p "Tile07";
	rename -uid "2DDE39F8-44D9-7231-8348-619B6879EDBA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.5 2.5 1.5 0.5 2.5 1.5 
		0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5 1.5 
		0.5 2.5 1.5 0.5 2.5 1.5 0.5 2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile14" -p "Tiles";
	rename -uid "2EF8C8DF-470D-4909-BBE2-C6A1033C83AB";
	setAttr ".rp" -type "double3" 1 0 2 ;
	setAttr ".sp" -type "double3" 1 0 2 ;
createNode mesh -n "TileShape14" -p "Tile14";
	rename -uid "82878065-41EB-8684-006A-91BB6381434F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.5 1.5 0.5 0.5 1.5 0.5 
		0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5 0.5 
		0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile09" -p "Tiles";
	rename -uid "6C8CE770-4DF0-E773-5467-5F8FCCC02AAA";
	setAttr ".rp" -type "double3" 2 0 1 ;
	setAttr ".sp" -type "double3" 2 0 1 ;
createNode mesh -n "TileShape9" -p "Tile09";
	rename -uid "FC8E30ED-4C94-B6A9-2960-6DBBD6F6DF05";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.5 0.5 1.5 0.5 0.5 1.5 
		0.5 0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5 0.5 0.5 1.5 
		0.5 0.5 1.5 0.5 0.5 1.5 0.5 0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile08" -p "Tiles";
	rename -uid "61DDBB61-4E8E-B645-3FC9-269DFC78C7FA";
	setAttr ".rp" -type "double3" 2 0 2 ;
	setAttr ".sp" -type "double3" 2 0 2 ;
createNode mesh -n "TileShape8" -p "Tile08";
	rename -uid "AB52221B-41F4-6B55-FFA4-7CAE1F52CE56";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.5 1.5 1.5 0.5 1.5 1.5 
		0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5 1.5 
		0.5 1.5 1.5 0.5 1.5 1.5 0.5 1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile11" -p "Tiles";
	rename -uid "A4CED6D3-42A5-F501-046A-43852E65BD2B";
	setAttr ".rp" -type "double3" 2 0 -1 ;
	setAttr ".sp" -type "double3" 2 0 -1 ;
createNode mesh -n "TileShape11" -p "Tile11";
	rename -uid "B748C9C5-4C6D-9350-B2F3-17BB9CE4AB67";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.5 -1.5 1.5 0.5 -1.5 
		1.5 0.5 -1.5 1.5 0.5 -1.5 1.5 0.5 -1.5 1.5 0.5 -1.5 1.5 0.5 -1.5 1.5 0.5 -1.5 1.5 
		0.5 -1.5 1.5 0.5 -1.5 1.5 0.5 -1.5 1.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile18" -p "Tiles";
	rename -uid "8A067DBE-4F37-F183-CFDB-7E9FA479D2A8";
	setAttr ".rp" -type "double3" 1 0 -2 ;
	setAttr ".sp" -type "double3" 1 0 -2 ;
createNode mesh -n "TileShape18" -p "Tile18";
	rename -uid "5A497720-4019-FEDE-D411-41BC29760AAB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.5 -2.5 0.5 0.5 -2.5 
		0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 
		0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile01" -p "Tiles";
	rename -uid "E8A42FBA-4042-1481-8ADE-7195D8030B21";
	setAttr ".rp" -type "double3" 3 0 3 ;
	setAttr ".sp" -type "double3" 3 0 3 ;
createNode mesh -n "TileShape1" -p "Tile01";
	rename -uid "C11E0E2C-45A3-E19A-422A-8A909E09A627";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.5 2.5 2.5 0.5 2.5 2.5 
		0.5 2.5 2.5 0.5 2.5 2.5 0.5 2.5 2.5 0.5 2.5 2.5 0.5 2.5 2.5 0.5 2.5 2.5 0.5 2.5 2.5 
		0.5 2.5 2.5 0.5 2.5 2.5 0.5 2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile10" -p "Tiles";
	rename -uid "D054455A-4A20-B1D4-2316-1C8F5469B984";
	setAttr ".rp" -type "double3" 2 0 0 ;
	setAttr ".sp" -type "double3" 2 0 0 ;
createNode mesh -n "TileShape10" -p "Tile10";
	rename -uid "CF955FB2-42B7-A093-77E1-BD89D4F8ABB1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.5 -0.5 1.5 0.5 -0.5 
		1.5 0.5 -0.5 1.5 0.5 -0.5 1.5 0.5 -0.5 1.5 0.5 -0.5 1.5 0.5 -0.5 1.5 0.5 -0.5 1.5 
		0.5 -0.5 1.5 0.5 -0.5 1.5 0.5 -0.5 1.5 0.5 -0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile13" -p "Tiles";
	rename -uid "4C945797-44AA-BAF6-12C5-A5B6013D5FD1";
	setAttr ".rp" -type "double3" 1 0 3 ;
	setAttr ".sp" -type "double3" 1 0 3 ;
createNode mesh -n "TileShape13" -p "Tile13";
	rename -uid "C052D93F-4144-0BE5-04FE-85B7820F4DFF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.5 2.5 0.5 0.5 2.5 0.5 
		0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5 0.5 
		0.5 2.5 0.5 0.5 2.5 0.5 0.5 2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile15" -p "Tiles";
	rename -uid "73EB4489-495A-ACCB-ACB8-DCAEB4B3089C";
	setAttr ".rp" -type "double3" 1 0 1 ;
	setAttr ".sp" -type "double3" 1 0 1 ;
createNode mesh -n "TileShape15" -p "Tile15";
	rename -uid "AC4685C2-41E9-486E-1056-EDA5CA5F43AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 
		0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 
		0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile12" -p "Tiles";
	rename -uid "4CC64299-410C-47FD-F7CF-CA8D1538AC5F";
	setAttr ".rp" -type "double3" 2 0 -2 ;
	setAttr ".sp" -type "double3" 2 0 -2 ;
createNode mesh -n "TileShape12" -p "Tile12";
	rename -uid "BE58AA80-4BF6-6923-AC66-8A9E356D5857";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  1.5 0.5 -2.5 1.5 0.5 -2.5 
		1.5 0.5 -2.5 1.5 0.5 -2.5 1.5 0.5 -2.5 1.5 0.5 -2.5 1.5 0.5 -2.5 1.5 0.5 -2.5 1.5 
		0.5 -2.5 1.5 0.5 -2.5 1.5 0.5 -2.5 1.5 0.5 -2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile16" -p "Tiles";
	rename -uid "1C002C76-4EDA-D43A-196F-36968C3A7908";
	setAttr ".rp" -type "double3" 1 0 0 ;
	setAttr ".sp" -type "double3" 1 0 0 ;
createNode mesh -n "TileShape16" -p "Tile16";
	rename -uid "78AE0920-41B9-029A-14C8-76B13501D93A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.5 -0.5 0.5 0.5 -0.5 
		0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 
		0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile02" -p "Tiles";
	rename -uid "762E3FA1-4697-A536-B8A3-4A9AF9E889F7";
	setAttr ".rp" -type "double3" 3 0 2 ;
	setAttr ".sp" -type "double3" 3 0 2 ;
createNode mesh -n "TileShape2" -p "Tile02";
	rename -uid "659D815A-4293-04F7-7692-64B167E6E354";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.5 1.5 2.5 0.5 1.5 2.5 
		0.5 1.5 2.5 0.5 1.5 2.5 0.5 1.5 2.5 0.5 1.5 2.5 0.5 1.5 2.5 0.5 1.5 2.5 0.5 1.5 2.5 
		0.5 1.5 2.5 0.5 1.5 2.5 0.5 1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile27" -p "Tiles";
	rename -uid "32AD68DA-45B8-F34A-C18B-E1BAC4515DDA";
	setAttr ".rp" -type "double3" -1 0 1 ;
	setAttr ".sp" -type "double3" -1 0 1 ;
createNode mesh -n "TileShape27" -p "Tile27";
	rename -uid "E6668F40-40C0-59EF-2B48-079014914BC1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.5 0.5 -1.5 0.5 0.5 
		-1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 
		0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile33" -p "Tiles";
	rename -uid "58A17675-40DB-567C-6AB2-47B1ACD05A9D";
	setAttr ".rp" -type "double3" -2 0 1 ;
	setAttr ".sp" -type "double3" -2 0 1 ;
createNode mesh -n "TileShape33" -p "Tile33";
	rename -uid "C51FBD9E-4BDD-B703-8CB9-33865C0ED0F6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.5 0.5 -2.5 0.5 0.5 
		-2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 
		0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5 -2.5 0.5 0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile30" -p "Tiles";
	rename -uid "023D5467-4AA7-939F-219C-A29C0EB437AD";
	setAttr ".rp" -type "double3" -1 0 -2 ;
	setAttr ".sp" -type "double3" -1 0 -2 ;
createNode mesh -n "TileShape30" -p "Tile30";
	rename -uid "4A6A5D5C-45B3-8830-46C3-4DBA493ED75B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.5 -2.5 -1.5 0.5 -2.5 
		-1.5 0.5 -2.5 -1.5 0.5 -2.5 -1.5 0.5 -2.5 -1.5 0.5 -2.5 -1.5 0.5 -2.5 -1.5 0.5 -2.5 
		-1.5 0.5 -2.5 -1.5 0.5 -2.5 -1.5 0.5 -2.5 -1.5 0.5 -2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile20" -p "Tiles";
	rename -uid "38031D4D-4E58-6B74-DF5C-44AD301F1536";
	setAttr ".rp" -type "double3" 0 0 2 ;
	setAttr ".sp" -type "double3" 0 0 2 ;
createNode mesh -n "TileShape20" -p "Tile20";
	rename -uid "1E749CE6-4C51-8564-D06C-4A9E113328AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.5 1.5 -0.5 0.5 1.5 
		-0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 
		0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5 -0.5 0.5 1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile24" -p "Tiles";
	rename -uid "2D1EB70A-419F-D6F1-5FE5-66BCE92197C1";
	setAttr ".rp" -type "double3" 0 0 -2 ;
	setAttr ".sp" -type "double3" 0 0 -2 ;
createNode mesh -n "TileShape24" -p "Tile24";
	rename -uid "2CF0C0BA-4806-EB79-8C0A-F9BD25DC621E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.5 -2.5 -0.5 0.5 -2.5 
		-0.5 0.5 -2.5 -0.5 0.5 -2.5 -0.5 0.5 -2.5 -0.5 0.5 -2.5 -0.5 0.5 -2.5 -0.5 0.5 -2.5 
		-0.5 0.5 -2.5 -0.5 0.5 -2.5 -0.5 0.5 -2.5 -0.5 0.5 -2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile28" -p "Tiles";
	rename -uid "4EC47143-427A-9E04-FC67-719BCD14EC4C";
	setAttr ".rp" -type "double3" -1 0 0 ;
	setAttr ".sp" -type "double3" -1 0 0 ;
createNode mesh -n "TileShape28" -p "Tile28";
	rename -uid "4B3D0369-49B9-7CD6-FD3A-CC890C8968E5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.5 -0.5 -1.5 0.5 -0.5 
		-1.5 0.5 -0.5 -1.5 0.5 -0.5 -1.5 0.5 -0.5 -1.5 0.5 -0.5 -1.5 0.5 -0.5 -1.5 0.5 -0.5 
		-1.5 0.5 -0.5 -1.5 0.5 -0.5 -1.5 0.5 -0.5 -1.5 0.5 -0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile35" -p "Tiles";
	rename -uid "7CDDF53F-435C-279A-2BF9-AFAFE7FD2255";
	setAttr ".rp" -type "double3" -2 0 -1 ;
	setAttr ".sp" -type "double3" -2 0 -1 ;
createNode mesh -n "TileShape35" -p "Tile35";
	rename -uid "FDBE1B6E-4BCD-6A97-D4A6-A587DA6E94DC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.5 -1.5 -2.5 0.5 -1.5 
		-2.5 0.5 -1.5 -2.5 0.5 -1.5 -2.5 0.5 -1.5 -2.5 0.5 -1.5 -2.5 0.5 -1.5 -2.5 0.5 -1.5 
		-2.5 0.5 -1.5 -2.5 0.5 -1.5 -2.5 0.5 -1.5 -2.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile23" -p "Tiles";
	rename -uid "E96976B6-462D-4299-4009-768622083A92";
	setAttr ".rp" -type "double3" 0 0 -1 ;
	setAttr ".sp" -type "double3" 0 0 -1 ;
createNode mesh -n "TileShape23" -p "Tile23";
	rename -uid "24F5DF49-448A-041F-2705-F88DF6D8A81B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.5 -1.5 -0.5 0.5 -1.5 
		-0.5 0.5 -1.5 -0.5 0.5 -1.5 -0.5 0.5 -1.5 -0.5 0.5 -1.5 -0.5 0.5 -1.5 -0.5 0.5 -1.5 
		-0.5 0.5 -1.5 -0.5 0.5 -1.5 -0.5 0.5 -1.5 -0.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile34" -p "Tiles";
	rename -uid "E54D235B-4EF8-FD81-E08F-B7884E5384A5";
	setAttr ".rp" -type "double3" -2 0 0 ;
	setAttr ".sp" -type "double3" -2 0 0 ;
createNode mesh -n "TileShape34" -p "Tile34";
	rename -uid "DE5EE170-42E3-3F55-9500-E59097C9D22B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.5 -0.5 -2.5 0.5 -0.5 
		-2.5 0.5 -0.5 -2.5 0.5 -0.5 -2.5 0.5 -0.5 -2.5 0.5 -0.5 -2.5 0.5 -0.5 -2.5 0.5 -0.5 
		-2.5 0.5 -0.5 -2.5 0.5 -0.5 -2.5 0.5 -0.5 -2.5 0.5 -0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile25" -p "Tiles";
	rename -uid "14EB8966-4826-F945-5984-4EB3C229E86F";
	setAttr ".rp" -type "double3" -1 0 3 ;
	setAttr ".sp" -type "double3" -1 0 3 ;
createNode mesh -n "TileShape25" -p "Tile25";
	rename -uid "3F51A094-4BFF-4229-4011-B6AE26CCD985";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.5 2.5 -1.5 0.5 2.5 
		-1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 
		0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5 -1.5 0.5 2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile21" -p "Tiles";
	rename -uid "6C2D7AD9-4710-8869-6163-AFA7B1AE663F";
	setAttr ".rp" -type "double3" 0 0 1 ;
	setAttr ".sp" -type "double3" 0 0 1 ;
createNode mesh -n "TileShape21" -p "Tile21";
	rename -uid "AB45B870-4B8B-08F4-E243-29BC9081A96E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.5 0.5 -0.5 0.5 0.5 
		-0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 
		0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5 -0.5 0.5 0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile19" -p "Tiles";
	rename -uid "D4306DCC-4A70-8D21-7469-2C89126A2198";
	setAttr ".rp" -type "double3" 0 0 3 ;
	setAttr ".sp" -type "double3" 0 0 3 ;
createNode mesh -n "TileShape19" -p "Tile19";
	rename -uid "EE1F7E3E-4583-FBDA-6D17-529056B886B9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.5 2.5 -0.5 0.5 2.5 
		-0.5 0.5 2.5 -0.5 0.5 2.5 -0.5 0.5 2.5 -0.5 0.5 2.5 -0.5 0.5 2.5 -0.5 0.5 2.5 -0.5 
		0.5 2.5 -0.5 0.5 2.5 -0.5 0.5 2.5 -0.5 0.5 2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile26" -p "Tiles";
	rename -uid "B541C3C3-44A5-52CA-BF4C-8C8292CF428B";
	setAttr ".rp" -type "double3" -1 0 2 ;
	setAttr ".sp" -type "double3" -1 0 2 ;
createNode mesh -n "TileShape26" -p "Tile26";
	rename -uid "79A96036-4A46-5BF7-741F-BCA06F334E49";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.5 1.5 -1.5 0.5 1.5 
		-1.5 0.5 1.5 -1.5 0.5 1.5 -1.5 0.5 1.5 -1.5 0.5 1.5 -1.5 0.5 1.5 -1.5 0.5 1.5 -1.5 
		0.5 1.5 -1.5 0.5 1.5 -1.5 0.5 1.5 -1.5 0.5 1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile29" -p "Tiles";
	rename -uid "9B63F900-4A57-658B-9542-85B1B90036EA";
	setAttr ".rp" -type "double3" -1 0 -1 ;
	setAttr ".sp" -type "double3" -1 0 -1 ;
createNode mesh -n "TileShape29" -p "Tile29";
	rename -uid "23160897-48C5-6C2D-FF9A-DB9EAECD2A59";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -1.5 0.5 -1.5 -1.5 0.5 -1.5 
		-1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5 
		-1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5 -1.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile32" -p "Tiles";
	rename -uid "7B91436F-4B4D-1BAB-DAE3-87AA76D1BEC7";
	setAttr ".rp" -type "double3" -2 0 2 ;
	setAttr ".sp" -type "double3" -2 0 2 ;
createNode mesh -n "TileShape32" -p "Tile32";
	rename -uid "C9DB6BC6-4F85-46E6-D1FB-B4847C10A217";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.5 1.5 -2.5 0.5 1.5 
		-2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 
		0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5 -2.5 0.5 1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile31" -p "Tiles";
	rename -uid "126BFD77-4E01-616A-3B23-04931F1D94CC";
	setAttr ".rp" -type "double3" -2 0 3 ;
	setAttr ".sp" -type "double3" -2 0 3 ;
createNode mesh -n "TileShape31" -p "Tile31";
	rename -uid "C07C12C3-41F4-2CA3-DDE9-50B49277AF29";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.5 2.5 -2.5 0.5 2.5 
		-2.5 0.5 2.5 -2.5 0.5 2.5 -2.5 0.5 2.5 -2.5 0.5 2.5 -2.5 0.5 2.5 -2.5 0.5 2.5 -2.5 
		0.5 2.5 -2.5 0.5 2.5 -2.5 0.5 2.5 -2.5 0.5 2.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile17" -p "Tiles";
	rename -uid "7B9F5F03-4223-640E-E6BA-05A69573CB19";
	setAttr ".rp" -type "double3" 1 0 -1 ;
	setAttr ".sp" -type "double3" 1 0 -1 ;
createNode mesh -n "TileShape17" -p "Tile17";
	rename -uid "83CD9E9A-45F2-37D0-C9E6-BDA6D55E8CE6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.5 0.5 -1.5 0.5 0.5 -1.5 
		0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 
		0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5 0.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile22" -p "Tiles";
	rename -uid "CFAFFEE3-461A-0FA3-81C1-9192EC038B6B";
createNode mesh -n "TileShape22" -p "Tile22";
	rename -uid "542FDA2D-49D6-6186-3BCD-6593DC4691BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.5 0.5 -0.5 -0.5 0.5 -0.5 
		-0.5 0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 -0.5 
		-0.5 0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 -0.5 -0.5 0.5 -0.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tile36" -p "Tiles";
	rename -uid "0B841217-4217-29D1-55D6-5DA8B677C13B";
	setAttr ".rp" -type "double3" -2.0000000000000004 -0.01634928852352413 -1.9990253155030362 ;
	setAttr ".sp" -type "double3" -2.0000000000000004 -0.01634928852352413 -1.9990253155030362 ;
createNode mesh -n "TileShape36" -p "Tile36";
	rename -uid "A418AE2D-40A4-5C15-5DF1-8BAF87398FFC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -2.5 0.48365071 -2.4990253 
		-2.5 0.48365071 -2.4990253 -2.5 0.48365071 -2.4990253 -2.5 0.48365071 -2.4990253 
		-2.5 0.48365071 -2.4990253 -2.5 0.48365071 -2.4990253 -2.5 0.48365071 -2.4990253 
		-2.5 0.48365071 -2.4990253 -2.5 0.48365071 -2.4990253 -2.5 0.48365071 -2.4990253 
		-2.5 0.48365071 -2.4990253 -2.5 0.48365071 -2.4990253;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pasted__pCube7" -p "Tiles";
	rename -uid "AA4FC1FC-4CBA-27B5-5460-9383B971EFB9";
	setAttr ".rp" -type "double3" 3 0 -1 ;
	setAttr ".sp" -type "double3" 3 0 -1 ;
createNode mesh -n "pasted__pCubeShape7" -p "pasted__pCube7";
	rename -uid "E5C61FD7-4E89-0CA7-86A6-1E98664D60A9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[2]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[8]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0.53749627 0.38075435 0.49424565 0.625 0 0.375 0.21250375 0.38075435
		 0.25575435 0.61924565 0.25575435 0.61924565 0.49424565 0.625 0.53749627 0.375 0.75
		 0.875 0 0.87499994 0.21250375 0.625 0.21250375 0.125 0 0.375 0 0.125 0.21250375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  2.5 0.5 -1.5 2.5 0.5 -1.5 
		2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 
		0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5 2.5 0.5 -1.5;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.5 -0.5
		 0.5 -0.5 -0.5 -0.5 -0.36955202 0.5 -0.47698259 -0.34653449 0.47698259 0.47698259 -0.34653449 0.47698259
		 0.5 -0.36955202 0.5 -0.47698259 -0.34653449 -0.47698259 -0.5 -0.36955202 -0.5 0.47698259 -0.34653449 -0.47698259
		 0.5 -0.36955202 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 2 0 0 3 1 0 4 5 0 5 8 0 8 9 0
		 9 4 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 10 0 11 9 0 1 7 0 4 0 0 11 3 0 2 9 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 1 3 -1 -3
		mu 0 4 11 0 2 1
		f 4 4 5 6 7
		mu 0 4 6 7 4 3
		f 4 -5 8 9 10
		mu 0 4 7 6 14 8
		f 4 -10 11 12 13
		mu 0 4 8 14 10 9
		f 4 -7 14 -13 15
		mu 0 4 3 4 9 10
		f 4 0 16 -9 17
		mu 0 4 16 5 14 6
		f 4 -11 -14 -15 -6
		mu 0 4 7 8 9 4
		f 4 -16 18 -2 19
		mu 0 4 3 10 0 11
		f 4 -4 -19 -12 -17
		mu 0 4 5 12 13 14
		f 4 2 -18 -8 -20
		mu 0 4 15 16 6 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "window_wall";
	rename -uid "D31C8085-48DA-0F83-356A-AEBC498131AF";
	setAttr ".rp" -type "double3" 3 5.2830791473388672 -3.2206354141235352 ;
	setAttr ".sp" -type "double3" 3 5.2830791473388672 -3.2206354141235352 ;
createNode mesh -n "window_wallShape" -p "window_wall";
	rename -uid "03F3B0BE-46B9-9800-05B7-1294BDD39694";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "e[1]" "e[105]" "e[121]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 3 "e[2]" "e[133]" "e[149]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 5 "e[0:3]" "e[105]" "e[121]" "e[133]" "e[149]";
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 136 ".uvst[0].uvsp[0:135]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 1 1 1 1 0 1 1 1 0 1 0 1 1 1 1 1 0 1
		 0 1 1 1 1 1 0 1 0 1 1 1 1 1 0 1 0 1 1 1 0 1 0 1 1 1 1 1 1 0 0 0 1 0 0 0 1 0 0 0 1
		 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0.49674845 0 0.49674845 1 0.49674845 1 0.49674845
		 1 0.49674845 1 0.49674845 1 0.49674845 0 0.49674845 0 0.49674845 0 0.49674845 0 0.41985115
		 0 0.41985115 1 0.41985115 1 0.41985115 1 0.41985115 1 0.41985115 1 0.41985115 0 0.41985115
		 0 0.41985115 0 0.41985115 0 0.49640054 0 0.49640054 0 0.49640054 0 0.49640054 0 0.49640054
		 0 0.49640054 1 0.49640054 1 0.49640054 1 0.49640054 1 0.49640054 1 0.59261197 0 0.59261197
		 0 0.59261197 0 0.59261197 0 0.59261197 0 0.59261197 1 0.59261197 1 0.59261197 1 0.59261197
		 1 0.59261197 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".pt[0:79]" -type "float3"  1.5966852 2.0686536 -4.6983242 
		1.5966852 2.0686536 -4.6983242 1.5966852 4.5555859 -2.2113919 1.5966852 4.5555859 
		-2.2113919 1.5966852 1.7950912 -4.9718866 1.5966852 1.7950912 -4.9718866 1.5966852 
		4.8291483 -1.9378296 1.5966852 4.8291483 -1.9378296 1.5966852 1.7429408 -4.4795218 
		1.5966852 1.7429408 -4.4795218 1.5966852 1.4693784 -4.7530842 1.5966852 1.4693784 
		-4.7530842 1.5966852 4.2298727 -1.9925897 1.5966852 4.5034351 -1.7190273 1.5966852 
		4.2298727 -1.9925897 1.5966852 4.5034351 -1.7190273 1.5966852 1.5127919 -5.2541862 
		1.5966852 1.5127919 -5.2541862 1.5966852 1.1870791 -5.0353837 1.5966852 1.1870791 
		-5.0353837 1.5966852 2.0796237 -5.2564192 1.5966852 2.0796237 -5.2564192 1.5966852 
		1.7973244 -5.5387187 1.5966852 1.7973244 -5.5387187 1.5966852 1.1848458 -4.4685516 
		1.5966852 1.1848458 -4.4685516 1.5966852 0.90254647 -4.7508512 1.5966852 0.90254647 
		-4.7508512 -1.0849862 -0.11999984 -6.7199941 1.6037259 -0.11999984 -6.7199941 1.6037259 
		-0.44571275 -6.5011916 -0.86528206 -0.44571275 -6.5011916 -1.0849862 1.7950912 -4.9718866 
		-1.0849862 5.2830791 -0.47202218 -0.86528206 1.4693784 -4.7530842 -0.86528206 4.957366 
		-0.25321972 1.6037259 1.7950912 -4.9718866 1.6037259 5.2830791 -0.47202218 1.6037259 
		4.957366 -0.25321972 1.6037259 1.4693784 -4.7530842 1.5966852 1.9781425 -4.6078134 
		1.5966852 1.9781425 -4.6078134 1.5966852 4.465075 -2.1208811 1.5966852 4.465075 -2.1208811 
		1.5966852 1.8162905 -4.5528717 1.5966852 1.8162905 -4.5528717 1.5966852 4.3032227 
		-2.0659394 1.5966852 4.3032227 -2.0659394 1.5966852 3.3530216 -2.869441 1.5966852 
		3.3530216 -2.869441 -0.86528206 3.3530216 -2.869441 -1.0849862 3.6787345 -3.0882435 
		1.5966852 3.6787345 -3.0882435 1.5966852 3.6787345 -3.0882435 1.5966852 3.5882235 
		-2.9977322 1.5966852 3.4263713 -2.9427907 1.5966852 3.1870706 -3.035392 1.5966852 
		3.1870706 -3.035392 -0.86528206 3.1870704 -3.0353923 -1.0849862 3.5127833 -3.2541947 
		1.5966852 3.5127835 -3.2541943 1.5966852 3.5127835 -3.2541943 1.5966852 3.4222724 
		-3.1636834 1.5966852 3.2604203 -3.1087418 1.5966852 3.3530219 -2.8694408 1.5966852 
		3.4263716 -2.9427905 1.5966852 3.5882237 -2.9977322 1.5966852 3.6787348 -3.088243 
		1.5966852 3.6787348 -3.088243 1.6037259 3.6787348 -3.088243 1.6037259 3.3530219 -2.8694408 
		1.5966852 3.3530219 -2.8694408 1.5966852 3.1870701 -3.0353925 1.5966852 3.2604198 
		-3.1087422 1.5966852 3.422272 -3.1636839 1.5966852 3.5127831 -3.2541947 1.5966852 
		3.5127831 -3.2541947 1.6037259 3.5127831 -3.2541947 1.6037259 3.1870701 -3.0353925 
		1.5966852 3.1870701 -3.0353925;
	setAttr -s 80 ".vt[0:79]"  -1.2384429 0 1.47768879 0.5 0 1.47768879
		 -1.2384429 0 -1.0092434883 0.5 0 -1.0092434883 -1.42967176 0 1.75125122 0.69122839 0 1.75125122
		 -1.42967176 0 -1.28280592 0.69122839 0 -1.28280592 -1.2384429 0.32571292 1.47768879
		 0.5 0.32571292 1.47768879 -1.42967176 0.32571292 1.75125122 0.69122839 0.32571292 1.75125122
		 -1.2384429 0.32571292 -1.0092434883 -1.42967176 0.32571292 -1.28280592 0.5 0.32571292 -1.0092434883
		 0.69122839 0.32571292 -1.28280592 -1.42967176 0 2.033550501 0.69122839 0 2.033550501
		 0.69122839 0.32571292 2.033550501 -1.42967176 0.32571292 2.033550501 -1.42967176 -0.28453255 1.75125122
		 0.69122839 -0.28453255 1.75125122 0.69122839 -0.28453255 2.033550501 -1.42967176 -0.28453255 2.033550501
		 -1.42967176 0.61024547 1.75125122 0.69122839 0.61024547 1.75125122 -1.42967176 0.61024547 2.033550501
		 0.69122839 0.61024547 2.033550501 -2.13471842 0 3.49935865 1.39627409 0 3.49935865
		 1.39627409 0.32571292 3.49935865 -2.13471842 0.32571292 3.49935865 -2.13471842 0 1.75125122
		 -2.13471842 0 -2.74861336 -2.13471842 0.32571292 1.75125122 -2.13471842 0.32571292 -2.74861336
		 1.39627409 0 1.75125122 1.39627409 0 -2.74861336 1.39627409 0.32571292 -2.74861336
		 1.39627409 0.32571292 1.75125122 -1.2384429 0.090511084 1.47768879 0.5 0.090511084 1.47768879
		 0.5 0.090511084 -1.0092434883 -1.2384429 0.090511084 -1.0092434883 -1.2384429 0.2523632 1.47768879
		 0.5 0.2523632 1.47768879 0.5 0.2523632 -1.0092434883 -1.2384429 0.2523632 -1.0092434883
		 -1.2384429 0.32571292 -0.13239217 -1.42967176 0.32571292 -0.13239217 -2.13471842 0.32571292 -0.13239217
		 -2.13471842 0 -0.13239217 -1.42967176 0 -0.13239217 -1.2384429 0 -0.13239217 -1.2384429 0.090511084 -0.13239217
		 -1.2384429 0.2523632 -0.13239217 -1.2384429 0.32571292 0.033558846 -1.42967176 0.32571292 0.033558846
		 -2.13471842 0.32571292 0.033559084 -2.13471842 0 0.033559084 -1.42967176 0 0.033558846
		 -1.2384429 0 0.033558846 -1.2384429 0.090511084 0.033558846 -1.2384429 0.2523632 0.033558846
		 0.5 0.32571292 -0.13239241 0.5 0.2523632 -0.13239241 0.5 0.090511084 -0.13239241
		 0.5 0 -0.13239241 0.69122839 0 -0.13239241 1.39627409 0 -0.13239241 1.39627409 0.32571292 -0.13239241
		 0.69122839 0.32571292 -0.13239241 0.5 0.32571292 0.033559322 0.5 0.2523632 0.033559322
		 0.5 0.090511084 0.033559322 0.5 0 0.033559322 0.69122839 0 0.033559322 1.39627409 0 0.033559322
		 1.39627409 0.32571292 0.033559322 0.69122839 0.32571292 0.033559322;
	setAttr -s 164 ".ed[0:163]"  0 1 0 0 61 0 1 75 0 2 3 0 0 4 1 1 5 1 4 5 0
		 2 6 1 4 60 1 3 7 1 5 76 1 6 7 1 0 40 0 1 41 0 8 9 0 8 10 1 10 11 0 9 11 1 2 43 0
		 8 56 0 12 13 1 10 57 1 3 42 0 9 72 0 11 79 1 14 15 1 12 14 0 13 15 1 4 16 0 5 17 0
		 16 17 0 11 18 0 10 19 0 19 18 0 4 20 0 5 21 0 20 21 0 17 22 0 21 22 0 16 23 0 23 22 0
		 20 23 0 10 24 0 11 25 0 24 25 0 19 26 0 24 26 0 18 27 0 26 27 0 25 27 0 16 28 1 17 29 1
		 28 29 0 18 30 1 29 30 0 19 31 1 31 30 0 28 31 0 4 32 1 6 33 1 32 59 0 10 34 1 32 34 1
		 13 35 1 34 58 0 33 35 0 5 36 1 7 37 1 36 77 0 15 38 1 37 38 0 11 39 1 39 78 0 36 39 1
		 33 37 0 35 38 0 39 30 0 36 29 0 32 28 0 34 31 0 40 44 0 41 45 0 40 41 1 42 46 0 41 74 1
		 43 47 0 42 43 1 43 54 1 44 8 0 45 9 0 44 45 1 46 14 0 45 73 1 47 12 0 46 47 1 47 55 1
		 48 12 0 49 13 1 48 49 1 50 35 0 49 50 1 51 33 0 50 51 1 52 6 1 51 52 1 53 2 0 52 53 1
		 54 62 0 53 54 1 55 63 0 54 55 0 55 48 1 56 48 0 57 49 1 56 57 1 58 50 0 57 58 1 59 51 0
		 58 59 1 60 52 1 59 60 1 61 53 0 60 61 1 62 40 1 61 62 1 63 44 1 62 63 0 63 56 1 64 14 0
		 65 46 1 64 65 1 66 42 1 65 66 0 67 3 0 66 67 1 68 7 1 67 68 1 69 37 0 68 69 1 70 38 0
		 69 70 1 71 15 1 70 71 1 71 64 1 72 64 0 73 65 0 72 73 1 74 66 0 73 74 0 75 67 0 74 75 1
		 76 68 1 75 76 1 77 69 0 76 77 1 78 70 0 77 78 1 79 71 1 78 79 1 79 72 1 62 74 0 54 66 0
		 55 65 0 63 73 0;
	setAttr -s 82 -ch 328 ".fc[0:81]" -type "polyFaces" 
		f 4 -15 15 16 -18
		mu 0 4 32 33 34 35
		f 4 19 114 -22 -16
		mu 0 4 36 106 107 39
		f 4 159 -24 17 24
		mu 0 4 135 126 41 42
		f 4 26 25 -28 -21
		mu 0 4 44 45 46 47
		f 4 5 -7 -5 0
		mu 0 4 16 19 18 17
		f 4 4 8 122 -2
		mu 0 4 20 23 110 113
		f 4 152 -11 -6 2
		mu 0 4 129 132 26 25
		f 4 7 11 -10 -4
		mu 0 4 28 31 30 29
		f 4 -1 12 82 -14
		mu 0 4 0 1 80 83
		f 4 52 54 -57 -58
		mu 0 4 60 61 62 63
		f 4 1 124 123 -13
		mu 0 4 4 112 114 81
		f 4 -61 62 64 118
		mu 0 4 109 65 66 108
		f 4 -3 13 84 150
		mu 0 4 130 9 82 128
		f 4 68 156 -73 -74
		mu 0 4 68 133 134 71
		f 4 3 22 86 -19
		mu 0 4 12 13 84 87
		f 4 -75 65 75 -71
		mu 0 4 72 73 74 75
		f 4 36 38 -41 -42
		mu 0 4 52 53 54 55
		f 4 73 76 -55 -78
		mu 0 4 77 76 62 61
		f 4 -45 46 48 -50
		mu 0 4 56 57 58 59
		f 4 -63 78 57 -80
		mu 0 4 79 78 60 63
		f 4 6 35 -37 -35
		mu 0 4 2 3 53 52
		f 4 29 37 -39 -36
		mu 0 4 3 49 54 53
		f 4 -31 39 40 -38
		mu 0 4 49 48 55 54
		f 4 -29 34 41 -40
		mu 0 4 48 2 52 55
		f 4 -17 42 44 -44
		mu 0 4 35 34 57 56
		f 4 32 45 -47 -43
		mu 0 4 34 51 58 57
		f 4 33 47 -49 -46
		mu 0 4 51 50 59 58
		f 4 -32 43 49 -48
		mu 0 4 50 35 56 59
		f 4 30 51 -53 -51
		mu 0 4 48 49 61 60
		f 4 -34 55 56 -54
		mu 0 4 50 51 63 62
		f 4 -9 58 60 120
		mu 0 4 111 7 65 109
		f 4 21 116 -65 -62
		mu 0 4 39 107 108 66
		f 4 10 154 -69 -67
		mu 0 4 10 131 133 68
		f 4 -25 71 72 158
		mu 0 4 135 42 71 134
		f 4 -12 59 74 -68
		mu 0 4 14 15 73 72
		f 4 27 69 -76 -64
		mu 0 4 47 46 75 74
		f 4 31 53 -77 -72
		mu 0 4 35 50 62 76
		f 4 -30 66 77 -52
		mu 0 4 49 3 77 61
		f 4 28 50 -79 -59
		mu 0 4 2 48 60 78
		f 4 -33 61 79 -56
		mu 0 4 51 34 79 63
		f 4 -83 80 90 -82
		mu 0 4 83 80 88 91
		f 4 -85 81 92 148
		mu 0 4 128 82 90 127
		f 4 -87 83 94 -86
		mu 0 4 87 84 92 95
		f 4 -124 126 125 -81
		mu 0 4 81 114 115 89
		f 4 -91 88 14 -90
		mu 0 4 91 88 33 32
		f 4 -93 89 23 146
		mu 0 4 127 90 41 126
		f 4 -95 91 -27 -94
		mu 0 4 95 92 45 44
		f 4 -126 127 -20 -89
		mu 0 4 89 115 106 36
		f 4 96 20 -98 -99
		mu 0 4 96 37 38 97
		f 4 -101 97 63 -100
		mu 0 4 98 97 38 67
		f 4 -102 -103 99 -66
		mu 0 4 64 99 98 67
		f 4 -104 -105 101 -60
		mu 0 4 6 101 99 64
		f 4 -107 103 -8 -106
		mu 0 4 103 100 22 21
		f 4 -109 105 18 87
		mu 0 4 104 102 5 86
		f 4 -111 -88 85 95
		mu 0 4 105 104 86 94
		f 4 -112 -96 93 -97
		mu 0 4 96 105 94 37
		f 4 112 98 -114 -115
		mu 0 4 106 96 97 107
		f 4 -117 113 100 -116
		mu 0 4 108 107 97 98
		f 4 -118 -119 115 102
		mu 0 4 99 109 108 98
		f 4 -120 -121 117 104
		mu 0 4 101 111 109 99
		f 4 -123 119 106 -122
		mu 0 4 113 110 100 103
		f 4 -125 121 108 107
		mu 0 4 114 112 102 104
		f 4 -128 -110 111 -113
		mu 0 4 106 115 105 96
		f 4 -130 -131 128 -92
		mu 0 4 93 117 116 40
		f 4 -132 -133 129 -84
		mu 0 4 85 118 117 93
		f 4 -134 -135 131 -23
		mu 0 4 8 120 118 85
		f 4 9 -136 -137 133
		mu 0 4 24 27 122 119
		f 4 -139 135 67 -138
		mu 0 4 123 121 11 69
		f 4 -141 137 70 -140
		mu 0 4 124 123 69 70
		f 4 -142 -143 139 -70
		mu 0 4 43 125 124 70
		f 4 -129 -144 141 -26
		mu 0 4 40 116 125 43
		f 4 -146 -147 144 130
		mu 0 4 117 127 126 116
		f 4 -150 -151 147 134
		mu 0 4 120 130 128 118
		f 4 136 -152 -153 149
		mu 0 4 119 122 132 129
		f 4 -155 151 138 -154
		mu 0 4 133 131 121 123
		f 4 -157 153 140 -156
		mu 0 4 134 133 123 124
		f 4 -158 -159 155 142
		mu 0 4 125 135 134 124
		f 4 143 -145 -160 157
		mu 0 4 125 116 126 135
		f 4 -108 161 -148 -161
		mu 0 4 114 104 118 128
		f 4 110 162 132 -162
		mu 0 4 104 105 117 118
		f 4 109 163 145 -163
		mu 0 4 105 115 127 117
		f 4 -127 160 -149 -164
		mu 0 4 115 114 128 127;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "sink";
	rename -uid "A5C85FC0-4A72-D3D3-852D-29BD0A309B38";
	setAttr ".rp" -type "double3" -1.6140330233518294 1.7979745864868173 2.1210305008091268 ;
	setAttr ".sp" -type "double3" -1.614033023351829 1.7979745864868173 2.1210305008091273 ;
createNode mesh -n "sinkShape" -p "sink";
	rename -uid "5913C048-4401-0BD3-6B1E-84840ED9CE90";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 272 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.02365092 0.12540546 0.16079561
		 0.92654616 0.160796 0.073452413 0.24723218 0.067244835 0.4139078 0.077245653 0.91056883
		 0.86792904 0.01786493 0.22772045 0.83920443 0.92654639 0.11277691 0.077079222 0.063421384
		 0.084904537 0.033029106 0.099363327 0 0.20164877 0.84687781 0.067762464 0.66408342
		 0.062903523 0.26401356 0.062903501 0 0.20164979 0.014468033 0.071974672 0.039637722
		 0.17828628 0.091181241 0.52504516 0 0.20165247 0.87128133 0.92130512 0.89100742 0.91047984
		 0.90418863 0.89427692 7.3315385e-07 0.20165186 0.84995943 0.098333672 0.15198737
		 0 0.84801215 -4.4703484e-08 0.15198722 -2.9802322e-08 0.84801239 0 0.1499712 0.098316744
		 0.12483298 -5.2154064e-08 0 0.12483299 0.12351157 0.10271689 0.87651938 0.10272449
		 0 0.875166 0.87516558 7.4505806e-09 0.87652111 0.10272411 1 0.12483305 0.87516659
		 -7.4505806e-09 0.12483393 7.4505806e-09 1 0.875166 0.12351353 0.10271537 0.15198746
		 -2.9802322e-08 0.15198749 0.99999952 0.14997131 0.09831541 0.84995955 0.098331235
		 0.84801275 0.99999952 0.84801233 2.9802322e-08 0.92782342 0.10248088 0 0 0.92578012
		 -2.1829958e-08 0 0.10029496 1 0.1002976 0 0 0 0 1 0 0.064917997 0.10686293 0 0 0.064298071
		 -2.6863139e-08 0.93544286 0.10715882 0 0 0.93570167 -3.8375934e-09 0 0.10029541 1
		 0.10029755 1 0 0 0 1 0 0.071868487 0.10267133 0 0 0.07421989 -1.4553362e-08 0.93544286
		 0.10715528 0 0 0.93570173 3.8375605e-09 0 0.10029656 0.99999976 0.10029735 0 1 0
		 0 1 0 0.071868181 0.1026721 0 0 0.074219719 -1.4553305e-08 0.92782342 0.10247973
		 0 0 0.92577988 1.4553362e-08 3.6465096e-07 0.1002962 1 0.10029899 1 1 0 0 1 0 0.064918607
		 0.10686377 0 0 0.064298086 3.8375627e-09 0.89486504 0.12327022 0.99786043 0.085296676
		 0.080460057 0.11452436 0 0.39995998 0.14697322 0.17335752 0.91953975 0.11452551 1
		 0.081437379 0.10513605 0.12326974 2.6863947e-07 0.39996108 0.18935947 0.20081429
		 0.91953969 0.11452483 0.99999994 0.081437632 0.10513497 0.12326576 1.3958218e-06
		 0.39994812 0.18934385 0.20080228 0.89486206 0.12326589 0.99786097 0.085294001 0.080460556
		 0.11452551 1.5449881e-06 0.39995655 0.14698772 0.1733598 0.15198731 0.9204945 0.84801221
		 0.20165536 0.12483298 0.92049426 0.8751651 0.20165336 0.12483449 0.92049497 0.87516719
		 0.20165515 0.15198755 0.92049432 0.84801245 0.20165184 0.92578012 0.20165305 0.84801245
		 0.92049444 1 0.20165408 0.92578024 0.92049408 0.064298078 0.20164995 0 0.92049384
		 0.12483201 0.20165409 0.064298101 0.9204939 0.93570173 0.20166159 0.87516749 0.92049402
		 1 0.20165408 0.93570226 0.92049515 0.074219897 0.2016518 0 0.92049366 0.15198724
		 0.20165524 0.074219927 0.92049408 0.93570137 0.20164955 0.87516594 0.92048752 0.99999893
		 0.20165408 0.93570191 0.92048883 0.074218839 0.20165405 0 0.92049128 0.15198748 0.20165405
		 0.074219413 0.92049426 0.92578042 0.2016498 0.8480128 0.92049408 1 0.20165747 0.92578042
		 0.92049396 0.064298615 0.20165169 9.8020098e-07 0.9204942 0.12483442 0.20165384 0.064298712
		 0.92049462 1 0.92049432 3.8324641e-09 0.081437834 1 0.92049432 0.0021397006 0.085296497
		 0.99999905 0.92049426 0.0021388379 0.085294038 1 0.92049497 1.1555632e-07 0.081437178
		 0.84801346 3.9488077e-06 0.84801251 1 0.15198797 3.5762787e-06 0.15198731 1 0.124833
		 5.2154064e-08 0.12483305 1 0.875166 1 0.87516606 2.0861626e-07 0.87516707 5.5134296e-07
		 0.87516755 1 0.12483394 5.9604645e-08 0.12483451 1 0.1519862 -1.4901161e-08 0.15198755
		 1 0.84801286 1 0.84800971 -1.4901161e-08 0.9257803 1 0.92578071 1.9283129e-06 0 1
		 0 0 1 0 1 1 0.064298101 1 0.064298078 2.6863139e-08 0.93570232 1 0.93570191 2.839819e-07
		 0 1 0 0 1 0 1 1 0.074219935 1 0.074220255 1.7464034e-06 0.93570191 1 0.93570197 1.074517e-07
		 0 1 0 0 1 0 0.99999952 1 0.074219763 1 0.0742191 -7.2766526e-09 0.92578042 1 0.92577863
		 -7.276681e-09 4.752261e-07 1 0 0 1 0 1 1 0.064298719 1 0.064298086 3.0700502e-08
		 1 0.19998103 1 1 0 1 1 0.19998103 1 1 0 1 1 0.19998103 1 1 0 1 1 0.19998103 1 1 0
		 1 0.86792105 0.17335829 0.99999875 0.39995998 0.003802177 0.81404465 0.83892971 0.20081244
		 0.99999988 0.39996117 5.6684456e-07 0.76672798 0.83892775 0.20079836 1 0.39995635
		 5.4266997e-07 0.76670873 0.86792302 0.1733586 1 0.39995968 0.003803412 0.81404865
		 0.99670416 0.81404537 0 0.19998103 0.99999964 0.78552914 0 0.19998109 1 0.78551584
		 0 0.19998109 0.99670571 0.81404567 0 0.19998103 1 0.10492126 0 0.10492126 1 0 0.99999946
		 1 0 1 0 0 0.99999952 0.89634365 0.0018376377 0.91012555 1 0.10492115 0 0.10492118;
	setAttr ".uvst[0].uvsp[250:271]" 1 0 1 1 7.5650905e-07 0.99999923 0 0 0.99840784
		 0.91012669 6.6484262e-07 0.88725728 0 0.10492074 1 0.10492072 0 0.99999654 0 0 1
		 0 0.99999934 1 2.6227889e-07 0.88724577 0.99840677 0.91012591 0 0.1049206 1 0.1049206
		 1.0132784e-06 0.99999958 0 0 1 0 1 0.99999362 0.0018387444 0.91012794 1 0.89633471;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 168 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -2.0533631 1.7614398 1.476804 -2.3174253 
		1.7614398 1.476804 -2.0533631 1.7614398 1.3303416 -2.3174253 1.7614398 1.3303416 
		-2.0762715 1.7538384 1.4669665 -2.2945168 1.7538384 1.4669665 -2.0762715 1.7538384 
		1.3401791 -2.2945168 1.7538384 1.3401791 -2.1200702 1.7680686 1.4604095 -2.1202917 
		1.7698658 1.4592909 -2.1208968 1.7711813 1.4562346 -2.1217237 1.771663 1.4520601 
		-2.2490649 1.771663 1.4520601 -2.2498915 1.7711813 1.4562346 -2.2504969 1.7698658 
		1.4592909 -2.2507184 1.7680686 1.4604095 -2.1083279 1.771663 1.4453971 -2.0999346 
		1.7711813 1.4458081 -2.0937901 1.7698658 1.4461092 -2.0915411 1.7680686 1.4462193 
		-2.0915411 1.7680686 1.3609265 -2.0937901 1.7698658 1.3610367 -2.0999346 1.7711813 
		1.3613377 -2.1083279 1.771663 1.3617488 -2.2792473 1.7680686 1.4462193 -2.2769983 
		1.7698658 1.4461092 -2.2708538 1.7711813 1.4458081 -2.2624605 1.771663 1.4453971 
		-2.2624605 1.771663 1.3617488 -2.2708538 1.7711813 1.3613377 -2.2769983 1.7698658 
		1.3610367 -2.2792473 1.7680686 1.3609265 -2.1217234 1.771663 1.3550858 -2.1208968 
		1.7711813 1.3509109 -2.1202917 1.7698658 1.3478549 -2.1200702 1.7680686 1.346736 
		-2.2507184 1.7680686 1.346736 -2.2504969 1.7698658 1.3478549 -2.2498915 1.7711813 
		1.3509109 -2.2490649 1.771663 1.3550858 -2.1091526 1.7680686 1.4593292 -2.1100302 
		1.7698658 1.4582756 -2.1124275 1.7711813 1.4553967 -2.1157024 1.771663 1.4514641 
		-2.0998971 1.7680686 1.4562532 -2.1015186 1.7698658 1.4554467 -2.1059484 1.7711813 
		1.4532433 -2.1119998 1.771663 1.4502333 -2.0937128 1.7680686 1.4516495 -2.0958314 
		1.7698658 1.4512132 -2.1016192 1.7711813 1.4500208 -2.1095257 1.771663 1.4483917 
		-2.2770755 1.7680686 1.4516495 -2.2749572 1.7698658 1.4512132 -2.2691693 1.7711813 
		1.4500208 -2.2612629 1.771663 1.4483917 -2.2708912 1.7680686 1.4562532 -2.2692699 
		1.7698658 1.4554467 -2.2648401 1.7711813 1.4532433 -2.2587888 1.771663 1.4502333 
		-2.2616358 1.7680686 1.4593292 -2.2607584 1.7698658 1.4582756 -2.2583609 1.7711813 
		1.4553967 -2.2550859 1.771663 1.4514641 -2.0937128 1.7680686 1.3554959 -2.0958314 
		1.7698658 1.3559326 -2.1016192 1.7711813 1.3571248 -2.1095257 1.771663 1.358754 -2.0998971 
		1.7680686 1.3508924 -2.1015186 1.7698658 1.351699 -2.1059484 1.7711813 1.3539023 
		-2.1119998 1.771663 1.3569123 -2.1091526 1.7680686 1.3478163 -2.1100302 1.7698658 
		1.3488702 -2.1124275 1.7711813 1.3517489 -2.1157024 1.771663 1.3556817 -2.2616358 
		1.7680686 1.3478163 -2.2607584 1.7698658 1.3488702 -2.2583609 1.7711813 1.3517489 
		-2.2550859 1.771663 1.3556817 -2.2708912 1.7680686 1.3508924 -2.2692699 1.7698658 
		1.351699 -2.2648401 1.7711813 1.3539023 -2.2587888 1.771663 1.3569123 -2.2770755 
		1.7680686 1.3554959 -2.2749572 1.7698658 1.3559326 -2.2691691 1.7711813 1.3571248 
		-2.2612629 1.771663 1.3587539 -2.1194181 1.7538384 1.4637017 -2.1198792 1.7542535 
		1.4613737 -2.1200702 1.7552556 1.4604095 -2.2513702 1.7538384 1.4637017 -2.2509093 
		1.7542535 1.4613737 -2.2507184 1.7552556 1.4604095 -2.0849228 1.7538384 1.4465436 
		-2.0896027 1.7542535 1.4463145 -2.0915411 1.7552556 1.4462193 -2.0849228 1.7538384 
		1.3606021 -2.0896027 1.7542535 1.3608315 -2.0915411 1.7552556 1.3609265 -2.2858658 
		1.7538384 1.4465436 -2.2811856 1.7542535 1.4463145 -2.2792473 1.7552556 1.4462193 
		-2.2858658 1.7538384 1.3606023 -2.2811856 1.7542535 1.3608315 -2.2792473 1.7552556 
		1.3609265 -2.1194184 1.7538384 1.3434441 -2.1198792 1.7542535 1.345772 -2.1200702 
		1.7552556 1.346736 -2.2513702 1.7538384 1.3434441 -2.2509091 1.7542535 1.345772 -2.2507184 
		1.7552556 1.346736 -2.10657 1.7538384 1.4624302 -2.1083961 1.7542535 1.4602377 -2.1091526 
		1.7552556 1.4593292 -2.0951254 1.7538384 1.4586267 -2.0984995 1.7542535 1.4569484 
		-2.0998971 1.7552556 1.4562532 -2.0874784 1.7538384 1.452934 -2.0918868 1.7542535 
		1.4520258 -2.0937128 1.7552556 1.4516495 -2.2833099 1.7538384 1.452934 -2.2789016 
		1.7542535 1.4520258 -2.2770755 1.7552556 1.4516495 -2.2756629 1.7538384 1.4586267 
		-2.2722888 1.7542535 1.4569484 -2.2708912 1.7552556 1.4562532 -2.2642183 1.7538384 
		1.4624302 -2.2623923 1.7542535 1.4602377 -2.2616358 1.7552556 1.4593292 -2.0874784 
		1.7538384 1.3542116 -2.0918868 1.7542535 1.3551197 -2.0937128 1.7552556 1.3554959 
		-2.0951254 1.7538384 1.3485191 -2.0984995 1.7542535 1.3501973 -2.0998971 1.7552556 
		1.3508924 -2.1065702 1.7538384 1.3447154 -2.1083961 1.7542535 1.3469081 -2.1091526 
		1.7552556 1.3478163 -2.2642183 1.7538384 1.3447154 -2.2623923 1.7542535 1.3469081 
		-2.2616358 1.7552556 1.3478163 -2.2756629 1.7538384 1.3485191 -2.2722888 1.7542535 
		1.3501973 -2.2708912 1.7552556 1.3508924 -2.2833099 1.7538384 1.3542116 -2.2789016 
		1.7542535 1.3551197 -2.2770755 1.7552556 1.3554959 -2.0533631 1.7553586 1.476804 
		-2.0539036 1.7547768 1.4765353 -2.0554426 1.7542837 1.4757698 -2.0577459 1.7539542 
		1.4746243 -2.0604625 1.7538384 1.4732729 -2.3174253 1.7553586 1.476804 -2.3168848 
		1.7547768 1.4765353 -2.3153458 1.7542837 1.4757698 -2.3130426 1.7539542 1.4746243 
		-2.3103259 1.7538384 1.4732729 -2.0533631 1.7553586 1.3303416 -2.0539036 1.7547768 
		1.3306105 -2.0554426 1.7542837 1.331376 -2.0577459 1.7539542 1.3325216 -2.0604625 
		1.7538384 1.3338729 -2.3174253 1.7553586 1.3303416 -2.3168848 1.7547768 1.3306105 
		-2.3153458 1.7542837 1.331376;
	setAttr ".pt[166:167]" -2.3130426 1.7539542 1.3325216 -2.3103259 1.7538384 
		1.3338729;
	setAttr -s 168 ".vt";
	setAttr ".vt[0:165]"  -0.70339274 0.036534786 0.64422655 0.70339215 0.036534786 0.64422655
		 -0.70339274 0.036534786 -0.64422226 0.70339215 0.036534786 -0.64422226 -0.58134913 0.21736383 0.5576849
		 0.58134866 0.21736383 0.5576849 -0.58134913 0.21736383 -0.55768061 0.58134866 0.21736383 -0.55768061
		 -0.34801269 -0.12115693 0.50000286 -0.34683251 -0.16391039 0.4901619 -0.34360838 -0.19520783 0.46327543
		 -0.33920407 -0.20666385 0.42655134 0.33920455 -0.20666385 0.42655134 0.34360862 -0.19520783 0.46327543
		 0.34683251 -0.16391039 0.4901619 0.34801269 -0.12115693 0.50000286 -0.41056943 -0.20666385 0.36793613
		 -0.45528483 -0.19520783 0.37155104 -0.48801875 -0.16391039 0.37420082 -0.50000024 -0.12115693 0.37516928
		 -0.50000024 -0.12115693 -0.3751626 -0.48801875 -0.16391039 -0.37419319 -0.45528483 -0.19520783 -0.37154531
		 -0.41056943 -0.20666385 -0.36792803 0.5 -0.12115693 0.37516928 0.48801851 -0.16391039 0.37420082
		 0.4552846 -0.19520783 0.37155104 0.41056895 -0.20666385 0.36793613 0.41056895 -0.20666385 -0.36792803
		 0.4552846 -0.19520783 -0.37154531 0.48801851 -0.16391039 -0.37419319 0.5 -0.12115693 -0.3751626
		 -0.33920455 -0.20666385 -0.42654324 -0.34360838 -0.19520783 -0.46327066 -0.34683251 -0.16391039 -0.49015522
		 -0.34801269 -0.12115693 -0.49999809 0.34801269 -0.12115693 -0.49999809 0.34683251 -0.16391039 -0.49015522
		 0.34360862 -0.19520783 -0.46327066 0.33920455 -0.20666385 -0.42654324 -0.40617585 -0.12115693 0.49049902
		 -0.40150094 -0.16391039 0.48122931 -0.38872862 -0.19520783 0.45590353 -0.37128139 -0.20666385 0.42130804
		 -0.45548391 -0.12115693 0.46343851 -0.44684601 -0.16391039 0.45634365 -0.42324615 -0.19520783 0.43695974
		 -0.39100766 -0.20666385 0.41048145 -0.48843074 -0.12115693 0.42293978 -0.477144 -0.16391039 0.41910172
		 -0.44630933 -0.19520783 0.40861177 -0.40418863 -0.20666385 0.39427948 0.48843074 -0.12115693 0.42293978
		 0.47714448 -0.16391039 0.41910172 0.4463098 -0.19520783 0.40861177 0.40418863 -0.20666385 0.39427948
		 0.45548391 -0.12115693 0.46343851 0.44684577 -0.16391039 0.45634365 0.42324591 -0.19520783 0.43695974
		 0.3910079 -0.20666385 0.41048145 0.40617561 -0.12115693 0.49049902 0.4015007 -0.16391039 0.48122931
		 0.38872838 -0.19520783 0.45590353 0.37128115 -0.20666385 0.42130804 -0.48843074 -0.12115693 -0.42293549
		 -0.477144 -0.16391039 -0.41909504 -0.44630933 -0.19520783 -0.40860701 -0.40418863 -0.20666385 -0.39427423
		 -0.45548391 -0.12115693 -0.46343327 -0.44684601 -0.16391039 -0.45633841 -0.42324615 -0.19520783 -0.43695498
		 -0.39100766 -0.20666385 -0.41047668 -0.40617585 -0.12115693 -0.49049425 -0.40150094 -0.16391039 -0.48122406
		 -0.38872862 -0.19520783 -0.45589828 -0.37128139 -0.20666385 -0.42130232 0.40617561 -0.12115693 -0.49049425
		 0.4015007 -0.16391039 -0.48122406 0.38872838 -0.19520783 -0.45589828 0.37128139 -0.20666385 -0.42130232
		 0.45548391 -0.12115693 -0.46343327 0.44684577 -0.16391039 -0.45633841 0.42324591 -0.19520783 -0.43695498
		 0.3910079 -0.20666385 -0.41047621 0.48843074 -0.12115693 -0.42293549 0.47714448 -0.16391039 -0.41909504
		 0.44630957 -0.19520783 -0.40860701 0.40418839 -0.20666385 -0.39427471 -0.35148597 0.21736383 0.52896452
		 -0.34902978 0.20748925 0.50848484 -0.34801269 0.18365121 0.50000286 0.35148597 0.21736383 0.52896452
		 0.34903002 0.20748925 0.50848484 0.34801269 0.18365121 0.50000286 -0.53525996 0.21736383 0.37802172
		 -0.51032758 0.20748925 0.3760066 -0.50000024 0.18365121 0.37516928 -0.53525996 0.21736383 -0.37801552
		 -0.51032758 0.20748925 -0.37599802 -0.50000024 0.18365121 -0.3751626 0.53525972 0.21736383 0.37802172
		 0.51032734 0.20748925 0.3760066 0.5 0.18365121 0.37516928 0.53525972 0.21736383 -0.37801504
		 0.51032734 0.20748925 -0.37599802 0.5 0.18365121 -0.3751626 -0.35148549 0.21736383 -0.52895689
		 -0.34902978 0.20748925 -0.50847864 -0.34801269 0.18365121 -0.49999809 0.35148549 0.21736383 -0.52895689
		 0.34902978 0.20748925 -0.50847864 0.34801269 0.18365121 -0.49999809 -0.4199338 0.21736383 0.51777935
		 -0.4102056 0.20748925 0.49849081 -0.40617585 0.18365121 0.49049902 -0.48090482 0.21736383 0.48431921
		 -0.46292949 0.20748925 0.46955442 -0.45548391 0.18365121 0.46343851 -0.52164459 0.21736383 0.43423939
		 -0.49815845 0.20748925 0.42624998 -0.48843074 0.18365121 0.42293978 0.52164459 0.21736383 0.43423939
		 0.49815869 0.20748925 0.42624998 0.48843074 0.18365121 0.42293978 0.48090458 0.21736383 0.48431921
		 0.46292949 0.20748925 0.46955442 0.45548391 0.18365121 0.46343851 0.41993356 0.21736383 0.51777935
		 0.41020536 0.20748925 0.49849081 0.40617561 0.18365121 0.49049902 -0.52164459 0.21736383 -0.43423462
		 -0.49815845 0.20748925 -0.42624521 -0.48843074 0.18365121 -0.42293549 -0.48090482 0.21736383 -0.48431253
		 -0.46292949 0.20748925 -0.4695487 -0.45548391 0.18365121 -0.46343327 -0.41993356 0.21736383 -0.51777363
		 -0.4102056 0.20748925 -0.49848413 -0.40617585 0.18365121 -0.49049425 0.41993332 0.21736383 -0.51777363
		 0.41020513 0.20748925 -0.49848413 0.40617561 0.18365121 -0.49049425 0.48090458 0.21736383 -0.48431253
		 0.46292949 0.20748925 -0.4695487 0.45548391 0.18365121 -0.46343327 0.52164459 0.21736383 -0.43423462
		 0.49815893 0.20748925 -0.42624521 0.48843074 0.18365121 -0.42293549 -0.70339274 0.18120146 0.64422655
		 -0.7005136 0.19503999 0.64186287 -0.69231486 0.20677209 0.63512897 -0.68004417 0.21461105 0.62505102
		 -0.66557097 0.21736383 0.61316299 0.70339215 0.18120146 0.64422655 0.70051312 0.19503999 0.64186287
		 0.69231451 0.20677209 0.63512897 0.68004429 0.21461105 0.62505102 0.6655705 0.21736383 0.61316299
		 -0.70339274 0.18120146 -0.64422226 -0.7005136 0.19503999 -0.64185667 -0.69231486 0.20677209 -0.63512278
		 -0.68004417 0.21461105 -0.62504482 -0.66557097 0.21736383 -0.6131568 0.70339215 0.18120146 -0.64422226
		 0.70051312 0.19503999 -0.64185667 0.69231451 0.20677209 -0.63512278;
	setAttr ".vt[166:167]" 0.68004429 0.21461105 -0.62504482 0.6655705 0.21736383 -0.6131568;
	setAttr -s 328 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 2 0 1 3 0 2 3 0 41 40 1 40 8 1 42 41 1 11 43 1
		 43 42 1 11 10 1 10 13 0 13 12 1 12 11 1 10 9 1 9 14 1 14 13 1 9 8 1 8 15 1 15 14 1
		 63 12 1 15 60 1 51 16 1 19 48 1 19 18 1 18 21 1 21 20 1 20 19 1 18 17 1 17 22 1 22 21 1
		 17 16 1 16 23 1 23 22 1 65 64 1 64 20 1 66 65 1 23 67 1 67 66 1 53 52 1 52 24 1 54 53 1
		 27 55 1 55 54 1 27 26 1 26 29 1 29 28 1 28 27 1 26 25 1 25 30 0 30 29 1 25 24 1 24 31 1
		 31 30 1 87 28 1 31 84 1 75 32 1 35 72 1 35 34 1 34 37 1 37 36 1 36 35 1 34 33 1 33 38 1
		 38 37 1 33 32 1 32 39 1 39 38 1 77 76 1 76 36 1 78 77 1 39 79 1 79 78 1 45 44 1 44 40 1
		 46 45 1 43 47 1 47 46 1 49 48 1 48 44 1 50 49 1 47 51 1 51 50 1 57 56 1 56 52 1 58 57 1
		 55 59 1 59 58 1 61 60 1 60 56 1 62 61 1 59 63 1 63 62 1 69 68 1 68 64 1 70 69 1 67 71 1
		 71 70 1 73 72 1 72 68 1 74 73 1 71 75 1 75 74 1 81 80 1 80 76 1 82 81 1 79 83 1 83 82 1
		 85 84 1 84 80 1 86 85 1 83 87 1 87 86 1 10 42 0 9 41 1 22 66 1 21 65 1 26 54 1 25 53 0
		 38 78 1 37 77 1 42 46 1 41 45 0 46 50 1 45 49 0 17 50 1 18 49 1 54 58 1 53 57 0 58 62 1
		 57 61 0 13 62 0 14 61 1 66 70 1 65 69 0 70 74 1 69 73 0 33 74 1 34 73 1 78 82 1 77 81 0
		 82 86 1 81 85 0 29 86 1 30 85 0 113 112 1 112 88 1 90 114 1 114 113 1 90 89 1 93 90 1
		 89 88 1 88 91 1 93 92 1 129 93 1 92 91 1 91 127 1 98 97 1 97 94 1 96 99 1 99 98 1
		 96 95 1 120 96 1 95 94 1 94 118 1 131 130 1 130 97 1;
	setAttr ".ed[166:327]" 99 132 1 132 131 1 122 121 1 121 100 1 102 123 1 123 122 1
		 102 101 1 105 102 1 101 100 1 100 103 1 105 104 1 147 105 1 104 103 1 103 145 1 110 109 1
		 109 106 1 108 111 1 111 110 1 108 107 1 138 108 1 107 106 1 106 136 1 140 139 1 139 109 1
		 111 141 1 141 140 1 116 115 1 115 112 1 114 117 1 117 116 1 119 118 1 118 115 1 117 120 1
		 120 119 1 125 124 1 124 121 1 123 126 1 126 125 1 128 127 1 127 124 1 126 129 1 129 128 1
		 134 133 1 133 130 1 132 135 1 135 134 1 137 136 1 136 133 1 135 138 1 138 137 1 143 142 1
		 142 139 1 141 144 1 144 143 1 146 145 1 145 142 1 144 147 1 147 146 1 4 94 1 97 6 1
		 5 91 1 88 4 1 6 106 1 109 7 1 7 103 1 100 5 1 112 4 1 115 4 1 118 4 1 121 5 1 124 5 1
		 127 5 1 130 6 1 133 6 1 136 6 1 139 7 1 142 7 1 145 7 1 93 15 1 8 90 1 96 19 1 20 99 1
		 105 31 1 24 102 1 108 35 1 36 111 1 40 114 1 44 117 1 48 120 1 52 123 1 56 126 1
		 60 129 1 64 132 1 68 135 1 72 138 1 76 141 1 80 144 1 84 147 1 89 113 0 89 92 0 95 98 0
		 98 131 0 101 122 0 101 104 0 107 110 0 110 140 0 113 116 0 116 119 0 95 119 0 122 125 0
		 125 128 0 92 128 0 131 134 0 134 137 0 107 137 0 140 143 0 143 146 0 104 146 0 159 158 0
		 158 148 1 160 159 0 161 160 0 152 162 1 162 161 1 152 151 1 157 152 1 151 150 0 150 149 0
		 149 148 0 148 153 1 157 156 1 167 157 1 156 155 0 155 154 0 154 153 0 153 163 1 164 163 0
		 163 158 1 165 164 0 166 165 0 162 167 1 167 166 1 148 0 0 1 153 0 158 2 0 3 163 0
		 6 162 1 152 4 1 157 5 1 7 167 1 151 161 1 150 160 1 149 159 1 151 156 1 150 155 1
		 149 154 1 161 166 1 160 165 1 159 164 1 156 166 1 155 165 1 154 164 1;
	setAttr -s 161 -ch 652 ".fc[0:160]" -type "polyFaces" 
		f 4 9 10 11 12
		mu 0 4 2 25 28 3
		f 4 13 14 15 -11
		mu 0 4 26 24 29 27
		f 4 16 17 18 -15
		mu 0 4 24 113 134 29
		f 4 23 24 25 26
		mu 0 4 126 32 33 115
		f 4 27 28 29 -25
		mu 0 4 32 30 35 33
		f 4 30 31 32 -29
		mu 0 4 31 0 6 34
		f 4 43 44 45 46
		mu 0 4 4 37 40 5
		f 4 47 48 49 -45
		mu 0 4 38 36 41 39
		f 4 50 51 52 -49
		mu 0 4 36 117 150 41
		f 4 57 58 59 60
		mu 0 4 142 44 45 119
		f 4 61 62 63 -59
		mu 0 4 44 42 47 45
		f 4 64 65 66 -63
		mu 0 4 43 1 7 46
		f 20 -111 -106 -71 -66 -56 -101 -96 -37 -32 -22 -81 -76 -8 -13 -20 -91 -86 -42 -47 -54
		mu 0 20 22 21 20 7 1 18 17 16 6 0 10 9 8 2 3 14 13 12 4 5
		f 4 -10 7 8 -113
		mu 0 4 25 2 8 49
		f 4 -17 113 4 5
		mu 0 4 113 24 48 120
		f 4 -14 112 6 -114
		mu 0 4 24 26 50 48
		f 4 -33 36 37 -115
		mu 0 4 34 6 16 71
		f 4 -26 115 33 34
		mu 0 4 115 33 70 136
		f 4 -30 114 35 -116
		mu 0 4 33 35 72 70
		f 4 -44 41 42 -117
		mu 0 4 37 4 12 60
		f 4 -51 117 38 39
		mu 0 4 117 36 59 128
		f 4 -48 116 40 -118
		mu 0 4 36 38 61 59
		f 4 -67 70 71 -119
		mu 0 4 46 7 20 82
		f 4 -60 119 67 68
		mu 0 4 119 45 81 144
		f 4 -64 118 69 -120
		mu 0 4 45 47 83 81
		f 4 -9 75 76 -121
		mu 0 4 49 8 9 53
		f 4 -5 121 72 73
		mu 0 4 120 48 52 122
		f 4 -7 120 74 -122
		mu 0 4 48 50 55 52
		f 4 -77 80 81 -123
		mu 0 4 53 9 10 57
		f 4 -73 123 77 78
		mu 0 4 11 51 56 124
		f 4 -75 122 79 -124
		mu 0 4 51 54 58 56
		f 4 -31 124 -82 21
		mu 0 4 0 31 57 10
		f 4 -28 125 -80 -125
		mu 0 4 30 32 56 58
		f 4 -24 22 -78 -126
		mu 0 4 32 126 124 56
		f 4 -43 85 86 -127
		mu 0 4 60 12 13 64
		f 4 -39 127 82 83
		mu 0 4 128 59 63 130
		f 4 -41 126 84 -128
		mu 0 4 59 61 66 63
		f 4 -87 90 91 -129
		mu 0 4 64 13 14 68
		f 4 -83 129 87 88
		mu 0 4 15 62 67 132
		f 4 -85 128 89 -130
		mu 0 4 62 65 69 67
		f 4 -12 130 -92 19
		mu 0 4 3 28 68 14
		f 4 -16 131 -90 -131
		mu 0 4 27 29 67 69
		f 4 -19 20 -88 -132
		mu 0 4 29 134 132 67
		f 4 -38 95 96 -133
		mu 0 4 71 16 17 75
		f 4 -34 133 92 93
		mu 0 4 136 70 74 138
		f 4 -36 132 94 -134
		mu 0 4 70 72 77 74
		f 4 -97 100 101 -135
		mu 0 4 75 17 18 79
		f 4 -93 135 97 98
		mu 0 4 19 73 78 140
		f 4 -95 134 99 -136
		mu 0 4 73 76 80 78
		f 4 -65 136 -102 55
		mu 0 4 1 43 79 18
		f 4 -62 137 -100 -137
		mu 0 4 42 44 78 80
		f 4 -58 56 -98 -138
		mu 0 4 44 142 140 78
		f 4 -72 105 106 -139
		mu 0 4 82 20 21 86
		f 4 -68 139 102 103
		mu 0 4 144 81 85 146
		f 4 -70 138 104 -140
		mu 0 4 81 83 88 85
		f 4 -107 110 111 -141
		mu 0 4 86 21 22 90
		f 4 -103 141 107 108
		mu 0 4 23 84 89 148
		f 4 -105 140 109 -142
		mu 0 4 84 87 91 89
		f 4 -46 142 -112 53
		mu 0 4 5 40 90 22
		f 4 -50 143 -110 -143
		mu 0 4 39 41 89 91
		f 4 -53 54 -108 -144
		mu 0 4 41 150 148 89
		f 3 -228 -146 232
		mu 0 3 224 223 92
		f 3 -233 -194 233
		mu 0 3 224 92 93
		f 3 -234 -198 234
		mu 0 3 95 153 94
		f 3 -235 -164 -225
		mu 0 3 95 94 96
		f 3 -232 -170 235
		mu 0 3 230 229 97
		f 3 -236 -202 236
		mu 0 3 230 97 98
		f 3 -237 -206 237
		mu 0 3 100 155 99
		f 3 -238 -156 -227
		mu 0 3 100 99 101
		f 3 -226 -166 238
		mu 0 3 221 220 102
		f 3 -239 -210 239
		mu 0 3 221 102 103
		f 3 -240 -214 240
		mu 0 3 105 157 104
		f 3 -241 -188 -229
		mu 0 3 105 104 106
		f 3 -230 -190 241
		mu 0 3 227 226 107
		f 3 -242 -218 242
		mu 0 3 227 107 108
		f 3 -243 -222 243
		mu 0 3 110 159 109
		f 3 -244 -180 -231
		mu 0 3 110 109 111
		f 4 244 -18 245 -150
		mu 0 4 112 134 113 121
		f 4 246 -27 247 -159
		mu 0 4 114 126 115 137
		f 4 248 -52 249 -174
		mu 0 4 116 150 117 129
		f 4 250 -61 251 -183
		mu 0 4 118 142 119 145
		f 4 -6 252 -147 -246
		mu 0 4 113 120 123 121
		f 4 -74 253 -195 -253
		mu 0 4 120 122 152 123
		f 4 -79 254 -199 -254
		mu 0 4 11 124 127 125
		f 4 -23 -247 -162 -255
		mu 0 4 124 126 114 127
		f 4 -40 255 -171 -250
		mu 0 4 117 128 131 129
		f 4 -84 256 -203 -256
		mu 0 4 128 130 154 131
		f 4 -89 257 -207 -257
		mu 0 4 15 132 135 133
		f 4 -21 -245 -154 -258
		mu 0 4 132 134 112 135
		f 4 -35 258 -167 -248
		mu 0 4 115 136 139 137
		f 4 -94 259 -211 -259
		mu 0 4 136 138 156 139
		f 4 -99 260 -215 -260
		mu 0 4 19 140 143 141
		f 4 -57 -251 -186 -261
		mu 0 4 140 142 118 143
		f 4 -69 261 -191 -252
		mu 0 4 119 144 147 145
		f 4 -104 262 -219 -262
		mu 0 4 144 146 158 147
		f 4 -109 263 -223 -263
		mu 0 4 23 148 151 149
		f 4 -55 -249 -178 -264
		mu 0 4 148 150 116 151
		f 4 -151 264 144 145
		mu 0 4 223 160 177 92
		f 4 -149 146 147 -265
		mu 0 4 161 121 123 176
		f 4 148 265 -153 149
		mu 0 4 121 161 163 112
		f 4 150 151 -155 -266
		mu 0 4 160 223 101 162
		f 4 -163 266 156 157
		mu 0 4 96 164 167 220
		f 4 -161 158 159 -267
		mu 0 4 165 114 137 166
		f 4 -157 267 164 165
		mu 0 4 220 167 193 102
		f 4 -160 166 167 -268
		mu 0 4 166 137 139 192
		f 4 -175 268 168 169
		mu 0 4 229 168 185 97
		f 4 -173 170 171 -269
		mu 0 4 169 129 131 184
		f 4 172 269 -177 173
		mu 0 4 129 169 171 116
		f 4 174 175 -179 -270
		mu 0 4 168 229 111 170
		f 4 -187 270 180 181
		mu 0 4 106 172 175 226
		f 4 -185 182 183 -271
		mu 0 4 173 118 145 174
		f 4 -181 271 188 189
		mu 0 4 226 175 201 107
		f 4 -184 190 191 -272
		mu 0 4 174 145 147 200
		f 4 -145 272 192 193
		mu 0 4 92 177 180 93
		f 4 -148 194 195 -273
		mu 0 4 176 123 152 181
		f 4 -193 273 196 197
		mu 0 4 153 179 183 94
		f 4 -196 198 199 -274
		mu 0 4 178 125 127 182
		f 4 160 274 -200 161
		mu 0 4 114 165 182 127
		f 4 162 163 -197 -275
		mu 0 4 164 96 94 183
		f 4 -169 275 200 201
		mu 0 4 97 185 188 98
		f 4 -172 202 203 -276
		mu 0 4 184 131 154 189
		f 4 -201 276 204 205
		mu 0 4 155 187 191 99
		f 4 -204 206 207 -277
		mu 0 4 186 133 135 190
		f 4 152 277 -208 153
		mu 0 4 112 163 190 135
		f 4 154 155 -205 -278
		mu 0 4 162 101 99 191
		f 4 -165 278 208 209
		mu 0 4 102 193 196 103
		f 4 -168 210 211 -279
		mu 0 4 192 139 156 197
		f 4 -209 279 212 213
		mu 0 4 157 195 199 104
		f 4 -212 214 215 -280
		mu 0 4 194 141 143 198
		f 4 184 280 -216 185
		mu 0 4 118 173 198 143
		f 4 186 187 -213 -281
		mu 0 4 172 106 104 199
		f 4 -189 281 216 217
		mu 0 4 107 201 204 108
		f 4 -192 218 219 -282
		mu 0 4 200 147 158 205
		f 4 -217 282 220 221
		mu 0 4 159 203 207 109
		f 4 -220 222 223 -283
		mu 0 4 202 149 151 206
		f 4 176 283 -224 177
		mu 0 4 116 171 206 151
		f 4 178 179 -221 -284
		mu 0 4 170 111 109 207
		f 4 -296 308 0 309
		mu 0 4 235 208 209 210
		f 4 -286 310 -2 -309
		mu 0 4 233 211 212 213
		f 4 -302 -310 2 311
		mu 0 4 239 214 215 216
		f 4 -304 -312 -4 -311
		mu 0 4 237 217 218 219
		f 6 224 -158 225 312 -289 313
		mu 0 6 95 96 220 221 232 222
		f 6 226 -152 227 -314 -292 314
		mu 0 6 100 101 223 224 234 225
		f 6 228 -182 229 315 -307 -313
		mu 0 6 105 106 226 227 236 228
		f 6 230 -176 231 -315 -298 -316
		mu 0 6 110 111 229 230 238 231
		f 4 -291 288 289 -317
		mu 0 4 247 222 232 263
		f 4 -293 316 287 -318
		mu 0 4 244 247 263 261
		f 4 -295 318 284 285
		mu 0 4 233 241 257 211
		f 4 -294 317 286 -319
		mu 0 4 241 245 260 257
		f 4 290 319 -297 291
		mu 0 4 234 246 255 225
		f 4 292 320 -299 -320
		mu 0 4 246 243 252 255
		f 4 293 321 -300 -321
		mu 0 4 242 240 249 253
		f 4 294 295 -301 -322
		mu 0 4 240 208 235 249
		f 4 -290 306 307 -323
		mu 0 4 262 228 236 271
		f 4 -288 322 305 -324
		mu 0 4 258 262 271 269
		f 4 -285 324 302 303
		mu 0 4 237 256 265 217
		f 4 -287 323 304 -325
		mu 0 4 256 259 268 265
		f 4 296 325 -308 297
		mu 0 4 238 254 270 231
		f 4 298 326 -306 -326
		mu 0 4 254 251 266 270
		f 4 299 327 -305 -327
		mu 0 4 250 248 264 267
		f 4 300 301 -303 -328
		mu 0 4 248 214 239 264;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Doorknobs";
	rename -uid "91369EC3-4E82-A222-17A9-03BEA061C6F1";
createNode transform -n "upperDoorknob_two" -p "Doorknobs";
	rename -uid "07A8A101-4D25-FC7E-0FA0-5BAF4F21ACAD";
	setAttr ".rp" -type "double3" -1.8187572956085205 4.1033803045401553 0.53650629966513508 ;
	setAttr ".sp" -type "double3" -1.8187572956085196 4.1033803045401553 0.53650629966513508 ;
createNode mesh -n "upperDoorknob_twoShape" -p "upperDoorknob_two";
	rename -uid "36F57622-422A-4BF5-5DE6-6DAEDC652C3A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47500008344650269 0.7000001072883606 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 354 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:353]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.050000001 0.70000011 0.1 0.70000011
		 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011 0.35000002
		 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007
		 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012
		 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017
		 0.70000011 0 0.70000011 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011
		 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004
		 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008
		 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013
		 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017 0.70000011 0 0.70000011;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 321 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -1.7347411 5.1075878 0.57879138 -1.7125212 
		5.1051207 0.61693907 -1.677913 5.1012783 0.64721173 -1.6343039 5.096436 0.66664869 
		-1.585963 5.0910687 0.67334628 -1.537622 5.0857015 0.66664869 -1.4940131 5.0808592 
		0.64721173 -1.4594048 5.0770164 0.61693907 -1.4371849 5.0745492 0.57879138 -1.4295285 
		5.0736995 0.53650546 -1.4371849 5.0745492 0.49421957 -1.4594048 5.0770164 0.45607269 
		-1.4940131 5.0808592 0.42579919 -1.5376221 5.0857015 0.40636346 -1.585963 5.0910687 
		0.39966592 -1.6343038 5.096436 0.40636346 -1.6779128 5.1012783 0.42579919 -1.7125211 
		5.1051207 0.45607269 -1.734741 5.1075878 0.49421957 -1.7423974 5.108438 0.53650546 
		-1.8833648 5.0870686 0.62003654 -1.8394721 5.0821953 0.69539058 -1.7711077 5.0746045 
		0.75519264 -1.6849635 5.0650396 0.79358768 -1.5894719 5.0544372 0.80681765 -1.4939804 
		5.0438342 0.79358768 -1.4078362 5.0342693 0.75519264 -1.3394718 5.0266786 0.69539058 
		-1.2955792 5.0218053 0.62003654 -1.2804549 5.0201259 0.53650546 -1.2955792 5.0218053 
		0.45297438 -1.3394718 5.0266786 0.37762034 -1.4078362 5.0342693 0.31781954 -1.4939804 
		5.0438342 0.27942532 -1.5894719 5.0544372 0.26619497 -1.6849635 5.0650396 0.27942532 
		-1.7711076 5.0746045 0.31781954 -1.8394719 5.0821953 0.37762034 -1.8833646 5.0870686 
		0.45297563 -1.8984889 5.088748 0.53650546 -2.0269949 5.0423279 0.65922499 -1.9625105 
		5.0351677 0.76993126 -1.8620732 5.0240159 0.85778779 -1.735515 5.009964 0.91419578 
		-1.5952241 4.9943867 0.9336319 -1.4549333 4.9788098 0.91419578 -1.3283751 4.9647579 
		0.85778779 -1.2279379 4.9536061 0.76993126 -1.1634533 4.9464459 0.65922499 -1.1412336 
		4.9439788 0.53650546 -1.1634533 4.9464459 0.4137868 -1.2279381 4.9536061 0.3030805 
		-1.3283751 4.9647579 0.21522357 -1.4549333 4.9788098 0.1588168 -1.5952241 4.9943867 
		0.13937984 -1.7355149 5.009964 0.1588168 -1.8620731 5.0240159 0.21522357 -1.9625102 
		5.0351677 0.3030805 -2.0269947 5.0423279 0.4137868 -2.0492146 5.044795 0.53650546 
		-2.1620953 4.9744668 0.69539058 -2.0786064 4.9651966 0.8387233 -1.9485697 4.9507585 
		0.95247197 -1.7847136 4.9325647 1.025504 -1.6030779 4.9123974 1.0506687 -1.4214422 
		4.8922296 1.025504 -1.2575862 4.8740363 0.95247197 -1.1275495 4.8595982 0.8387233 
		-1.0440608 4.850328 0.69539058 -1.0152925 4.8471336 0.53650546 -1.0440608 4.850328 
		0.37762034 -1.1275495 4.8595982 0.23428847 -1.2575864 4.8740363 0.12054019 -1.4214423 
		4.8922296 0.04750821 -1.6030779 4.9123974 0.022343483 -1.7847135 4.9325647 0.04750821 
		-1.9485694 4.9507585 0.12054019 -2.0786061 4.9651966 0.23428847 -2.1620948 4.9744668 
		0.37762034 -2.1908631 4.9776607 0.53650546 -2.2853389 4.8851566 0.72764534 -2.1849017 
		4.8740048 0.90007365 -2.0284669 4.8566356 1.0369145 -1.8313481 4.8347487 1.124771 
		-1.6128399 4.8104873 1.1550444 -1.3943318 4.7862253 1.124771 -1.1972129 4.764339 
		1.0369145 -1.0407784 4.7469692 0.90007323 -0.94034123 4.7358174 0.72764534 -0.90573299 
		4.7319751 0.53650546 -0.94034123 4.7358174 0.34536639 -1.0407784 4.7469692 0.17293853 
		-1.1972129 4.764339 0.036098137 -1.3943318 4.7862253 -0.051758803 -1.6128399 4.8104873 
		-0.082032725 -1.8313479 4.8347487 -0.051758803 -2.0284669 4.8566356 0.036098137 -2.1849012 
		4.8740048 0.17293853 -2.2853384 4.8851566 0.34536639 -2.3199468 4.8889995 0.53650546 
		-2.3936911 4.7765965 0.75519264 -2.2787788 4.7638378 0.95247197 -2.0997982 4.7439651 
		1.1090342 -1.8742698 4.718924 1.2095538 -1.6242697 4.6911654 1.2441903 -1.3742696 
		4.6634073 1.2095538 -1.1487412 4.6383662 1.1090342 -0.96976101 4.6184936 0.95247155 
		-0.85484862 4.6057343 0.75519264 -0.81525266 4.6013379 0.53650546 -0.85484862 4.6057343 
		0.31781954 -0.96976107 4.6184936 0.12054019 -1.1487414 4.6383662 -0.036022037 -1.3742697 
		4.6634073 -0.13654163 -1.6242697 4.6911654 -0.1711777 -1.8742697 4.718924 -0.13654163 
		-2.099798 4.7439651 -0.036022037 -2.2787783 4.7638378 0.12054019 -2.3936906 4.7765965 
		0.31781954 -2.4332867 4.780993 0.53650546 -2.484484 4.6514602 0.7773546 -2.3579259 
		4.6374078 0.99462855 -2.1608067 4.615521 1.1670569 -1.9124223 4.5879421 1.2777631 
		-1.6370859 4.5573707 1.3159105 -1.3617496 4.5267992 1.2777631 -1.1133653 4.4992204 
		1.1670569 -0.91624635 4.477334 0.99462813 -0.78968817 4.4632816 0.7773546 -0.74607933 
		4.4584398 0.53650546 -0.78968817 4.4632816 0.29565719 -0.91624635 4.477334 0.078384027 
		-1.1133653 4.4992204 -0.09404511 -1.3617498 4.5267992 -0.20475097 -1.6370859 4.5573707 
		-0.24289787 -1.9124221 4.5879421 -0.20475097 -2.1608064 4.615521 -0.09404511 -2.3579254 
		4.6374078 0.078384027 -2.4844835 4.6514597 0.29565719 -2.5280924 4.656302 0.53650546 
		-2.5554821 4.5128274 0.79358768 -2.4203942 4.4978285 1.025504 -2.2099903 4.4744668 
		1.2095538 -1.9448657 4.4450293 1.327721 -1.650973 4.4123974 1.368439 -1.3570802 4.3797655 
		1.327721 -1.0919558 4.350328 1.2095538 -0.8815518 4.3269663 1.025504 -0.74646431 
		4.3119669 0.79358768 -0.69991618 4.3067985 0.53650546 -0.74646431 4.3119669 0.27942449 
		-0.88155186 4.3269663 0.04750821 -1.0919559 4.350328 -0.13654163 -1.3570802 4.3797655 
		-0.2547088 -1.650973 4.4123974 -0.29542592 -1.9448656 4.4450293 -0.2547088 -2.20999 
		4.4744668 -0.13654163 -2.4203939 4.4978285 0.04750821 -2.5554814 4.5128274 0.27942532 
		-2.6020296 4.5179958 0.53650546 -2.6049368 4.3641133 0.80348951 -2.4646461 4.3485365 
		1.0443382 -2.2461379 4.3242745 1.2354773 -1.9708016 4.2937036 1.3581964 -1.6655889 
		4.2598147 1.4004823 -1.3603762 4.2259259 1.3581964;
	setAttr ".pt[166:320]" -1.08504 4.1953545 1.2354773 -0.86653209 4.171093 1.0443382 
		-0.72624123 4.1555161 0.80348951 -0.67790031 4.1501489 0.53650546 -0.72624123 4.1555161 
		0.26952183 -0.86653209 4.171093 0.028673561 -1.0850401 4.1953545 -0.16246551 -1.3603764 
		4.2259259 -0.28518376 -1.6655889 4.2598147 -0.32747006 -1.9708014 4.2937036 -0.28518376 
		-2.2461376 4.3242745 -0.16246551 -2.4646456 4.3485365 0.028673561 -2.6049364 4.3641133 
		0.26952308 -2.6532772 4.3694806 0.53650546 -2.6316309 4.2089791 0.80681765 -2.4895914 
		4.1932077 1.0506687 -2.2683594 4.168644 1.2441903 -1.9895909 4.1376915 1.368439 -1.6805738 
		4.1033802 1.411252 -1.3715566 4.0690694 1.368439 -1.0927883 4.0381169 1.2441903 -0.87155664 
		4.0135527 1.0506687 -0.72951698 3.9977818 0.80681682 -0.68057352 3.9923472 0.53650546 
		-0.72951698 3.9977818 0.26619497 -0.8715567 4.0135527 0.022343483 -1.0927885 4.0381169 
		-0.1711777 -1.3715568 4.0690694 -0.29542592 -1.6805737 4.1033802 -0.33823904 -1.9895906 
		4.1376915 -0.29542592 -2.2683589 4.168644 -0.1711777 -2.4895906 4.1932077 0.022343483 
		-2.6316304 4.2089791 0.26619497 -2.6805737 4.2144132 0.53650546 -2.6349065 4.0512447 
		0.80348951 -2.4946158 4.0356674 1.0443382 -2.2761075 4.0114059 1.2354773 -2.0007713 
		3.9808345 1.3581964 -1.6955587 3.9469459 1.4004823 -1.3903459 3.9130573 1.3581964 
		-1.1150098 3.8824859 1.2354773 -0.89650178 3.8582242 1.0443382 -0.75621092 3.8426473 
		0.80348951 -0.70787001 3.83728 0.53650546 -0.75621092 3.8426473 0.26952183 -0.89650178 
		3.8582242 0.028673561 -1.1150099 3.8824859 -0.16246551 -1.3903461 3.9130573 -0.28518376 
		-1.6955585 3.9469459 -0.32747006 -2.000771 3.9808345 -0.28518376 -2.2761073 4.0114059 
		-0.16246551 -2.4946153 4.0356674 0.028673561 -2.6349061 4.0512443 0.26952308 -2.6832471 
		4.056612 0.53650546 -2.6146836 3.8947937 0.79358768 -2.4795959 3.8797944 1.025504 
		-2.269192 3.8564327 1.2095538 -2.0040674 3.8269951 1.327721 -1.7101746 3.7943633 
		1.368439 -1.4162818 3.7617316 1.327721 -1.1511573 3.7322941 1.2095538 -0.9407534 
		3.7089322 1.025504 -0.80566591 3.693933 0.79358768 -0.75911778 3.6887646 0.53650546 
		-0.80566591 3.693933 0.27942449 -0.94075346 3.7089322 0.04750821 -1.1511574 3.7322941 
		-0.13654163 -1.4162818 3.7617316 -0.2547088 -1.7101746 3.7943633 -0.29542592 -2.0040672 
		3.8269951 -0.2547088 -2.2691915 3.8564327 -0.13654163 -2.4795954 3.8797944 0.04750821 
		-2.6146832 3.8947935 0.27942532 -2.661231 3.8999619 0.53650546 -2.5714595 3.743479 
		0.7773546 -2.4449015 3.7294269 0.99462855 -2.2477825 3.70754 1.1670569 -1.9993979 
		3.6799612 1.2777631 -1.7240616 3.6493897 1.3159105 -1.4487253 3.6188183 1.2777631 
		-1.2003409 3.5912395 1.1670569 -1.003222 3.5693529 0.99462813 -0.8766638 3.5553007 
		0.7773546 -0.83305496 3.5504587 0.53650546 -0.8766638 3.5553007 0.29565719 -1.003222 
		3.5693529 0.078384027 -1.200341 3.5912395 -0.09404511 -1.4487253 3.6188183 -0.20475097 
		-1.7240616 3.6493897 -0.24289787 -1.9993976 3.6799612 -0.20475097 -2.247782 3.70754 
		-0.09404511 -2.444901 3.7294266 0.078384027 -2.5714591 3.7434788 0.29565719 -2.6150682 
		3.7483208 0.53650546 -2.506299 3.6010261 0.75519264 -2.3913867 3.5882671 0.95247197 
		-2.2124064 3.5683944 1.1090342 -1.9868779 3.5433533 1.2095538 -1.7368778 3.515595 
		1.2441903 -1.4868777 3.4878368 1.2095538 -1.2613493 3.4627957 1.1090342 -1.0823691 
		3.4429228 0.95247155 -0.9674567 3.4301639 0.75519264 -0.92786074 3.4257674 0.53650546 
		-0.9674567 3.4301639 0.31781954 -1.0823692 3.4429231 0.12054019 -1.2613494 3.4627957 
		-0.036022037 -1.4868778 3.4878368 -0.13654163 -1.7368778 3.515595 -0.1711777 -1.9868778 
		3.5433533 -0.13654163 -2.2124062 3.5683944 -0.036022037 -2.3913863 3.5882671 0.12054019 
		-2.5062988 3.6010261 0.31781954 -2.5458949 3.6054225 0.53650546 -1.5847837 5.1033802 
		0.53650546 -2.256706 3.4980931 0.86234641 -2.1165047 3.4825263 0.98498666 -1.9398407 
		3.4629107 1.0637268 -1.7440073 3.4411666 1.0908586 -1.5481739 3.4194229 1.0637268 
		-1.37151 3.3998072 0.98498666 -1.2313088 3.3842404 0.86234599 -1.1412942 3.3742456 
		0.7078113 -1.1102773 3.3708017 0.53650546 -1.1412942 3.3742456 0.36520213 -1.2313088 
		3.3842404 0.21066579 -1.37151 3.3998072 0.088025548 -1.5481739 3.4194229 0.0092849862 
		-1.7440072 3.4411666 -0.01784642 -1.9398406 3.4629107 0.0092849862 -2.1165044 3.4825263 
		0.088025548 -2.2567058 3.4980931 0.21066579 -2.3467205 3.5080879 0.36520213 -2.3777373 
		3.5115316 0.53650546 -2.3467207 3.5080879 0.7078113 -2.3314559 2.3696256 0.86234641 
		-2.1912546 2.3540587 0.98498666 -2.0145907 2.3344431 1.0637268 -1.8187572 2.3126991 
		1.0908586 -1.6229239 2.2909553 1.0637268 -1.44626 2.2713397 0.98498666 -1.3060588 
		2.2557728 0.86234599 -1.2160441 2.2457781 0.7078113 -1.1850271 2.2423341 0.53650546 
		-1.2160441 2.2457781 0.36520213 -1.3060588 2.2557728 0.21066579 -1.44626 2.2713397 
		0.088025548 -1.6229239 2.2909553 0.0092849862 -1.8187572 2.3126991 -0.01784642 -2.0145905 
		2.3344431 0.0092849862 -2.1912544 2.3540587 0.088025548 -2.3314555 2.3696256 0.21066579 
		-2.4214702 2.3796203 0.36520213 -2.4524872 2.383064 0.53650546 -2.4214706 2.3796203 
		0.7078113;
	setAttr -s 321 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048339844 0.12655823 -0.98768836 -0.09194994
		 0.091949932 -0.98768836 -0.12655735 0.048340935 -0.98768836 -0.14877748 0 -0.98768836 -0.15643406
		 -0.048340935 -0.98768836 -0.14877748 -0.091949917 -0.98768836 -0.12655735 -0.12655818 -0.98768836 -0.09194994
		 -0.14877805 -0.98768836 -0.048339844 -0.15643452 -0.98768836 9.5367432e-07 -0.14877805 -0.98768836 0.048341751
		 -0.12655818 -0.98768836 0.091950893 -0.09194988 -0.98768836 0.12655926 -0.048340924 -0.98768836 0.14877796
		 -4.6621107e-09 -0.98768836 0.15643454 0.048340902 -0.98768836 0.14877796 0.091949873 -0.98768836 0.12655926
		 0.12655815 -0.98768836 0.091950893 0.14877804 -0.98768836 0.048341751 0.15643448 -0.98768836 9.5367432e-07
		 0.29389283 -0.95105666 -0.095490932 0.25000015 -0.95105666 -0.1816349 0.18163574 -0.95105666 -0.25
		 0.095491551 -0.95105666 -0.29389286 0 -0.95105666 -0.30901718 -0.095491551 -0.95105666 -0.29389286
		 -0.18163571 -0.95105666 -0.25 -0.25000009 -0.95105666 -0.1816349 -0.29389271 -0.95105666 -0.095490932
		 -0.30901706 -0.95105666 9.5367432e-07 -0.29389271 -0.95105666 0.09549284 -0.25000006 -0.95105666 0.18163681
		 -0.18163568 -0.95105666 0.25000048 -0.095491514 -0.95105666 0.29389238 -9.2094226e-09 -0.95105666 0.30901718
		 0.095491499 -0.95105666 0.29389238 0.1816356 -0.95105666 0.25000048 0.25 -0.95105666 0.18163681
		 0.29389265 -0.95105666 0.095491409 0.30901694 -0.95105666 9.5367432e-07 0.43177092 -0.89100659 -0.14029074
		 0.36728629 -0.89100659 -0.26684904 0.2668491 -0.89100659 -0.36728573 0.14029086 -0.89100659 -0.4317708
		 0 -0.89100659 -0.45398998 -0.14029086 -0.89100659 -0.4317708 -0.26684904 -0.89100659 -0.36728573
		 -0.36728615 -0.89100659 -0.26684904 -0.43177077 -0.89100659 -0.14029074 -0.45399058 -0.89100659 9.5367432e-07
		 -0.43177077 -0.89100659 0.14029169 -0.36728612 -0.89100659 0.26684999 -0.26684898 -0.89100659 0.36728716
		 -0.14029081 -0.89100659 0.4317708 -1.3529971e-08 -0.89100659 0.45399094 0.14029078 -0.89100659 0.4317708
		 0.26684889 -0.89100659 0.36728716 0.36728606 -0.89100659 0.26684999 0.43177065 -0.89100659 0.14029169
		 0.45399049 -0.89100659 9.5367432e-07 0.55901736 -0.809017 -0.1816349 0.47552857 -0.809017 -0.34549141
		 0.34549171 -0.809017 -0.47552776 0.18163572 -0.809017 -0.55901718 0 -0.809017 -0.58778524
		 -0.18163572 -0.809017 -0.55901718 -0.34549165 -0.809017 -0.47552776 -0.47552839 -0.809017 -0.34549141
		 -0.55901712 -0.809017 -0.1816349 -0.58778536 -0.809017 9.5367432e-07 -0.55901712 -0.809017 0.18163681
		 -0.47552833 -0.809017 0.34549236 -0.34549156 -0.809017 0.47552824 -0.18163566 -0.809017 0.55901766
		 -1.7517365e-08 -0.809017 0.58778572 0.18163559 -0.809017 0.55901766 0.3454915 -0.809017 0.47552824
		 0.4755283 -0.809017 0.34549236 0.559017 -0.809017 0.18163681 0.58778524 -0.809017 9.5367432e-07
		 0.67249894 -0.70710677 -0.21850824 0.57206178 -0.70710677 -0.41562653 0.41562712 -0.70710677 -0.57206154
		 0.21850809 -0.70710677 -0.67249823 0 -0.70710677 -0.70710659 -0.21850809 -0.70710677 -0.67249823
		 -0.41562703 -0.70710677 -0.57206154 -0.57206154 -0.70710677 -0.41562605 -0.6724987 -0.70710677 -0.21850824
		 -0.70710695 -0.70710677 9.5367432e-07 -0.6724987 -0.70710677 0.2185092 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206154 -0.21850805 -0.70710677 0.6724987 -2.1073424e-08 -0.70710677 0.70710754
		 0.21850799 -0.70710677 0.6724987 0.41562691 -0.70710677 0.57206154 0.5720613 -0.70710677 0.415627
		 0.67249852 -0.70710677 0.2185092 0.70710677 -0.70710677 9.5367432e-07 0.76942128 -0.5877853 -0.25
		 0.65450895 -0.5877853 -0.47552776 0.47552851 -0.5877853 -0.65450811 0.25000012 -0.5877853 -0.7694211
		 0 -0.5877853 -0.80901718 -0.25000012 -0.5877853 -0.7694211 -0.47552845 -0.5877853 -0.65450811
		 -0.65450871 -0.5877853 -0.47552729 -0.7694211 -0.5877853 -0.25 -0.80901706 -0.5877853 9.5367432e-07
		 -0.7694211 -0.5877853 0.25000048 -0.65450865 -0.5877853 0.47552824 -0.47552833 -0.5877853 0.65450859
		 -0.25000006 -0.5877853 0.76942158 -2.4110584e-08 -0.5877853 0.80901718 0.24999997 -0.5877853 0.76942158
		 0.4755283 -0.5877853 0.65450859 0.65450853 -0.5877853 0.47552824 0.76942092 -0.5877853 0.25000048
		 0.80901694 -0.5877853 9.5367432e-07 0.84739798 -0.45399052 -0.27533531 0.72083986 -0.45399052 -0.52372074
		 0.5237208 -0.45399052 -0.72083902 0.2753363 -0.45399052 -0.84739733 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739733 -0.52372068 -0.45399052 -0.72083902 -0.72083962 -0.45399052 -0.52372026
		 -0.8473978 -0.45399052 -0.27533531 -0.89100665 -0.45399052 9.5367432e-07 -0.8473978 -0.45399052 0.27533627
		 -0.72083962 -0.45399052 0.52372074 -0.52372062 -0.45399052 0.72083998 -0.27533621 -0.45399052 0.8473978
		 -2.6554064e-08 -0.45399052 0.89100695 0.27533609 -0.45399052 0.8473978 0.5237205 -0.45399052 0.72083998
		 0.72083944 -0.45399052 0.52372074 0.84739757 -0.45399052 0.27533627 0.89100653 -0.45399052 9.5367432e-07
		 0.90450913 -0.30901697 -0.29389286 0.76942128 -0.30901697 -0.55901718 0.55901736 -0.30901697 -0.7694211
		 0.29389277 -0.30901697 -0.90450859 0 -0.30901697 -0.95105696 -0.29389277 -0.30901697 -0.90450859
		 -0.55901724 -0.30901697 -0.7694211 -0.76942116 -0.30901697 -0.55901718 -0.90450865 -0.30901697 -0.29389286
		 -0.95105678 -0.30901697 9.5367432e-07 -0.90450865 -0.30901697 0.29389334 -0.7694211 -0.30901697 0.55901766
		 -0.55901712 -0.30901697 0.76942158 -0.29389271 -0.30901697 0.90450907 -2.8343695e-08 -0.30901697 0.95105648
		 0.29389262 -0.30901697 0.90450907 0.559017 -0.30901697 0.76942158 0.76942092 -0.30901697 0.55901766
		 0.90450853 -0.30901697 0.29389238 0.9510566 -0.30901697 9.5367432e-07 0.93934792 -0.15643437 -0.3052125
		 0.79905719 -0.15643437 -0.58054829 0.58054888 -0.15643437 -0.79905653 0.30521265 -0.15643437 -0.93934774
		 0 -0.15643437 -0.98768854 -0.30521265 -0.15643437 -0.93934774;
	setAttr ".vt[166:320]" -0.58054888 -0.15643437 -0.79905653 -0.79905683 -0.15643437 -0.58054829
		 -0.93934768 -0.15643437 -0.3052125 -0.9876886 -0.15643437 9.5367432e-07 -0.93934768 -0.15643437 0.30521393
		 -0.79905683 -0.15643437 0.58054924 -0.58054876 -0.15643437 0.79905748 -0.30521256 -0.15643437 0.93934774
		 -2.9435407e-08 -0.15643437 0.98768902 0.30521247 -0.15643437 0.93934774 0.58054864 -0.15643437 0.79905748
		 0.79905665 -0.15643437 0.58054924 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 9.5367432e-07
		 0.95105714 0 -0.30901718 0.80901754 0 -0.58778524 0.5877856 0 -0.80901718 0.30901715 0 -0.95105696
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.80901718 -0.80901712 0 -0.58778524
		 -0.95105678 0 -0.30901623 -1.000000238419 0 9.5367432e-07 -0.95105678 0 0.30901718
		 -0.80901706 0 0.58778572 -0.58778536 0 0.80901718 -0.30901706 0 0.95105648 -2.9802322e-08 0 1
		 0.30901691 0 0.95105648 0.58778524 0 0.80901718 0.80901694 0 0.58778572 0.9510566 0 0.30901718
		 1 0 9.5367432e-07 0.93934792 0.15643437 -0.3052125 0.79905719 0.15643437 -0.58054829
		 0.58054888 0.15643437 -0.79905653 0.30521265 0.15643437 -0.93934774 0 0.15643437 -0.98768854
		 -0.30521265 0.15643437 -0.93934774 -0.58054888 0.15643437 -0.79905653 -0.79905683 0.15643437 -0.58054829
		 -0.93934768 0.15643437 -0.3052125 -0.9876886 0.15643437 9.5367432e-07 -0.93934768 0.15643437 0.30521393
		 -0.79905683 0.15643437 0.58054924 -0.58054876 0.15643437 0.79905748 -0.30521256 0.15643437 0.93934774
		 -2.9435407e-08 0.15643437 0.98768902 0.30521247 0.15643437 0.93934774 0.58054864 0.15643437 0.79905748
		 0.79905665 0.15643437 0.58054924 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 9.5367432e-07
		 0.90450913 0.30901697 -0.29389286 0.76942128 0.30901697 -0.55901718 0.55901736 0.30901697 -0.7694211
		 0.29389277 0.30901697 -0.90450859 0 0.30901697 -0.95105696 -0.29389277 0.30901697 -0.90450859
		 -0.55901724 0.30901697 -0.7694211 -0.76942116 0.30901697 -0.55901718 -0.90450865 0.30901697 -0.29389286
		 -0.95105678 0.30901697 9.5367432e-07 -0.90450865 0.30901697 0.29389334 -0.7694211 0.30901697 0.55901766
		 -0.55901712 0.30901697 0.76942158 -0.29389271 0.30901697 0.90450907 -2.8343695e-08 0.30901697 0.95105648
		 0.29389262 0.30901697 0.90450907 0.559017 0.30901697 0.76942158 0.76942092 0.30901697 0.55901766
		 0.90450853 0.30901697 0.29389238 0.9510566 0.30901697 9.5367432e-07 0.84739798 0.45399052 -0.27533531
		 0.72083986 0.45399052 -0.52372074 0.5237208 0.45399052 -0.72083902 0.2753363 0.45399052 -0.84739733
		 0 0.45399052 -0.89100695 -0.2753363 0.45399052 -0.84739733 -0.52372068 0.45399052 -0.72083902
		 -0.72083962 0.45399052 -0.52372026 -0.8473978 0.45399052 -0.27533531 -0.89100665 0.45399052 9.5367432e-07
		 -0.8473978 0.45399052 0.27533627 -0.72083962 0.45399052 0.52372074 -0.52372062 0.45399052 0.72083998
		 -0.27533621 0.45399052 0.8473978 -2.6554064e-08 0.45399052 0.89100695 0.27533609 0.45399052 0.8473978
		 0.5237205 0.45399052 0.72083998 0.72083944 0.45399052 0.52372074 0.84739757 0.45399052 0.27533627
		 0.89100653 0.45399052 9.5367432e-07 0.76942128 0.5877853 -0.25 0.65450895 0.5877853 -0.47552776
		 0.47552851 0.5877853 -0.65450811 0.25000012 0.5877853 -0.7694211 0 0.5877853 -0.80901718
		 -0.25000012 0.5877853 -0.7694211 -0.47552845 0.5877853 -0.65450811 -0.65450871 0.5877853 -0.47552729
		 -0.7694211 0.5877853 -0.25 -0.80901706 0.5877853 9.5367432e-07 -0.7694211 0.5877853 0.25000048
		 -0.65450865 0.5877853 0.47552824 -0.47552833 0.5877853 0.65450859 -0.25000006 0.5877853 0.76942158
		 -2.4110584e-08 0.5877853 0.80901718 0.24999997 0.5877853 0.76942158 0.4755283 0.5877853 0.65450859
		 0.65450853 0.5877853 0.47552824 0.76942092 0.5877853 0.25000048 0.80901694 0.5877853 9.5367432e-07
		 0 -1 9.5367432e-07 0.51269871 0.66221356 -0.37249708 0.37249735 0.66221356 -0.51269817
		 0.19583341 0.66221356 -0.60271311 4.7560045e-09 0.66221356 -0.63372993 -0.19583341 0.66221356 -0.60271311
		 -0.37249729 0.66221356 -0.51269817 -0.51269847 0.66221356 -0.3724966 -0.60271311 0.66221356 -0.19583416
		 -0.63373005 0.66221356 9.5367432e-07 -0.60271311 0.66221356 0.19583321 -0.51269847 0.66221356 0.37249756
		 -0.37249723 0.66221356 0.51269865 -0.19583338 0.66221356 0.60271406 -1.4130621e-08 0.66221356 0.63373041
		 0.19583331 0.66221356 0.60271406 0.37249717 0.66221356 0.51269865 0.51269835 0.66221356 0.37249756
		 0.60271305 0.66221356 0.19583321 0.63372999 0.66221356 9.5367432e-07 0.60271347 0.66221356 -0.19583416
		 0.51269871 1.790681 -0.37249708 0.37249735 1.790681 -0.51269817 0.19583341 1.790681 -0.60271311
		 1.3899966e-08 1.790681 -0.63372993 -0.19583341 1.790681 -0.60271311 -0.37249729 1.790681 -0.51269817
		 -0.51269847 1.790681 -0.3724966 -0.60271311 1.790681 -0.19583416 -0.63373005 1.790681 9.5367432e-07
		 -0.60271311 1.790681 0.19583321 -0.51269847 1.790681 0.37249756 -0.37249723 1.790681 0.51269865
		 -0.19583338 1.790681 0.60271406 -4.9866595e-09 1.790681 0.63373041 0.19583331 1.790681 0.60271406
		 0.37249717 1.790681 0.51269865 0.51269835 1.790681 0.37249756 0.60271305 1.790681 0.19583321
		 0.63372999 1.790681 9.5367432e-07 0.60271347 1.790681 -0.19583416;
	setAttr -s 640 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 0 261 262 0
		 262 263 0 263 264 0 264 265 0 265 266 0 266 267 0 267 268 0 268 269 0 269 270 0 270 271 0
		 271 272 0 272 273 0 273 274 0 274 275 0 275 276 0 276 277 0 277 278 0 278 279 0 279 260 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1
		 23 43 1 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1
		 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1
		 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1;
	setAttr ".ed[332:497]" 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1
		 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1 69 89 1
		 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1 80 100 1
		 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1 89 109 1
		 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1 98 118 1
		 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1 107 127 1
		 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1 116 136 1
		 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1 124 144 1 125 145 1
		 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1 134 154 1
		 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1 143 163 1
		 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1 152 172 1
		 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1 161 181 1
		 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1 170 190 1
		 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1 179 199 1
		 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1 187 207 1 188 208 1
		 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1 196 216 1 197 217 1
		 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1 205 225 1 206 226 1
		 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1 214 234 1 215 235 1
		 216 236 1 217 237 1;
	setAttr ".ed[498:639]" 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1 223 243 1
		 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1 232 252 1
		 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1 241 261 1
		 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1 250 270 1
		 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1 259 279 1
		 280 0 1 280 1 1 280 2 1 280 3 1 280 4 1 280 5 1 280 6 1 280 7 1 280 8 1 280 9 1 280 10 1
		 280 11 1 280 12 1 280 13 1 280 14 1 280 15 1 280 16 1 280 17 1 280 18 1 280 19 1
		 261 281 1 262 282 1 281 282 0 263 283 1 282 283 0 264 284 1 283 284 0 265 285 1 284 285 0
		 266 286 1 285 286 0 267 287 1 286 287 0 268 288 1 287 288 0 269 289 1 288 289 0 270 290 1
		 289 290 0 271 291 1 290 291 0 272 292 1 291 292 0 273 293 1 292 293 0 274 294 1 293 294 0
		 275 295 1 294 295 0 276 296 1 295 296 0 277 297 1 296 297 0 278 298 1 297 298 0 279 299 1
		 298 299 0 260 300 1 299 300 0 300 281 0 281 301 1 282 302 1 301 302 0 283 303 1 302 303 0
		 284 304 1 303 304 0 285 305 1 304 305 0 286 306 1 305 306 0 287 307 1 306 307 0 288 308 1
		 307 308 0 289 309 1 308 309 0 290 310 1 309 310 0 291 311 1 310 311 0 292 312 1 311 312 0
		 293 313 1 312 313 0 294 314 1 313 314 0 295 315 1 314 315 0 296 316 1 315 316 0 297 317 1
		 316 317 0 298 318 1 317 318 0 299 319 1 318 319 0 300 320 1 319 320 0 320 301 0;
	setAttr -s 321 -ch 1280 ".fc[0:320]" -type "polyFaces" 
		f 4 0 281 -21 -281
		mu 0 4 0 1 22 21
		f 4 1 282 -22 -282
		mu 0 4 1 2 23 22
		f 4 2 283 -23 -283
		mu 0 4 2 3 24 23
		f 4 3 284 -24 -284
		mu 0 4 3 4 25 24
		f 4 4 285 -25 -285
		mu 0 4 4 5 26 25
		f 4 5 286 -26 -286
		mu 0 4 5 6 27 26
		f 4 6 287 -27 -287
		mu 0 4 6 7 28 27
		f 4 7 288 -28 -288
		mu 0 4 7 8 29 28
		f 4 8 289 -29 -289
		mu 0 4 8 9 30 29
		f 4 9 290 -30 -290
		mu 0 4 9 10 31 30
		f 4 10 291 -31 -291
		mu 0 4 10 11 32 31
		f 4 11 292 -32 -292
		mu 0 4 11 12 33 32
		f 4 12 293 -33 -293
		mu 0 4 12 13 34 33
		f 4 13 294 -34 -294
		mu 0 4 13 14 35 34
		f 4 14 295 -35 -295
		mu 0 4 14 15 36 35
		f 4 15 296 -36 -296
		mu 0 4 15 16 37 36
		f 4 16 297 -37 -297
		mu 0 4 16 17 38 37
		f 4 17 298 -38 -298
		mu 0 4 17 18 39 38
		f 4 18 299 -39 -299
		mu 0 4 18 19 40 39
		f 4 19 280 -40 -300
		mu 0 4 19 20 41 40
		f 4 20 301 -41 -301
		mu 0 4 21 22 43 42
		f 4 21 302 -42 -302
		mu 0 4 22 23 44 43
		f 4 22 303 -43 -303
		mu 0 4 23 24 45 44
		f 4 23 304 -44 -304
		mu 0 4 24 25 46 45
		f 4 24 305 -45 -305
		mu 0 4 25 26 47 46
		f 4 25 306 -46 -306
		mu 0 4 26 27 48 47
		f 4 26 307 -47 -307
		mu 0 4 27 28 49 48
		f 4 27 308 -48 -308
		mu 0 4 28 29 50 49
		f 4 28 309 -49 -309
		mu 0 4 29 30 51 50
		f 4 29 310 -50 -310
		mu 0 4 30 31 52 51
		f 4 30 311 -51 -311
		mu 0 4 31 32 53 52
		f 4 31 312 -52 -312
		mu 0 4 32 33 54 53
		f 4 32 313 -53 -313
		mu 0 4 33 34 55 54
		f 4 33 314 -54 -314
		mu 0 4 34 35 56 55
		f 4 34 315 -55 -315
		mu 0 4 35 36 57 56
		f 4 35 316 -56 -316
		mu 0 4 36 37 58 57
		f 4 36 317 -57 -317
		mu 0 4 37 38 59 58
		f 4 37 318 -58 -318
		mu 0 4 38 39 60 59
		f 4 38 319 -59 -319
		mu 0 4 39 40 61 60
		f 4 39 300 -60 -320
		mu 0 4 40 41 62 61
		f 4 40 321 -61 -321
		mu 0 4 42 43 64 63
		f 4 41 322 -62 -322
		mu 0 4 43 44 65 64
		f 4 42 323 -63 -323
		mu 0 4 44 45 66 65
		f 4 43 324 -64 -324
		mu 0 4 45 46 67 66
		f 4 44 325 -65 -325
		mu 0 4 46 47 68 67
		f 4 45 326 -66 -326
		mu 0 4 47 48 69 68
		f 4 46 327 -67 -327
		mu 0 4 48 49 70 69
		f 4 47 328 -68 -328
		mu 0 4 49 50 71 70
		f 4 48 329 -69 -329
		mu 0 4 50 51 72 71
		f 4 49 330 -70 -330
		mu 0 4 51 52 73 72
		f 4 50 331 -71 -331
		mu 0 4 52 53 74 73
		f 4 51 332 -72 -332
		mu 0 4 53 54 75 74
		f 4 52 333 -73 -333
		mu 0 4 54 55 76 75
		f 4 53 334 -74 -334
		mu 0 4 55 56 77 76
		f 4 54 335 -75 -335
		mu 0 4 56 57 78 77
		f 4 55 336 -76 -336
		mu 0 4 57 58 79 78
		f 4 56 337 -77 -337
		mu 0 4 58 59 80 79
		f 4 57 338 -78 -338
		mu 0 4 59 60 81 80
		f 4 58 339 -79 -339
		mu 0 4 60 61 82 81
		f 4 59 320 -80 -340
		mu 0 4 61 62 83 82
		f 4 60 341 -81 -341
		mu 0 4 63 64 85 84
		f 4 61 342 -82 -342
		mu 0 4 64 65 86 85
		f 4 62 343 -83 -343
		mu 0 4 65 66 87 86
		f 4 63 344 -84 -344
		mu 0 4 66 67 88 87
		f 4 64 345 -85 -345
		mu 0 4 67 68 89 88
		f 4 65 346 -86 -346
		mu 0 4 68 69 90 89
		f 4 66 347 -87 -347
		mu 0 4 69 70 91 90
		f 4 67 348 -88 -348
		mu 0 4 70 71 92 91
		f 4 68 349 -89 -349
		mu 0 4 71 72 93 92
		f 4 69 350 -90 -350
		mu 0 4 72 73 94 93
		f 4 70 351 -91 -351
		mu 0 4 73 74 95 94
		f 4 71 352 -92 -352
		mu 0 4 74 75 96 95
		f 4 72 353 -93 -353
		mu 0 4 75 76 97 96
		f 4 73 354 -94 -354
		mu 0 4 76 77 98 97
		f 4 74 355 -95 -355
		mu 0 4 77 78 99 98
		f 4 75 356 -96 -356
		mu 0 4 78 79 100 99
		f 4 76 357 -97 -357
		mu 0 4 79 80 101 100
		f 4 77 358 -98 -358
		mu 0 4 80 81 102 101
		f 4 78 359 -99 -359
		mu 0 4 81 82 103 102
		f 4 79 340 -100 -360
		mu 0 4 82 83 104 103
		f 4 80 361 -101 -361
		mu 0 4 84 85 106 105
		f 4 81 362 -102 -362
		mu 0 4 85 86 107 106
		f 4 82 363 -103 -363
		mu 0 4 86 87 108 107
		f 4 83 364 -104 -364
		mu 0 4 87 88 109 108
		f 4 84 365 -105 -365
		mu 0 4 88 89 110 109
		f 4 85 366 -106 -366
		mu 0 4 89 90 111 110
		f 4 86 367 -107 -367
		mu 0 4 90 91 112 111
		f 4 87 368 -108 -368
		mu 0 4 91 92 113 112
		f 4 88 369 -109 -369
		mu 0 4 92 93 114 113
		f 4 89 370 -110 -370
		mu 0 4 93 94 115 114
		f 4 90 371 -111 -371
		mu 0 4 94 95 116 115
		f 4 91 372 -112 -372
		mu 0 4 95 96 117 116
		f 4 92 373 -113 -373
		mu 0 4 96 97 118 117
		f 4 93 374 -114 -374
		mu 0 4 97 98 119 118
		f 4 94 375 -115 -375
		mu 0 4 98 99 120 119
		f 4 95 376 -116 -376
		mu 0 4 99 100 121 120
		f 4 96 377 -117 -377
		mu 0 4 100 101 122 121
		f 4 97 378 -118 -378
		mu 0 4 101 102 123 122
		f 4 98 379 -119 -379
		mu 0 4 102 103 124 123
		f 4 99 360 -120 -380
		mu 0 4 103 104 125 124
		f 4 100 381 -121 -381
		mu 0 4 105 106 127 126
		f 4 101 382 -122 -382
		mu 0 4 106 107 128 127
		f 4 102 383 -123 -383
		mu 0 4 107 108 129 128
		f 4 103 384 -124 -384
		mu 0 4 108 109 130 129
		f 4 104 385 -125 -385
		mu 0 4 109 110 131 130
		f 4 105 386 -126 -386
		mu 0 4 110 111 132 131
		f 4 106 387 -127 -387
		mu 0 4 111 112 133 132
		f 4 107 388 -128 -388
		mu 0 4 112 113 134 133
		f 4 108 389 -129 -389
		mu 0 4 113 114 135 134
		f 4 109 390 -130 -390
		mu 0 4 114 115 136 135
		f 4 110 391 -131 -391
		mu 0 4 115 116 137 136
		f 4 111 392 -132 -392
		mu 0 4 116 117 138 137
		f 4 112 393 -133 -393
		mu 0 4 117 118 139 138
		f 4 113 394 -134 -394
		mu 0 4 118 119 140 139
		f 4 114 395 -135 -395
		mu 0 4 119 120 141 140
		f 4 115 396 -136 -396
		mu 0 4 120 121 142 141
		f 4 116 397 -137 -397
		mu 0 4 121 122 143 142
		f 4 117 398 -138 -398
		mu 0 4 122 123 144 143
		f 4 118 399 -139 -399
		mu 0 4 123 124 145 144
		f 4 119 380 -140 -400
		mu 0 4 124 125 146 145
		f 4 120 401 -141 -401
		mu 0 4 126 127 148 147
		f 4 121 402 -142 -402
		mu 0 4 127 128 149 148
		f 4 122 403 -143 -403
		mu 0 4 128 129 150 149
		f 4 123 404 -144 -404
		mu 0 4 129 130 151 150
		f 4 124 405 -145 -405
		mu 0 4 130 131 152 151
		f 4 125 406 -146 -406
		mu 0 4 131 132 153 152
		f 4 126 407 -147 -407
		mu 0 4 132 133 154 153
		f 4 127 408 -148 -408
		mu 0 4 133 134 155 154
		f 4 128 409 -149 -409
		mu 0 4 134 135 156 155
		f 4 129 410 -150 -410
		mu 0 4 135 136 157 156
		f 4 130 411 -151 -411
		mu 0 4 136 137 158 157
		f 4 131 412 -152 -412
		mu 0 4 137 138 159 158
		f 4 132 413 -153 -413
		mu 0 4 138 139 160 159
		f 4 133 414 -154 -414
		mu 0 4 139 140 161 160
		f 4 134 415 -155 -415
		mu 0 4 140 141 162 161
		f 4 135 416 -156 -416
		mu 0 4 141 142 163 162
		f 4 136 417 -157 -417
		mu 0 4 142 143 164 163
		f 4 137 418 -158 -418
		mu 0 4 143 144 165 164
		f 4 138 419 -159 -419
		mu 0 4 144 145 166 165
		f 4 139 400 -160 -420
		mu 0 4 145 146 167 166
		f 4 140 421 -161 -421
		mu 0 4 147 148 169 168
		f 4 141 422 -162 -422
		mu 0 4 148 149 170 169
		f 4 142 423 -163 -423
		mu 0 4 149 150 171 170
		f 4 143 424 -164 -424
		mu 0 4 150 151 172 171
		f 4 144 425 -165 -425
		mu 0 4 151 152 173 172
		f 4 145 426 -166 -426
		mu 0 4 152 153 174 173
		f 4 146 427 -167 -427
		mu 0 4 153 154 175 174
		f 4 147 428 -168 -428
		mu 0 4 154 155 176 175
		f 4 148 429 -169 -429
		mu 0 4 155 156 177 176
		f 4 149 430 -170 -430
		mu 0 4 156 157 178 177
		f 4 150 431 -171 -431
		mu 0 4 157 158 179 178
		f 4 151 432 -172 -432
		mu 0 4 158 159 180 179
		f 4 152 433 -173 -433
		mu 0 4 159 160 181 180
		f 4 153 434 -174 -434
		mu 0 4 160 161 182 181
		f 4 154 435 -175 -435
		mu 0 4 161 162 183 182
		f 4 155 436 -176 -436
		mu 0 4 162 163 184 183
		f 4 156 437 -177 -437
		mu 0 4 163 164 185 184
		f 4 157 438 -178 -438
		mu 0 4 164 165 186 185
		f 4 158 439 -179 -439
		mu 0 4 165 166 187 186
		f 4 159 420 -180 -440
		mu 0 4 166 167 188 187
		f 4 160 441 -181 -441
		mu 0 4 168 169 190 189
		f 4 161 442 -182 -442
		mu 0 4 169 170 191 190
		f 4 162 443 -183 -443
		mu 0 4 170 171 192 191
		f 4 163 444 -184 -444
		mu 0 4 171 172 193 192
		f 4 164 445 -185 -445
		mu 0 4 172 173 194 193
		f 4 165 446 -186 -446
		mu 0 4 173 174 195 194
		f 4 166 447 -187 -447
		mu 0 4 174 175 196 195
		f 4 167 448 -188 -448
		mu 0 4 175 176 197 196
		f 4 168 449 -189 -449
		mu 0 4 176 177 198 197
		f 4 169 450 -190 -450
		mu 0 4 177 178 199 198
		f 4 170 451 -191 -451
		mu 0 4 178 179 200 199
		f 4 171 452 -192 -452
		mu 0 4 179 180 201 200
		f 4 172 453 -193 -453
		mu 0 4 180 181 202 201
		f 4 173 454 -194 -454
		mu 0 4 181 182 203 202
		f 4 174 455 -195 -455
		mu 0 4 182 183 204 203
		f 4 175 456 -196 -456
		mu 0 4 183 184 205 204
		f 4 176 457 -197 -457
		mu 0 4 184 185 206 205
		f 4 177 458 -198 -458
		mu 0 4 185 186 207 206
		f 4 178 459 -199 -459
		mu 0 4 186 187 208 207
		f 4 179 440 -200 -460
		mu 0 4 187 188 209 208
		f 4 180 461 -201 -461
		mu 0 4 189 190 211 210
		f 4 181 462 -202 -462
		mu 0 4 190 191 212 211
		f 4 182 463 -203 -463
		mu 0 4 191 192 213 212
		f 4 183 464 -204 -464
		mu 0 4 192 193 214 213
		f 4 184 465 -205 -465
		mu 0 4 193 194 215 214
		f 4 185 466 -206 -466
		mu 0 4 194 195 216 215
		f 4 186 467 -207 -467
		mu 0 4 195 196 217 216
		f 4 187 468 -208 -468
		mu 0 4 196 197 218 217
		f 4 188 469 -209 -469
		mu 0 4 197 198 219 218
		f 4 189 470 -210 -470
		mu 0 4 198 199 220 219
		f 4 190 471 -211 -471
		mu 0 4 199 200 221 220
		f 4 191 472 -212 -472
		mu 0 4 200 201 222 221
		f 4 192 473 -213 -473
		mu 0 4 201 202 223 222
		f 4 193 474 -214 -474
		mu 0 4 202 203 224 223
		f 4 194 475 -215 -475
		mu 0 4 203 204 225 224
		f 4 195 476 -216 -476
		mu 0 4 204 205 226 225
		f 4 196 477 -217 -477
		mu 0 4 205 206 227 226
		f 4 197 478 -218 -478
		mu 0 4 206 207 228 227
		f 4 198 479 -219 -479
		mu 0 4 207 208 229 228
		f 4 199 460 -220 -480
		mu 0 4 208 209 230 229
		f 4 200 481 -221 -481
		mu 0 4 210 211 232 231
		f 4 201 482 -222 -482
		mu 0 4 211 212 233 232
		f 4 202 483 -223 -483
		mu 0 4 212 213 234 233
		f 4 203 484 -224 -484
		mu 0 4 213 214 235 234
		f 4 204 485 -225 -485
		mu 0 4 214 215 236 235
		f 4 205 486 -226 -486
		mu 0 4 215 216 237 236
		f 4 206 487 -227 -487
		mu 0 4 216 217 238 237
		f 4 207 488 -228 -488
		mu 0 4 217 218 239 238
		f 4 208 489 -229 -489
		mu 0 4 218 219 240 239
		f 4 209 490 -230 -490
		mu 0 4 219 220 241 240
		f 4 210 491 -231 -491
		mu 0 4 220 221 242 241
		f 4 211 492 -232 -492
		mu 0 4 221 222 243 242
		f 4 212 493 -233 -493
		mu 0 4 222 223 244 243
		f 4 213 494 -234 -494
		mu 0 4 223 224 245 244
		f 4 214 495 -235 -495
		mu 0 4 224 225 246 245
		f 4 215 496 -236 -496
		mu 0 4 225 226 247 246
		f 4 216 497 -237 -497
		mu 0 4 226 227 248 247
		f 4 217 498 -238 -498
		mu 0 4 227 228 249 248
		f 4 218 499 -239 -499
		mu 0 4 228 229 250 249
		f 4 219 480 -240 -500
		mu 0 4 229 230 251 250
		f 4 220 501 -241 -501
		mu 0 4 231 232 253 252
		f 4 221 502 -242 -502
		mu 0 4 232 233 254 253
		f 4 222 503 -243 -503
		mu 0 4 233 234 255 254
		f 4 223 504 -244 -504
		mu 0 4 234 235 256 255
		f 4 224 505 -245 -505
		mu 0 4 235 236 257 256
		f 4 225 506 -246 -506
		mu 0 4 236 237 258 257
		f 4 226 507 -247 -507
		mu 0 4 237 238 259 258
		f 4 227 508 -248 -508
		mu 0 4 238 239 260 259
		f 4 228 509 -249 -509
		mu 0 4 239 240 261 260
		f 4 229 510 -250 -510
		mu 0 4 240 241 262 261
		f 4 230 511 -251 -511
		mu 0 4 241 242 263 262
		f 4 231 512 -252 -512
		mu 0 4 242 243 264 263
		f 4 232 513 -253 -513
		mu 0 4 243 244 265 264
		f 4 233 514 -254 -514
		mu 0 4 244 245 266 265
		f 4 234 515 -255 -515
		mu 0 4 245 246 267 266
		f 4 235 516 -256 -516
		mu 0 4 246 247 268 267
		f 4 236 517 -257 -517
		mu 0 4 247 248 269 268
		f 4 237 518 -258 -518
		mu 0 4 248 249 270 269
		f 4 238 519 -259 -519
		mu 0 4 249 250 271 270
		f 4 239 500 -260 -520
		mu 0 4 250 251 272 271
		f 4 240 521 -261 -521
		mu 0 4 252 253 274 273
		f 4 241 522 -262 -522
		mu 0 4 253 254 275 274
		f 4 242 523 -263 -523
		mu 0 4 254 255 276 275
		f 4 243 524 -264 -524
		mu 0 4 255 256 277 276
		f 4 244 525 -265 -525
		mu 0 4 256 257 278 277
		f 4 245 526 -266 -526
		mu 0 4 257 258 279 278
		f 4 246 527 -267 -527
		mu 0 4 258 259 280 279
		f 4 247 528 -268 -528
		mu 0 4 259 260 281 280
		f 4 248 529 -269 -529
		mu 0 4 260 261 282 281
		f 4 249 530 -270 -530
		mu 0 4 261 262 283 282
		f 4 250 531 -271 -531
		mu 0 4 262 263 284 283
		f 4 251 532 -272 -532
		mu 0 4 263 264 285 284
		f 4 252 533 -273 -533
		mu 0 4 264 265 286 285
		f 4 253 534 -274 -534
		mu 0 4 265 266 287 286
		f 4 254 535 -275 -535
		mu 0 4 266 267 288 287
		f 4 255 536 -276 -536
		mu 0 4 267 268 289 288
		f 4 256 537 -277 -537
		mu 0 4 268 269 290 289
		f 4 257 538 -278 -538
		mu 0 4 269 270 291 290
		f 4 258 539 -279 -539
		mu 0 4 270 271 292 291
		f 4 259 520 -280 -540
		mu 0 4 271 272 293 292
		f 3 -1 -541 541
		mu 0 3 1 0 294
		f 3 -2 -542 542
		mu 0 3 2 1 295
		f 3 -3 -543 543
		mu 0 3 3 2 296
		f 3 -4 -544 544
		mu 0 3 4 3 297
		f 3 -5 -545 545
		mu 0 3 5 4 298
		f 3 -6 -546 546
		mu 0 3 6 5 299
		f 3 -7 -547 547
		mu 0 3 7 6 300
		f 3 -8 -548 548
		mu 0 3 8 7 301
		f 3 -9 -549 549
		mu 0 3 9 8 302
		f 3 -10 -550 550
		mu 0 3 10 9 303
		f 3 -11 -551 551
		mu 0 3 11 10 304
		f 3 -12 -552 552
		mu 0 3 12 11 305
		f 3 -13 -553 553
		mu 0 3 13 12 306
		f 3 -14 -554 554
		mu 0 3 14 13 307
		f 3 -15 -555 555
		mu 0 3 15 14 308
		f 3 -16 -556 556
		mu 0 3 16 15 309
		f 3 -17 -557 557
		mu 0 3 17 16 310
		f 3 -18 -558 558
		mu 0 3 18 17 311
		f 3 -19 -559 559
		mu 0 3 19 18 312
		f 3 -20 -560 540
		mu 0 3 20 19 313
		f 20 602 604 606 608 610 612 614 616 618 620 622 624 626 628 630 632 634 636 638 639
		mu 0 20 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353
		f 4 261 561 -563 -561
		mu 0 4 274 275 315 314
		f 4 262 563 -565 -562
		mu 0 4 275 276 316 315
		f 4 263 565 -567 -564
		mu 0 4 276 277 317 316
		f 4 264 567 -569 -566
		mu 0 4 277 278 318 317
		f 4 265 569 -571 -568
		mu 0 4 278 279 319 318
		f 4 266 571 -573 -570
		mu 0 4 279 280 320 319
		f 4 267 573 -575 -572
		mu 0 4 280 281 321 320
		f 4 268 575 -577 -574
		mu 0 4 281 282 322 321
		f 4 269 577 -579 -576
		mu 0 4 282 283 323 322
		f 4 270 579 -581 -578
		mu 0 4 283 284 324 323
		f 4 271 581 -583 -580
		mu 0 4 284 285 325 324
		f 4 272 583 -585 -582
		mu 0 4 285 286 326 325
		f 4 273 585 -587 -584
		mu 0 4 286 287 327 326
		f 4 274 587 -589 -586
		mu 0 4 287 288 328 327
		f 4 275 589 -591 -588
		mu 0 4 288 289 329 328
		f 4 276 591 -593 -590
		mu 0 4 289 290 330 329
		f 4 277 593 -595 -592
		mu 0 4 290 291 331 330
		f 4 278 595 -597 -594
		mu 0 4 291 292 332 331
		f 4 279 597 -599 -596
		mu 0 4 292 273 333 332
		f 4 260 560 -600 -598
		mu 0 4 273 274 314 333
		f 4 562 601 -603 -601
		mu 0 4 314 315 335 334
		f 4 564 603 -605 -602
		mu 0 4 315 316 336 335
		f 4 566 605 -607 -604
		mu 0 4 316 317 337 336
		f 4 568 607 -609 -606
		mu 0 4 317 318 338 337
		f 4 570 609 -611 -608
		mu 0 4 318 319 339 338
		f 4 572 611 -613 -610
		mu 0 4 319 320 340 339
		f 4 574 613 -615 -612
		mu 0 4 320 321 341 340
		f 4 576 615 -617 -614
		mu 0 4 321 322 342 341
		f 4 578 617 -619 -616
		mu 0 4 322 323 343 342
		f 4 580 619 -621 -618
		mu 0 4 323 324 344 343
		f 4 582 621 -623 -620
		mu 0 4 324 325 345 344
		f 4 584 623 -625 -622
		mu 0 4 325 326 346 345
		f 4 586 625 -627 -624
		mu 0 4 326 327 347 346
		f 4 588 627 -629 -626
		mu 0 4 327 328 348 347
		f 4 590 629 -631 -628
		mu 0 4 328 329 349 348
		f 4 592 631 -633 -630
		mu 0 4 329 330 350 349
		f 4 594 633 -635 -632
		mu 0 4 330 331 351 350
		f 4 596 635 -637 -634
		mu 0 4 331 332 352 351
		f 4 598 637 -639 -636
		mu 0 4 332 333 353 352
		f 4 599 600 -640 -638
		mu 0 4 333 314 334 353;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "upperDoorknob_one" -p "Doorknobs";
	rename -uid "7550BD05-4227-9458-3F86-4CB0C53F68F4";
	setAttr ".rp" -type "double3" -1.8187572956085205 4.1033803045401553 1.1349433745024307 ;
	setAttr ".sp" -type "double3" -1.8187572956085196 4.1033803045401553 1.1349433745024307 ;
createNode mesh -n "upperDoorknob_oneShape" -p "upperDoorknob_one";
	rename -uid "E227C5BE-4DFF-2D0B-72F3-4184709B3279";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47500008344650269 0.7000001072883606 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 354 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:353]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.050000001 0.70000011 0.1 0.70000011
		 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011 0.35000002
		 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007
		 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012
		 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017
		 0.70000011 0 0.70000011 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011
		 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004
		 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008
		 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013
		 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017 0.70000011 0 0.70000011;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 321 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -1.7347411 5.1075878 1.1772285 -1.7125212 
		5.1051207 1.2153761 -1.677913 5.1012783 1.2456489 -1.6343039 5.096436 1.2650858 -1.585963 
		5.0910687 1.2717834 -1.537622 5.0857015 1.2650858 -1.4940131 5.0808592 1.2456489 
		-1.4594048 5.0770164 1.2153761 -1.4371849 5.0745492 1.1772285 -1.4295285 5.0736995 
		1.1349425 -1.4371849 5.0745492 1.0926566 -1.4594048 5.0770164 1.0545098 -1.4940131 
		5.0808592 1.0242362 -1.5376221 5.0857015 1.0048006 -1.585963 5.0910687 0.99810302 
		-1.6343038 5.096436 1.0048006 -1.6779128 5.1012783 1.0242362 -1.7125211 5.1051207 
		1.0545098 -1.734741 5.1075878 1.0926566 -1.7423974 5.108438 1.1349425 -1.8833648 
		5.0870686 1.2184737 -1.8394721 5.0821953 1.2938277 -1.7711077 5.0746045 1.3536297 
		-1.6849635 5.0650396 1.3920248 -1.5894719 5.0544372 1.4052547 -1.4939804 5.0438342 
		1.3920248 -1.4078362 5.0342693 1.3536297 -1.3394718 5.0266786 1.2938277 -1.2955792 
		5.0218053 1.2184737 -1.2804549 5.0201259 1.1349425 -1.2955792 5.0218053 1.0514115 
		-1.3394718 5.0266786 0.97605741 -1.4078362 5.0342693 0.91625661 -1.4939804 5.0438342 
		0.87786239 -1.5894719 5.0544372 0.86463201 -1.6849635 5.0650396 0.87786239 -1.7711076 
		5.0746045 0.91625661 -1.8394719 5.0821953 0.97605741 -1.8833646 5.0870686 1.0514127 
		-1.8984889 5.088748 1.1349425 -2.0269949 5.0423279 1.2576621 -1.9625105 5.0351677 
		1.3683684 -1.8620732 5.0240159 1.4562248 -1.735515 5.009964 1.5126328 -1.5952241 
		4.9943867 1.532069 -1.4549333 4.9788098 1.5126328 -1.3283751 4.9647579 1.4562248 
		-1.2279379 4.9536061 1.3683684 -1.1634533 4.9464459 1.2576621 -1.1412336 4.9439788 
		1.1349425 -1.1634533 4.9464459 1.0122238 -1.2279381 4.9536061 0.90151757 -1.3283751 
		4.9647579 0.81366062 -1.4549333 4.9788098 0.75725389 -1.5952241 4.9943867 0.73781693 
		-1.7355149 5.009964 0.75725389 -1.8620731 5.0240159 0.81366062 -1.9625102 5.0351677 
		0.90151757 -2.0269947 5.0423279 1.0122238 -2.0492146 5.044795 1.1349425 -2.1620953 
		4.9744668 1.2938277 -2.0786064 4.9651966 1.4371604 -1.9485697 4.9507585 1.550909 
		-1.7847136 4.9325647 1.6239411 -1.6030779 4.9123974 1.6491058 -1.4214422 4.8922296 
		1.6239411 -1.2575862 4.8740363 1.550909 -1.1275495 4.8595982 1.4371604 -1.0440608 
		4.850328 1.2938277 -1.0152925 4.8471336 1.1349425 -1.0440608 4.850328 0.97605741 
		-1.1275495 4.8595982 0.83272552 -1.2575864 4.8740363 0.71897727 -1.4214423 4.8922296 
		0.64594531 -1.6030779 4.9123974 0.62078059 -1.7847135 4.9325647 0.64594531 -1.9485694 
		4.9507585 0.71897727 -2.0786061 4.9651966 0.83272552 -2.1620948 4.9744668 0.97605741 
		-2.1908631 4.9776607 1.1349425 -2.2853389 4.8851566 1.3260825 -2.1849017 4.8740048 
		1.4985107 -2.0284669 4.8566356 1.6353515 -1.8313481 4.8347487 1.7232081 -1.6128399 
		4.8104873 1.7534815 -1.3943318 4.7862253 1.7232081 -1.1972129 4.764339 1.6353515 
		-1.0407784 4.7469692 1.4985104 -0.94034123 4.7358174 1.3260825 -0.90573299 4.7319751 
		1.1349425 -0.94034123 4.7358174 0.94380349 -1.0407784 4.7469692 0.7713756 -1.1972129 
		4.764339 0.63453519 -1.3943318 4.7862253 0.54667825 -1.6128399 4.8104873 0.51640433 
		-1.8313479 4.8347487 0.54667825 -2.0284669 4.8566356 0.63453519 -2.1849012 4.8740048 
		0.7713756 -2.2853384 4.8851566 0.94380349 -2.3199468 4.8889995 1.1349425 -2.3936911 
		4.7765965 1.3536297 -2.2787788 4.7638378 1.550909 -2.0997982 4.7439651 1.7074713 
		-1.8742698 4.718924 1.8079909 -1.6242697 4.6911654 1.8426274 -1.3742696 4.6634073 
		1.8079909 -1.1487412 4.6383662 1.7074713 -0.96976101 4.6184936 1.5509087 -0.85484862 
		4.6057343 1.3536297 -0.81525266 4.6013379 1.1349425 -0.85484862 4.6057343 0.91625661 
		-0.96976107 4.6184936 0.71897727 -1.1487414 4.6383662 0.56241506 -1.3742697 4.6634073 
		0.46189544 -1.6242697 4.6911654 0.42725936 -1.8742697 4.718924 0.46189544 -2.099798 
		4.7439651 0.56241506 -2.2787783 4.7638378 0.71897727 -2.3936906 4.7765965 0.91625661 
		-2.4332867 4.780993 1.1349425 -2.484484 4.6514602 1.3757917 -2.3579259 4.6374078 
		1.5930656 -2.1608067 4.615521 1.765494 -1.9124223 4.5879421 1.8762002 -1.6370859 
		4.5573707 1.9143475 -1.3617496 4.5267992 1.8762002 -1.1133653 4.4992204 1.765494 
		-0.91624635 4.477334 1.5930653 -0.78968817 4.4632816 1.3757917 -0.74607933 4.4584398 
		1.1349425 -0.78968817 4.4632816 0.89409429 -0.91624635 4.477334 0.67682111 -1.1133653 
		4.4992204 0.50439197 -1.3617498 4.5267992 0.39368609 -1.6370859 4.5573707 0.3555392 
		-1.9124221 4.5879421 0.39368609 -2.1608064 4.615521 0.50439197 -2.3579254 4.6374078 
		0.67682111 -2.4844835 4.6514597 0.89409429 -2.5280924 4.656302 1.1349425 -2.5554821 
		4.5128274 1.3920248 -2.4203942 4.4978285 1.6239411 -2.2099903 4.4744668 1.8079909 
		-1.9448657 4.4450293 1.9261581 -1.650973 4.4123974 1.966876 -1.3570802 4.3797655 
		1.9261581 -1.0919558 4.350328 1.8079909 -0.8815518 4.3269663 1.6239411 -0.74646431 
		4.3119669 1.3920248 -0.69991618 4.3067985 1.1349425 -0.74646431 4.3119669 0.87786156 
		-0.88155186 4.3269663 0.64594531 -1.0919559 4.350328 0.46189544 -1.3570802 4.3797655 
		0.34372827 -1.650973 4.4123974 0.30301115 -1.9448656 4.4450293 0.34372827 -2.20999 
		4.4744668 0.46189544 -2.4203939 4.4978285 0.64594531 -2.5554814 4.5128274 0.87786239 
		-2.6020296 4.5179958 1.1349425 -2.6049368 4.3641133 1.4019266 -2.4646461 4.3485365 
		1.6427753 -2.2461379 4.3242745 1.8339144 -1.9708016 4.2937036 1.9566334 -1.6655889 
		4.2598147 1.9989194 -1.3603762 4.2259259 1.9566334;
	setAttr ".pt[166:320]" -1.08504 4.1953545 1.8339144 -0.86653209 4.171093 1.6427753 
		-0.72624123 4.1555161 1.4019266 -0.67790031 4.1501489 1.1349425 -0.72624123 4.1555161 
		0.8679589 -0.86653209 4.171093 0.62711066 -1.0850401 4.1953545 0.43597156 -1.3603764 
		4.2259259 0.31325331 -1.6655889 4.2598147 0.27096701 -1.9708014 4.2937036 0.31325331 
		-2.2461376 4.3242745 0.43597156 -2.4646456 4.3485365 0.62711066 -2.6049364 4.3641133 
		0.86796016 -2.6532772 4.3694806 1.1349425 -2.6316309 4.2089791 1.4052547 -2.4895914 
		4.1932077 1.6491058 -2.2683594 4.168644 1.8426274 -1.9895909 4.1376915 1.966876 -1.6805738 
		4.1033802 2.0096891 -1.3715566 4.0690694 1.966876 -1.0927883 4.0381169 1.8426274 
		-0.87155664 4.0135527 1.6491058 -0.72951698 3.9977818 1.4052539 -0.68057352 3.9923472 
		1.1349425 -0.72951698 3.9977818 0.86463201 -0.8715567 4.0135527 0.62078059 -1.0927885 
		4.0381169 0.42725936 -1.3715568 4.0690694 0.30301115 -1.6805737 4.1033802 0.26019803 
		-1.9895906 4.1376915 0.30301115 -2.2683589 4.168644 0.42725936 -2.4895906 4.1932077 
		0.62078059 -2.6316304 4.2089791 0.86463201 -2.6805737 4.2144132 1.1349425 -2.6349065 
		4.0512447 1.4019266 -2.4946158 4.0356674 1.6427753 -2.2761075 4.0114059 1.8339144 
		-2.0007713 3.9808345 1.9566334 -1.6955587 3.9469459 1.9989194 -1.3903459 3.9130573 
		1.9566334 -1.1150098 3.8824859 1.8339144 -0.89650178 3.8582242 1.6427753 -0.75621092 
		3.8426473 1.4019266 -0.70787001 3.83728 1.1349425 -0.75621092 3.8426473 0.8679589 
		-0.89650178 3.8582242 0.62711066 -1.1150099 3.8824859 0.43597156 -1.3903461 3.9130573 
		0.31325331 -1.6955585 3.9469459 0.27096701 -2.000771 3.9808345 0.31325331 -2.2761073 
		4.0114059 0.43597156 -2.4946153 4.0356674 0.62711066 -2.6349061 4.0512443 0.86796016 
		-2.6832471 4.056612 1.1349425 -2.6146836 3.8947937 1.3920248 -2.4795959 3.8797944 
		1.6239411 -2.269192 3.8564327 1.8079909 -2.0040674 3.8269951 1.9261581 -1.7101746 
		3.7943633 1.966876 -1.4162818 3.7617316 1.9261581 -1.1511573 3.7322941 1.8079909 
		-0.9407534 3.7089322 1.6239411 -0.80566591 3.693933 1.3920248 -0.75911778 3.6887646 
		1.1349425 -0.80566591 3.693933 0.87786156 -0.94075346 3.7089322 0.64594531 -1.1511574 
		3.7322941 0.46189544 -1.4162818 3.7617316 0.34372827 -1.7101746 3.7943633 0.30301115 
		-2.0040672 3.8269951 0.34372827 -2.2691915 3.8564327 0.46189544 -2.4795954 3.8797944 
		0.64594531 -2.6146832 3.8947935 0.87786239 -2.661231 3.8999619 1.1349425 -2.5714595 
		3.743479 1.3757917 -2.4449015 3.7294269 1.5930656 -2.2477825 3.70754 1.765494 -1.9993979 
		3.6799612 1.8762002 -1.7240616 3.6493897 1.9143475 -1.4487253 3.6188183 1.8762002 
		-1.2003409 3.5912395 1.765494 -1.003222 3.5693529 1.5930653 -0.8766638 3.5553007 
		1.3757917 -0.83305496 3.5504587 1.1349425 -0.8766638 3.5553007 0.89409429 -1.003222 
		3.5693529 0.67682111 -1.200341 3.5912395 0.50439197 -1.4487253 3.6188183 0.39368609 
		-1.7240616 3.6493897 0.3555392 -1.9993976 3.6799612 0.39368609 -2.247782 3.70754 
		0.50439197 -2.444901 3.7294266 0.67682111 -2.5714591 3.7434788 0.89409429 -2.6150682 
		3.7483208 1.1349425 -2.506299 3.6010261 1.3536297 -2.3913867 3.5882671 1.550909 -2.2124064 
		3.5683944 1.7074713 -1.9868779 3.5433533 1.8079909 -1.7368778 3.515595 1.8426274 
		-1.4868777 3.4878368 1.8079909 -1.2613493 3.4627957 1.7074713 -1.0823691 3.4429228 
		1.5509087 -0.9674567 3.4301639 1.3536297 -0.92786074 3.4257674 1.1349425 -0.9674567 
		3.4301639 0.91625661 -1.0823692 3.4429231 0.71897727 -1.2613494 3.4627957 0.56241506 
		-1.4868778 3.4878368 0.46189544 -1.7368778 3.515595 0.42725936 -1.9868778 3.5433533 
		0.46189544 -2.2124062 3.5683944 0.56241506 -2.3913863 3.5882671 0.71897727 -2.5062988 
		3.6010261 0.91625661 -2.5458949 3.6054225 1.1349425 -1.5847837 5.1033802 1.1349425 
		-2.256706 3.4980931 1.4607835 -2.1165047 3.4825263 1.5834237 -1.9398407 3.4629107 
		1.6621639 -1.7440073 3.4411666 1.6892956 -1.5481739 3.4194229 1.6621639 -1.37151 
		3.3998072 1.5834237 -1.2313088 3.3842404 1.460783 -1.1412942 3.3742456 1.3062484 
		-1.1102773 3.3708017 1.1349425 -1.1412942 3.3742456 0.9636392 -1.2313088 3.3842404 
		0.80910289 -1.37151 3.3998072 0.68646264 -1.5481739 3.4194229 0.60772204 -1.7440072 
		3.4411666 0.58059067 -1.9398406 3.4629107 0.60772204 -2.1165044 3.4825263 0.68646264 
		-2.2567058 3.4980931 0.80910289 -2.3467205 3.5080879 0.9636392 -2.3777373 3.5115316 
		1.1349425 -2.3467207 3.5080879 1.3062484 -2.3314559 2.3696256 1.4607835 -2.1912546 
		2.3540587 1.5834237 -2.0145907 2.3344431 1.6621639 -1.8187572 2.3126991 1.6892956 
		-1.6229239 2.2909553 1.6621639 -1.44626 2.2713397 1.5834237 -1.3060588 2.2557728 
		1.460783 -1.2160441 2.2457781 1.3062484 -1.1850271 2.2423341 1.1349425 -1.2160441 
		2.2457781 0.9636392 -1.3060588 2.2557728 0.80910289 -1.44626 2.2713397 0.68646264 
		-1.6229239 2.2909553 0.60772204 -1.8187572 2.3126991 0.58059067 -2.0145905 2.3344431 
		0.60772204 -2.1912544 2.3540587 0.68646264 -2.3314555 2.3696256 0.80910289 -2.4214702 
		2.3796203 0.9636392 -2.4524872 2.383064 1.1349425 -2.4214706 2.3796203 1.3062484;
	setAttr -s 321 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048339844 0.12655823 -0.98768836 -0.09194994
		 0.091949932 -0.98768836 -0.12655735 0.048340935 -0.98768836 -0.14877748 0 -0.98768836 -0.15643406
		 -0.048340935 -0.98768836 -0.14877748 -0.091949917 -0.98768836 -0.12655735 -0.12655818 -0.98768836 -0.09194994
		 -0.14877805 -0.98768836 -0.048339844 -0.15643452 -0.98768836 9.5367432e-07 -0.14877805 -0.98768836 0.048341751
		 -0.12655818 -0.98768836 0.091950893 -0.09194988 -0.98768836 0.12655926 -0.048340924 -0.98768836 0.14877796
		 -4.6621107e-09 -0.98768836 0.15643454 0.048340902 -0.98768836 0.14877796 0.091949873 -0.98768836 0.12655926
		 0.12655815 -0.98768836 0.091950893 0.14877804 -0.98768836 0.048341751 0.15643448 -0.98768836 9.5367432e-07
		 0.29389283 -0.95105666 -0.095490932 0.25000015 -0.95105666 -0.1816349 0.18163574 -0.95105666 -0.25
		 0.095491551 -0.95105666 -0.29389286 0 -0.95105666 -0.30901718 -0.095491551 -0.95105666 -0.29389286
		 -0.18163571 -0.95105666 -0.25 -0.25000009 -0.95105666 -0.1816349 -0.29389271 -0.95105666 -0.095490932
		 -0.30901706 -0.95105666 9.5367432e-07 -0.29389271 -0.95105666 0.09549284 -0.25000006 -0.95105666 0.18163681
		 -0.18163568 -0.95105666 0.25000048 -0.095491514 -0.95105666 0.29389238 -9.2094226e-09 -0.95105666 0.30901718
		 0.095491499 -0.95105666 0.29389238 0.1816356 -0.95105666 0.25000048 0.25 -0.95105666 0.18163681
		 0.29389265 -0.95105666 0.095491409 0.30901694 -0.95105666 9.5367432e-07 0.43177092 -0.89100659 -0.14029074
		 0.36728629 -0.89100659 -0.26684904 0.2668491 -0.89100659 -0.36728573 0.14029086 -0.89100659 -0.4317708
		 0 -0.89100659 -0.45398998 -0.14029086 -0.89100659 -0.4317708 -0.26684904 -0.89100659 -0.36728573
		 -0.36728615 -0.89100659 -0.26684904 -0.43177077 -0.89100659 -0.14029074 -0.45399058 -0.89100659 9.5367432e-07
		 -0.43177077 -0.89100659 0.14029169 -0.36728612 -0.89100659 0.26684999 -0.26684898 -0.89100659 0.36728716
		 -0.14029081 -0.89100659 0.4317708 -1.3529971e-08 -0.89100659 0.45399094 0.14029078 -0.89100659 0.4317708
		 0.26684889 -0.89100659 0.36728716 0.36728606 -0.89100659 0.26684999 0.43177065 -0.89100659 0.14029169
		 0.45399049 -0.89100659 9.5367432e-07 0.55901736 -0.809017 -0.1816349 0.47552857 -0.809017 -0.34549141
		 0.34549171 -0.809017 -0.47552776 0.18163572 -0.809017 -0.55901718 0 -0.809017 -0.58778524
		 -0.18163572 -0.809017 -0.55901718 -0.34549165 -0.809017 -0.47552776 -0.47552839 -0.809017 -0.34549141
		 -0.55901712 -0.809017 -0.1816349 -0.58778536 -0.809017 9.5367432e-07 -0.55901712 -0.809017 0.18163681
		 -0.47552833 -0.809017 0.34549236 -0.34549156 -0.809017 0.47552824 -0.18163566 -0.809017 0.55901766
		 -1.7517365e-08 -0.809017 0.58778572 0.18163559 -0.809017 0.55901766 0.3454915 -0.809017 0.47552824
		 0.4755283 -0.809017 0.34549236 0.559017 -0.809017 0.18163681 0.58778524 -0.809017 9.5367432e-07
		 0.67249894 -0.70710677 -0.21850824 0.57206178 -0.70710677 -0.41562653 0.41562712 -0.70710677 -0.57206154
		 0.21850809 -0.70710677 -0.67249823 0 -0.70710677 -0.70710659 -0.21850809 -0.70710677 -0.67249823
		 -0.41562703 -0.70710677 -0.57206154 -0.57206154 -0.70710677 -0.41562605 -0.6724987 -0.70710677 -0.21850824
		 -0.70710695 -0.70710677 9.5367432e-07 -0.6724987 -0.70710677 0.2185092 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206154 -0.21850805 -0.70710677 0.6724987 -2.1073424e-08 -0.70710677 0.70710754
		 0.21850799 -0.70710677 0.6724987 0.41562691 -0.70710677 0.57206154 0.5720613 -0.70710677 0.415627
		 0.67249852 -0.70710677 0.2185092 0.70710677 -0.70710677 9.5367432e-07 0.76942128 -0.5877853 -0.25
		 0.65450895 -0.5877853 -0.47552776 0.47552851 -0.5877853 -0.65450811 0.25000012 -0.5877853 -0.7694211
		 0 -0.5877853 -0.80901718 -0.25000012 -0.5877853 -0.7694211 -0.47552845 -0.5877853 -0.65450811
		 -0.65450871 -0.5877853 -0.47552729 -0.7694211 -0.5877853 -0.25 -0.80901706 -0.5877853 9.5367432e-07
		 -0.7694211 -0.5877853 0.25000048 -0.65450865 -0.5877853 0.47552824 -0.47552833 -0.5877853 0.65450859
		 -0.25000006 -0.5877853 0.76942158 -2.4110584e-08 -0.5877853 0.80901718 0.24999997 -0.5877853 0.76942158
		 0.4755283 -0.5877853 0.65450859 0.65450853 -0.5877853 0.47552824 0.76942092 -0.5877853 0.25000048
		 0.80901694 -0.5877853 9.5367432e-07 0.84739798 -0.45399052 -0.27533531 0.72083986 -0.45399052 -0.52372074
		 0.5237208 -0.45399052 -0.72083902 0.2753363 -0.45399052 -0.84739733 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739733 -0.52372068 -0.45399052 -0.72083902 -0.72083962 -0.45399052 -0.52372026
		 -0.8473978 -0.45399052 -0.27533531 -0.89100665 -0.45399052 9.5367432e-07 -0.8473978 -0.45399052 0.27533627
		 -0.72083962 -0.45399052 0.52372074 -0.52372062 -0.45399052 0.72083998 -0.27533621 -0.45399052 0.8473978
		 -2.6554064e-08 -0.45399052 0.89100695 0.27533609 -0.45399052 0.8473978 0.5237205 -0.45399052 0.72083998
		 0.72083944 -0.45399052 0.52372074 0.84739757 -0.45399052 0.27533627 0.89100653 -0.45399052 9.5367432e-07
		 0.90450913 -0.30901697 -0.29389286 0.76942128 -0.30901697 -0.55901718 0.55901736 -0.30901697 -0.7694211
		 0.29389277 -0.30901697 -0.90450859 0 -0.30901697 -0.95105696 -0.29389277 -0.30901697 -0.90450859
		 -0.55901724 -0.30901697 -0.7694211 -0.76942116 -0.30901697 -0.55901718 -0.90450865 -0.30901697 -0.29389286
		 -0.95105678 -0.30901697 9.5367432e-07 -0.90450865 -0.30901697 0.29389334 -0.7694211 -0.30901697 0.55901766
		 -0.55901712 -0.30901697 0.76942158 -0.29389271 -0.30901697 0.90450907 -2.8343695e-08 -0.30901697 0.95105648
		 0.29389262 -0.30901697 0.90450907 0.559017 -0.30901697 0.76942158 0.76942092 -0.30901697 0.55901766
		 0.90450853 -0.30901697 0.29389238 0.9510566 -0.30901697 9.5367432e-07 0.93934792 -0.15643437 -0.3052125
		 0.79905719 -0.15643437 -0.58054829 0.58054888 -0.15643437 -0.79905653 0.30521265 -0.15643437 -0.93934774
		 0 -0.15643437 -0.98768854 -0.30521265 -0.15643437 -0.93934774;
	setAttr ".vt[166:320]" -0.58054888 -0.15643437 -0.79905653 -0.79905683 -0.15643437 -0.58054829
		 -0.93934768 -0.15643437 -0.3052125 -0.9876886 -0.15643437 9.5367432e-07 -0.93934768 -0.15643437 0.30521393
		 -0.79905683 -0.15643437 0.58054924 -0.58054876 -0.15643437 0.79905748 -0.30521256 -0.15643437 0.93934774
		 -2.9435407e-08 -0.15643437 0.98768902 0.30521247 -0.15643437 0.93934774 0.58054864 -0.15643437 0.79905748
		 0.79905665 -0.15643437 0.58054924 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 9.5367432e-07
		 0.95105714 0 -0.30901718 0.80901754 0 -0.58778524 0.5877856 0 -0.80901718 0.30901715 0 -0.95105696
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.80901718 -0.80901712 0 -0.58778524
		 -0.95105678 0 -0.30901623 -1.000000238419 0 9.5367432e-07 -0.95105678 0 0.30901718
		 -0.80901706 0 0.58778572 -0.58778536 0 0.80901718 -0.30901706 0 0.95105648 -2.9802322e-08 0 1
		 0.30901691 0 0.95105648 0.58778524 0 0.80901718 0.80901694 0 0.58778572 0.9510566 0 0.30901718
		 1 0 9.5367432e-07 0.93934792 0.15643437 -0.3052125 0.79905719 0.15643437 -0.58054829
		 0.58054888 0.15643437 -0.79905653 0.30521265 0.15643437 -0.93934774 0 0.15643437 -0.98768854
		 -0.30521265 0.15643437 -0.93934774 -0.58054888 0.15643437 -0.79905653 -0.79905683 0.15643437 -0.58054829
		 -0.93934768 0.15643437 -0.3052125 -0.9876886 0.15643437 9.5367432e-07 -0.93934768 0.15643437 0.30521393
		 -0.79905683 0.15643437 0.58054924 -0.58054876 0.15643437 0.79905748 -0.30521256 0.15643437 0.93934774
		 -2.9435407e-08 0.15643437 0.98768902 0.30521247 0.15643437 0.93934774 0.58054864 0.15643437 0.79905748
		 0.79905665 0.15643437 0.58054924 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 9.5367432e-07
		 0.90450913 0.30901697 -0.29389286 0.76942128 0.30901697 -0.55901718 0.55901736 0.30901697 -0.7694211
		 0.29389277 0.30901697 -0.90450859 0 0.30901697 -0.95105696 -0.29389277 0.30901697 -0.90450859
		 -0.55901724 0.30901697 -0.7694211 -0.76942116 0.30901697 -0.55901718 -0.90450865 0.30901697 -0.29389286
		 -0.95105678 0.30901697 9.5367432e-07 -0.90450865 0.30901697 0.29389334 -0.7694211 0.30901697 0.55901766
		 -0.55901712 0.30901697 0.76942158 -0.29389271 0.30901697 0.90450907 -2.8343695e-08 0.30901697 0.95105648
		 0.29389262 0.30901697 0.90450907 0.559017 0.30901697 0.76942158 0.76942092 0.30901697 0.55901766
		 0.90450853 0.30901697 0.29389238 0.9510566 0.30901697 9.5367432e-07 0.84739798 0.45399052 -0.27533531
		 0.72083986 0.45399052 -0.52372074 0.5237208 0.45399052 -0.72083902 0.2753363 0.45399052 -0.84739733
		 0 0.45399052 -0.89100695 -0.2753363 0.45399052 -0.84739733 -0.52372068 0.45399052 -0.72083902
		 -0.72083962 0.45399052 -0.52372026 -0.8473978 0.45399052 -0.27533531 -0.89100665 0.45399052 9.5367432e-07
		 -0.8473978 0.45399052 0.27533627 -0.72083962 0.45399052 0.52372074 -0.52372062 0.45399052 0.72083998
		 -0.27533621 0.45399052 0.8473978 -2.6554064e-08 0.45399052 0.89100695 0.27533609 0.45399052 0.8473978
		 0.5237205 0.45399052 0.72083998 0.72083944 0.45399052 0.52372074 0.84739757 0.45399052 0.27533627
		 0.89100653 0.45399052 9.5367432e-07 0.76942128 0.5877853 -0.25 0.65450895 0.5877853 -0.47552776
		 0.47552851 0.5877853 -0.65450811 0.25000012 0.5877853 -0.7694211 0 0.5877853 -0.80901718
		 -0.25000012 0.5877853 -0.7694211 -0.47552845 0.5877853 -0.65450811 -0.65450871 0.5877853 -0.47552729
		 -0.7694211 0.5877853 -0.25 -0.80901706 0.5877853 9.5367432e-07 -0.7694211 0.5877853 0.25000048
		 -0.65450865 0.5877853 0.47552824 -0.47552833 0.5877853 0.65450859 -0.25000006 0.5877853 0.76942158
		 -2.4110584e-08 0.5877853 0.80901718 0.24999997 0.5877853 0.76942158 0.4755283 0.5877853 0.65450859
		 0.65450853 0.5877853 0.47552824 0.76942092 0.5877853 0.25000048 0.80901694 0.5877853 9.5367432e-07
		 0 -1 9.5367432e-07 0.51269871 0.66221356 -0.37249708 0.37249735 0.66221356 -0.51269817
		 0.19583341 0.66221356 -0.60271311 4.7560045e-09 0.66221356 -0.63372993 -0.19583341 0.66221356 -0.60271311
		 -0.37249729 0.66221356 -0.51269817 -0.51269847 0.66221356 -0.3724966 -0.60271311 0.66221356 -0.19583416
		 -0.63373005 0.66221356 9.5367432e-07 -0.60271311 0.66221356 0.19583321 -0.51269847 0.66221356 0.37249756
		 -0.37249723 0.66221356 0.51269865 -0.19583338 0.66221356 0.60271406 -1.4130621e-08 0.66221356 0.63373041
		 0.19583331 0.66221356 0.60271406 0.37249717 0.66221356 0.51269865 0.51269835 0.66221356 0.37249756
		 0.60271305 0.66221356 0.19583321 0.63372999 0.66221356 9.5367432e-07 0.60271347 0.66221356 -0.19583416
		 0.51269871 1.790681 -0.37249708 0.37249735 1.790681 -0.51269817 0.19583341 1.790681 -0.60271311
		 1.3899966e-08 1.790681 -0.63372993 -0.19583341 1.790681 -0.60271311 -0.37249729 1.790681 -0.51269817
		 -0.51269847 1.790681 -0.3724966 -0.60271311 1.790681 -0.19583416 -0.63373005 1.790681 9.5367432e-07
		 -0.60271311 1.790681 0.19583321 -0.51269847 1.790681 0.37249756 -0.37249723 1.790681 0.51269865
		 -0.19583338 1.790681 0.60271406 -4.9866595e-09 1.790681 0.63373041 0.19583331 1.790681 0.60271406
		 0.37249717 1.790681 0.51269865 0.51269835 1.790681 0.37249756 0.60271305 1.790681 0.19583321
		 0.63372999 1.790681 9.5367432e-07 0.60271347 1.790681 -0.19583416;
	setAttr -s 640 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 0 261 262 0
		 262 263 0 263 264 0 264 265 0 265 266 0 266 267 0 267 268 0 268 269 0 269 270 0 270 271 0
		 271 272 0 272 273 0 273 274 0 274 275 0 275 276 0 276 277 0 277 278 0 278 279 0 279 260 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1
		 23 43 1 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1
		 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1
		 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1;
	setAttr ".ed[332:497]" 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1
		 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1 69 89 1
		 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1 80 100 1
		 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1 89 109 1
		 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1 98 118 1
		 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1 107 127 1
		 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1 116 136 1
		 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1 124 144 1 125 145 1
		 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1 134 154 1
		 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1 143 163 1
		 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1 152 172 1
		 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1 161 181 1
		 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1 170 190 1
		 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1 179 199 1
		 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1 187 207 1 188 208 1
		 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1 196 216 1 197 217 1
		 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1 205 225 1 206 226 1
		 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1 214 234 1 215 235 1
		 216 236 1 217 237 1;
	setAttr ".ed[498:639]" 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1 223 243 1
		 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1 232 252 1
		 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1 241 261 1
		 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1 250 270 1
		 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1 259 279 1
		 280 0 1 280 1 1 280 2 1 280 3 1 280 4 1 280 5 1 280 6 1 280 7 1 280 8 1 280 9 1 280 10 1
		 280 11 1 280 12 1 280 13 1 280 14 1 280 15 1 280 16 1 280 17 1 280 18 1 280 19 1
		 261 281 1 262 282 1 281 282 0 263 283 1 282 283 0 264 284 1 283 284 0 265 285 1 284 285 0
		 266 286 1 285 286 0 267 287 1 286 287 0 268 288 1 287 288 0 269 289 1 288 289 0 270 290 1
		 289 290 0 271 291 1 290 291 0 272 292 1 291 292 0 273 293 1 292 293 0 274 294 1 293 294 0
		 275 295 1 294 295 0 276 296 1 295 296 0 277 297 1 296 297 0 278 298 1 297 298 0 279 299 1
		 298 299 0 260 300 1 299 300 0 300 281 0 281 301 1 282 302 1 301 302 0 283 303 1 302 303 0
		 284 304 1 303 304 0 285 305 1 304 305 0 286 306 1 305 306 0 287 307 1 306 307 0 288 308 1
		 307 308 0 289 309 1 308 309 0 290 310 1 309 310 0 291 311 1 310 311 0 292 312 1 311 312 0
		 293 313 1 312 313 0 294 314 1 313 314 0 295 315 1 314 315 0 296 316 1 315 316 0 297 317 1
		 316 317 0 298 318 1 317 318 0 299 319 1 318 319 0 300 320 1 319 320 0 320 301 0;
	setAttr -s 321 -ch 1280 ".fc[0:320]" -type "polyFaces" 
		f 4 0 281 -21 -281
		mu 0 4 0 1 22 21
		f 4 1 282 -22 -282
		mu 0 4 1 2 23 22
		f 4 2 283 -23 -283
		mu 0 4 2 3 24 23
		f 4 3 284 -24 -284
		mu 0 4 3 4 25 24
		f 4 4 285 -25 -285
		mu 0 4 4 5 26 25
		f 4 5 286 -26 -286
		mu 0 4 5 6 27 26
		f 4 6 287 -27 -287
		mu 0 4 6 7 28 27
		f 4 7 288 -28 -288
		mu 0 4 7 8 29 28
		f 4 8 289 -29 -289
		mu 0 4 8 9 30 29
		f 4 9 290 -30 -290
		mu 0 4 9 10 31 30
		f 4 10 291 -31 -291
		mu 0 4 10 11 32 31
		f 4 11 292 -32 -292
		mu 0 4 11 12 33 32
		f 4 12 293 -33 -293
		mu 0 4 12 13 34 33
		f 4 13 294 -34 -294
		mu 0 4 13 14 35 34
		f 4 14 295 -35 -295
		mu 0 4 14 15 36 35
		f 4 15 296 -36 -296
		mu 0 4 15 16 37 36
		f 4 16 297 -37 -297
		mu 0 4 16 17 38 37
		f 4 17 298 -38 -298
		mu 0 4 17 18 39 38
		f 4 18 299 -39 -299
		mu 0 4 18 19 40 39
		f 4 19 280 -40 -300
		mu 0 4 19 20 41 40
		f 4 20 301 -41 -301
		mu 0 4 21 22 43 42
		f 4 21 302 -42 -302
		mu 0 4 22 23 44 43
		f 4 22 303 -43 -303
		mu 0 4 23 24 45 44
		f 4 23 304 -44 -304
		mu 0 4 24 25 46 45
		f 4 24 305 -45 -305
		mu 0 4 25 26 47 46
		f 4 25 306 -46 -306
		mu 0 4 26 27 48 47
		f 4 26 307 -47 -307
		mu 0 4 27 28 49 48
		f 4 27 308 -48 -308
		mu 0 4 28 29 50 49
		f 4 28 309 -49 -309
		mu 0 4 29 30 51 50
		f 4 29 310 -50 -310
		mu 0 4 30 31 52 51
		f 4 30 311 -51 -311
		mu 0 4 31 32 53 52
		f 4 31 312 -52 -312
		mu 0 4 32 33 54 53
		f 4 32 313 -53 -313
		mu 0 4 33 34 55 54
		f 4 33 314 -54 -314
		mu 0 4 34 35 56 55
		f 4 34 315 -55 -315
		mu 0 4 35 36 57 56
		f 4 35 316 -56 -316
		mu 0 4 36 37 58 57
		f 4 36 317 -57 -317
		mu 0 4 37 38 59 58
		f 4 37 318 -58 -318
		mu 0 4 38 39 60 59
		f 4 38 319 -59 -319
		mu 0 4 39 40 61 60
		f 4 39 300 -60 -320
		mu 0 4 40 41 62 61
		f 4 40 321 -61 -321
		mu 0 4 42 43 64 63
		f 4 41 322 -62 -322
		mu 0 4 43 44 65 64
		f 4 42 323 -63 -323
		mu 0 4 44 45 66 65
		f 4 43 324 -64 -324
		mu 0 4 45 46 67 66
		f 4 44 325 -65 -325
		mu 0 4 46 47 68 67
		f 4 45 326 -66 -326
		mu 0 4 47 48 69 68
		f 4 46 327 -67 -327
		mu 0 4 48 49 70 69
		f 4 47 328 -68 -328
		mu 0 4 49 50 71 70
		f 4 48 329 -69 -329
		mu 0 4 50 51 72 71
		f 4 49 330 -70 -330
		mu 0 4 51 52 73 72
		f 4 50 331 -71 -331
		mu 0 4 52 53 74 73
		f 4 51 332 -72 -332
		mu 0 4 53 54 75 74
		f 4 52 333 -73 -333
		mu 0 4 54 55 76 75
		f 4 53 334 -74 -334
		mu 0 4 55 56 77 76
		f 4 54 335 -75 -335
		mu 0 4 56 57 78 77
		f 4 55 336 -76 -336
		mu 0 4 57 58 79 78
		f 4 56 337 -77 -337
		mu 0 4 58 59 80 79
		f 4 57 338 -78 -338
		mu 0 4 59 60 81 80
		f 4 58 339 -79 -339
		mu 0 4 60 61 82 81
		f 4 59 320 -80 -340
		mu 0 4 61 62 83 82
		f 4 60 341 -81 -341
		mu 0 4 63 64 85 84
		f 4 61 342 -82 -342
		mu 0 4 64 65 86 85
		f 4 62 343 -83 -343
		mu 0 4 65 66 87 86
		f 4 63 344 -84 -344
		mu 0 4 66 67 88 87
		f 4 64 345 -85 -345
		mu 0 4 67 68 89 88
		f 4 65 346 -86 -346
		mu 0 4 68 69 90 89
		f 4 66 347 -87 -347
		mu 0 4 69 70 91 90
		f 4 67 348 -88 -348
		mu 0 4 70 71 92 91
		f 4 68 349 -89 -349
		mu 0 4 71 72 93 92
		f 4 69 350 -90 -350
		mu 0 4 72 73 94 93
		f 4 70 351 -91 -351
		mu 0 4 73 74 95 94
		f 4 71 352 -92 -352
		mu 0 4 74 75 96 95
		f 4 72 353 -93 -353
		mu 0 4 75 76 97 96
		f 4 73 354 -94 -354
		mu 0 4 76 77 98 97
		f 4 74 355 -95 -355
		mu 0 4 77 78 99 98
		f 4 75 356 -96 -356
		mu 0 4 78 79 100 99
		f 4 76 357 -97 -357
		mu 0 4 79 80 101 100
		f 4 77 358 -98 -358
		mu 0 4 80 81 102 101
		f 4 78 359 -99 -359
		mu 0 4 81 82 103 102
		f 4 79 340 -100 -360
		mu 0 4 82 83 104 103
		f 4 80 361 -101 -361
		mu 0 4 84 85 106 105
		f 4 81 362 -102 -362
		mu 0 4 85 86 107 106
		f 4 82 363 -103 -363
		mu 0 4 86 87 108 107
		f 4 83 364 -104 -364
		mu 0 4 87 88 109 108
		f 4 84 365 -105 -365
		mu 0 4 88 89 110 109
		f 4 85 366 -106 -366
		mu 0 4 89 90 111 110
		f 4 86 367 -107 -367
		mu 0 4 90 91 112 111
		f 4 87 368 -108 -368
		mu 0 4 91 92 113 112
		f 4 88 369 -109 -369
		mu 0 4 92 93 114 113
		f 4 89 370 -110 -370
		mu 0 4 93 94 115 114
		f 4 90 371 -111 -371
		mu 0 4 94 95 116 115
		f 4 91 372 -112 -372
		mu 0 4 95 96 117 116
		f 4 92 373 -113 -373
		mu 0 4 96 97 118 117
		f 4 93 374 -114 -374
		mu 0 4 97 98 119 118
		f 4 94 375 -115 -375
		mu 0 4 98 99 120 119
		f 4 95 376 -116 -376
		mu 0 4 99 100 121 120
		f 4 96 377 -117 -377
		mu 0 4 100 101 122 121
		f 4 97 378 -118 -378
		mu 0 4 101 102 123 122
		f 4 98 379 -119 -379
		mu 0 4 102 103 124 123
		f 4 99 360 -120 -380
		mu 0 4 103 104 125 124
		f 4 100 381 -121 -381
		mu 0 4 105 106 127 126
		f 4 101 382 -122 -382
		mu 0 4 106 107 128 127
		f 4 102 383 -123 -383
		mu 0 4 107 108 129 128
		f 4 103 384 -124 -384
		mu 0 4 108 109 130 129
		f 4 104 385 -125 -385
		mu 0 4 109 110 131 130
		f 4 105 386 -126 -386
		mu 0 4 110 111 132 131
		f 4 106 387 -127 -387
		mu 0 4 111 112 133 132
		f 4 107 388 -128 -388
		mu 0 4 112 113 134 133
		f 4 108 389 -129 -389
		mu 0 4 113 114 135 134
		f 4 109 390 -130 -390
		mu 0 4 114 115 136 135
		f 4 110 391 -131 -391
		mu 0 4 115 116 137 136
		f 4 111 392 -132 -392
		mu 0 4 116 117 138 137
		f 4 112 393 -133 -393
		mu 0 4 117 118 139 138
		f 4 113 394 -134 -394
		mu 0 4 118 119 140 139
		f 4 114 395 -135 -395
		mu 0 4 119 120 141 140
		f 4 115 396 -136 -396
		mu 0 4 120 121 142 141
		f 4 116 397 -137 -397
		mu 0 4 121 122 143 142
		f 4 117 398 -138 -398
		mu 0 4 122 123 144 143
		f 4 118 399 -139 -399
		mu 0 4 123 124 145 144
		f 4 119 380 -140 -400
		mu 0 4 124 125 146 145
		f 4 120 401 -141 -401
		mu 0 4 126 127 148 147
		f 4 121 402 -142 -402
		mu 0 4 127 128 149 148
		f 4 122 403 -143 -403
		mu 0 4 128 129 150 149
		f 4 123 404 -144 -404
		mu 0 4 129 130 151 150
		f 4 124 405 -145 -405
		mu 0 4 130 131 152 151
		f 4 125 406 -146 -406
		mu 0 4 131 132 153 152
		f 4 126 407 -147 -407
		mu 0 4 132 133 154 153
		f 4 127 408 -148 -408
		mu 0 4 133 134 155 154
		f 4 128 409 -149 -409
		mu 0 4 134 135 156 155
		f 4 129 410 -150 -410
		mu 0 4 135 136 157 156
		f 4 130 411 -151 -411
		mu 0 4 136 137 158 157
		f 4 131 412 -152 -412
		mu 0 4 137 138 159 158
		f 4 132 413 -153 -413
		mu 0 4 138 139 160 159
		f 4 133 414 -154 -414
		mu 0 4 139 140 161 160
		f 4 134 415 -155 -415
		mu 0 4 140 141 162 161
		f 4 135 416 -156 -416
		mu 0 4 141 142 163 162
		f 4 136 417 -157 -417
		mu 0 4 142 143 164 163
		f 4 137 418 -158 -418
		mu 0 4 143 144 165 164
		f 4 138 419 -159 -419
		mu 0 4 144 145 166 165
		f 4 139 400 -160 -420
		mu 0 4 145 146 167 166
		f 4 140 421 -161 -421
		mu 0 4 147 148 169 168
		f 4 141 422 -162 -422
		mu 0 4 148 149 170 169
		f 4 142 423 -163 -423
		mu 0 4 149 150 171 170
		f 4 143 424 -164 -424
		mu 0 4 150 151 172 171
		f 4 144 425 -165 -425
		mu 0 4 151 152 173 172
		f 4 145 426 -166 -426
		mu 0 4 152 153 174 173
		f 4 146 427 -167 -427
		mu 0 4 153 154 175 174
		f 4 147 428 -168 -428
		mu 0 4 154 155 176 175
		f 4 148 429 -169 -429
		mu 0 4 155 156 177 176
		f 4 149 430 -170 -430
		mu 0 4 156 157 178 177
		f 4 150 431 -171 -431
		mu 0 4 157 158 179 178
		f 4 151 432 -172 -432
		mu 0 4 158 159 180 179
		f 4 152 433 -173 -433
		mu 0 4 159 160 181 180
		f 4 153 434 -174 -434
		mu 0 4 160 161 182 181
		f 4 154 435 -175 -435
		mu 0 4 161 162 183 182
		f 4 155 436 -176 -436
		mu 0 4 162 163 184 183
		f 4 156 437 -177 -437
		mu 0 4 163 164 185 184
		f 4 157 438 -178 -438
		mu 0 4 164 165 186 185
		f 4 158 439 -179 -439
		mu 0 4 165 166 187 186
		f 4 159 420 -180 -440
		mu 0 4 166 167 188 187
		f 4 160 441 -181 -441
		mu 0 4 168 169 190 189
		f 4 161 442 -182 -442
		mu 0 4 169 170 191 190
		f 4 162 443 -183 -443
		mu 0 4 170 171 192 191
		f 4 163 444 -184 -444
		mu 0 4 171 172 193 192
		f 4 164 445 -185 -445
		mu 0 4 172 173 194 193
		f 4 165 446 -186 -446
		mu 0 4 173 174 195 194
		f 4 166 447 -187 -447
		mu 0 4 174 175 196 195
		f 4 167 448 -188 -448
		mu 0 4 175 176 197 196
		f 4 168 449 -189 -449
		mu 0 4 176 177 198 197
		f 4 169 450 -190 -450
		mu 0 4 177 178 199 198
		f 4 170 451 -191 -451
		mu 0 4 178 179 200 199
		f 4 171 452 -192 -452
		mu 0 4 179 180 201 200
		f 4 172 453 -193 -453
		mu 0 4 180 181 202 201
		f 4 173 454 -194 -454
		mu 0 4 181 182 203 202
		f 4 174 455 -195 -455
		mu 0 4 182 183 204 203
		f 4 175 456 -196 -456
		mu 0 4 183 184 205 204
		f 4 176 457 -197 -457
		mu 0 4 184 185 206 205
		f 4 177 458 -198 -458
		mu 0 4 185 186 207 206
		f 4 178 459 -199 -459
		mu 0 4 186 187 208 207
		f 4 179 440 -200 -460
		mu 0 4 187 188 209 208
		f 4 180 461 -201 -461
		mu 0 4 189 190 211 210
		f 4 181 462 -202 -462
		mu 0 4 190 191 212 211
		f 4 182 463 -203 -463
		mu 0 4 191 192 213 212
		f 4 183 464 -204 -464
		mu 0 4 192 193 214 213
		f 4 184 465 -205 -465
		mu 0 4 193 194 215 214
		f 4 185 466 -206 -466
		mu 0 4 194 195 216 215
		f 4 186 467 -207 -467
		mu 0 4 195 196 217 216
		f 4 187 468 -208 -468
		mu 0 4 196 197 218 217
		f 4 188 469 -209 -469
		mu 0 4 197 198 219 218
		f 4 189 470 -210 -470
		mu 0 4 198 199 220 219
		f 4 190 471 -211 -471
		mu 0 4 199 200 221 220
		f 4 191 472 -212 -472
		mu 0 4 200 201 222 221
		f 4 192 473 -213 -473
		mu 0 4 201 202 223 222
		f 4 193 474 -214 -474
		mu 0 4 202 203 224 223
		f 4 194 475 -215 -475
		mu 0 4 203 204 225 224
		f 4 195 476 -216 -476
		mu 0 4 204 205 226 225
		f 4 196 477 -217 -477
		mu 0 4 205 206 227 226
		f 4 197 478 -218 -478
		mu 0 4 206 207 228 227
		f 4 198 479 -219 -479
		mu 0 4 207 208 229 228
		f 4 199 460 -220 -480
		mu 0 4 208 209 230 229
		f 4 200 481 -221 -481
		mu 0 4 210 211 232 231
		f 4 201 482 -222 -482
		mu 0 4 211 212 233 232
		f 4 202 483 -223 -483
		mu 0 4 212 213 234 233
		f 4 203 484 -224 -484
		mu 0 4 213 214 235 234
		f 4 204 485 -225 -485
		mu 0 4 214 215 236 235
		f 4 205 486 -226 -486
		mu 0 4 215 216 237 236
		f 4 206 487 -227 -487
		mu 0 4 216 217 238 237
		f 4 207 488 -228 -488
		mu 0 4 217 218 239 238
		f 4 208 489 -229 -489
		mu 0 4 218 219 240 239
		f 4 209 490 -230 -490
		mu 0 4 219 220 241 240
		f 4 210 491 -231 -491
		mu 0 4 220 221 242 241
		f 4 211 492 -232 -492
		mu 0 4 221 222 243 242
		f 4 212 493 -233 -493
		mu 0 4 222 223 244 243
		f 4 213 494 -234 -494
		mu 0 4 223 224 245 244
		f 4 214 495 -235 -495
		mu 0 4 224 225 246 245
		f 4 215 496 -236 -496
		mu 0 4 225 226 247 246
		f 4 216 497 -237 -497
		mu 0 4 226 227 248 247
		f 4 217 498 -238 -498
		mu 0 4 227 228 249 248
		f 4 218 499 -239 -499
		mu 0 4 228 229 250 249
		f 4 219 480 -240 -500
		mu 0 4 229 230 251 250
		f 4 220 501 -241 -501
		mu 0 4 231 232 253 252
		f 4 221 502 -242 -502
		mu 0 4 232 233 254 253
		f 4 222 503 -243 -503
		mu 0 4 233 234 255 254
		f 4 223 504 -244 -504
		mu 0 4 234 235 256 255
		f 4 224 505 -245 -505
		mu 0 4 235 236 257 256
		f 4 225 506 -246 -506
		mu 0 4 236 237 258 257
		f 4 226 507 -247 -507
		mu 0 4 237 238 259 258
		f 4 227 508 -248 -508
		mu 0 4 238 239 260 259
		f 4 228 509 -249 -509
		mu 0 4 239 240 261 260
		f 4 229 510 -250 -510
		mu 0 4 240 241 262 261
		f 4 230 511 -251 -511
		mu 0 4 241 242 263 262
		f 4 231 512 -252 -512
		mu 0 4 242 243 264 263
		f 4 232 513 -253 -513
		mu 0 4 243 244 265 264
		f 4 233 514 -254 -514
		mu 0 4 244 245 266 265
		f 4 234 515 -255 -515
		mu 0 4 245 246 267 266
		f 4 235 516 -256 -516
		mu 0 4 246 247 268 267
		f 4 236 517 -257 -517
		mu 0 4 247 248 269 268
		f 4 237 518 -258 -518
		mu 0 4 248 249 270 269
		f 4 238 519 -259 -519
		mu 0 4 249 250 271 270
		f 4 239 500 -260 -520
		mu 0 4 250 251 272 271
		f 4 240 521 -261 -521
		mu 0 4 252 253 274 273
		f 4 241 522 -262 -522
		mu 0 4 253 254 275 274
		f 4 242 523 -263 -523
		mu 0 4 254 255 276 275
		f 4 243 524 -264 -524
		mu 0 4 255 256 277 276
		f 4 244 525 -265 -525
		mu 0 4 256 257 278 277
		f 4 245 526 -266 -526
		mu 0 4 257 258 279 278
		f 4 246 527 -267 -527
		mu 0 4 258 259 280 279
		f 4 247 528 -268 -528
		mu 0 4 259 260 281 280
		f 4 248 529 -269 -529
		mu 0 4 260 261 282 281
		f 4 249 530 -270 -530
		mu 0 4 261 262 283 282
		f 4 250 531 -271 -531
		mu 0 4 262 263 284 283
		f 4 251 532 -272 -532
		mu 0 4 263 264 285 284
		f 4 252 533 -273 -533
		mu 0 4 264 265 286 285
		f 4 253 534 -274 -534
		mu 0 4 265 266 287 286
		f 4 254 535 -275 -535
		mu 0 4 266 267 288 287
		f 4 255 536 -276 -536
		mu 0 4 267 268 289 288
		f 4 256 537 -277 -537
		mu 0 4 268 269 290 289
		f 4 257 538 -278 -538
		mu 0 4 269 270 291 290
		f 4 258 539 -279 -539
		mu 0 4 270 271 292 291
		f 4 259 520 -280 -540
		mu 0 4 271 272 293 292
		f 3 -1 -541 541
		mu 0 3 1 0 294
		f 3 -2 -542 542
		mu 0 3 2 1 295
		f 3 -3 -543 543
		mu 0 3 3 2 296
		f 3 -4 -544 544
		mu 0 3 4 3 297
		f 3 -5 -545 545
		mu 0 3 5 4 298
		f 3 -6 -546 546
		mu 0 3 6 5 299
		f 3 -7 -547 547
		mu 0 3 7 6 300
		f 3 -8 -548 548
		mu 0 3 8 7 301
		f 3 -9 -549 549
		mu 0 3 9 8 302
		f 3 -10 -550 550
		mu 0 3 10 9 303
		f 3 -11 -551 551
		mu 0 3 11 10 304
		f 3 -12 -552 552
		mu 0 3 12 11 305
		f 3 -13 -553 553
		mu 0 3 13 12 306
		f 3 -14 -554 554
		mu 0 3 14 13 307
		f 3 -15 -555 555
		mu 0 3 15 14 308
		f 3 -16 -556 556
		mu 0 3 16 15 309
		f 3 -17 -557 557
		mu 0 3 17 16 310
		f 3 -18 -558 558
		mu 0 3 18 17 311
		f 3 -19 -559 559
		mu 0 3 19 18 312
		f 3 -20 -560 540
		mu 0 3 20 19 313
		f 20 602 604 606 608 610 612 614 616 618 620 622 624 626 628 630 632 634 636 638 639
		mu 0 20 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353
		f 4 261 561 -563 -561
		mu 0 4 274 275 315 314
		f 4 262 563 -565 -562
		mu 0 4 275 276 316 315
		f 4 263 565 -567 -564
		mu 0 4 276 277 317 316
		f 4 264 567 -569 -566
		mu 0 4 277 278 318 317
		f 4 265 569 -571 -568
		mu 0 4 278 279 319 318
		f 4 266 571 -573 -570
		mu 0 4 279 280 320 319
		f 4 267 573 -575 -572
		mu 0 4 280 281 321 320
		f 4 268 575 -577 -574
		mu 0 4 281 282 322 321
		f 4 269 577 -579 -576
		mu 0 4 282 283 323 322
		f 4 270 579 -581 -578
		mu 0 4 283 284 324 323
		f 4 271 581 -583 -580
		mu 0 4 284 285 325 324
		f 4 272 583 -585 -582
		mu 0 4 285 286 326 325
		f 4 273 585 -587 -584
		mu 0 4 286 287 327 326
		f 4 274 587 -589 -586
		mu 0 4 287 288 328 327
		f 4 275 589 -591 -588
		mu 0 4 288 289 329 328
		f 4 276 591 -593 -590
		mu 0 4 289 290 330 329
		f 4 277 593 -595 -592
		mu 0 4 290 291 331 330
		f 4 278 595 -597 -594
		mu 0 4 291 292 332 331
		f 4 279 597 -599 -596
		mu 0 4 292 273 333 332
		f 4 260 560 -600 -598
		mu 0 4 273 274 314 333
		f 4 562 601 -603 -601
		mu 0 4 314 315 335 334
		f 4 564 603 -605 -602
		mu 0 4 315 316 336 335
		f 4 566 605 -607 -604
		mu 0 4 316 317 337 336
		f 4 568 607 -609 -606
		mu 0 4 317 318 338 337
		f 4 570 609 -611 -608
		mu 0 4 318 319 339 338
		f 4 572 611 -613 -610
		mu 0 4 319 320 340 339
		f 4 574 613 -615 -612
		mu 0 4 320 321 341 340
		f 4 576 615 -617 -614
		mu 0 4 321 322 342 341
		f 4 578 617 -619 -616
		mu 0 4 322 323 343 342
		f 4 580 619 -621 -618
		mu 0 4 323 324 344 343
		f 4 582 621 -623 -620
		mu 0 4 324 325 345 344
		f 4 584 623 -625 -622
		mu 0 4 325 326 346 345
		f 4 586 625 -627 -624
		mu 0 4 326 327 347 346
		f 4 588 627 -629 -626
		mu 0 4 327 328 348 347
		f 4 590 629 -631 -628
		mu 0 4 328 329 349 348
		f 4 592 631 -633 -630
		mu 0 4 329 330 350 349
		f 4 594 633 -635 -632
		mu 0 4 330 331 351 350
		f 4 596 635 -637 -634
		mu 0 4 331 332 352 351
		f 4 598 637 -639 -636
		mu 0 4 332 333 353 352
		f 4 599 600 -640 -638
		mu 0 4 333 314 334 353;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lowerDoorknob_two" -p "Doorknobs";
	rename -uid "5FF7F046-48C3-3E61-6D3A-7F846C9C6BA6";
	setAttr ".rp" -type "double3" -1.3892378807067871 0.9222993424447965 0.53650629966513508 ;
	setAttr ".sp" -type "double3" -1.3892378807067862 0.9222993424447965 0.53650629966513508 ;
createNode mesh -n "lowerDoorknob_twoShape" -p "lowerDoorknob_two";
	rename -uid "6EC95063-4637-E8B1-5B4E-54894BE0B6F5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47500008344650269 0.7000001072883606 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 354 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:353]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.050000001 0.70000011 0.1 0.70000011
		 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011 0.35000002
		 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007
		 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012
		 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017
		 0.70000011 0 0.70000011 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011
		 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004
		 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008
		 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013
		 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017 0.70000011 0 0.70000011;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 321 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -1.3052217 1.926507 0.57879138 -1.2830018 
		1.9240398 0.61693907 -1.2483935 1.9201971 0.64721173 -1.2047845 1.9153551 0.66664869 
		-1.1564436 1.9099877 0.67334628 -1.1081026 1.9046203 0.66664869 -1.0644937 1.8997782 
		0.64721173 -1.0298854 1.8959355 0.61693907 -1.0076655 1.8934684 0.57879138 -1.0000091 
		1.8926183 0.53650546 -1.0076655 1.8934684 0.49421957 -1.0298854 1.8959355 0.45607269 
		-1.0644937 1.8997782 0.42579919 -1.1081027 1.9046203 0.40636346 -1.1564436 1.9099877 
		0.39966592 -1.2047844 1.9153551 0.40636346 -1.2483934 1.9201971 0.42579919 -1.2830017 
		1.9240398 0.45607269 -1.3052216 1.926507 0.49421957 -1.312878 1.9273571 0.53650546 
		-1.4538454 1.9059877 0.62003654 -1.4099526 1.9011142 0.69539058 -1.3415883 1.8935236 
		0.75519264 -1.255444 1.8839587 0.79358768 -1.1599525 1.873356 0.80681765 -1.064461 
		1.8627533 0.79358768 -0.97831678 1.8531884 0.75519264 -0.9099524 1.8455977 0.69539058 
		-0.86605978 1.8407242 0.62003654 -0.85093546 1.8390449 0.53650546 -0.86605978 1.8407242 
		0.45297438 -0.90995246 1.8455977 0.37762034 -0.97831684 1.8531884 0.31781954 -1.064461 
		1.8627533 0.27942532 -1.1599525 1.873356 0.26619497 -1.255444 1.8839587 0.27942532 
		-1.3415881 1.8935236 0.31781954 -1.4099525 1.9011142 0.37762034 -1.4538451 1.9059877 
		0.45297563 -1.4689695 1.907667 0.53650546 -1.5974756 1.8612467 0.65922499 -1.5329911 
		1.8540869 0.76993126 -1.4325538 1.842935 0.85778779 -1.3059956 1.8288828 0.91419578 
		-1.1657047 1.813306 0.9336319 -1.0254139 1.797729 0.91419578 -0.89885569 1.7836769 
		0.85778779 -0.79841858 1.7725251 0.76993126 -0.73393393 1.7653651 0.65922499 -0.71171415 
		1.762898 0.53650546 -0.73393393 1.7653651 0.4137868 -0.79841858 1.7725251 0.3030805 
		-0.89885575 1.7836769 0.21522357 -1.0254139 1.797729 0.1588168 -1.1657047 1.813306 
		0.13937984 -1.3059955 1.8288828 0.1588168 -1.4325536 1.842935 0.21522357 -1.5329908 
		1.8540868 0.3030805 -1.5974754 1.8612467 0.4137868 -1.6196952 1.8637139 0.53650546 
		-1.7325759 1.7933857 0.69539058 -1.6490871 1.7841157 0.8387233 -1.5190502 1.7696773 
		0.95247197 -1.3551942 1.7514839 1.025504 -1.1735585 1.7313163 1.0506687 -0.9919228 
		1.7111487 1.025504 -0.82806683 1.6929554 0.95247197 -0.69803011 1.678517 0.8387233 
		-0.61454135 1.669247 0.69539058 -0.58577311 1.6660528 0.53650546 -0.61454135 1.669247 
		0.37762034 -0.69803017 1.678517 0.23428847 -0.82806695 1.6929554 0.12054019 -0.99192286 
		1.7111487 0.04750821 -1.1735585 1.7313163 0.022343483 -1.3551941 1.7514839 0.04750821 
		-1.51905 1.7696773 0.12054019 -1.6490868 1.7841157 0.23428847 -1.7325755 1.7933856 
		0.37762034 -1.7613437 1.7965798 0.53650546 -1.8558195 1.7040757 0.72764534 -1.7553823 
		1.6929238 0.90007365 -1.5989476 1.6755544 1.0369145 -1.4018286 1.6536677 1.124771 
		-1.1833205 1.6294061 1.1550444 -0.9648124 1.6051445 1.124771 -0.76769346 1.5832578 
		1.0369145 -0.61125898 1.5658884 0.90007323 -0.51082182 1.5547366 0.72764534 -0.47621354 
		1.5508939 0.53650546 -0.51082182 1.5547366 0.34536639 -0.61125898 1.5658884 0.17293853 
		-0.76769352 1.5832578 0.036098137 -0.96481246 1.6051445 -0.051758803 -1.1833205 1.6294061 
		-0.082032725 -1.4018285 1.6536677 -0.051758803 -1.5989474 1.6755544 0.036098137 -1.7553818 
		1.6929238 0.17293853 -1.855819 1.7040756 0.34536639 -1.8904272 1.7079183 0.53650546 
		-1.9641716 1.5955157 0.75519264 -1.8492593 1.5827568 0.95247197 -1.6702788 1.562884 
		1.1090342 -1.4447504 1.5378429 1.2095538 -1.1947503 1.5100846 1.2441903 -0.94475019 
		1.4823264 1.2095538 -0.71922189 1.4572853 1.1090342 -0.5402416 1.4374126 0.95247155 
		-0.42532921 1.4246535 0.75519264 -0.38573325 1.4202571 0.53650546 -0.42532921 1.4246535 
		0.31781954 -0.54024166 1.4374126 0.12054019 -0.71922201 1.4572853 -0.036022037 -0.94475025 
		1.4823264 -0.13654163 -1.1947503 1.5100846 -0.1711777 -1.4447503 1.5378429 -0.13654163 
		-1.6702787 1.562884 -0.036022037 -1.8492589 1.5827566 0.12054019 -1.9641713 1.5955157 
		0.31781954 -2.0037673 1.5999122 0.53650546 -2.0549645 1.470379 0.7773546 -1.9284064 
		1.4563268 0.99462855 -1.7312874 1.4344401 1.1670569 -1.4829029 1.4068613 1.2777631 
		-1.2075665 1.3762898 1.3159105 -0.93223023 1.3457185 1.2777631 -0.68384588 1.3181396 
		1.1670569 -0.48672691 1.2962528 0.99462813 -0.36016873 1.2822008 0.7773546 -0.31655988 
		1.2773588 0.53650546 -0.36016873 1.2822008 0.29565719 -0.48672691 1.2962528 0.078384027 
		-0.68384594 1.3181396 -0.09404511 -0.93223035 1.3457185 -0.20475097 -1.2075665 1.3762898 
		-0.24289787 -1.4829026 1.4068613 -0.20475097 -1.731287 1.4344401 -0.09404511 -1.928406 
		1.4563268 0.078384027 -2.0549641 1.470379 0.29565719 -2.098573 1.4752209 0.53650546 
		-2.1259627 1.3317467 0.79358768 -1.9908749 1.3167474 1.025504 -1.780471 1.2933856 
		1.2095538 -1.5153463 1.2639481 1.327721 -1.2214535 1.2313163 1.368439 -0.92756081 
		1.1986846 1.327721 -0.66243631 1.1692469 1.2095538 -0.45203242 1.1458852 1.025504 
		-0.31694493 1.1308861 0.79358768 -0.2703968 1.1257176 0.53650546 -0.31694493 1.1308861 
		0.27942449 -0.45203248 1.1458852 0.04750821 -0.66243643 1.169247 -0.13654163 -0.92756087 
		1.1986846 -0.2547088 -1.2214535 1.2313163 -0.29542592 -1.5153462 1.2639481 -0.2547088 
		-1.7804706 1.2933856 -0.13654163 -1.9908745 1.3167474 0.04750821 -2.125962 1.3317466 
		0.27942532 -2.1725101 1.336915 0.53650546 -2.1754174 1.1830323 0.80348951 -2.0351267 
		1.1674554 1.0443382 -1.8166183 1.1431938 1.2354773 -1.5412822 1.1126224 1.3581964 
		-1.2360694 1.0787337 1.4004823 -0.93085682 1.0448451 1.3581964;
	setAttr ".pt[166:320]" -0.65552062 1.0142736 1.2354773 -0.43701264 0.99001205 
		1.0443382 -0.29672179 0.97443515 0.80348951 -0.24838088 0.96906769 0.53650546 -0.29672179 
		0.97443515 0.26952183 -0.43701264 0.99001205 0.028673561 -0.65552074 1.0142736 -0.16246551 
		-0.93085694 1.0448451 -0.28518376 -1.2360694 1.0787337 -0.32747006 -1.5412819 1.1126224 
		-0.28518376 -1.8166181 1.1431937 -0.16246551 -2.0351262 1.1674553 0.028673561 -2.1754169 
		1.1830323 0.26952308 -2.2237577 1.1883997 0.53650546 -2.2021115 1.0278981 0.80681765 
		-2.0600719 1.0121269 1.0506687 -1.83884 0.98756295 1.2441903 -1.5600715 0.95661044 
		1.368439 -1.2510544 0.92229933 1.411252 -0.94203722 0.88798827 1.368439 -0.66326886 
		0.85703576 1.2441903 -0.44203722 0.83247179 1.0506687 -0.29999757 0.8167007 0.80681682 
		-0.25105411 0.81126636 0.53650546 -0.29999757 0.8167007 0.26619497 -0.44203728 0.83247179 
		0.022343483 -0.66326898 0.85703576 -0.1711777 -0.94203728 0.88798827 -0.29542592 
		-1.2510543 0.92229933 -0.33823904 -1.5600712 0.95661038 -0.29542592 -1.8388397 0.98756289 
		-0.1711777 -2.0600712 1.0121269 0.022343483 -2.202111 1.027898 0.26619497 -2.2510543 
		1.0333323 0.53650546 -2.2053871 0.87016356 0.80348951 -2.0650964 0.85458666 1.0443382 
		-1.8465881 0.83032507 1.2354773 -1.5712519 0.79975367 1.3581964 -1.2660393 0.76586497 
		1.4004823 -0.96082658 0.73197633 1.3581964 -0.68549031 0.70140487 1.2354773 -0.46698239 
		0.67714334 1.0443382 -0.32669154 0.66156638 0.80348951 -0.27835062 0.65619898 0.53650546 
		-0.32669154 0.66156638 0.26952183 -0.46698239 0.67714334 0.028673561 -0.68549043 
		0.70140493 -0.16246551 -0.96082664 0.73197633 -0.28518376 -1.2660391 0.76586497 -0.32747006 
		-1.5712516 0.79975361 -0.28518376 -1.8465879 0.83032501 -0.16246551 -2.0650959 0.8545866 
		0.028673561 -2.2053866 0.8701635 0.26952308 -2.2537277 0.87553096 0.53650546 -2.1851642 
		0.71371269 0.79358768 -2.0500765 0.69871348 1.025504 -1.8396724 0.67535174 1.2095538 
		-1.5745479 0.64591414 1.327721 -1.2806551 0.61328238 1.368439 -0.98676234 0.58065057 
		1.327721 -0.7216379 0.55121303 1.2095538 -0.51123399 0.52785122 1.025504 -0.37614647 
		0.51285207 0.79358768 -0.32959834 0.50768369 0.53650546 -0.37614647 0.51285207 0.27942449 
		-0.51123405 0.52785122 0.04750821 -0.72163802 0.55121303 -0.13654163 -0.9867624 0.58065057 
		-0.2547088 -1.2806551 0.61328238 -0.29542592 -1.5745478 0.64591414 -0.2547088 -1.8396721 
		0.67535168 -0.13654163 -2.050076 0.69871348 0.04750821 -2.1851637 0.71371263 0.27942532 
		-2.2317116 0.71888101 0.53650546 -2.1419401 0.56239796 0.7773546 -2.0153821 0.5483458 
		0.99462855 -1.8182629 0.5264591 1.1670569 -1.5698785 0.49888024 1.2777631 -1.2945422 
		0.46830884 1.3159105 -1.0192059 0.43773741 1.2777631 -0.77082151 0.41015854 1.1670569 
		-0.57370257 0.38827184 0.99462813 -0.44714436 0.37421972 0.7773546 -0.40353552 0.3693777 
		0.53650546 -0.44714436 0.37421972 0.29565719 -0.57370257 0.38827184 0.078384027 -0.77082157 
		0.41015857 -0.09404511 -1.0192059 0.43773744 -0.20475097 -1.2945422 0.46830881 -0.24289787 
		-1.5698782 0.49888021 -0.20475097 -1.8182627 0.5264591 -0.09404511 -2.0153816 0.54834574 
		0.078384027 -2.1419396 0.5623979 0.29565719 -2.1855488 0.56723994 0.53650546 -2.0767796 
		0.41994518 0.75519264 -1.9618673 0.40718612 0.95247197 -1.7828869 0.3873134 1.1090342 
		-1.5573585 0.36227229 1.2095538 -1.3073584 0.33451405 1.2441903 -1.0573583 0.30675578 
		1.2095538 -0.83182997 0.28171471 1.1090342 -0.65284967 0.26184198 0.95247155 -0.53793728 
		0.24908292 0.75519264 -0.49834132 0.24468647 0.53650546 -0.53793728 0.24908292 0.31781954 
		-0.65284973 0.26184198 0.12054019 -0.83183008 0.28171471 -0.036022037 -1.0573584 
		0.30675578 -0.13654163 -1.3073584 0.33451402 -0.1711777 -1.5573584 0.36227229 -0.13654163 
		-1.7828867 0.38731337 -0.036022037 -1.961867 0.40718606 0.12054019 -2.0767794 0.41994515 
		0.31781954 -2.1163754 0.42434159 0.53650546 -1.1552643 1.9222994 0.53650546 -1.8271866 
		0.31701225 0.86234641 -1.6869853 0.30144528 0.98498666 -1.5103213 0.28182974 1.0637268 
		-1.3144879 0.26008579 1.0908586 -1.1186545 0.23834181 1.0637268 -0.94199061 0.21872629 
		0.98498666 -0.8017894 0.20315935 0.86234599 -0.71177477 0.19316475 0.7078113 -0.68075782 
		0.18972084 0.53650546 -0.71177477 0.19316475 0.36520213 -0.8017894 0.20315935 0.21066579 
		-0.94199067 0.21872631 0.088025548 -1.1186545 0.23834181 0.0092849862 -1.3144878 
		0.26008579 -0.01784642 -1.5103211 0.28182974 0.0092849862 -1.686985 0.30144525 0.088025548 
		-1.8271862 0.31701219 0.21066579 -1.9172009 0.32700682 0.36520213 -1.9482179 0.33045071 
		0.53650546 -1.9172014 0.32700685 0.7078113 -1.9019365 -0.81145525 0.86234641 -1.7617352 
		-0.82702219 0.98498666 -1.5850712 -0.84663773 1.0637268 -1.3892378 -0.86838174 1.0908586 
		-1.1934044 -0.89012569 1.0637268 -1.0167406 -0.90974122 0.98498666 -0.87653935 -0.92530817 
		0.86234599 -0.78652471 -0.93530273 0.7078113 -0.75550777 -0.93874663 0.53650546 -0.78652471 
		-0.93530273 0.36520213 -0.87653935 -0.92530817 0.21066579 -1.0167406 -0.90974122 
		0.088025548 -1.1934044 -0.89012569 0.0092849862 -1.3892378 -0.86838174 -0.01784642 
		-1.5850711 -0.84663773 0.0092849862 -1.761735 -0.82702225 0.088025548 -1.9019362 
		-0.81145531 0.21066579 -1.9919509 -0.80146068 0.36520213 -2.0229678 -0.79801679 0.53650546 
		-1.9919512 -0.80146062 0.7078113;
	setAttr -s 321 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048339844 0.12655823 -0.98768836 -0.09194994
		 0.091949932 -0.98768836 -0.12655735 0.048340935 -0.98768836 -0.14877748 0 -0.98768836 -0.15643406
		 -0.048340935 -0.98768836 -0.14877748 -0.091949917 -0.98768836 -0.12655735 -0.12655818 -0.98768836 -0.09194994
		 -0.14877805 -0.98768836 -0.048339844 -0.15643452 -0.98768836 9.5367432e-07 -0.14877805 -0.98768836 0.048341751
		 -0.12655818 -0.98768836 0.091950893 -0.09194988 -0.98768836 0.12655926 -0.048340924 -0.98768836 0.14877796
		 -4.6621107e-09 -0.98768836 0.15643454 0.048340902 -0.98768836 0.14877796 0.091949873 -0.98768836 0.12655926
		 0.12655815 -0.98768836 0.091950893 0.14877804 -0.98768836 0.048341751 0.15643448 -0.98768836 9.5367432e-07
		 0.29389283 -0.95105666 -0.095490932 0.25000015 -0.95105666 -0.1816349 0.18163574 -0.95105666 -0.25
		 0.095491551 -0.95105666 -0.29389286 0 -0.95105666 -0.30901718 -0.095491551 -0.95105666 -0.29389286
		 -0.18163571 -0.95105666 -0.25 -0.25000009 -0.95105666 -0.1816349 -0.29389271 -0.95105666 -0.095490932
		 -0.30901706 -0.95105666 9.5367432e-07 -0.29389271 -0.95105666 0.09549284 -0.25000006 -0.95105666 0.18163681
		 -0.18163568 -0.95105666 0.25000048 -0.095491514 -0.95105666 0.29389238 -9.2094226e-09 -0.95105666 0.30901718
		 0.095491499 -0.95105666 0.29389238 0.1816356 -0.95105666 0.25000048 0.25 -0.95105666 0.18163681
		 0.29389265 -0.95105666 0.095491409 0.30901694 -0.95105666 9.5367432e-07 0.43177092 -0.89100659 -0.14029074
		 0.36728629 -0.89100659 -0.26684904 0.2668491 -0.89100659 -0.36728573 0.14029086 -0.89100659 -0.4317708
		 0 -0.89100659 -0.45398998 -0.14029086 -0.89100659 -0.4317708 -0.26684904 -0.89100659 -0.36728573
		 -0.36728615 -0.89100659 -0.26684904 -0.43177077 -0.89100659 -0.14029074 -0.45399058 -0.89100659 9.5367432e-07
		 -0.43177077 -0.89100659 0.14029169 -0.36728612 -0.89100659 0.26684999 -0.26684898 -0.89100659 0.36728716
		 -0.14029081 -0.89100659 0.4317708 -1.3529971e-08 -0.89100659 0.45399094 0.14029078 -0.89100659 0.4317708
		 0.26684889 -0.89100659 0.36728716 0.36728606 -0.89100659 0.26684999 0.43177065 -0.89100659 0.14029169
		 0.45399049 -0.89100659 9.5367432e-07 0.55901736 -0.809017 -0.1816349 0.47552857 -0.809017 -0.34549141
		 0.34549171 -0.809017 -0.47552776 0.18163572 -0.809017 -0.55901718 0 -0.809017 -0.58778524
		 -0.18163572 -0.809017 -0.55901718 -0.34549165 -0.809017 -0.47552776 -0.47552839 -0.809017 -0.34549141
		 -0.55901712 -0.809017 -0.1816349 -0.58778536 -0.809017 9.5367432e-07 -0.55901712 -0.809017 0.18163681
		 -0.47552833 -0.809017 0.34549236 -0.34549156 -0.809017 0.47552824 -0.18163566 -0.809017 0.55901766
		 -1.7517365e-08 -0.809017 0.58778572 0.18163559 -0.809017 0.55901766 0.3454915 -0.809017 0.47552824
		 0.4755283 -0.809017 0.34549236 0.559017 -0.809017 0.18163681 0.58778524 -0.809017 9.5367432e-07
		 0.67249894 -0.70710677 -0.21850824 0.57206178 -0.70710677 -0.41562653 0.41562712 -0.70710677 -0.57206154
		 0.21850809 -0.70710677 -0.67249823 0 -0.70710677 -0.70710659 -0.21850809 -0.70710677 -0.67249823
		 -0.41562703 -0.70710677 -0.57206154 -0.57206154 -0.70710677 -0.41562605 -0.6724987 -0.70710677 -0.21850824
		 -0.70710695 -0.70710677 9.5367432e-07 -0.6724987 -0.70710677 0.2185092 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206154 -0.21850805 -0.70710677 0.6724987 -2.1073424e-08 -0.70710677 0.70710754
		 0.21850799 -0.70710677 0.6724987 0.41562691 -0.70710677 0.57206154 0.5720613 -0.70710677 0.415627
		 0.67249852 -0.70710677 0.2185092 0.70710677 -0.70710677 9.5367432e-07 0.76942128 -0.5877853 -0.25
		 0.65450895 -0.5877853 -0.47552776 0.47552851 -0.5877853 -0.65450811 0.25000012 -0.5877853 -0.7694211
		 0 -0.5877853 -0.80901718 -0.25000012 -0.5877853 -0.7694211 -0.47552845 -0.5877853 -0.65450811
		 -0.65450871 -0.5877853 -0.47552729 -0.7694211 -0.5877853 -0.25 -0.80901706 -0.5877853 9.5367432e-07
		 -0.7694211 -0.5877853 0.25000048 -0.65450865 -0.5877853 0.47552824 -0.47552833 -0.5877853 0.65450859
		 -0.25000006 -0.5877853 0.76942158 -2.4110584e-08 -0.5877853 0.80901718 0.24999997 -0.5877853 0.76942158
		 0.4755283 -0.5877853 0.65450859 0.65450853 -0.5877853 0.47552824 0.76942092 -0.5877853 0.25000048
		 0.80901694 -0.5877853 9.5367432e-07 0.84739798 -0.45399052 -0.27533531 0.72083986 -0.45399052 -0.52372074
		 0.5237208 -0.45399052 -0.72083902 0.2753363 -0.45399052 -0.84739733 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739733 -0.52372068 -0.45399052 -0.72083902 -0.72083962 -0.45399052 -0.52372026
		 -0.8473978 -0.45399052 -0.27533531 -0.89100665 -0.45399052 9.5367432e-07 -0.8473978 -0.45399052 0.27533627
		 -0.72083962 -0.45399052 0.52372074 -0.52372062 -0.45399052 0.72083998 -0.27533621 -0.45399052 0.8473978
		 -2.6554064e-08 -0.45399052 0.89100695 0.27533609 -0.45399052 0.8473978 0.5237205 -0.45399052 0.72083998
		 0.72083944 -0.45399052 0.52372074 0.84739757 -0.45399052 0.27533627 0.89100653 -0.45399052 9.5367432e-07
		 0.90450913 -0.30901697 -0.29389286 0.76942128 -0.30901697 -0.55901718 0.55901736 -0.30901697 -0.7694211
		 0.29389277 -0.30901697 -0.90450859 0 -0.30901697 -0.95105696 -0.29389277 -0.30901697 -0.90450859
		 -0.55901724 -0.30901697 -0.7694211 -0.76942116 -0.30901697 -0.55901718 -0.90450865 -0.30901697 -0.29389286
		 -0.95105678 -0.30901697 9.5367432e-07 -0.90450865 -0.30901697 0.29389334 -0.7694211 -0.30901697 0.55901766
		 -0.55901712 -0.30901697 0.76942158 -0.29389271 -0.30901697 0.90450907 -2.8343695e-08 -0.30901697 0.95105648
		 0.29389262 -0.30901697 0.90450907 0.559017 -0.30901697 0.76942158 0.76942092 -0.30901697 0.55901766
		 0.90450853 -0.30901697 0.29389238 0.9510566 -0.30901697 9.5367432e-07 0.93934792 -0.15643437 -0.3052125
		 0.79905719 -0.15643437 -0.58054829 0.58054888 -0.15643437 -0.79905653 0.30521265 -0.15643437 -0.93934774
		 0 -0.15643437 -0.98768854 -0.30521265 -0.15643437 -0.93934774;
	setAttr ".vt[166:320]" -0.58054888 -0.15643437 -0.79905653 -0.79905683 -0.15643437 -0.58054829
		 -0.93934768 -0.15643437 -0.3052125 -0.9876886 -0.15643437 9.5367432e-07 -0.93934768 -0.15643437 0.30521393
		 -0.79905683 -0.15643437 0.58054924 -0.58054876 -0.15643437 0.79905748 -0.30521256 -0.15643437 0.93934774
		 -2.9435407e-08 -0.15643437 0.98768902 0.30521247 -0.15643437 0.93934774 0.58054864 -0.15643437 0.79905748
		 0.79905665 -0.15643437 0.58054924 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 9.5367432e-07
		 0.95105714 0 -0.30901718 0.80901754 0 -0.58778524 0.5877856 0 -0.80901718 0.30901715 0 -0.95105696
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.80901718 -0.80901712 0 -0.58778524
		 -0.95105678 0 -0.30901623 -1.000000238419 0 9.5367432e-07 -0.95105678 0 0.30901718
		 -0.80901706 0 0.58778572 -0.58778536 0 0.80901718 -0.30901706 0 0.95105648 -2.9802322e-08 0 1
		 0.30901691 0 0.95105648 0.58778524 0 0.80901718 0.80901694 0 0.58778572 0.9510566 0 0.30901718
		 1 0 9.5367432e-07 0.93934792 0.15643437 -0.3052125 0.79905719 0.15643437 -0.58054829
		 0.58054888 0.15643437 -0.79905653 0.30521265 0.15643437 -0.93934774 0 0.15643437 -0.98768854
		 -0.30521265 0.15643437 -0.93934774 -0.58054888 0.15643437 -0.79905653 -0.79905683 0.15643437 -0.58054829
		 -0.93934768 0.15643437 -0.3052125 -0.9876886 0.15643437 9.5367432e-07 -0.93934768 0.15643437 0.30521393
		 -0.79905683 0.15643437 0.58054924 -0.58054876 0.15643437 0.79905748 -0.30521256 0.15643437 0.93934774
		 -2.9435407e-08 0.15643437 0.98768902 0.30521247 0.15643437 0.93934774 0.58054864 0.15643437 0.79905748
		 0.79905665 0.15643437 0.58054924 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 9.5367432e-07
		 0.90450913 0.30901697 -0.29389286 0.76942128 0.30901697 -0.55901718 0.55901736 0.30901697 -0.7694211
		 0.29389277 0.30901697 -0.90450859 0 0.30901697 -0.95105696 -0.29389277 0.30901697 -0.90450859
		 -0.55901724 0.30901697 -0.7694211 -0.76942116 0.30901697 -0.55901718 -0.90450865 0.30901697 -0.29389286
		 -0.95105678 0.30901697 9.5367432e-07 -0.90450865 0.30901697 0.29389334 -0.7694211 0.30901697 0.55901766
		 -0.55901712 0.30901697 0.76942158 -0.29389271 0.30901697 0.90450907 -2.8343695e-08 0.30901697 0.95105648
		 0.29389262 0.30901697 0.90450907 0.559017 0.30901697 0.76942158 0.76942092 0.30901697 0.55901766
		 0.90450853 0.30901697 0.29389238 0.9510566 0.30901697 9.5367432e-07 0.84739798 0.45399052 -0.27533531
		 0.72083986 0.45399052 -0.52372074 0.5237208 0.45399052 -0.72083902 0.2753363 0.45399052 -0.84739733
		 0 0.45399052 -0.89100695 -0.2753363 0.45399052 -0.84739733 -0.52372068 0.45399052 -0.72083902
		 -0.72083962 0.45399052 -0.52372026 -0.8473978 0.45399052 -0.27533531 -0.89100665 0.45399052 9.5367432e-07
		 -0.8473978 0.45399052 0.27533627 -0.72083962 0.45399052 0.52372074 -0.52372062 0.45399052 0.72083998
		 -0.27533621 0.45399052 0.8473978 -2.6554064e-08 0.45399052 0.89100695 0.27533609 0.45399052 0.8473978
		 0.5237205 0.45399052 0.72083998 0.72083944 0.45399052 0.52372074 0.84739757 0.45399052 0.27533627
		 0.89100653 0.45399052 9.5367432e-07 0.76942128 0.5877853 -0.25 0.65450895 0.5877853 -0.47552776
		 0.47552851 0.5877853 -0.65450811 0.25000012 0.5877853 -0.7694211 0 0.5877853 -0.80901718
		 -0.25000012 0.5877853 -0.7694211 -0.47552845 0.5877853 -0.65450811 -0.65450871 0.5877853 -0.47552729
		 -0.7694211 0.5877853 -0.25 -0.80901706 0.5877853 9.5367432e-07 -0.7694211 0.5877853 0.25000048
		 -0.65450865 0.5877853 0.47552824 -0.47552833 0.5877853 0.65450859 -0.25000006 0.5877853 0.76942158
		 -2.4110584e-08 0.5877853 0.80901718 0.24999997 0.5877853 0.76942158 0.4755283 0.5877853 0.65450859
		 0.65450853 0.5877853 0.47552824 0.76942092 0.5877853 0.25000048 0.80901694 0.5877853 9.5367432e-07
		 0 -1 9.5367432e-07 0.51269871 0.66221356 -0.37249708 0.37249735 0.66221356 -0.51269817
		 0.19583341 0.66221356 -0.60271311 4.7560045e-09 0.66221356 -0.63372993 -0.19583341 0.66221356 -0.60271311
		 -0.37249729 0.66221356 -0.51269817 -0.51269847 0.66221356 -0.3724966 -0.60271311 0.66221356 -0.19583416
		 -0.63373005 0.66221356 9.5367432e-07 -0.60271311 0.66221356 0.19583321 -0.51269847 0.66221356 0.37249756
		 -0.37249723 0.66221356 0.51269865 -0.19583338 0.66221356 0.60271406 -1.4130621e-08 0.66221356 0.63373041
		 0.19583331 0.66221356 0.60271406 0.37249717 0.66221356 0.51269865 0.51269835 0.66221356 0.37249756
		 0.60271305 0.66221356 0.19583321 0.63372999 0.66221356 9.5367432e-07 0.60271347 0.66221356 -0.19583416
		 0.51269871 1.790681 -0.37249708 0.37249735 1.790681 -0.51269817 0.19583341 1.790681 -0.60271311
		 1.3899966e-08 1.790681 -0.63372993 -0.19583341 1.790681 -0.60271311 -0.37249729 1.790681 -0.51269817
		 -0.51269847 1.790681 -0.3724966 -0.60271311 1.790681 -0.19583416 -0.63373005 1.790681 9.5367432e-07
		 -0.60271311 1.790681 0.19583321 -0.51269847 1.790681 0.37249756 -0.37249723 1.790681 0.51269865
		 -0.19583338 1.790681 0.60271406 -4.9866595e-09 1.790681 0.63373041 0.19583331 1.790681 0.60271406
		 0.37249717 1.790681 0.51269865 0.51269835 1.790681 0.37249756 0.60271305 1.790681 0.19583321
		 0.63372999 1.790681 9.5367432e-07 0.60271347 1.790681 -0.19583416;
	setAttr -s 640 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 0 261 262 0
		 262 263 0 263 264 0 264 265 0 265 266 0 266 267 0 267 268 0 268 269 0 269 270 0 270 271 0
		 271 272 0 272 273 0 273 274 0 274 275 0 275 276 0 276 277 0 277 278 0 278 279 0 279 260 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1
		 23 43 1 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1
		 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1
		 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1;
	setAttr ".ed[332:497]" 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1
		 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1 69 89 1
		 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1 80 100 1
		 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1 89 109 1
		 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1 98 118 1
		 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1 107 127 1
		 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1 116 136 1
		 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1 124 144 1 125 145 1
		 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1 134 154 1
		 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1 143 163 1
		 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1 152 172 1
		 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1 161 181 1
		 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1 170 190 1
		 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1 179 199 1
		 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1 187 207 1 188 208 1
		 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1 196 216 1 197 217 1
		 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1 205 225 1 206 226 1
		 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1 214 234 1 215 235 1
		 216 236 1 217 237 1;
	setAttr ".ed[498:639]" 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1 223 243 1
		 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1 232 252 1
		 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1 241 261 1
		 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1 250 270 1
		 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1 259 279 1
		 280 0 1 280 1 1 280 2 1 280 3 1 280 4 1 280 5 1 280 6 1 280 7 1 280 8 1 280 9 1 280 10 1
		 280 11 1 280 12 1 280 13 1 280 14 1 280 15 1 280 16 1 280 17 1 280 18 1 280 19 1
		 261 281 1 262 282 1 281 282 0 263 283 1 282 283 0 264 284 1 283 284 0 265 285 1 284 285 0
		 266 286 1 285 286 0 267 287 1 286 287 0 268 288 1 287 288 0 269 289 1 288 289 0 270 290 1
		 289 290 0 271 291 1 290 291 0 272 292 1 291 292 0 273 293 1 292 293 0 274 294 1 293 294 0
		 275 295 1 294 295 0 276 296 1 295 296 0 277 297 1 296 297 0 278 298 1 297 298 0 279 299 1
		 298 299 0 260 300 1 299 300 0 300 281 0 281 301 1 282 302 1 301 302 0 283 303 1 302 303 0
		 284 304 1 303 304 0 285 305 1 304 305 0 286 306 1 305 306 0 287 307 1 306 307 0 288 308 1
		 307 308 0 289 309 1 308 309 0 290 310 1 309 310 0 291 311 1 310 311 0 292 312 1 311 312 0
		 293 313 1 312 313 0 294 314 1 313 314 0 295 315 1 314 315 0 296 316 1 315 316 0 297 317 1
		 316 317 0 298 318 1 317 318 0 299 319 1 318 319 0 300 320 1 319 320 0 320 301 0;
	setAttr -s 321 -ch 1280 ".fc[0:320]" -type "polyFaces" 
		f 4 0 281 -21 -281
		mu 0 4 0 1 22 21
		f 4 1 282 -22 -282
		mu 0 4 1 2 23 22
		f 4 2 283 -23 -283
		mu 0 4 2 3 24 23
		f 4 3 284 -24 -284
		mu 0 4 3 4 25 24
		f 4 4 285 -25 -285
		mu 0 4 4 5 26 25
		f 4 5 286 -26 -286
		mu 0 4 5 6 27 26
		f 4 6 287 -27 -287
		mu 0 4 6 7 28 27
		f 4 7 288 -28 -288
		mu 0 4 7 8 29 28
		f 4 8 289 -29 -289
		mu 0 4 8 9 30 29
		f 4 9 290 -30 -290
		mu 0 4 9 10 31 30
		f 4 10 291 -31 -291
		mu 0 4 10 11 32 31
		f 4 11 292 -32 -292
		mu 0 4 11 12 33 32
		f 4 12 293 -33 -293
		mu 0 4 12 13 34 33
		f 4 13 294 -34 -294
		mu 0 4 13 14 35 34
		f 4 14 295 -35 -295
		mu 0 4 14 15 36 35
		f 4 15 296 -36 -296
		mu 0 4 15 16 37 36
		f 4 16 297 -37 -297
		mu 0 4 16 17 38 37
		f 4 17 298 -38 -298
		mu 0 4 17 18 39 38
		f 4 18 299 -39 -299
		mu 0 4 18 19 40 39
		f 4 19 280 -40 -300
		mu 0 4 19 20 41 40
		f 4 20 301 -41 -301
		mu 0 4 21 22 43 42
		f 4 21 302 -42 -302
		mu 0 4 22 23 44 43
		f 4 22 303 -43 -303
		mu 0 4 23 24 45 44
		f 4 23 304 -44 -304
		mu 0 4 24 25 46 45
		f 4 24 305 -45 -305
		mu 0 4 25 26 47 46
		f 4 25 306 -46 -306
		mu 0 4 26 27 48 47
		f 4 26 307 -47 -307
		mu 0 4 27 28 49 48
		f 4 27 308 -48 -308
		mu 0 4 28 29 50 49
		f 4 28 309 -49 -309
		mu 0 4 29 30 51 50
		f 4 29 310 -50 -310
		mu 0 4 30 31 52 51
		f 4 30 311 -51 -311
		mu 0 4 31 32 53 52
		f 4 31 312 -52 -312
		mu 0 4 32 33 54 53
		f 4 32 313 -53 -313
		mu 0 4 33 34 55 54
		f 4 33 314 -54 -314
		mu 0 4 34 35 56 55
		f 4 34 315 -55 -315
		mu 0 4 35 36 57 56
		f 4 35 316 -56 -316
		mu 0 4 36 37 58 57
		f 4 36 317 -57 -317
		mu 0 4 37 38 59 58
		f 4 37 318 -58 -318
		mu 0 4 38 39 60 59
		f 4 38 319 -59 -319
		mu 0 4 39 40 61 60
		f 4 39 300 -60 -320
		mu 0 4 40 41 62 61
		f 4 40 321 -61 -321
		mu 0 4 42 43 64 63
		f 4 41 322 -62 -322
		mu 0 4 43 44 65 64
		f 4 42 323 -63 -323
		mu 0 4 44 45 66 65
		f 4 43 324 -64 -324
		mu 0 4 45 46 67 66
		f 4 44 325 -65 -325
		mu 0 4 46 47 68 67
		f 4 45 326 -66 -326
		mu 0 4 47 48 69 68
		f 4 46 327 -67 -327
		mu 0 4 48 49 70 69
		f 4 47 328 -68 -328
		mu 0 4 49 50 71 70
		f 4 48 329 -69 -329
		mu 0 4 50 51 72 71
		f 4 49 330 -70 -330
		mu 0 4 51 52 73 72
		f 4 50 331 -71 -331
		mu 0 4 52 53 74 73
		f 4 51 332 -72 -332
		mu 0 4 53 54 75 74
		f 4 52 333 -73 -333
		mu 0 4 54 55 76 75
		f 4 53 334 -74 -334
		mu 0 4 55 56 77 76
		f 4 54 335 -75 -335
		mu 0 4 56 57 78 77
		f 4 55 336 -76 -336
		mu 0 4 57 58 79 78
		f 4 56 337 -77 -337
		mu 0 4 58 59 80 79
		f 4 57 338 -78 -338
		mu 0 4 59 60 81 80
		f 4 58 339 -79 -339
		mu 0 4 60 61 82 81
		f 4 59 320 -80 -340
		mu 0 4 61 62 83 82
		f 4 60 341 -81 -341
		mu 0 4 63 64 85 84
		f 4 61 342 -82 -342
		mu 0 4 64 65 86 85
		f 4 62 343 -83 -343
		mu 0 4 65 66 87 86
		f 4 63 344 -84 -344
		mu 0 4 66 67 88 87
		f 4 64 345 -85 -345
		mu 0 4 67 68 89 88
		f 4 65 346 -86 -346
		mu 0 4 68 69 90 89
		f 4 66 347 -87 -347
		mu 0 4 69 70 91 90
		f 4 67 348 -88 -348
		mu 0 4 70 71 92 91
		f 4 68 349 -89 -349
		mu 0 4 71 72 93 92
		f 4 69 350 -90 -350
		mu 0 4 72 73 94 93
		f 4 70 351 -91 -351
		mu 0 4 73 74 95 94
		f 4 71 352 -92 -352
		mu 0 4 74 75 96 95
		f 4 72 353 -93 -353
		mu 0 4 75 76 97 96
		f 4 73 354 -94 -354
		mu 0 4 76 77 98 97
		f 4 74 355 -95 -355
		mu 0 4 77 78 99 98
		f 4 75 356 -96 -356
		mu 0 4 78 79 100 99
		f 4 76 357 -97 -357
		mu 0 4 79 80 101 100
		f 4 77 358 -98 -358
		mu 0 4 80 81 102 101
		f 4 78 359 -99 -359
		mu 0 4 81 82 103 102
		f 4 79 340 -100 -360
		mu 0 4 82 83 104 103
		f 4 80 361 -101 -361
		mu 0 4 84 85 106 105
		f 4 81 362 -102 -362
		mu 0 4 85 86 107 106
		f 4 82 363 -103 -363
		mu 0 4 86 87 108 107
		f 4 83 364 -104 -364
		mu 0 4 87 88 109 108
		f 4 84 365 -105 -365
		mu 0 4 88 89 110 109
		f 4 85 366 -106 -366
		mu 0 4 89 90 111 110
		f 4 86 367 -107 -367
		mu 0 4 90 91 112 111
		f 4 87 368 -108 -368
		mu 0 4 91 92 113 112
		f 4 88 369 -109 -369
		mu 0 4 92 93 114 113
		f 4 89 370 -110 -370
		mu 0 4 93 94 115 114
		f 4 90 371 -111 -371
		mu 0 4 94 95 116 115
		f 4 91 372 -112 -372
		mu 0 4 95 96 117 116
		f 4 92 373 -113 -373
		mu 0 4 96 97 118 117
		f 4 93 374 -114 -374
		mu 0 4 97 98 119 118
		f 4 94 375 -115 -375
		mu 0 4 98 99 120 119
		f 4 95 376 -116 -376
		mu 0 4 99 100 121 120
		f 4 96 377 -117 -377
		mu 0 4 100 101 122 121
		f 4 97 378 -118 -378
		mu 0 4 101 102 123 122
		f 4 98 379 -119 -379
		mu 0 4 102 103 124 123
		f 4 99 360 -120 -380
		mu 0 4 103 104 125 124
		f 4 100 381 -121 -381
		mu 0 4 105 106 127 126
		f 4 101 382 -122 -382
		mu 0 4 106 107 128 127
		f 4 102 383 -123 -383
		mu 0 4 107 108 129 128
		f 4 103 384 -124 -384
		mu 0 4 108 109 130 129
		f 4 104 385 -125 -385
		mu 0 4 109 110 131 130
		f 4 105 386 -126 -386
		mu 0 4 110 111 132 131
		f 4 106 387 -127 -387
		mu 0 4 111 112 133 132
		f 4 107 388 -128 -388
		mu 0 4 112 113 134 133
		f 4 108 389 -129 -389
		mu 0 4 113 114 135 134
		f 4 109 390 -130 -390
		mu 0 4 114 115 136 135
		f 4 110 391 -131 -391
		mu 0 4 115 116 137 136
		f 4 111 392 -132 -392
		mu 0 4 116 117 138 137
		f 4 112 393 -133 -393
		mu 0 4 117 118 139 138
		f 4 113 394 -134 -394
		mu 0 4 118 119 140 139
		f 4 114 395 -135 -395
		mu 0 4 119 120 141 140
		f 4 115 396 -136 -396
		mu 0 4 120 121 142 141
		f 4 116 397 -137 -397
		mu 0 4 121 122 143 142
		f 4 117 398 -138 -398
		mu 0 4 122 123 144 143
		f 4 118 399 -139 -399
		mu 0 4 123 124 145 144
		f 4 119 380 -140 -400
		mu 0 4 124 125 146 145
		f 4 120 401 -141 -401
		mu 0 4 126 127 148 147
		f 4 121 402 -142 -402
		mu 0 4 127 128 149 148
		f 4 122 403 -143 -403
		mu 0 4 128 129 150 149
		f 4 123 404 -144 -404
		mu 0 4 129 130 151 150
		f 4 124 405 -145 -405
		mu 0 4 130 131 152 151
		f 4 125 406 -146 -406
		mu 0 4 131 132 153 152
		f 4 126 407 -147 -407
		mu 0 4 132 133 154 153
		f 4 127 408 -148 -408
		mu 0 4 133 134 155 154
		f 4 128 409 -149 -409
		mu 0 4 134 135 156 155
		f 4 129 410 -150 -410
		mu 0 4 135 136 157 156
		f 4 130 411 -151 -411
		mu 0 4 136 137 158 157
		f 4 131 412 -152 -412
		mu 0 4 137 138 159 158
		f 4 132 413 -153 -413
		mu 0 4 138 139 160 159
		f 4 133 414 -154 -414
		mu 0 4 139 140 161 160
		f 4 134 415 -155 -415
		mu 0 4 140 141 162 161
		f 4 135 416 -156 -416
		mu 0 4 141 142 163 162
		f 4 136 417 -157 -417
		mu 0 4 142 143 164 163
		f 4 137 418 -158 -418
		mu 0 4 143 144 165 164
		f 4 138 419 -159 -419
		mu 0 4 144 145 166 165
		f 4 139 400 -160 -420
		mu 0 4 145 146 167 166
		f 4 140 421 -161 -421
		mu 0 4 147 148 169 168
		f 4 141 422 -162 -422
		mu 0 4 148 149 170 169
		f 4 142 423 -163 -423
		mu 0 4 149 150 171 170
		f 4 143 424 -164 -424
		mu 0 4 150 151 172 171
		f 4 144 425 -165 -425
		mu 0 4 151 152 173 172
		f 4 145 426 -166 -426
		mu 0 4 152 153 174 173
		f 4 146 427 -167 -427
		mu 0 4 153 154 175 174
		f 4 147 428 -168 -428
		mu 0 4 154 155 176 175
		f 4 148 429 -169 -429
		mu 0 4 155 156 177 176
		f 4 149 430 -170 -430
		mu 0 4 156 157 178 177
		f 4 150 431 -171 -431
		mu 0 4 157 158 179 178
		f 4 151 432 -172 -432
		mu 0 4 158 159 180 179
		f 4 152 433 -173 -433
		mu 0 4 159 160 181 180
		f 4 153 434 -174 -434
		mu 0 4 160 161 182 181
		f 4 154 435 -175 -435
		mu 0 4 161 162 183 182
		f 4 155 436 -176 -436
		mu 0 4 162 163 184 183
		f 4 156 437 -177 -437
		mu 0 4 163 164 185 184
		f 4 157 438 -178 -438
		mu 0 4 164 165 186 185
		f 4 158 439 -179 -439
		mu 0 4 165 166 187 186
		f 4 159 420 -180 -440
		mu 0 4 166 167 188 187
		f 4 160 441 -181 -441
		mu 0 4 168 169 190 189
		f 4 161 442 -182 -442
		mu 0 4 169 170 191 190
		f 4 162 443 -183 -443
		mu 0 4 170 171 192 191
		f 4 163 444 -184 -444
		mu 0 4 171 172 193 192
		f 4 164 445 -185 -445
		mu 0 4 172 173 194 193
		f 4 165 446 -186 -446
		mu 0 4 173 174 195 194
		f 4 166 447 -187 -447
		mu 0 4 174 175 196 195
		f 4 167 448 -188 -448
		mu 0 4 175 176 197 196
		f 4 168 449 -189 -449
		mu 0 4 176 177 198 197
		f 4 169 450 -190 -450
		mu 0 4 177 178 199 198
		f 4 170 451 -191 -451
		mu 0 4 178 179 200 199
		f 4 171 452 -192 -452
		mu 0 4 179 180 201 200
		f 4 172 453 -193 -453
		mu 0 4 180 181 202 201
		f 4 173 454 -194 -454
		mu 0 4 181 182 203 202
		f 4 174 455 -195 -455
		mu 0 4 182 183 204 203
		f 4 175 456 -196 -456
		mu 0 4 183 184 205 204
		f 4 176 457 -197 -457
		mu 0 4 184 185 206 205
		f 4 177 458 -198 -458
		mu 0 4 185 186 207 206
		f 4 178 459 -199 -459
		mu 0 4 186 187 208 207
		f 4 179 440 -200 -460
		mu 0 4 187 188 209 208
		f 4 180 461 -201 -461
		mu 0 4 189 190 211 210
		f 4 181 462 -202 -462
		mu 0 4 190 191 212 211
		f 4 182 463 -203 -463
		mu 0 4 191 192 213 212
		f 4 183 464 -204 -464
		mu 0 4 192 193 214 213
		f 4 184 465 -205 -465
		mu 0 4 193 194 215 214
		f 4 185 466 -206 -466
		mu 0 4 194 195 216 215
		f 4 186 467 -207 -467
		mu 0 4 195 196 217 216
		f 4 187 468 -208 -468
		mu 0 4 196 197 218 217
		f 4 188 469 -209 -469
		mu 0 4 197 198 219 218
		f 4 189 470 -210 -470
		mu 0 4 198 199 220 219
		f 4 190 471 -211 -471
		mu 0 4 199 200 221 220
		f 4 191 472 -212 -472
		mu 0 4 200 201 222 221
		f 4 192 473 -213 -473
		mu 0 4 201 202 223 222
		f 4 193 474 -214 -474
		mu 0 4 202 203 224 223
		f 4 194 475 -215 -475
		mu 0 4 203 204 225 224
		f 4 195 476 -216 -476
		mu 0 4 204 205 226 225
		f 4 196 477 -217 -477
		mu 0 4 205 206 227 226
		f 4 197 478 -218 -478
		mu 0 4 206 207 228 227
		f 4 198 479 -219 -479
		mu 0 4 207 208 229 228
		f 4 199 460 -220 -480
		mu 0 4 208 209 230 229
		f 4 200 481 -221 -481
		mu 0 4 210 211 232 231
		f 4 201 482 -222 -482
		mu 0 4 211 212 233 232
		f 4 202 483 -223 -483
		mu 0 4 212 213 234 233
		f 4 203 484 -224 -484
		mu 0 4 213 214 235 234
		f 4 204 485 -225 -485
		mu 0 4 214 215 236 235
		f 4 205 486 -226 -486
		mu 0 4 215 216 237 236
		f 4 206 487 -227 -487
		mu 0 4 216 217 238 237
		f 4 207 488 -228 -488
		mu 0 4 217 218 239 238
		f 4 208 489 -229 -489
		mu 0 4 218 219 240 239
		f 4 209 490 -230 -490
		mu 0 4 219 220 241 240
		f 4 210 491 -231 -491
		mu 0 4 220 221 242 241
		f 4 211 492 -232 -492
		mu 0 4 221 222 243 242
		f 4 212 493 -233 -493
		mu 0 4 222 223 244 243
		f 4 213 494 -234 -494
		mu 0 4 223 224 245 244
		f 4 214 495 -235 -495
		mu 0 4 224 225 246 245
		f 4 215 496 -236 -496
		mu 0 4 225 226 247 246
		f 4 216 497 -237 -497
		mu 0 4 226 227 248 247
		f 4 217 498 -238 -498
		mu 0 4 227 228 249 248
		f 4 218 499 -239 -499
		mu 0 4 228 229 250 249
		f 4 219 480 -240 -500
		mu 0 4 229 230 251 250
		f 4 220 501 -241 -501
		mu 0 4 231 232 253 252
		f 4 221 502 -242 -502
		mu 0 4 232 233 254 253
		f 4 222 503 -243 -503
		mu 0 4 233 234 255 254
		f 4 223 504 -244 -504
		mu 0 4 234 235 256 255
		f 4 224 505 -245 -505
		mu 0 4 235 236 257 256
		f 4 225 506 -246 -506
		mu 0 4 236 237 258 257
		f 4 226 507 -247 -507
		mu 0 4 237 238 259 258
		f 4 227 508 -248 -508
		mu 0 4 238 239 260 259
		f 4 228 509 -249 -509
		mu 0 4 239 240 261 260
		f 4 229 510 -250 -510
		mu 0 4 240 241 262 261
		f 4 230 511 -251 -511
		mu 0 4 241 242 263 262
		f 4 231 512 -252 -512
		mu 0 4 242 243 264 263
		f 4 232 513 -253 -513
		mu 0 4 243 244 265 264
		f 4 233 514 -254 -514
		mu 0 4 244 245 266 265
		f 4 234 515 -255 -515
		mu 0 4 245 246 267 266
		f 4 235 516 -256 -516
		mu 0 4 246 247 268 267
		f 4 236 517 -257 -517
		mu 0 4 247 248 269 268
		f 4 237 518 -258 -518
		mu 0 4 248 249 270 269
		f 4 238 519 -259 -519
		mu 0 4 249 250 271 270
		f 4 239 500 -260 -520
		mu 0 4 250 251 272 271
		f 4 240 521 -261 -521
		mu 0 4 252 253 274 273
		f 4 241 522 -262 -522
		mu 0 4 253 254 275 274
		f 4 242 523 -263 -523
		mu 0 4 254 255 276 275
		f 4 243 524 -264 -524
		mu 0 4 255 256 277 276
		f 4 244 525 -265 -525
		mu 0 4 256 257 278 277
		f 4 245 526 -266 -526
		mu 0 4 257 258 279 278
		f 4 246 527 -267 -527
		mu 0 4 258 259 280 279
		f 4 247 528 -268 -528
		mu 0 4 259 260 281 280
		f 4 248 529 -269 -529
		mu 0 4 260 261 282 281
		f 4 249 530 -270 -530
		mu 0 4 261 262 283 282
		f 4 250 531 -271 -531
		mu 0 4 262 263 284 283
		f 4 251 532 -272 -532
		mu 0 4 263 264 285 284
		f 4 252 533 -273 -533
		mu 0 4 264 265 286 285
		f 4 253 534 -274 -534
		mu 0 4 265 266 287 286
		f 4 254 535 -275 -535
		mu 0 4 266 267 288 287
		f 4 255 536 -276 -536
		mu 0 4 267 268 289 288
		f 4 256 537 -277 -537
		mu 0 4 268 269 290 289
		f 4 257 538 -278 -538
		mu 0 4 269 270 291 290
		f 4 258 539 -279 -539
		mu 0 4 270 271 292 291
		f 4 259 520 -280 -540
		mu 0 4 271 272 293 292
		f 3 -1 -541 541
		mu 0 3 1 0 294
		f 3 -2 -542 542
		mu 0 3 2 1 295
		f 3 -3 -543 543
		mu 0 3 3 2 296
		f 3 -4 -544 544
		mu 0 3 4 3 297
		f 3 -5 -545 545
		mu 0 3 5 4 298
		f 3 -6 -546 546
		mu 0 3 6 5 299
		f 3 -7 -547 547
		mu 0 3 7 6 300
		f 3 -8 -548 548
		mu 0 3 8 7 301
		f 3 -9 -549 549
		mu 0 3 9 8 302
		f 3 -10 -550 550
		mu 0 3 10 9 303
		f 3 -11 -551 551
		mu 0 3 11 10 304
		f 3 -12 -552 552
		mu 0 3 12 11 305
		f 3 -13 -553 553
		mu 0 3 13 12 306
		f 3 -14 -554 554
		mu 0 3 14 13 307
		f 3 -15 -555 555
		mu 0 3 15 14 308
		f 3 -16 -556 556
		mu 0 3 16 15 309
		f 3 -17 -557 557
		mu 0 3 17 16 310
		f 3 -18 -558 558
		mu 0 3 18 17 311
		f 3 -19 -559 559
		mu 0 3 19 18 312
		f 3 -20 -560 540
		mu 0 3 20 19 313
		f 20 602 604 606 608 610 612 614 616 618 620 622 624 626 628 630 632 634 636 638 639
		mu 0 20 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353
		f 4 261 561 -563 -561
		mu 0 4 274 275 315 314
		f 4 262 563 -565 -562
		mu 0 4 275 276 316 315
		f 4 263 565 -567 -564
		mu 0 4 276 277 317 316
		f 4 264 567 -569 -566
		mu 0 4 277 278 318 317
		f 4 265 569 -571 -568
		mu 0 4 278 279 319 318
		f 4 266 571 -573 -570
		mu 0 4 279 280 320 319
		f 4 267 573 -575 -572
		mu 0 4 280 281 321 320
		f 4 268 575 -577 -574
		mu 0 4 281 282 322 321
		f 4 269 577 -579 -576
		mu 0 4 282 283 323 322
		f 4 270 579 -581 -578
		mu 0 4 283 284 324 323
		f 4 271 581 -583 -580
		mu 0 4 284 285 325 324
		f 4 272 583 -585 -582
		mu 0 4 285 286 326 325
		f 4 273 585 -587 -584
		mu 0 4 286 287 327 326
		f 4 274 587 -589 -586
		mu 0 4 287 288 328 327
		f 4 275 589 -591 -588
		mu 0 4 288 289 329 328
		f 4 276 591 -593 -590
		mu 0 4 289 290 330 329
		f 4 277 593 -595 -592
		mu 0 4 290 291 331 330
		f 4 278 595 -597 -594
		mu 0 4 291 292 332 331
		f 4 279 597 -599 -596
		mu 0 4 292 273 333 332
		f 4 260 560 -600 -598
		mu 0 4 273 274 314 333
		f 4 562 601 -603 -601
		mu 0 4 314 315 335 334
		f 4 564 603 -605 -602
		mu 0 4 315 316 336 335
		f 4 566 605 -607 -604
		mu 0 4 316 317 337 336
		f 4 568 607 -609 -606
		mu 0 4 317 318 338 337
		f 4 570 609 -611 -608
		mu 0 4 318 319 339 338
		f 4 572 611 -613 -610
		mu 0 4 319 320 340 339
		f 4 574 613 -615 -612
		mu 0 4 320 321 341 340
		f 4 576 615 -617 -614
		mu 0 4 321 322 342 341
		f 4 578 617 -619 -616
		mu 0 4 322 323 343 342
		f 4 580 619 -621 -618
		mu 0 4 323 324 344 343
		f 4 582 621 -623 -620
		mu 0 4 324 325 345 344
		f 4 584 623 -625 -622
		mu 0 4 325 326 346 345
		f 4 586 625 -627 -624
		mu 0 4 326 327 347 346
		f 4 588 627 -629 -626
		mu 0 4 327 328 348 347
		f 4 590 629 -631 -628
		mu 0 4 328 329 349 348
		f 4 592 631 -633 -630
		mu 0 4 329 330 350 349
		f 4 594 633 -635 -632
		mu 0 4 330 331 351 350
		f 4 596 635 -637 -634
		mu 0 4 331 332 352 351
		f 4 598 637 -639 -636
		mu 0 4 332 333 353 352
		f 4 599 600 -640 -638
		mu 0 4 333 314 334 353;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lowerDoorknob_one" -p "Doorknobs";
	rename -uid "C08AF503-400B-FD86-4564-9D9E482A1959";
	setAttr ".rp" -type "double3" -1.3892378807067871 0.9222993424447965 1.1349433745024307 ;
	setAttr ".sp" -type "double3" -1.3892378807067862 0.9222993424447965 1.1349433745024307 ;
createNode mesh -n "lowerDoorknob_oneShape" -p "lowerDoorknob_one";
	rename -uid "C54712FF-4530-D4DD-2CAD-E7A384C409CF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47500008344650269 0.7000001072883606 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 354 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0.050000001 0.050000001 0.050000001
		 0.1 0.050000001 0.15000001 0.050000001 0.2 0.050000001 0.25 0.050000001 0.30000001
		 0.050000001 0.35000002 0.050000001 0.40000004 0.050000001 0.45000005 0.050000001
		 0.50000006 0.050000001 0.55000007 0.050000001 0.60000008 0.050000001 0.6500001 0.050000001
		 0.70000011 0.050000001 0.75000012 0.050000001 0.80000013 0.050000001 0.85000014 0.050000001
		 0.90000015 0.050000001 0.95000017 0.050000001 1.000000119209 0.050000001 0 0.1 0.050000001
		 0.1 0.1 0.1 0.15000001 0.1 0.2 0.1 0.25 0.1 0.30000001 0.1 0.35000002 0.1 0.40000004
		 0.1 0.45000005 0.1 0.50000006 0.1 0.55000007 0.1 0.60000008 0.1 0.6500001 0.1 0.70000011
		 0.1 0.75000012 0.1 0.80000013 0.1 0.85000014 0.1 0.90000015 0.1 0.95000017 0.1 1.000000119209
		 0.1 0 0.15000001 0.050000001 0.15000001 0.1 0.15000001 0.15000001 0.15000001 0.2
		 0.15000001 0.25 0.15000001 0.30000001 0.15000001 0.35000002 0.15000001 0.40000004
		 0.15000001 0.45000005 0.15000001 0.50000006 0.15000001 0.55000007 0.15000001 0.60000008
		 0.15000001 0.6500001 0.15000001 0.70000011 0.15000001 0.75000012 0.15000001 0.80000013
		 0.15000001 0.85000014 0.15000001 0.90000015 0.15000001 0.95000017 0.15000001 1.000000119209
		 0.15000001 0 0.2 0.050000001 0.2 0.1 0.2 0.15000001 0.2 0.2 0.2 0.25 0.2 0.30000001
		 0.2 0.35000002 0.2 0.40000004 0.2 0.45000005 0.2 0.50000006 0.2 0.55000007 0.2 0.60000008
		 0.2 0.6500001 0.2 0.70000011 0.2 0.75000012 0.2 0.80000013 0.2 0.85000014 0.2 0.90000015
		 0.2 0.95000017 0.2 1.000000119209 0.2 0 0.25 0.050000001 0.25 0.1 0.25 0.15000001
		 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002 0.25 0.40000004 0.25 0.45000005
		 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25 0.6500001 0.25 0.70000011 0.25
		 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015 0.25 0.95000017 0.25 1.000000119209
		 0.25 0 0.30000001 0.050000001 0.30000001 0.1 0.30000001 0.15000001 0.30000001 0.2
		 0.30000001 0.25 0.30000001 0.30000001 0.30000001 0.35000002 0.30000001 0.40000004
		 0.30000001 0.45000005 0.30000001 0.50000006 0.30000001 0.55000007 0.30000001 0.60000008
		 0.30000001 0.6500001 0.30000001 0.70000011 0.30000001 0.75000012 0.30000001 0.80000013
		 0.30000001 0.85000014 0.30000001 0.90000015 0.30000001 0.95000017 0.30000001 1.000000119209
		 0.30000001 0 0.35000002 0.050000001 0.35000002 0.1 0.35000002 0.15000001 0.35000002
		 0.2 0.35000002 0.25 0.35000002 0.30000001 0.35000002 0.35000002 0.35000002 0.40000004
		 0.35000002 0.45000005 0.35000002 0.50000006 0.35000002 0.55000007 0.35000002 0.60000008
		 0.35000002 0.6500001 0.35000002 0.70000011 0.35000002 0.75000012 0.35000002 0.80000013
		 0.35000002 0.85000014 0.35000002 0.90000015 0.35000002 0.95000017 0.35000002 1.000000119209
		 0.35000002 0 0.40000004 0.050000001 0.40000004 0.1 0.40000004 0.15000001 0.40000004
		 0.2 0.40000004 0.25 0.40000004 0.30000001 0.40000004 0.35000002 0.40000004 0.40000004
		 0.40000004 0.45000005 0.40000004 0.50000006 0.40000004 0.55000007 0.40000004 0.60000008
		 0.40000004 0.6500001 0.40000004 0.70000011 0.40000004 0.75000012 0.40000004 0.80000013
		 0.40000004 0.85000014 0.40000004 0.90000015 0.40000004 0.95000017 0.40000004 1.000000119209
		 0.40000004 0 0.45000005 0.050000001 0.45000005 0.1 0.45000005 0.15000001 0.45000005
		 0.2 0.45000005 0.25 0.45000005 0.30000001 0.45000005 0.35000002 0.45000005 0.40000004
		 0.45000005 0.45000005 0.45000005 0.50000006 0.45000005 0.55000007 0.45000005 0.60000008
		 0.45000005 0.6500001 0.45000005 0.70000011 0.45000005 0.75000012 0.45000005 0.80000013
		 0.45000005 0.85000014 0.45000005 0.90000015 0.45000005 0.95000017 0.45000005 1.000000119209
		 0.45000005 0 0.50000006 0.050000001 0.50000006 0.1 0.50000006 0.15000001 0.50000006
		 0.2 0.50000006 0.25 0.50000006 0.30000001 0.50000006 0.35000002 0.50000006 0.40000004
		 0.50000006 0.45000005 0.50000006 0.50000006 0.50000006 0.55000007 0.50000006 0.60000008
		 0.50000006 0.6500001 0.50000006 0.70000011 0.50000006 0.75000012 0.50000006 0.80000013
		 0.50000006 0.85000014 0.50000006 0.90000015 0.50000006 0.95000017 0.50000006 1.000000119209
		 0.50000006 0 0.55000007 0.050000001 0.55000007 0.1 0.55000007 0.15000001 0.55000007
		 0.2 0.55000007 0.25 0.55000007 0.30000001 0.55000007 0.35000002 0.55000007 0.40000004
		 0.55000007 0.45000005 0.55000007 0.50000006 0.55000007 0.55000007 0.55000007 0.60000008
		 0.55000007 0.6500001 0.55000007 0.70000011 0.55000007 0.75000012 0.55000007 0.80000013
		 0.55000007 0.85000014 0.55000007 0.90000015 0.55000007 0.95000017 0.55000007 1.000000119209
		 0.55000007 0 0.60000008 0.050000001 0.60000008 0.1 0.60000008 0.15000001 0.60000008
		 0.2 0.60000008 0.25 0.60000008 0.30000001 0.60000008 0.35000002 0.60000008 0.40000004
		 0.60000008 0.45000005 0.60000008 0.50000006 0.60000008 0.55000007 0.60000008 0.60000008
		 0.60000008 0.6500001 0.60000008 0.70000011 0.60000008 0.75000012 0.60000008 0.80000013
		 0.60000008 0.85000014 0.60000008 0.90000015 0.60000008;
	setAttr ".uvst[0].uvsp[250:353]" 0.95000017 0.60000008 1.000000119209 0.60000008
		 0 0.6500001 0.050000001 0.6500001 0.1 0.6500001 0.15000001 0.6500001 0.2 0.6500001
		 0.25 0.6500001 0.30000001 0.6500001 0.35000002 0.6500001 0.40000004 0.6500001 0.45000005
		 0.6500001 0.50000006 0.6500001 0.55000007 0.6500001 0.60000008 0.6500001 0.6500001
		 0.6500001 0.70000011 0.6500001 0.75000012 0.6500001 0.80000013 0.6500001 0.85000014
		 0.6500001 0.90000015 0.6500001 0.95000017 0.6500001 1.000000119209 0.6500001 0 0.70000011
		 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011
		 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011
		 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011
		 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011
		 0.90000015 0.70000011 0.95000017 0.70000011 1.000000119209 0.70000011 0.025 0 0.075000003
		 0 0.125 0 0.17500001 0 0.22500001 0 0.27500001 0 0.32500002 0 0.375 0 0.42500001
		 0 0.47500002 0 0.52499998 0 0.57499999 0 0.625 0 0.67500001 0 0.72499996 0 0.77499998
		 0 0.82499999 0 0.875 0 0.92500001 0 0.97499996 0 0.050000001 0.70000011 0.1 0.70000011
		 0.15000001 0.70000011 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011 0.35000002
		 0.70000011 0.40000004 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007
		 0.70000011 0.60000008 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012
		 0.70000011 0.80000013 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017
		 0.70000011 0 0.70000011 0.050000001 0.70000011 0.1 0.70000011 0.15000001 0.70000011
		 0.2 0.70000011 0.25 0.70000011 0.30000001 0.70000011 0.35000002 0.70000011 0.40000004
		 0.70000011 0.45000005 0.70000011 0.50000006 0.70000011 0.55000007 0.70000011 0.60000008
		 0.70000011 0.6500001 0.70000011 0.70000011 0.70000011 0.75000012 0.70000011 0.80000013
		 0.70000011 0.85000014 0.70000011 0.90000015 0.70000011 0.95000017 0.70000011 0 0.70000011;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 321 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -1.3052217 1.926507 1.1772285 -1.2830018 
		1.9240398 1.2153761 -1.2483935 1.9201971 1.2456489 -1.2047845 1.9153551 1.2650858 
		-1.1564436 1.9099877 1.2717834 -1.1081026 1.9046203 1.2650858 -1.0644937 1.8997782 
		1.2456489 -1.0298854 1.8959355 1.2153761 -1.0076655 1.8934684 1.1772285 -1.0000091 
		1.8926183 1.1349425 -1.0076655 1.8934684 1.0926566 -1.0298854 1.8959355 1.0545098 
		-1.0644937 1.8997782 1.0242362 -1.1081027 1.9046203 1.0048006 -1.1564436 1.9099877 
		0.99810302 -1.2047844 1.9153551 1.0048006 -1.2483934 1.9201971 1.0242362 -1.2830017 
		1.9240398 1.0545098 -1.3052216 1.926507 1.0926566 -1.312878 1.9273571 1.1349425 -1.4538454 
		1.9059877 1.2184737 -1.4099526 1.9011142 1.2938277 -1.3415883 1.8935236 1.3536297 
		-1.255444 1.8839587 1.3920248 -1.1599525 1.873356 1.4052547 -1.064461 1.8627533 1.3920248 
		-0.97831678 1.8531884 1.3536297 -0.9099524 1.8455977 1.2938277 -0.86605978 1.8407242 
		1.2184737 -0.85093546 1.8390449 1.1349425 -0.86605978 1.8407242 1.0514115 -0.90995246 
		1.8455977 0.97605741 -0.97831684 1.8531884 0.91625661 -1.064461 1.8627533 0.87786239 
		-1.1599525 1.873356 0.86463201 -1.255444 1.8839587 0.87786239 -1.3415881 1.8935236 
		0.91625661 -1.4099525 1.9011142 0.97605741 -1.4538451 1.9059877 1.0514127 -1.4689695 
		1.907667 1.1349425 -1.5974756 1.8612467 1.2576621 -1.5329911 1.8540869 1.3683684 
		-1.4325538 1.842935 1.4562248 -1.3059956 1.8288828 1.5126328 -1.1657047 1.813306 
		1.532069 -1.0254139 1.797729 1.5126328 -0.89885569 1.7836769 1.4562248 -0.79841858 
		1.7725251 1.3683684 -0.73393393 1.7653651 1.2576621 -0.71171415 1.762898 1.1349425 
		-0.73393393 1.7653651 1.0122238 -0.79841858 1.7725251 0.90151757 -0.89885575 1.7836769 
		0.81366062 -1.0254139 1.797729 0.75725389 -1.1657047 1.813306 0.73781693 -1.3059955 
		1.8288828 0.75725389 -1.4325536 1.842935 0.81366062 -1.5329908 1.8540868 0.90151757 
		-1.5974754 1.8612467 1.0122238 -1.6196952 1.8637139 1.1349425 -1.7325759 1.7933857 
		1.2938277 -1.6490871 1.7841157 1.4371604 -1.5190502 1.7696773 1.550909 -1.3551942 
		1.7514839 1.6239411 -1.1735585 1.7313163 1.6491058 -0.9919228 1.7111487 1.6239411 
		-0.82806683 1.6929554 1.550909 -0.69803011 1.678517 1.4371604 -0.61454135 1.669247 
		1.2938277 -0.58577311 1.6660528 1.1349425 -0.61454135 1.669247 0.97605741 -0.69803017 
		1.678517 0.83272552 -0.82806695 1.6929554 0.71897727 -0.99192286 1.7111487 0.64594531 
		-1.1735585 1.7313163 0.62078059 -1.3551941 1.7514839 0.64594531 -1.51905 1.7696773 
		0.71897727 -1.6490868 1.7841157 0.83272552 -1.7325755 1.7933856 0.97605741 -1.7613437 
		1.7965798 1.1349425 -1.8558195 1.7040757 1.3260825 -1.7553823 1.6929238 1.4985107 
		-1.5989476 1.6755544 1.6353515 -1.4018286 1.6536677 1.7232081 -1.1833205 1.6294061 
		1.7534815 -0.9648124 1.6051445 1.7232081 -0.76769346 1.5832578 1.6353515 -0.61125898 
		1.5658884 1.4985104 -0.51082182 1.5547366 1.3260825 -0.47621354 1.5508939 1.1349425 
		-0.51082182 1.5547366 0.94380349 -0.61125898 1.5658884 0.7713756 -0.76769352 1.5832578 
		0.63453519 -0.96481246 1.6051445 0.54667825 -1.1833205 1.6294061 0.51640433 -1.4018285 
		1.6536677 0.54667825 -1.5989474 1.6755544 0.63453519 -1.7553818 1.6929238 0.7713756 
		-1.855819 1.7040756 0.94380349 -1.8904272 1.7079183 1.1349425 -1.9641716 1.5955157 
		1.3536297 -1.8492593 1.5827568 1.550909 -1.6702788 1.562884 1.7074713 -1.4447504 
		1.5378429 1.8079909 -1.1947503 1.5100846 1.8426274 -0.94475019 1.4823264 1.8079909 
		-0.71922189 1.4572853 1.7074713 -0.5402416 1.4374126 1.5509087 -0.42532921 1.4246535 
		1.3536297 -0.38573325 1.4202571 1.1349425 -0.42532921 1.4246535 0.91625661 -0.54024166 
		1.4374126 0.71897727 -0.71922201 1.4572853 0.56241506 -0.94475025 1.4823264 0.46189544 
		-1.1947503 1.5100846 0.42725936 -1.4447503 1.5378429 0.46189544 -1.6702787 1.562884 
		0.56241506 -1.8492589 1.5827566 0.71897727 -1.9641713 1.5955157 0.91625661 -2.0037673 
		1.5999122 1.1349425 -2.0549645 1.470379 1.3757917 -1.9284064 1.4563268 1.5930656 
		-1.7312874 1.4344401 1.765494 -1.4829029 1.4068613 1.8762002 -1.2075665 1.3762898 
		1.9143475 -0.93223023 1.3457185 1.8762002 -0.68384588 1.3181396 1.765494 -0.48672691 
		1.2962528 1.5930653 -0.36016873 1.2822008 1.3757917 -0.31655988 1.2773588 1.1349425 
		-0.36016873 1.2822008 0.89409429 -0.48672691 1.2962528 0.67682111 -0.68384594 1.3181396 
		0.50439197 -0.93223035 1.3457185 0.39368609 -1.2075665 1.3762898 0.3555392 -1.4829026 
		1.4068613 0.39368609 -1.731287 1.4344401 0.50439197 -1.928406 1.4563268 0.67682111 
		-2.0549641 1.470379 0.89409429 -2.098573 1.4752209 1.1349425 -2.1259627 1.3317467 
		1.3920248 -1.9908749 1.3167474 1.6239411 -1.780471 1.2933856 1.8079909 -1.5153463 
		1.2639481 1.9261581 -1.2214535 1.2313163 1.966876 -0.92756081 1.1986846 1.9261581 
		-0.66243631 1.1692469 1.8079909 -0.45203242 1.1458852 1.6239411 -0.31694493 1.1308861 
		1.3920248 -0.2703968 1.1257176 1.1349425 -0.31694493 1.1308861 0.87786156 -0.45203248 
		1.1458852 0.64594531 -0.66243643 1.169247 0.46189544 -0.92756087 1.1986846 0.34372827 
		-1.2214535 1.2313163 0.30301115 -1.5153462 1.2639481 0.34372827 -1.7804706 1.2933856 
		0.46189544 -1.9908745 1.3167474 0.64594531 -2.125962 1.3317466 0.87786239 -2.1725101 
		1.336915 1.1349425 -2.1754174 1.1830323 1.4019266 -2.0351267 1.1674554 1.6427753 
		-1.8166183 1.1431938 1.8339144 -1.5412822 1.1126224 1.9566334 -1.2360694 1.0787337 
		1.9989194 -0.93085682 1.0448451 1.9566334;
	setAttr ".pt[166:320]" -0.65552062 1.0142736 1.8339144 -0.43701264 0.99001205 
		1.6427753 -0.29672179 0.97443515 1.4019266 -0.24838088 0.96906769 1.1349425 -0.29672179 
		0.97443515 0.8679589 -0.43701264 0.99001205 0.62711066 -0.65552074 1.0142736 0.43597156 
		-0.93085694 1.0448451 0.31325331 -1.2360694 1.0787337 0.27096701 -1.5412819 1.1126224 
		0.31325331 -1.8166181 1.1431937 0.43597156 -2.0351262 1.1674553 0.62711066 -2.1754169 
		1.1830323 0.86796016 -2.2237577 1.1883997 1.1349425 -2.2021115 1.0278981 1.4052547 
		-2.0600719 1.0121269 1.6491058 -1.83884 0.98756295 1.8426274 -1.5600715 0.95661044 
		1.966876 -1.2510544 0.92229933 2.0096891 -0.94203722 0.88798827 1.966876 -0.66326886 
		0.85703576 1.8426274 -0.44203722 0.83247179 1.6491058 -0.29999757 0.8167007 1.4052539 
		-0.25105411 0.81126636 1.1349425 -0.29999757 0.8167007 0.86463201 -0.44203728 0.83247179 
		0.62078059 -0.66326898 0.85703576 0.42725936 -0.94203728 0.88798827 0.30301115 -1.2510543 
		0.92229933 0.26019803 -1.5600712 0.95661038 0.30301115 -1.8388397 0.98756289 0.42725936 
		-2.0600712 1.0121269 0.62078059 -2.202111 1.027898 0.86463201 -2.2510543 1.0333323 
		1.1349425 -2.2053871 0.87016356 1.4019266 -2.0650964 0.85458666 1.6427753 -1.8465881 
		0.83032507 1.8339144 -1.5712519 0.79975367 1.9566334 -1.2660393 0.76586497 1.9989194 
		-0.96082658 0.73197633 1.9566334 -0.68549031 0.70140487 1.8339144 -0.46698239 0.67714334 
		1.6427753 -0.32669154 0.66156638 1.4019266 -0.27835062 0.65619898 1.1349425 -0.32669154 
		0.66156638 0.8679589 -0.46698239 0.67714334 0.62711066 -0.68549043 0.70140493 0.43597156 
		-0.96082664 0.73197633 0.31325331 -1.2660391 0.76586497 0.27096701 -1.5712516 0.79975361 
		0.31325331 -1.8465879 0.83032501 0.43597156 -2.0650959 0.8545866 0.62711066 -2.2053866 
		0.8701635 0.86796016 -2.2537277 0.87553096 1.1349425 -2.1851642 0.71371269 1.3920248 
		-2.0500765 0.69871348 1.6239411 -1.8396724 0.67535174 1.8079909 -1.5745479 0.64591414 
		1.9261581 -1.2806551 0.61328238 1.966876 -0.98676234 0.58065057 1.9261581 -0.7216379 
		0.55121303 1.8079909 -0.51123399 0.52785122 1.6239411 -0.37614647 0.51285207 1.3920248 
		-0.32959834 0.50768369 1.1349425 -0.37614647 0.51285207 0.87786156 -0.51123405 0.52785122 
		0.64594531 -0.72163802 0.55121303 0.46189544 -0.9867624 0.58065057 0.34372827 -1.2806551 
		0.61328238 0.30301115 -1.5745478 0.64591414 0.34372827 -1.8396721 0.67535168 0.46189544 
		-2.050076 0.69871348 0.64594531 -2.1851637 0.71371263 0.87786239 -2.2317116 0.71888101 
		1.1349425 -2.1419401 0.56239796 1.3757917 -2.0153821 0.5483458 1.5930656 -1.8182629 
		0.5264591 1.765494 -1.5698785 0.49888024 1.8762002 -1.2945422 0.46830884 1.9143475 
		-1.0192059 0.43773741 1.8762002 -0.77082151 0.41015854 1.765494 -0.57370257 0.38827184 
		1.5930653 -0.44714436 0.37421972 1.3757917 -0.40353552 0.3693777 1.1349425 -0.44714436 
		0.37421972 0.89409429 -0.57370257 0.38827184 0.67682111 -0.77082157 0.41015857 0.50439197 
		-1.0192059 0.43773744 0.39368609 -1.2945422 0.46830881 0.3555392 -1.5698782 0.49888021 
		0.39368609 -1.8182627 0.5264591 0.50439197 -2.0153816 0.54834574 0.67682111 -2.1419396 
		0.5623979 0.89409429 -2.1855488 0.56723994 1.1349425 -2.0767796 0.41994518 1.3536297 
		-1.9618673 0.40718612 1.550909 -1.7828869 0.3873134 1.7074713 -1.5573585 0.36227229 
		1.8079909 -1.3073584 0.33451405 1.8426274 -1.0573583 0.30675578 1.8079909 -0.83182997 
		0.28171471 1.7074713 -0.65284967 0.26184198 1.5509087 -0.53793728 0.24908292 1.3536297 
		-0.49834132 0.24468647 1.1349425 -0.53793728 0.24908292 0.91625661 -0.65284973 0.26184198 
		0.71897727 -0.83183008 0.28171471 0.56241506 -1.0573584 0.30675578 0.46189544 -1.3073584 
		0.33451402 0.42725936 -1.5573584 0.36227229 0.46189544 -1.7828867 0.38731337 0.56241506 
		-1.961867 0.40718606 0.71897727 -2.0767794 0.41994515 0.91625661 -2.1163754 0.42434159 
		1.1349425 -1.1552643 1.9222994 1.1349425 -1.8271866 0.31701225 1.4607835 -1.6869853 
		0.30144528 1.5834237 -1.5103213 0.28182974 1.6621639 -1.3144879 0.26008579 1.6892956 
		-1.1186545 0.23834181 1.6621639 -0.94199061 0.21872629 1.5834237 -0.8017894 0.20315935 
		1.460783 -0.71177477 0.19316475 1.3062484 -0.68075782 0.18972084 1.1349425 -0.71177477 
		0.19316475 0.9636392 -0.8017894 0.20315935 0.80910289 -0.94199067 0.21872631 0.68646264 
		-1.1186545 0.23834181 0.60772204 -1.3144878 0.26008579 0.58059067 -1.5103211 0.28182974 
		0.60772204 -1.686985 0.30144525 0.68646264 -1.8271862 0.31701219 0.80910289 -1.9172009 
		0.32700682 0.9636392 -1.9482179 0.33045071 1.1349425 -1.9172014 0.32700685 1.3062484 
		-1.9019365 -0.81145525 1.4607835 -1.7617352 -0.82702219 1.5834237 -1.5850712 -0.84663773 
		1.6621639 -1.3892378 -0.86838174 1.6892956 -1.1934044 -0.89012569 1.6621639 -1.0167406 
		-0.90974122 1.5834237 -0.87653935 -0.92530817 1.460783 -0.78652471 -0.93530273 1.3062484 
		-0.75550777 -0.93874663 1.1349425 -0.78652471 -0.93530273 0.9636392 -0.87653935 -0.92530817 
		0.80910289 -1.0167406 -0.90974122 0.68646264 -1.1934044 -0.89012569 0.60772204 -1.3892378 
		-0.86838174 0.58059067 -1.5850711 -0.84663773 0.60772204 -1.761735 -0.82702225 0.68646264 
		-1.9019362 -0.81145531 0.80910289 -1.9919509 -0.80146068 0.9636392 -2.0229678 -0.79801679 
		1.1349425 -1.9919512 -0.80146062 1.3062484;
	setAttr -s 321 ".vt";
	setAttr ".vt[0:165]"  0.14877813 -0.98768836 -0.048339844 0.12655823 -0.98768836 -0.09194994
		 0.091949932 -0.98768836 -0.12655735 0.048340935 -0.98768836 -0.14877748 0 -0.98768836 -0.15643406
		 -0.048340935 -0.98768836 -0.14877748 -0.091949917 -0.98768836 -0.12655735 -0.12655818 -0.98768836 -0.09194994
		 -0.14877805 -0.98768836 -0.048339844 -0.15643452 -0.98768836 9.5367432e-07 -0.14877805 -0.98768836 0.048341751
		 -0.12655818 -0.98768836 0.091950893 -0.09194988 -0.98768836 0.12655926 -0.048340924 -0.98768836 0.14877796
		 -4.6621107e-09 -0.98768836 0.15643454 0.048340902 -0.98768836 0.14877796 0.091949873 -0.98768836 0.12655926
		 0.12655815 -0.98768836 0.091950893 0.14877804 -0.98768836 0.048341751 0.15643448 -0.98768836 9.5367432e-07
		 0.29389283 -0.95105666 -0.095490932 0.25000015 -0.95105666 -0.1816349 0.18163574 -0.95105666 -0.25
		 0.095491551 -0.95105666 -0.29389286 0 -0.95105666 -0.30901718 -0.095491551 -0.95105666 -0.29389286
		 -0.18163571 -0.95105666 -0.25 -0.25000009 -0.95105666 -0.1816349 -0.29389271 -0.95105666 -0.095490932
		 -0.30901706 -0.95105666 9.5367432e-07 -0.29389271 -0.95105666 0.09549284 -0.25000006 -0.95105666 0.18163681
		 -0.18163568 -0.95105666 0.25000048 -0.095491514 -0.95105666 0.29389238 -9.2094226e-09 -0.95105666 0.30901718
		 0.095491499 -0.95105666 0.29389238 0.1816356 -0.95105666 0.25000048 0.25 -0.95105666 0.18163681
		 0.29389265 -0.95105666 0.095491409 0.30901694 -0.95105666 9.5367432e-07 0.43177092 -0.89100659 -0.14029074
		 0.36728629 -0.89100659 -0.26684904 0.2668491 -0.89100659 -0.36728573 0.14029086 -0.89100659 -0.4317708
		 0 -0.89100659 -0.45398998 -0.14029086 -0.89100659 -0.4317708 -0.26684904 -0.89100659 -0.36728573
		 -0.36728615 -0.89100659 -0.26684904 -0.43177077 -0.89100659 -0.14029074 -0.45399058 -0.89100659 9.5367432e-07
		 -0.43177077 -0.89100659 0.14029169 -0.36728612 -0.89100659 0.26684999 -0.26684898 -0.89100659 0.36728716
		 -0.14029081 -0.89100659 0.4317708 -1.3529971e-08 -0.89100659 0.45399094 0.14029078 -0.89100659 0.4317708
		 0.26684889 -0.89100659 0.36728716 0.36728606 -0.89100659 0.26684999 0.43177065 -0.89100659 0.14029169
		 0.45399049 -0.89100659 9.5367432e-07 0.55901736 -0.809017 -0.1816349 0.47552857 -0.809017 -0.34549141
		 0.34549171 -0.809017 -0.47552776 0.18163572 -0.809017 -0.55901718 0 -0.809017 -0.58778524
		 -0.18163572 -0.809017 -0.55901718 -0.34549165 -0.809017 -0.47552776 -0.47552839 -0.809017 -0.34549141
		 -0.55901712 -0.809017 -0.1816349 -0.58778536 -0.809017 9.5367432e-07 -0.55901712 -0.809017 0.18163681
		 -0.47552833 -0.809017 0.34549236 -0.34549156 -0.809017 0.47552824 -0.18163566 -0.809017 0.55901766
		 -1.7517365e-08 -0.809017 0.58778572 0.18163559 -0.809017 0.55901766 0.3454915 -0.809017 0.47552824
		 0.4755283 -0.809017 0.34549236 0.559017 -0.809017 0.18163681 0.58778524 -0.809017 9.5367432e-07
		 0.67249894 -0.70710677 -0.21850824 0.57206178 -0.70710677 -0.41562653 0.41562712 -0.70710677 -0.57206154
		 0.21850809 -0.70710677 -0.67249823 0 -0.70710677 -0.70710659 -0.21850809 -0.70710677 -0.67249823
		 -0.41562703 -0.70710677 -0.57206154 -0.57206154 -0.70710677 -0.41562605 -0.6724987 -0.70710677 -0.21850824
		 -0.70710695 -0.70710677 9.5367432e-07 -0.6724987 -0.70710677 0.2185092 -0.57206154 -0.70710677 0.415627
		 -0.415627 -0.70710677 0.57206154 -0.21850805 -0.70710677 0.6724987 -2.1073424e-08 -0.70710677 0.70710754
		 0.21850799 -0.70710677 0.6724987 0.41562691 -0.70710677 0.57206154 0.5720613 -0.70710677 0.415627
		 0.67249852 -0.70710677 0.2185092 0.70710677 -0.70710677 9.5367432e-07 0.76942128 -0.5877853 -0.25
		 0.65450895 -0.5877853 -0.47552776 0.47552851 -0.5877853 -0.65450811 0.25000012 -0.5877853 -0.7694211
		 0 -0.5877853 -0.80901718 -0.25000012 -0.5877853 -0.7694211 -0.47552845 -0.5877853 -0.65450811
		 -0.65450871 -0.5877853 -0.47552729 -0.7694211 -0.5877853 -0.25 -0.80901706 -0.5877853 9.5367432e-07
		 -0.7694211 -0.5877853 0.25000048 -0.65450865 -0.5877853 0.47552824 -0.47552833 -0.5877853 0.65450859
		 -0.25000006 -0.5877853 0.76942158 -2.4110584e-08 -0.5877853 0.80901718 0.24999997 -0.5877853 0.76942158
		 0.4755283 -0.5877853 0.65450859 0.65450853 -0.5877853 0.47552824 0.76942092 -0.5877853 0.25000048
		 0.80901694 -0.5877853 9.5367432e-07 0.84739798 -0.45399052 -0.27533531 0.72083986 -0.45399052 -0.52372074
		 0.5237208 -0.45399052 -0.72083902 0.2753363 -0.45399052 -0.84739733 0 -0.45399052 -0.89100695
		 -0.2753363 -0.45399052 -0.84739733 -0.52372068 -0.45399052 -0.72083902 -0.72083962 -0.45399052 -0.52372026
		 -0.8473978 -0.45399052 -0.27533531 -0.89100665 -0.45399052 9.5367432e-07 -0.8473978 -0.45399052 0.27533627
		 -0.72083962 -0.45399052 0.52372074 -0.52372062 -0.45399052 0.72083998 -0.27533621 -0.45399052 0.8473978
		 -2.6554064e-08 -0.45399052 0.89100695 0.27533609 -0.45399052 0.8473978 0.5237205 -0.45399052 0.72083998
		 0.72083944 -0.45399052 0.52372074 0.84739757 -0.45399052 0.27533627 0.89100653 -0.45399052 9.5367432e-07
		 0.90450913 -0.30901697 -0.29389286 0.76942128 -0.30901697 -0.55901718 0.55901736 -0.30901697 -0.7694211
		 0.29389277 -0.30901697 -0.90450859 0 -0.30901697 -0.95105696 -0.29389277 -0.30901697 -0.90450859
		 -0.55901724 -0.30901697 -0.7694211 -0.76942116 -0.30901697 -0.55901718 -0.90450865 -0.30901697 -0.29389286
		 -0.95105678 -0.30901697 9.5367432e-07 -0.90450865 -0.30901697 0.29389334 -0.7694211 -0.30901697 0.55901766
		 -0.55901712 -0.30901697 0.76942158 -0.29389271 -0.30901697 0.90450907 -2.8343695e-08 -0.30901697 0.95105648
		 0.29389262 -0.30901697 0.90450907 0.559017 -0.30901697 0.76942158 0.76942092 -0.30901697 0.55901766
		 0.90450853 -0.30901697 0.29389238 0.9510566 -0.30901697 9.5367432e-07 0.93934792 -0.15643437 -0.3052125
		 0.79905719 -0.15643437 -0.58054829 0.58054888 -0.15643437 -0.79905653 0.30521265 -0.15643437 -0.93934774
		 0 -0.15643437 -0.98768854 -0.30521265 -0.15643437 -0.93934774;
	setAttr ".vt[166:320]" -0.58054888 -0.15643437 -0.79905653 -0.79905683 -0.15643437 -0.58054829
		 -0.93934768 -0.15643437 -0.3052125 -0.9876886 -0.15643437 9.5367432e-07 -0.93934768 -0.15643437 0.30521393
		 -0.79905683 -0.15643437 0.58054924 -0.58054876 -0.15643437 0.79905748 -0.30521256 -0.15643437 0.93934774
		 -2.9435407e-08 -0.15643437 0.98768902 0.30521247 -0.15643437 0.93934774 0.58054864 -0.15643437 0.79905748
		 0.79905665 -0.15643437 0.58054924 0.93934751 -0.15643437 0.3052125 0.98768836 -0.15643437 9.5367432e-07
		 0.95105714 0 -0.30901718 0.80901754 0 -0.58778524 0.5877856 0 -0.80901718 0.30901715 0 -0.95105696
		 0 0 -1.000000476837 -0.30901715 0 -0.95105696 -0.58778548 0 -0.80901718 -0.80901712 0 -0.58778524
		 -0.95105678 0 -0.30901623 -1.000000238419 0 9.5367432e-07 -0.95105678 0 0.30901718
		 -0.80901706 0 0.58778572 -0.58778536 0 0.80901718 -0.30901706 0 0.95105648 -2.9802322e-08 0 1
		 0.30901691 0 0.95105648 0.58778524 0 0.80901718 0.80901694 0 0.58778572 0.9510566 0 0.30901718
		 1 0 9.5367432e-07 0.93934792 0.15643437 -0.3052125 0.79905719 0.15643437 -0.58054829
		 0.58054888 0.15643437 -0.79905653 0.30521265 0.15643437 -0.93934774 0 0.15643437 -0.98768854
		 -0.30521265 0.15643437 -0.93934774 -0.58054888 0.15643437 -0.79905653 -0.79905683 0.15643437 -0.58054829
		 -0.93934768 0.15643437 -0.3052125 -0.9876886 0.15643437 9.5367432e-07 -0.93934768 0.15643437 0.30521393
		 -0.79905683 0.15643437 0.58054924 -0.58054876 0.15643437 0.79905748 -0.30521256 0.15643437 0.93934774
		 -2.9435407e-08 0.15643437 0.98768902 0.30521247 0.15643437 0.93934774 0.58054864 0.15643437 0.79905748
		 0.79905665 0.15643437 0.58054924 0.93934751 0.15643437 0.3052125 0.98768836 0.15643437 9.5367432e-07
		 0.90450913 0.30901697 -0.29389286 0.76942128 0.30901697 -0.55901718 0.55901736 0.30901697 -0.7694211
		 0.29389277 0.30901697 -0.90450859 0 0.30901697 -0.95105696 -0.29389277 0.30901697 -0.90450859
		 -0.55901724 0.30901697 -0.7694211 -0.76942116 0.30901697 -0.55901718 -0.90450865 0.30901697 -0.29389286
		 -0.95105678 0.30901697 9.5367432e-07 -0.90450865 0.30901697 0.29389334 -0.7694211 0.30901697 0.55901766
		 -0.55901712 0.30901697 0.76942158 -0.29389271 0.30901697 0.90450907 -2.8343695e-08 0.30901697 0.95105648
		 0.29389262 0.30901697 0.90450907 0.559017 0.30901697 0.76942158 0.76942092 0.30901697 0.55901766
		 0.90450853 0.30901697 0.29389238 0.9510566 0.30901697 9.5367432e-07 0.84739798 0.45399052 -0.27533531
		 0.72083986 0.45399052 -0.52372074 0.5237208 0.45399052 -0.72083902 0.2753363 0.45399052 -0.84739733
		 0 0.45399052 -0.89100695 -0.2753363 0.45399052 -0.84739733 -0.52372068 0.45399052 -0.72083902
		 -0.72083962 0.45399052 -0.52372026 -0.8473978 0.45399052 -0.27533531 -0.89100665 0.45399052 9.5367432e-07
		 -0.8473978 0.45399052 0.27533627 -0.72083962 0.45399052 0.52372074 -0.52372062 0.45399052 0.72083998
		 -0.27533621 0.45399052 0.8473978 -2.6554064e-08 0.45399052 0.89100695 0.27533609 0.45399052 0.8473978
		 0.5237205 0.45399052 0.72083998 0.72083944 0.45399052 0.52372074 0.84739757 0.45399052 0.27533627
		 0.89100653 0.45399052 9.5367432e-07 0.76942128 0.5877853 -0.25 0.65450895 0.5877853 -0.47552776
		 0.47552851 0.5877853 -0.65450811 0.25000012 0.5877853 -0.7694211 0 0.5877853 -0.80901718
		 -0.25000012 0.5877853 -0.7694211 -0.47552845 0.5877853 -0.65450811 -0.65450871 0.5877853 -0.47552729
		 -0.7694211 0.5877853 -0.25 -0.80901706 0.5877853 9.5367432e-07 -0.7694211 0.5877853 0.25000048
		 -0.65450865 0.5877853 0.47552824 -0.47552833 0.5877853 0.65450859 -0.25000006 0.5877853 0.76942158
		 -2.4110584e-08 0.5877853 0.80901718 0.24999997 0.5877853 0.76942158 0.4755283 0.5877853 0.65450859
		 0.65450853 0.5877853 0.47552824 0.76942092 0.5877853 0.25000048 0.80901694 0.5877853 9.5367432e-07
		 0 -1 9.5367432e-07 0.51269871 0.66221356 -0.37249708 0.37249735 0.66221356 -0.51269817
		 0.19583341 0.66221356 -0.60271311 4.7560045e-09 0.66221356 -0.63372993 -0.19583341 0.66221356 -0.60271311
		 -0.37249729 0.66221356 -0.51269817 -0.51269847 0.66221356 -0.3724966 -0.60271311 0.66221356 -0.19583416
		 -0.63373005 0.66221356 9.5367432e-07 -0.60271311 0.66221356 0.19583321 -0.51269847 0.66221356 0.37249756
		 -0.37249723 0.66221356 0.51269865 -0.19583338 0.66221356 0.60271406 -1.4130621e-08 0.66221356 0.63373041
		 0.19583331 0.66221356 0.60271406 0.37249717 0.66221356 0.51269865 0.51269835 0.66221356 0.37249756
		 0.60271305 0.66221356 0.19583321 0.63372999 0.66221356 9.5367432e-07 0.60271347 0.66221356 -0.19583416
		 0.51269871 1.790681 -0.37249708 0.37249735 1.790681 -0.51269817 0.19583341 1.790681 -0.60271311
		 1.3899966e-08 1.790681 -0.63372993 -0.19583341 1.790681 -0.60271311 -0.37249729 1.790681 -0.51269817
		 -0.51269847 1.790681 -0.3724966 -0.60271311 1.790681 -0.19583416 -0.63373005 1.790681 9.5367432e-07
		 -0.60271311 1.790681 0.19583321 -0.51269847 1.790681 0.37249756 -0.37249723 1.790681 0.51269865
		 -0.19583338 1.790681 0.60271406 -4.9866595e-09 1.790681 0.63373041 0.19583331 1.790681 0.60271406
		 0.37249717 1.790681 0.51269865 0.51269835 1.790681 0.37249756 0.60271305 1.790681 0.19583321
		 0.63372999 1.790681 9.5367432e-07 0.60271347 1.790681 -0.19583416;
	setAttr -s 640 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 0 261 262 0
		 262 263 0 263 264 0 264 265 0 265 266 0 266 267 0 267 268 0 268 269 0 269 270 0 270 271 0
		 271 272 0 272 273 0 273 274 0 274 275 0 275 276 0 276 277 0 277 278 0 278 279 0 279 260 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1
		 23 43 1 24 44 1 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1
		 34 54 1 35 55 1 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1
		 45 65 1 46 66 1 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1;
	setAttr ".ed[332:497]" 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1 58 78 1
		 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1 69 89 1
		 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1 80 100 1
		 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1 89 109 1
		 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1 98 118 1
		 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1 107 127 1
		 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1 116 136 1
		 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1 124 144 1 125 145 1
		 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1 134 154 1
		 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1 143 163 1
		 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1 152 172 1
		 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1 161 181 1
		 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1 170 190 1
		 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1 179 199 1
		 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1 187 207 1 188 208 1
		 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1 196 216 1 197 217 1
		 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1 205 225 1 206 226 1
		 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1 214 234 1 215 235 1
		 216 236 1 217 237 1;
	setAttr ".ed[498:639]" 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1 223 243 1
		 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1 232 252 1
		 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1 241 261 1
		 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1 250 270 1
		 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1 259 279 1
		 280 0 1 280 1 1 280 2 1 280 3 1 280 4 1 280 5 1 280 6 1 280 7 1 280 8 1 280 9 1 280 10 1
		 280 11 1 280 12 1 280 13 1 280 14 1 280 15 1 280 16 1 280 17 1 280 18 1 280 19 1
		 261 281 1 262 282 1 281 282 0 263 283 1 282 283 0 264 284 1 283 284 0 265 285 1 284 285 0
		 266 286 1 285 286 0 267 287 1 286 287 0 268 288 1 287 288 0 269 289 1 288 289 0 270 290 1
		 289 290 0 271 291 1 290 291 0 272 292 1 291 292 0 273 293 1 292 293 0 274 294 1 293 294 0
		 275 295 1 294 295 0 276 296 1 295 296 0 277 297 1 296 297 0 278 298 1 297 298 0 279 299 1
		 298 299 0 260 300 1 299 300 0 300 281 0 281 301 1 282 302 1 301 302 0 283 303 1 302 303 0
		 284 304 1 303 304 0 285 305 1 304 305 0 286 306 1 305 306 0 287 307 1 306 307 0 288 308 1
		 307 308 0 289 309 1 308 309 0 290 310 1 309 310 0 291 311 1 310 311 0 292 312 1 311 312 0
		 293 313 1 312 313 0 294 314 1 313 314 0 295 315 1 314 315 0 296 316 1 315 316 0 297 317 1
		 316 317 0 298 318 1 317 318 0 299 319 1 318 319 0 300 320 1 319 320 0 320 301 0;
	setAttr -s 321 -ch 1280 ".fc[0:320]" -type "polyFaces" 
		f 4 0 281 -21 -281
		mu 0 4 0 1 22 21
		f 4 1 282 -22 -282
		mu 0 4 1 2 23 22
		f 4 2 283 -23 -283
		mu 0 4 2 3 24 23
		f 4 3 284 -24 -284
		mu 0 4 3 4 25 24
		f 4 4 285 -25 -285
		mu 0 4 4 5 26 25
		f 4 5 286 -26 -286
		mu 0 4 5 6 27 26
		f 4 6 287 -27 -287
		mu 0 4 6 7 28 27
		f 4 7 288 -28 -288
		mu 0 4 7 8 29 28
		f 4 8 289 -29 -289
		mu 0 4 8 9 30 29
		f 4 9 290 -30 -290
		mu 0 4 9 10 31 30
		f 4 10 291 -31 -291
		mu 0 4 10 11 32 31
		f 4 11 292 -32 -292
		mu 0 4 11 12 33 32
		f 4 12 293 -33 -293
		mu 0 4 12 13 34 33
		f 4 13 294 -34 -294
		mu 0 4 13 14 35 34
		f 4 14 295 -35 -295
		mu 0 4 14 15 36 35
		f 4 15 296 -36 -296
		mu 0 4 15 16 37 36
		f 4 16 297 -37 -297
		mu 0 4 16 17 38 37
		f 4 17 298 -38 -298
		mu 0 4 17 18 39 38
		f 4 18 299 -39 -299
		mu 0 4 18 19 40 39
		f 4 19 280 -40 -300
		mu 0 4 19 20 41 40
		f 4 20 301 -41 -301
		mu 0 4 21 22 43 42
		f 4 21 302 -42 -302
		mu 0 4 22 23 44 43
		f 4 22 303 -43 -303
		mu 0 4 23 24 45 44
		f 4 23 304 -44 -304
		mu 0 4 24 25 46 45
		f 4 24 305 -45 -305
		mu 0 4 25 26 47 46
		f 4 25 306 -46 -306
		mu 0 4 26 27 48 47
		f 4 26 307 -47 -307
		mu 0 4 27 28 49 48
		f 4 27 308 -48 -308
		mu 0 4 28 29 50 49
		f 4 28 309 -49 -309
		mu 0 4 29 30 51 50
		f 4 29 310 -50 -310
		mu 0 4 30 31 52 51
		f 4 30 311 -51 -311
		mu 0 4 31 32 53 52
		f 4 31 312 -52 -312
		mu 0 4 32 33 54 53
		f 4 32 313 -53 -313
		mu 0 4 33 34 55 54
		f 4 33 314 -54 -314
		mu 0 4 34 35 56 55
		f 4 34 315 -55 -315
		mu 0 4 35 36 57 56
		f 4 35 316 -56 -316
		mu 0 4 36 37 58 57
		f 4 36 317 -57 -317
		mu 0 4 37 38 59 58
		f 4 37 318 -58 -318
		mu 0 4 38 39 60 59
		f 4 38 319 -59 -319
		mu 0 4 39 40 61 60
		f 4 39 300 -60 -320
		mu 0 4 40 41 62 61
		f 4 40 321 -61 -321
		mu 0 4 42 43 64 63
		f 4 41 322 -62 -322
		mu 0 4 43 44 65 64
		f 4 42 323 -63 -323
		mu 0 4 44 45 66 65
		f 4 43 324 -64 -324
		mu 0 4 45 46 67 66
		f 4 44 325 -65 -325
		mu 0 4 46 47 68 67
		f 4 45 326 -66 -326
		mu 0 4 47 48 69 68
		f 4 46 327 -67 -327
		mu 0 4 48 49 70 69
		f 4 47 328 -68 -328
		mu 0 4 49 50 71 70
		f 4 48 329 -69 -329
		mu 0 4 50 51 72 71
		f 4 49 330 -70 -330
		mu 0 4 51 52 73 72
		f 4 50 331 -71 -331
		mu 0 4 52 53 74 73
		f 4 51 332 -72 -332
		mu 0 4 53 54 75 74
		f 4 52 333 -73 -333
		mu 0 4 54 55 76 75
		f 4 53 334 -74 -334
		mu 0 4 55 56 77 76
		f 4 54 335 -75 -335
		mu 0 4 56 57 78 77
		f 4 55 336 -76 -336
		mu 0 4 57 58 79 78
		f 4 56 337 -77 -337
		mu 0 4 58 59 80 79
		f 4 57 338 -78 -338
		mu 0 4 59 60 81 80
		f 4 58 339 -79 -339
		mu 0 4 60 61 82 81
		f 4 59 320 -80 -340
		mu 0 4 61 62 83 82
		f 4 60 341 -81 -341
		mu 0 4 63 64 85 84
		f 4 61 342 -82 -342
		mu 0 4 64 65 86 85
		f 4 62 343 -83 -343
		mu 0 4 65 66 87 86
		f 4 63 344 -84 -344
		mu 0 4 66 67 88 87
		f 4 64 345 -85 -345
		mu 0 4 67 68 89 88
		f 4 65 346 -86 -346
		mu 0 4 68 69 90 89
		f 4 66 347 -87 -347
		mu 0 4 69 70 91 90
		f 4 67 348 -88 -348
		mu 0 4 70 71 92 91
		f 4 68 349 -89 -349
		mu 0 4 71 72 93 92
		f 4 69 350 -90 -350
		mu 0 4 72 73 94 93
		f 4 70 351 -91 -351
		mu 0 4 73 74 95 94
		f 4 71 352 -92 -352
		mu 0 4 74 75 96 95
		f 4 72 353 -93 -353
		mu 0 4 75 76 97 96
		f 4 73 354 -94 -354
		mu 0 4 76 77 98 97
		f 4 74 355 -95 -355
		mu 0 4 77 78 99 98
		f 4 75 356 -96 -356
		mu 0 4 78 79 100 99
		f 4 76 357 -97 -357
		mu 0 4 79 80 101 100
		f 4 77 358 -98 -358
		mu 0 4 80 81 102 101
		f 4 78 359 -99 -359
		mu 0 4 81 82 103 102
		f 4 79 340 -100 -360
		mu 0 4 82 83 104 103
		f 4 80 361 -101 -361
		mu 0 4 84 85 106 105
		f 4 81 362 -102 -362
		mu 0 4 85 86 107 106
		f 4 82 363 -103 -363
		mu 0 4 86 87 108 107
		f 4 83 364 -104 -364
		mu 0 4 87 88 109 108
		f 4 84 365 -105 -365
		mu 0 4 88 89 110 109
		f 4 85 366 -106 -366
		mu 0 4 89 90 111 110
		f 4 86 367 -107 -367
		mu 0 4 90 91 112 111
		f 4 87 368 -108 -368
		mu 0 4 91 92 113 112
		f 4 88 369 -109 -369
		mu 0 4 92 93 114 113
		f 4 89 370 -110 -370
		mu 0 4 93 94 115 114
		f 4 90 371 -111 -371
		mu 0 4 94 95 116 115
		f 4 91 372 -112 -372
		mu 0 4 95 96 117 116
		f 4 92 373 -113 -373
		mu 0 4 96 97 118 117
		f 4 93 374 -114 -374
		mu 0 4 97 98 119 118
		f 4 94 375 -115 -375
		mu 0 4 98 99 120 119
		f 4 95 376 -116 -376
		mu 0 4 99 100 121 120
		f 4 96 377 -117 -377
		mu 0 4 100 101 122 121
		f 4 97 378 -118 -378
		mu 0 4 101 102 123 122
		f 4 98 379 -119 -379
		mu 0 4 102 103 124 123
		f 4 99 360 -120 -380
		mu 0 4 103 104 125 124
		f 4 100 381 -121 -381
		mu 0 4 105 106 127 126
		f 4 101 382 -122 -382
		mu 0 4 106 107 128 127
		f 4 102 383 -123 -383
		mu 0 4 107 108 129 128
		f 4 103 384 -124 -384
		mu 0 4 108 109 130 129
		f 4 104 385 -125 -385
		mu 0 4 109 110 131 130
		f 4 105 386 -126 -386
		mu 0 4 110 111 132 131
		f 4 106 387 -127 -387
		mu 0 4 111 112 133 132
		f 4 107 388 -128 -388
		mu 0 4 112 113 134 133
		f 4 108 389 -129 -389
		mu 0 4 113 114 135 134
		f 4 109 390 -130 -390
		mu 0 4 114 115 136 135
		f 4 110 391 -131 -391
		mu 0 4 115 116 137 136
		f 4 111 392 -132 -392
		mu 0 4 116 117 138 137
		f 4 112 393 -133 -393
		mu 0 4 117 118 139 138
		f 4 113 394 -134 -394
		mu 0 4 118 119 140 139
		f 4 114 395 -135 -395
		mu 0 4 119 120 141 140
		f 4 115 396 -136 -396
		mu 0 4 120 121 142 141
		f 4 116 397 -137 -397
		mu 0 4 121 122 143 142
		f 4 117 398 -138 -398
		mu 0 4 122 123 144 143
		f 4 118 399 -139 -399
		mu 0 4 123 124 145 144
		f 4 119 380 -140 -400
		mu 0 4 124 125 146 145
		f 4 120 401 -141 -401
		mu 0 4 126 127 148 147
		f 4 121 402 -142 -402
		mu 0 4 127 128 149 148
		f 4 122 403 -143 -403
		mu 0 4 128 129 150 149
		f 4 123 404 -144 -404
		mu 0 4 129 130 151 150
		f 4 124 405 -145 -405
		mu 0 4 130 131 152 151
		f 4 125 406 -146 -406
		mu 0 4 131 132 153 152
		f 4 126 407 -147 -407
		mu 0 4 132 133 154 153
		f 4 127 408 -148 -408
		mu 0 4 133 134 155 154
		f 4 128 409 -149 -409
		mu 0 4 134 135 156 155
		f 4 129 410 -150 -410
		mu 0 4 135 136 157 156
		f 4 130 411 -151 -411
		mu 0 4 136 137 158 157
		f 4 131 412 -152 -412
		mu 0 4 137 138 159 158
		f 4 132 413 -153 -413
		mu 0 4 138 139 160 159
		f 4 133 414 -154 -414
		mu 0 4 139 140 161 160
		f 4 134 415 -155 -415
		mu 0 4 140 141 162 161
		f 4 135 416 -156 -416
		mu 0 4 141 142 163 162
		f 4 136 417 -157 -417
		mu 0 4 142 143 164 163
		f 4 137 418 -158 -418
		mu 0 4 143 144 165 164
		f 4 138 419 -159 -419
		mu 0 4 144 145 166 165
		f 4 139 400 -160 -420
		mu 0 4 145 146 167 166
		f 4 140 421 -161 -421
		mu 0 4 147 148 169 168
		f 4 141 422 -162 -422
		mu 0 4 148 149 170 169
		f 4 142 423 -163 -423
		mu 0 4 149 150 171 170
		f 4 143 424 -164 -424
		mu 0 4 150 151 172 171
		f 4 144 425 -165 -425
		mu 0 4 151 152 173 172
		f 4 145 426 -166 -426
		mu 0 4 152 153 174 173
		f 4 146 427 -167 -427
		mu 0 4 153 154 175 174
		f 4 147 428 -168 -428
		mu 0 4 154 155 176 175
		f 4 148 429 -169 -429
		mu 0 4 155 156 177 176
		f 4 149 430 -170 -430
		mu 0 4 156 157 178 177
		f 4 150 431 -171 -431
		mu 0 4 157 158 179 178
		f 4 151 432 -172 -432
		mu 0 4 158 159 180 179
		f 4 152 433 -173 -433
		mu 0 4 159 160 181 180
		f 4 153 434 -174 -434
		mu 0 4 160 161 182 181
		f 4 154 435 -175 -435
		mu 0 4 161 162 183 182
		f 4 155 436 -176 -436
		mu 0 4 162 163 184 183
		f 4 156 437 -177 -437
		mu 0 4 163 164 185 184
		f 4 157 438 -178 -438
		mu 0 4 164 165 186 185
		f 4 158 439 -179 -439
		mu 0 4 165 166 187 186
		f 4 159 420 -180 -440
		mu 0 4 166 167 188 187
		f 4 160 441 -181 -441
		mu 0 4 168 169 190 189
		f 4 161 442 -182 -442
		mu 0 4 169 170 191 190
		f 4 162 443 -183 -443
		mu 0 4 170 171 192 191
		f 4 163 444 -184 -444
		mu 0 4 171 172 193 192
		f 4 164 445 -185 -445
		mu 0 4 172 173 194 193
		f 4 165 446 -186 -446
		mu 0 4 173 174 195 194
		f 4 166 447 -187 -447
		mu 0 4 174 175 196 195
		f 4 167 448 -188 -448
		mu 0 4 175 176 197 196
		f 4 168 449 -189 -449
		mu 0 4 176 177 198 197
		f 4 169 450 -190 -450
		mu 0 4 177 178 199 198
		f 4 170 451 -191 -451
		mu 0 4 178 179 200 199
		f 4 171 452 -192 -452
		mu 0 4 179 180 201 200
		f 4 172 453 -193 -453
		mu 0 4 180 181 202 201
		f 4 173 454 -194 -454
		mu 0 4 181 182 203 202
		f 4 174 455 -195 -455
		mu 0 4 182 183 204 203
		f 4 175 456 -196 -456
		mu 0 4 183 184 205 204
		f 4 176 457 -197 -457
		mu 0 4 184 185 206 205
		f 4 177 458 -198 -458
		mu 0 4 185 186 207 206
		f 4 178 459 -199 -459
		mu 0 4 186 187 208 207
		f 4 179 440 -200 -460
		mu 0 4 187 188 209 208
		f 4 180 461 -201 -461
		mu 0 4 189 190 211 210
		f 4 181 462 -202 -462
		mu 0 4 190 191 212 211
		f 4 182 463 -203 -463
		mu 0 4 191 192 213 212
		f 4 183 464 -204 -464
		mu 0 4 192 193 214 213
		f 4 184 465 -205 -465
		mu 0 4 193 194 215 214
		f 4 185 466 -206 -466
		mu 0 4 194 195 216 215
		f 4 186 467 -207 -467
		mu 0 4 195 196 217 216
		f 4 187 468 -208 -468
		mu 0 4 196 197 218 217
		f 4 188 469 -209 -469
		mu 0 4 197 198 219 218
		f 4 189 470 -210 -470
		mu 0 4 198 199 220 219
		f 4 190 471 -211 -471
		mu 0 4 199 200 221 220
		f 4 191 472 -212 -472
		mu 0 4 200 201 222 221
		f 4 192 473 -213 -473
		mu 0 4 201 202 223 222
		f 4 193 474 -214 -474
		mu 0 4 202 203 224 223
		f 4 194 475 -215 -475
		mu 0 4 203 204 225 224
		f 4 195 476 -216 -476
		mu 0 4 204 205 226 225
		f 4 196 477 -217 -477
		mu 0 4 205 206 227 226
		f 4 197 478 -218 -478
		mu 0 4 206 207 228 227
		f 4 198 479 -219 -479
		mu 0 4 207 208 229 228
		f 4 199 460 -220 -480
		mu 0 4 208 209 230 229
		f 4 200 481 -221 -481
		mu 0 4 210 211 232 231
		f 4 201 482 -222 -482
		mu 0 4 211 212 233 232
		f 4 202 483 -223 -483
		mu 0 4 212 213 234 233
		f 4 203 484 -224 -484
		mu 0 4 213 214 235 234
		f 4 204 485 -225 -485
		mu 0 4 214 215 236 235
		f 4 205 486 -226 -486
		mu 0 4 215 216 237 236
		f 4 206 487 -227 -487
		mu 0 4 216 217 238 237
		f 4 207 488 -228 -488
		mu 0 4 217 218 239 238
		f 4 208 489 -229 -489
		mu 0 4 218 219 240 239
		f 4 209 490 -230 -490
		mu 0 4 219 220 241 240
		f 4 210 491 -231 -491
		mu 0 4 220 221 242 241
		f 4 211 492 -232 -492
		mu 0 4 221 222 243 242
		f 4 212 493 -233 -493
		mu 0 4 222 223 244 243
		f 4 213 494 -234 -494
		mu 0 4 223 224 245 244
		f 4 214 495 -235 -495
		mu 0 4 224 225 246 245
		f 4 215 496 -236 -496
		mu 0 4 225 226 247 246
		f 4 216 497 -237 -497
		mu 0 4 226 227 248 247
		f 4 217 498 -238 -498
		mu 0 4 227 228 249 248
		f 4 218 499 -239 -499
		mu 0 4 228 229 250 249
		f 4 219 480 -240 -500
		mu 0 4 229 230 251 250
		f 4 220 501 -241 -501
		mu 0 4 231 232 253 252
		f 4 221 502 -242 -502
		mu 0 4 232 233 254 253
		f 4 222 503 -243 -503
		mu 0 4 233 234 255 254
		f 4 223 504 -244 -504
		mu 0 4 234 235 256 255
		f 4 224 505 -245 -505
		mu 0 4 235 236 257 256
		f 4 225 506 -246 -506
		mu 0 4 236 237 258 257
		f 4 226 507 -247 -507
		mu 0 4 237 238 259 258
		f 4 227 508 -248 -508
		mu 0 4 238 239 260 259
		f 4 228 509 -249 -509
		mu 0 4 239 240 261 260
		f 4 229 510 -250 -510
		mu 0 4 240 241 262 261
		f 4 230 511 -251 -511
		mu 0 4 241 242 263 262
		f 4 231 512 -252 -512
		mu 0 4 242 243 264 263
		f 4 232 513 -253 -513
		mu 0 4 243 244 265 264
		f 4 233 514 -254 -514
		mu 0 4 244 245 266 265
		f 4 234 515 -255 -515
		mu 0 4 245 246 267 266
		f 4 235 516 -256 -516
		mu 0 4 246 247 268 267
		f 4 236 517 -257 -517
		mu 0 4 247 248 269 268
		f 4 237 518 -258 -518
		mu 0 4 248 249 270 269
		f 4 238 519 -259 -519
		mu 0 4 249 250 271 270
		f 4 239 500 -260 -520
		mu 0 4 250 251 272 271
		f 4 240 521 -261 -521
		mu 0 4 252 253 274 273
		f 4 241 522 -262 -522
		mu 0 4 253 254 275 274
		f 4 242 523 -263 -523
		mu 0 4 254 255 276 275
		f 4 243 524 -264 -524
		mu 0 4 255 256 277 276
		f 4 244 525 -265 -525
		mu 0 4 256 257 278 277
		f 4 245 526 -266 -526
		mu 0 4 257 258 279 278
		f 4 246 527 -267 -527
		mu 0 4 258 259 280 279
		f 4 247 528 -268 -528
		mu 0 4 259 260 281 280
		f 4 248 529 -269 -529
		mu 0 4 260 261 282 281
		f 4 249 530 -270 -530
		mu 0 4 261 262 283 282
		f 4 250 531 -271 -531
		mu 0 4 262 263 284 283
		f 4 251 532 -272 -532
		mu 0 4 263 264 285 284
		f 4 252 533 -273 -533
		mu 0 4 264 265 286 285
		f 4 253 534 -274 -534
		mu 0 4 265 266 287 286
		f 4 254 535 -275 -535
		mu 0 4 266 267 288 287
		f 4 255 536 -276 -536
		mu 0 4 267 268 289 288
		f 4 256 537 -277 -537
		mu 0 4 268 269 290 289
		f 4 257 538 -278 -538
		mu 0 4 269 270 291 290
		f 4 258 539 -279 -539
		mu 0 4 270 271 292 291
		f 4 259 520 -280 -540
		mu 0 4 271 272 293 292
		f 3 -1 -541 541
		mu 0 3 1 0 294
		f 3 -2 -542 542
		mu 0 3 2 1 295
		f 3 -3 -543 543
		mu 0 3 3 2 296
		f 3 -4 -544 544
		mu 0 3 4 3 297
		f 3 -5 -545 545
		mu 0 3 5 4 298
		f 3 -6 -546 546
		mu 0 3 6 5 299
		f 3 -7 -547 547
		mu 0 3 7 6 300
		f 3 -8 -548 548
		mu 0 3 8 7 301
		f 3 -9 -549 549
		mu 0 3 9 8 302
		f 3 -10 -550 550
		mu 0 3 10 9 303
		f 3 -11 -551 551
		mu 0 3 11 10 304
		f 3 -12 -552 552
		mu 0 3 12 11 305
		f 3 -13 -553 553
		mu 0 3 13 12 306
		f 3 -14 -554 554
		mu 0 3 14 13 307
		f 3 -15 -555 555
		mu 0 3 15 14 308
		f 3 -16 -556 556
		mu 0 3 16 15 309
		f 3 -17 -557 557
		mu 0 3 17 16 310
		f 3 -18 -558 558
		mu 0 3 18 17 311
		f 3 -19 -559 559
		mu 0 3 19 18 312
		f 3 -20 -560 540
		mu 0 3 20 19 313
		f 20 602 604 606 608 610 612 614 616 618 620 622 624 626 628 630 632 634 636 638 639
		mu 0 20 334 335 336 337 338 339 340 341 342 343 344 345 346 347 348 349 350 351 352 353
		f 4 261 561 -563 -561
		mu 0 4 274 275 315 314
		f 4 262 563 -565 -562
		mu 0 4 275 276 316 315
		f 4 263 565 -567 -564
		mu 0 4 276 277 317 316
		f 4 264 567 -569 -566
		mu 0 4 277 278 318 317
		f 4 265 569 -571 -568
		mu 0 4 278 279 319 318
		f 4 266 571 -573 -570
		mu 0 4 279 280 320 319
		f 4 267 573 -575 -572
		mu 0 4 280 281 321 320
		f 4 268 575 -577 -574
		mu 0 4 281 282 322 321
		f 4 269 577 -579 -576
		mu 0 4 282 283 323 322
		f 4 270 579 -581 -578
		mu 0 4 283 284 324 323
		f 4 271 581 -583 -580
		mu 0 4 284 285 325 324
		f 4 272 583 -585 -582
		mu 0 4 285 286 326 325
		f 4 273 585 -587 -584
		mu 0 4 286 287 327 326
		f 4 274 587 -589 -586
		mu 0 4 287 288 328 327
		f 4 275 589 -591 -588
		mu 0 4 288 289 329 328
		f 4 276 591 -593 -590
		mu 0 4 289 290 330 329
		f 4 277 593 -595 -592
		mu 0 4 290 291 331 330
		f 4 278 595 -597 -594
		mu 0 4 291 292 332 331
		f 4 279 597 -599 -596
		mu 0 4 292 273 333 332
		f 4 260 560 -600 -598
		mu 0 4 273 274 314 333
		f 4 562 601 -603 -601
		mu 0 4 314 315 335 334
		f 4 564 603 -605 -602
		mu 0 4 315 316 336 335
		f 4 566 605 -607 -604
		mu 0 4 316 317 337 336
		f 4 568 607 -609 -606
		mu 0 4 317 318 338 337
		f 4 570 609 -611 -608
		mu 0 4 318 319 339 338
		f 4 572 611 -613 -610
		mu 0 4 319 320 340 339
		f 4 574 613 -615 -612
		mu 0 4 320 321 341 340
		f 4 576 615 -617 -614
		mu 0 4 321 322 342 341
		f 4 578 617 -619 -616
		mu 0 4 322 323 343 342
		f 4 580 619 -621 -618
		mu 0 4 323 324 344 343
		f 4 582 621 -623 -620
		mu 0 4 324 325 345 344
		f 4 584 623 -625 -622
		mu 0 4 325 326 346 345
		f 4 586 625 -627 -624
		mu 0 4 326 327 347 346
		f 4 588 627 -629 -626
		mu 0 4 327 328 348 347
		f 4 590 629 -631 -628
		mu 0 4 328 329 349 348
		f 4 592 631 -633 -630
		mu 0 4 329 330 350 349
		f 4 594 633 -635 -632
		mu 0 4 330 331 351 350
		f 4 596 635 -637 -634
		mu 0 4 331 332 352 351
		f 4 598 637 -639 -636
		mu 0 4 332 333 353 352
		f 4 599 600 -640 -638
		mu 0 4 333 314 334 353;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Cabnets_counter";
	rename -uid "D74E1BF6-4F27-2581-FAEE-67AA88E12746";
createNode transform -n "pCube11" -p "Cabnets_counter";
	rename -uid "7941E68A-4091-CA2B-6B9C-E8A0F4C19BA2";
	setAttr ".rp" -type "double3" -1.5541917316330101 1.4067192694956494 0.69699214998663606 ;
	setAttr ".sp" -type "double3" -1.5541917316330141 1.4067192694956485 0.69699214998662851 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "7C636672-4217-F541-22D4-9199274BC82E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[5]" "f[7]" "f[10]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[2]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0:1]" "f[3]" "f[8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[4]" "f[6]" "f[9]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.37000459 -1.3969839e-09
		 0.61321914 6.519258e-09 0.38678089 0.01249876 0.375 0.25499541 0.625 1 0.61321914
		 0.99500459 0.625 0.73750126 0.38678089 0.23750128 0.375 0.75499541 0.38678092 0.73750126
		 0.61321902 0.75499541 0.625 0.012498751 0.61321902 0.25499538 0.61321914 0.49500456
		 0.37499997 0.49500456 0.38678089 0.51249874 0.625 0.51249874 0.375 0.99500453 0.875
		 0.012498781 0.875 0.23750128 0.625 0.23750128 0.12999542 -9.3132257e-09 0.37000456
		 0.25 0.12999547 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -1.080326 0.35877296 0.34558064 
		-1.0608568 0.32360479 0.34054869 -1.4438252 0.35877296 0.34558064 -1.454537 0.32360479 
		0.34054869 -1.080326 0.99186611 0.34558064 -1.0608568 1.0270344 0.34054869 -1.454537 
		1.0270344 0.34054869 -1.4438252 0.99186611 0.34558064 -1.0608568 1.0270344 0.098785207 
		-1.080326 0.99186611 0.093753278 -1.454537 1.0270344 0.098785207 -1.4438252 0.99186611 
		0.093753278 -1.080326 0.35877296 0.093753278 -1.0608568 0.32360479 0.098785207 -1.454537 
		0.32360479 0.098785207 -1.4438252 0.35877296 0.093753278;
	setAttr -s 16 ".vt[0:15]"  -0.47386587 0.053854704 0.38282114 -0.5 0.036707461 0.35644335
		 0.054587424 0.053854704 0.38282114 0.02845329 0.036707461 0.35644335 -0.47386587 0.36253738 0.38282114
		 -0.5 0.37968469 0.35644335 0.02845329 0.37968469 0.35644335 0.054587424 0.36253738 0.38282114
		 -0.5 0.37968469 -0.91089606 -0.47386587 0.36253738 -0.93727374 0.02845329 0.37968469 -0.91089606
		 0.054587424 0.36253738 -0.93727374 -0.47386587 0.053854704 -0.93727374 -0.5 0.036707461 -0.91089606
		 0.02845329 0.036707461 -0.91089606 0.054587424 0.053854704 -0.93727374;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 3 0 3 2 0 2 0 0 0 4 0 4 5 0 5 1 0
		 3 14 0 14 15 0 15 2 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 9 0 9 12 0 12 13 0
		 13 8 0 8 10 0 11 9 0 12 15 0 14 13 0 2 7 0 8 5 0 11 15 0 1 13 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 2 0 1 11
		f 4 -1 4 5 6
		mu 0 4 0 2 7 3
		f 4 -3 7 8 9
		mu 0 4 4 5 10 6
		f 4 -6 10 11 12
		mu 0 4 3 7 20 12
		f 4 -12 13 14 15
		mu 0 4 12 20 16 13
		f 4 16 17 18 19
		mu 0 4 14 15 9 8
		f 4 -17 20 -15 21
		mu 0 4 15 14 13 16
		f 4 -19 22 -9 23
		mu 0 4 8 9 6 10
		f 4 -4 24 -11 -5
		mu 0 4 2 11 20 7
		f 4 -13 -16 -21 25
		mu 0 4 3 12 13 14
		f 4 -22 26 -23 -18
		mu 0 4 15 16 6 9
		f 4 -24 -8 -2 27
		mu 0 4 8 10 5 17
		f 4 -10 -27 -14 -25
		mu 0 4 11 18 19 20
		f 4 -28 -7 -26 -20
		mu 0 4 21 0 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube11";
	rename -uid "3EB31BBB-4C88-7C1F-C16E-DFB316CDD405";
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
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.53670746 -0.11717887 
		-0.44541258 0.53670746 -0.11717887 0 -0.12031553 -0.11717887 -0.44541258 -0.12031553 
		-0.11717887 0 -0.12031553 -0.43727377 -0.44541258 -0.12031553 -0.43727377 0 0.53670746 
		-0.43727377 -0.44541258 0.53670746 -0.43727377;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
createNode transform -n "pCube10" -p "Cabnets_counter";
	rename -uid "285ED05A-4AD6-728E-8130-6DA7E1F52919";
	setAttr ".rp" -type "double3" -1.9837112426757812 4.643266573804393 0.69699214998663606 ;
	setAttr ".sp" -type "double3" -1.9837112426757852 4.6432665738043921 0.69699214998662851 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "C77B2910-4D7C-956F-7200-34B79A42A558";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[5]" "f[7]" "f[10]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[2]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0:1]" "f[3]" "f[8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[4]" "f[6]" "f[9]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.37000459 -1.3969839e-09
		 0.61321914 6.519258e-09 0.38678089 0.01249876 0.375 0.25499541 0.625 1 0.61321914
		 0.99500459 0.625 0.73750126 0.38678089 0.23750128 0.375 0.75499541 0.38678092 0.73750126
		 0.61321902 0.75499541 0.625 0.012498751 0.61321902 0.25499538 0.61321914 0.49500456
		 0.37499997 0.49500456 0.38678089 0.51249874 0.625 0.51249874 0.375 0.99500453 0.875
		 0.012498781 0.875 0.23750128 0.625 0.23750128 0.12999542 -9.3132257e-09 0.37000456
		 0.25 0.12999547 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -1.5098454 3.5953202 0.34558064 
		-1.4903764 3.5601521 0.34054869 -1.8733447 3.5953202 0.34558064 -1.8840566 3.5601521 
		0.34054869 -1.5098454 4.2284136 0.34558064 -1.4903764 4.2635818 0.34054869 -1.8840566 
		4.2635818 0.34054869 -1.8733447 4.2284136 0.34558064 -1.4903764 4.2635818 0.098785207 
		-1.5098454 4.2284136 0.093753278 -1.8840566 4.2635818 0.098785207 -1.8733447 4.2284136 
		0.093753278 -1.5098454 3.5953202 0.093753278 -1.4903764 3.5601521 0.098785207 -1.8840566 
		3.5601521 0.098785207 -1.8733447 3.5953202 0.093753278;
	setAttr -s 16 ".vt[0:15]"  -0.47386587 0.053854704 0.38282114 -0.5 0.036707461 0.35644335
		 0.054587424 0.053854704 0.38282114 0.02845329 0.036707461 0.35644335 -0.47386587 0.36253738 0.38282114
		 -0.5 0.37968469 0.35644335 0.02845329 0.37968469 0.35644335 0.054587424 0.36253738 0.38282114
		 -0.5 0.37968469 -0.91089606 -0.47386587 0.36253738 -0.93727374 0.02845329 0.37968469 -0.91089606
		 0.054587424 0.36253738 -0.93727374 -0.47386587 0.053854704 -0.93727374 -0.5 0.036707461 -0.91089606
		 0.02845329 0.036707461 -0.91089606 0.054587424 0.053854704 -0.93727374;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 3 0 3 2 0 2 0 0 0 4 0 4 5 0 5 1 0
		 3 14 0 14 15 0 15 2 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 9 0 9 12 0 12 13 0
		 13 8 0 8 10 0 11 9 0 12 15 0 14 13 0 2 7 0 8 5 0 11 15 0 1 13 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 2 0 1 11
		f 4 -1 4 5 6
		mu 0 4 0 2 7 3
		f 4 -3 7 8 9
		mu 0 4 4 5 10 6
		f 4 -6 10 11 12
		mu 0 4 3 7 20 12
		f 4 -12 13 14 15
		mu 0 4 12 20 16 13
		f 4 16 17 18 19
		mu 0 4 14 15 9 8
		f 4 -17 20 -15 21
		mu 0 4 15 14 13 16
		f 4 -19 22 -9 23
		mu 0 4 8 9 6 10
		f 4 -4 24 -11 -5
		mu 0 4 2 11 20 7
		f 4 -13 -16 -21 25
		mu 0 4 3 12 13 14
		f 4 -22 26 -23 -18
		mu 0 4 15 16 6 9
		f 4 -24 -8 -2 27
		mu 0 4 8 10 5 17
		f 4 -10 -27 -14 -25
		mu 0 4 11 18 19 20
		f 4 -28 -7 -26 -20
		mu 0 4 21 0 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube10";
	rename -uid "FD2BB27D-4272-056E-9E0D-5ABC1472B2F1";
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
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.53670746 -0.11717887 
		-0.44541258 0.53670746 -0.11717887 0 -0.12031553 -0.11717887 -0.44541258 -0.12031553 
		-0.11717887 0 -0.12031553 -0.43727377 -0.44541258 -0.12031553 -0.43727377 0 0.53670746 
		-0.43727377 -0.44541258 0.53670746 -0.43727377;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
createNode transform -n "pCube12" -p "Cabnets_counter";
	rename -uid "3582A32B-49F6-6D15-DAFB-5FAF9C5037D6";
	setAttr ".rp" -type "double3" -1.5541917316330101 1.4067192694956494 2.5093652780441933 ;
	setAttr ".sp" -type "double3" -1.5541917316330141 1.4067192694956485 2.5093652780441857 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	rename -uid "3545ED49-4530-2EF7-9D1F-18B7653FAD17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[5]" "f[7]" "f[10]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[2]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0:1]" "f[3]" "f[8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[4]" "f[6]" "f[9]";
	setAttr ".pv" -type "double2" 0.75 0.12500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.37000459 -1.3969839e-09
		 0.61321914 6.519258e-09 0.38678089 0.01249876 0.375 0.25499541 0.625 1 0.61321914
		 0.99500459 0.625 0.73750126 0.38678089 0.23750128 0.375 0.75499541 0.38678092 0.73750126
		 0.61321902 0.75499541 0.625 0.012498751 0.61321902 0.25499538 0.61321914 0.49500456
		 0.37499997 0.49500456 0.38678089 0.51249874 0.625 0.51249874 0.375 0.99500453 0.875
		 0.012498781 0.875 0.23750128 0.625 0.23750128 0.12999542 -9.3132257e-09 0.37000456
		 0.25 0.12999547 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -1.080326 0.35877296 2.1579537 
		-1.0608568 0.32360479 2.1529219 -1.4438252 0.35877296 2.1579537 -1.454537 0.32360479 
		2.1529219 -1.080326 0.99186611 2.1579537 -1.0608568 1.0270344 2.1529219 -1.454537 
		1.0270344 2.1529219 -1.4438252 0.99186611 2.1579537 -1.0608568 1.0270344 1.9111583 
		-1.080326 0.99186611 1.9061264 -1.454537 1.0270344 1.9111583 -1.4438252 0.99186611 
		1.9061264 -1.080326 0.35877296 1.9061264 -1.0608568 0.32360479 1.9111583 -1.454537 
		0.32360479 1.9111583 -1.4438252 0.35877296 1.9061264;
	setAttr -s 16 ".vt[0:15]"  -0.47386587 0.053854704 0.38282114 -0.5 0.036707461 0.35644335
		 0.054587424 0.053854704 0.38282114 0.02845329 0.036707461 0.35644335 -0.47386587 0.36253738 0.38282114
		 -0.5 0.37968469 0.35644335 0.02845329 0.37968469 0.35644335 0.054587424 0.36253738 0.38282114
		 -0.5 0.37968469 -0.91089606 -0.47386587 0.36253738 -0.93727374 0.02845329 0.37968469 -0.91089606
		 0.054587424 0.36253738 -0.93727374 -0.47386587 0.053854704 -0.93727374 -0.5 0.036707461 -0.91089606
		 0.02845329 0.036707461 -0.91089606 0.054587424 0.053854704 -0.93727374;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 3 0 3 2 0 2 0 0 0 4 0 4 5 0 5 1 0
		 3 14 0 14 15 0 15 2 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 9 0 9 12 0 12 13 0
		 13 8 0 8 10 0 11 9 0 12 15 0 14 13 0 2 7 0 8 5 0 11 15 0 1 13 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 2 0 1 11
		f 4 -1 4 5 6
		mu 0 4 0 2 7 3
		f 4 -3 7 8 9
		mu 0 4 4 5 10 6
		f 4 -6 10 11 12
		mu 0 4 3 7 20 12
		f 4 -12 13 14 15
		mu 0 4 12 20 16 13
		f 4 16 17 18 19
		mu 0 4 14 15 9 8
		f 4 -17 20 -15 21
		mu 0 4 15 14 13 16
		f 4 -19 22 -9 23
		mu 0 4 8 9 6 10
		f 4 -4 24 -11 -5
		mu 0 4 2 11 20 7
		f 4 -13 -16 -21 25
		mu 0 4 3 12 13 14
		f 4 -22 26 -23 -18
		mu 0 4 15 16 6 9
		f 4 -24 -8 -2 27
		mu 0 4 8 10 5 17
		f 4 -10 -27 -14 -25
		mu 0 4 11 18 19 20
		f 4 -28 -7 -26 -20
		mu 0 4 21 0 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube12";
	rename -uid "C1F1729D-484B-E5B4-5EC9-57933B7C3F11";
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
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.53670746 -0.11717887 
		-0.44541258 0.53670746 -0.11717887 0 -0.12031553 -0.11717887 -0.44541258 -0.12031553 
		-0.11717887 0 -0.12031553 -0.43727377 -0.44541258 -0.12031553 -0.43727377 0 0.53670746 
		-0.43727377 -0.44541258 0.53670746 -0.43727377;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
createNode transform -n "pCube9" -p "Cabnets_counter";
	rename -uid "A0D34026-4BDC-6EA9-7887-EDB119DC6A9C";
	setAttr ".rp" -type "double3" -1.9837112426757812 4.643266573804393 2.5093652780441933 ;
	setAttr ".sp" -type "double3" -1.9837112426757852 4.6432665738043921 2.5093652780441857 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "03BAEA06-422F-5BCC-F904-8E9E835A563E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[5]" "f[7]" "f[10]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[2]" "f[11]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0:1]" "f[3]" "f[8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[4]" "f[6]" "f[9]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.37000459 -1.3969839e-09
		 0.61321914 6.519258e-09 0.38678089 0.01249876 0.375 0.25499541 0.625 1 0.61321914
		 0.99500459 0.625 0.73750126 0.38678089 0.23750128 0.375 0.75499541 0.38678092 0.73750126
		 0.61321902 0.75499541 0.625 0.012498751 0.61321902 0.25499538 0.61321914 0.49500456
		 0.37499997 0.49500456 0.38678089 0.51249874 0.625 0.51249874 0.375 0.99500453 0.875
		 0.012498781 0.875 0.23750128 0.625 0.23750128 0.12999542 -9.3132257e-09 0.37000456
		 0.25 0.12999547 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  -1.5098454 3.5953202 2.1579537 
		-1.4903764 3.5601521 2.1529219 -1.8733447 3.5953202 2.1579537 -1.8840566 3.5601521 
		2.1529219 -1.5098454 4.2284136 2.1579537 -1.4903764 4.2635818 2.1529219 -1.8840566 
		4.2635818 2.1529219 -1.8733447 4.2284136 2.1579537 -1.4903764 4.2635818 1.9111583 
		-1.5098454 4.2284136 1.9061264 -1.8840566 4.2635818 1.9111583 -1.8733447 4.2284136 
		1.9061264 -1.5098454 3.5953202 1.9061264 -1.4903764 3.5601521 1.9111583 -1.8840566 
		3.5601521 1.9111583 -1.8733447 3.5953202 1.9061264;
	setAttr -s 16 ".vt[0:15]"  -0.47386587 0.053854704 0.38282114 -0.5 0.036707461 0.35644335
		 0.054587424 0.053854704 0.38282114 0.02845329 0.036707461 0.35644335 -0.47386587 0.36253738 0.38282114
		 -0.5 0.37968469 0.35644335 0.02845329 0.37968469 0.35644335 0.054587424 0.36253738 0.38282114
		 -0.5 0.37968469 -0.91089606 -0.47386587 0.36253738 -0.93727374 0.02845329 0.37968469 -0.91089606
		 0.054587424 0.36253738 -0.93727374 -0.47386587 0.053854704 -0.93727374 -0.5 0.036707461 -0.91089606
		 0.02845329 0.036707461 -0.91089606 0.054587424 0.053854704 -0.93727374;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 3 0 3 2 0 2 0 0 0 4 0 4 5 0 5 1 0
		 3 14 0 14 15 0 15 2 0 4 7 0 7 6 0 6 5 0 7 11 0 11 10 0 10 6 0 8 9 0 9 12 0 12 13 0
		 13 8 0 8 10 0 11 9 0 12 15 0 14 13 0 2 7 0 8 5 0 11 15 0 1 13 0;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 2 0 1 11
		f 4 -1 4 5 6
		mu 0 4 0 2 7 3
		f 4 -3 7 8 9
		mu 0 4 4 5 10 6
		f 4 -6 10 11 12
		mu 0 4 3 7 20 12
		f 4 -12 13 14 15
		mu 0 4 12 20 16 13
		f 4 16 17 18 19
		mu 0 4 14 15 9 8
		f 4 -17 20 -15 21
		mu 0 4 15 14 13 16
		f 4 -19 22 -9 23
		mu 0 4 8 9 6 10
		f 4 -4 24 -11 -5
		mu 0 4 2 11 20 7
		f 4 -13 -16 -21 25
		mu 0 4 3 12 13 14
		f 4 -22 26 -23 -18
		mu 0 4 15 16 6 9
		f 4 -24 -8 -2 27
		mu 0 4 8 10 5 17
		f 4 -10 -27 -14 -25
		mu 0 4 11 18 19 20
		f 4 -28 -7 -26 -20
		mu 0 4 21 0 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "pCube9";
	rename -uid "677E5B04-4E9D-B1B4-D318-D89C13A782BE";
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
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.53670746 -0.11717887 
		-0.44541258 0.53670746 -0.11717887 0 -0.12031553 -0.11717887 -0.44541258 -0.12031553 
		-0.11717887 0 -0.12031553 -0.43727377 -0.44541258 -0.12031553 -0.43727377 0 0.53670746 
		-0.43727377 -0.44541258 0.53670746 -0.43727377;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
createNode transform -n "pCube3" -p "Cabnets_counter";
	rename -uid "1A21D334-4B0F-79B6-AC7D-F4A94F2116CA";
	setAttr ".rp" -type "double3" -2.133449783907543 3.2379397297945633 1.6244654307348982 ;
	setAttr ".sp" -type "double3" -2.133449783907543 3.2379397297945633 1.6244654307348982 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "C8F32317-4943-F29E-8821-3AAE27BD42BF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[5]" "f[7]" "f[10]" "f[18:19]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[2]" "f[11]" "f[17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "f[0:1]" "f[3]" "f[8]" "f[14:16]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[4]" "f[6]" "f[9]" "f[20:21]";
	setAttr ".pv" -type "double2" 0.49410955607891083 0.37499997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.37000459 -1.3969839e-09
		 0.61321914 6.519258e-09 0.38678089 0.01249876 0.375 0.25499541 0.625 1 0.61321914
		 0.99500459 0.625 0.73750126 0.38678089 0.23750128 0.375 0.75499541 0.38678092 0.73750126
		 0.61321902 0.75499541 0.625 0.012498751 0.61321902 0.25499538 0.61321914 0.49500456
		 0.37499997 0.49500456 0.38678089 0.51249874 0.625 0.51249874 0.375 0.99500453 0.875
		 0.012498781 0.875 0.23750128 0.625 0.23750128 0.12999542 -9.3132257e-09 0.37000456
		 0.25 0.12999547 0.25 0.6199615 0.24498315 0.38174245 0.24498317 0.37960601 0.007153294
		 0.61996162 0.0071532922 0.61996162 0.99786353 0.6199615 0.7449832 0.38174248 0.7449832
		 0.38174242 0.5050168 0.61996162 0.5050168;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -2.9594438 3.4092393 2.2820592 
		-3.0049982 3.3546979 2.2367485 -2.0382986 3.4092393 2.2820592 -2.083853 3.3546979 
		2.2367485 -2.9594438 4.3910894 2.2820592 -3.0049982 4.4687161 2.2367485 -2.083853 
		4.4687161 2.2367485 -2.0382986 4.3910894 2.2820592 -3.0049982 4.4687161 0.059767231 
		-2.9594438 4.3910894 0.014456789 -2.083853 4.4687161 0.059767231 -2.0382986 4.3910894 
		0.014456789 -2.9594438 3.4092393 0.014456789 -3.0049982 3.3546979 0.059767231 -2.083853 
		3.3546979 0.059767231 -2.0382986 3.4092393 0.014456789 -2.0553548 4.4417238 2.2685831 
		-2.9813528 4.4417238 2.2685831 -2.9813528 3.4132214 2.2685831 -2.0553548 3.4132214 
		2.2685831 -2.0553548 3.4132214 0.027932677 -2.9813528 3.4132214 0.027932677 -2.9813528 
		4.4417238 0.027932677 -2.0553548 4.4417238 0.027932677;
	setAttr -s 24 ".vt[0:23]"  -0.47386587 0.053854704 0.38282114 -0.5 0.036707461 0.35644335
		 0.054587424 0.053854704 0.38282114 0.02845329 0.036707461 0.35644335 -0.47386587 0.36253738 0.38282114
		 -0.5 0.37968469 0.35644335 0.02845329 0.37968469 0.35644335 0.054587424 0.36253738 0.38282114
		 -0.5 0.37968469 -0.91089606 -0.47386587 0.36253738 -0.93727374 0.02845329 0.37968469 -0.91089606
		 0.054587424 0.36253738 -0.93727374 -0.47386587 0.053854704 -0.93727374 -0.5 0.036707461 -0.91089606
		 0.02845329 0.036707461 -0.91089606 0.054587424 0.053854704 -0.93727374 0.043410387 0.36987096 0.37153989
		 -0.4850429 0.36987096 0.37153989 -0.4850429 0.046521179 0.37153989 0.043410387 0.046521179 0.37153989
		 0.043410387 0.046521179 -0.92599255 -0.4850429 0.046521179 -0.92599255 -0.4850429 0.36987096 -0.92599255
		 0.043410387 0.36987096 -0.92599255;
	setAttr -s 44 ".ed[0:43]"  0 18 0 1 3 0 3 19 0 2 0 0 0 4 0 4 17 0 5 1 0
		 3 14 0 14 20 0 15 2 0 4 7 0 7 16 0 6 5 0 7 11 0 11 23 0 10 6 0 8 22 0 9 12 0 12 21 0
		 13 8 0 8 10 0 11 9 0 12 15 0 14 13 0 2 7 0 8 5 0 11 15 0 1 13 0 16 6 0 17 5 0 16 17 1
		 18 1 0 17 18 1 19 2 0 18 19 1 20 15 0 19 20 1 21 13 0 20 21 1 22 9 0 21 22 1 23 10 0
		 22 23 1 23 16 1;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 0 34 33 3
		mu 0 4 2 26 27 11
		f 4 -1 4 5 32
		mu 0 4 26 2 7 25
		f 4 -34 36 35 9
		mu 0 4 4 28 29 6
		f 4 -6 10 11 30
		mu 0 4 25 7 20 24
		f 4 43 -12 13 14
		mu 0 4 32 24 20 16
		f 4 39 17 18 40
		mu 0 4 31 15 9 30
		f 4 -40 42 -15 21
		mu 0 4 15 31 32 16
		f 4 -19 22 -36 38
		mu 0 4 30 9 6 29
		f 4 -4 24 -11 -5
		mu 0 4 2 11 20 7
		f 4 -13 -16 -21 25
		mu 0 4 3 12 13 14
		f 4 -22 26 -23 -18
		mu 0 4 15 16 6 9
		f 4 -24 -8 -2 27
		mu 0 4 8 10 5 17
		f 4 -10 -27 -14 -25
		mu 0 4 11 18 19 20
		f 4 -28 -7 -26 -20
		mu 0 4 21 0 22 23
		f 4 -30 -31 28 12
		mu 0 4 3 25 24 12
		f 4 -32 -33 29 6
		mu 0 4 0 26 25 3
		f 4 -35 31 1 2
		mu 0 4 27 26 0 1
		f 4 -37 -3 7 8
		mu 0 4 29 28 5 10
		f 4 -38 -39 -9 23
		mu 0 4 8 30 29 10
		f 4 16 -41 37 19
		mu 0 4 14 31 30 8
		f 4 -43 -17 20 -42
		mu 0 4 32 31 14 13
		f 4 -29 -44 41 15
		mu 0 4 12 24 32 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2" -p "Cabnets_counter";
	rename -uid "817FBCD0-4D37-9A1E-D3F0-B7B4A0727AE5";
	setAttr ".rp" -type "double3" -1.5929098984534007 0 1.6244654307348982 ;
	setAttr ".sp" -type "double3" -1.5929098984534007 0 1.6244654307348982 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "1FA7B8A4-4CD9-D912-AAEA-64A42E2508EC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[5:40]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[5:40]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 51 ".uvst[0].uvsp[0:50]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25
		 0.625 0.25 0.625 0.5 0.625 0.25041556 0.375 0.5 0.625 0.49929592 0.375 0.5 0.375
		 0.25335699 0.38303846 0.25 0.625 0.25 0.625 0.5 0.625 0.25 0.38303846 0.5 0.38303849
		 0.5 0.625 0.5 0.375 0.5 0.6201092 0.25 0.625 0.25 0.61825013 0.5 0.625 0.5 0.375
		 0.49664298 0.37500006 0.5 0.375 0.25335765 0.375 0.25 0.38303846 0.25 0.37627125
		 0.2520858 0.37914658 0.25095993 0.62522471 0.24999949 0.62530285 0.24978398 0.62521726
		 0.49981555 0.62529075 0.50012702 0.37918654 0.4999871 0.376295 0.49998626 0.37916595
		 0.25094774 0.3762776 0.25208235 0.62396973 0.24967434 0.62225217 0.24974786 0.62347007
		 0.50032377 0.62112743 0.50025004 0.37913901 0.49906388 0.37625563 0.49793044;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".pt[0:43]" -type "float3"  -2.4644585 0.11675814 2.2973349 
		-1.5404357 0.11675814 2.2973349 -2.4644585 1.2076906 2.2973349 -1.5404357 1.2076906 
		2.2973349 -2.4644585 1.2076906 0.014456789 -1.5404357 1.2076906 0.014456789 -2.4644585 
		0.11675814 0.014456789 -1.5404357 0.11675814 0.014456789 -2.3324959 1.3679169 1.9392371 
		-1.6049665 1.3679169 1.9392371 -1.6049665 1.3679169 1.043226 -2.3324959 1.3679169 
		1.043226 -2.4644585 1.2076906 2.3654864 -2.4599767 1.2130567 2.3821237 -2.4477322 
		1.2277169 2.3943026 -2.4310057 1.2477431 2.3987606 -1.4575118 1.2076906 2.3654864 
		-1.4407853 1.2130567 2.3821237 -1.4285406 1.2277169 2.3943026 -1.4240587 1.2477431 
		2.3987606 -1.4575118 1.2076906 -0.045952767 -1.4407853 1.2130567 -0.062589929 -1.4285406 
		1.2277169 -0.074768983 -1.4240587 1.2477431 -0.07922668 -2.4310057 1.2477431 -0.07922668 
		-2.4477322 1.2277169 -0.074768983 -2.4599767 1.2130567 -0.062589929 -2.4644585 1.2076906 
		-0.045952767 -2.4310057 1.3278643 2.3987606 -2.4477322 1.3478907 2.3943026 -2.4599767 
		1.3625509 2.3821237 -2.4644585 1.3679169 2.3654864 -1.4240587 1.3278643 2.3987606 
		-1.4285406 1.3478907 2.3943026 -1.4407853 1.3625509 2.3821237 -1.4575118 1.3679169 
		2.3654864 -1.4240587 1.3278643 -0.07922668 -1.4285406 1.3478907 -0.074768983 -1.4407853 
		1.3625509 -0.062589929 -1.4575118 1.3679169 -0.045952767 -2.4310057 1.3278643 -0.07922668 
		-2.4477322 1.3478907 -0.074768983 -2.4599767 1.3625509 -0.062589929 -2.4644585 1.3679169 
		-0.045952767;
	setAttr -s 44 ".vt[0:43]"  -0.50000012 0.036707461 0.39171392 0.030104041 0.036707461 0.39171392
		 -0.50000012 0.37968448 0.39171392 0.030104041 0.37968448 0.39171392 -0.50000012 0.37968448 -0.93727374
		 0.030104041 0.37968448 -0.93727374 -0.50000012 0.036707461 -0.93727374 0.030104041 0.036707461 -0.93727374
		 -0.42429423 0.43005788 0.18324578 -0.0069167614 0.43005788 0.18324578 -0.0069167614 0.43005788 -0.33837113
		 -0.42429423 0.43005788 -0.33837113 -0.50000012 0.37968448 0.43138868 -0.49742889 0.38137153 0.44107419
		 -0.49040437 0.38598055 0.44816417 -0.4808085 0.39227656 0.45075935 0.077676773 0.37968448 0.43138868
		 0.087272614 0.38137153 0.44107419 0.09429729 0.38598055 0.44816417 0.096868515 0.39227656 0.45075935
		 0.077676773 0.37968448 -0.97244143 0.087272614 0.38137153 -0.98212683 0.09429729 0.38598055 -0.98921692
		 0.096868515 0.39227656 -0.99181199 -0.4808085 0.39227656 -0.99181199 -0.49040437 0.38598055 -0.98921692
		 -0.49742889 0.38137153 -0.98212683 -0.50000012 0.37968448 -0.97244143 -0.4808085 0.41746578 0.45075935
		 -0.49040437 0.42376187 0.44816417 -0.49742889 0.42837083 0.44107419 -0.50000012 0.43005788 0.43138868
		 0.096868515 0.41746578 0.45075935 0.09429729 0.42376187 0.44816417 0.087272614 0.42837083 0.44107419
		 0.077676773 0.43005788 0.43138868 0.096868515 0.41746578 -0.99181199 0.09429729 0.42376187 -0.98921692
		 0.087272614 0.42837083 -0.98212683 0.077676773 0.43005788 -0.97244143 -0.4808085 0.41746578 -0.99181199
		 -0.49040437 0.42376187 -0.98921692 -0.49742889 0.42837083 -0.98212683 -0.50000012 0.43005788 -0.97244143;
	setAttr -s 84 ".ed[0:83]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 9 10 0 11 10 0 8 11 0 31 12 1 15 28 1 15 14 1
		 19 15 1 14 13 0 13 12 0 12 16 1 19 18 0 23 19 1 18 17 0 17 16 1 16 20 1 23 22 0 22 25 0
		 25 24 1 24 23 1 22 21 0 21 26 1 26 25 0 21 20 1 20 27 1 27 26 0 41 40 1 40 24 1 42 41 0
		 27 43 1 43 42 0 31 30 0 35 31 1 30 29 0 29 28 1 28 32 1 35 34 1 39 35 1 34 33 0 33 32 0
		 32 36 1 39 38 1 43 39 1 38 37 0 37 36 0 36 40 1 3 16 1 12 2 0 5 20 1 4 27 0 12 27 0
		 19 32 0 23 36 0 31 43 0 35 9 1 8 31 1 39 10 1 43 11 1 14 18 1 13 17 0 18 22 0 17 21 1
		 26 42 1 25 41 0 13 30 1 14 29 1 30 34 0 29 33 1 34 38 1 33 37 0 38 42 1 37 41 0;
	setAttr -s 41 -ch 164 ".fc[0:40]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 11 2
		f 4 2 9 -4 -9
		mu 0 4 14 12 4 3
		f 4 3 11 -1 -11
		mu 0 4 3 4 6 5
		f 4 -12 -10 -8 -6
		mu 0 4 1 7 8 11
		f 4 10 4 6 8
		mu 0 4 9 0 2 10
		f 4 28 29 30 31
		mu 0 4 20 40 41 22
		f 4 32 33 34 -30
		mu 0 4 40 39 42 41
		f 4 35 36 37 -34
		mu 0 4 39 15 25 42
		f 4 1 58 -23 59
		mu 0 4 2 11 13 17
		f 4 7 60 -28 -59
		mu 0 4 11 12 15 13
		f 4 -3 61 -37 -61
		mu 0 4 12 14 25 15
		f 4 -7 -60 62 -62
		mu 0 4 14 16 17 25
		f 4 -20 63 -48 -18
		mu 0 4 18 19 21 34
		f 4 -25 64 -53 -64
		mu 0 4 19 20 24 21
		f 4 -32 -40 -58 -65
		mu 0 4 20 22 23 24
		f 4 -63 -17 65 -42
		mu 0 4 25 17 32 30
		f 4 -45 66 -13 67
		mu 0 4 32 26 27 33
		f 4 -50 68 -14 -67
		mu 0 4 26 28 29 27
		f 4 -55 69 14 -69
		mu 0 4 28 30 31 29
		f 4 -66 -68 15 -70
		mu 0 4 30 32 33 31
		f 4 18 70 -24 19
		mu 0 4 18 36 38 19
		f 4 20 71 -26 -71
		mu 0 4 36 35 37 38
		f 4 21 22 -27 -72
		mu 0 4 35 17 13 37
		f 4 23 72 -29 24
		mu 0 4 19 38 40 20
		f 4 25 73 -33 -73
		mu 0 4 38 37 39 40
		f 4 26 27 -36 -74
		mu 0 4 37 13 15 39
		f 4 -38 41 42 -75
		mu 0 4 42 25 30 50
		f 4 -31 75 38 39
		mu 0 4 22 41 49 23
		f 4 -35 74 40 -76
		mu 0 4 41 42 50 49
		f 4 -22 76 -44 16
		mu 0 4 17 35 44 32
		f 4 -21 77 -46 -77
		mu 0 4 35 36 43 44
		f 4 -19 17 -47 -78
		mu 0 4 36 18 34 43
		f 4 43 78 -49 44
		mu 0 4 32 44 46 26
		f 4 45 79 -51 -79
		mu 0 4 44 43 45 46
		f 4 46 47 -52 -80
		mu 0 4 43 34 21 45
		f 4 48 80 -54 49
		mu 0 4 26 46 48 28
		f 4 50 81 -56 -81
		mu 0 4 46 45 47 48
		f 4 51 52 -57 -82
		mu 0 4 45 21 24 47
		f 4 53 82 -43 54
		mu 0 4 28 48 50 30
		f 4 55 83 -41 -83
		mu 0 4 48 47 49 50
		f 4 56 57 -39 -84
		mu 0 4 47 24 23 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Table_Whiteboxes";
	rename -uid "A8EACF61-412E-BA79-9F29-1EAB0621E674";
	setAttr ".t" -type "double3" 0.26185620890912897 0 -0.91616575373019793 ;
createNode transform -n "Tableleg_one_whitebox" -p "Table_Whiteboxes";
	rename -uid "E3A80FEB-4E11-F972-BFC6-BC89E5A08C96";
	setAttr ".rp" -type "double3" 1.25 0 2.25 ;
	setAttr ".sp" -type "double3" 1.25 0 2.25 ;
createNode mesh -n "Tableleg_one_whiteboxShape" -p "Tableleg_one_whitebox";
	rename -uid "32F57A20-4AE3-A914-15ED-C486E35AC0F0";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.521443 0.62748325 1.8213893 
		0.77495271 0.62748325 1.8213893 1.521443 0.60570341 1.8213893 0.77495271 0.60570341 
		1.8213893 1.521443 0.60570341 2.5752151 0.77495271 0.60570341 2.5752151 1.521443 
		0.62748325 2.5752151 0.77495271 0.62748325 2.5752151;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
createNode transform -n "Tabletoop_whitebox" -p "Table_Whiteboxes";
	rename -uid "69028D07-4AB5-27D1-7FE0-B38E46834DEC";
	setAttr ".rp" -type "double3" 0.60725589041497785 1.2286074218925132 1.0670554001862338 ;
	setAttr ".sp" -type "double3" 0.60725589041497785 1.2286074218925132 1.0670554001862338 ;
createNode mesh -n "Tabletoop_whiteboxShape" -p "Tabletoop_whitebox";
	rename -uid "357FFE1E-4CD0-8883-88FF-1F8586BAE57D";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.34661239 1.6057034 1.8941915 
		0.86789936 1.6057034 1.8941915 0.34661239 0.85151142 1.8941915 0.86789936 0.85151142 
		1.8941915 0.34661239 0.85151142 0.23991916 0.86789936 0.85151142 0.23991916 0.34661239 
		1.6057034 0.23991916 0.86789936 1.6057034 0.23991916;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
createNode transform -n "Tableleg_three_whitebox" -p "Table_Whiteboxes";
	rename -uid "52F3874A-4480-2190-D60E-DAA3AB8C2AA0";
	setAttr ".rp" -type "double3" 0.25 0 2.25 ;
	setAttr ".sp" -type "double3" 0.25 0 2.25 ;
createNode mesh -n "Tableleg_three_whiteboxShape" -p "Tableleg_three_whitebox";
	rename -uid "7E2336C3-4CF0-F246-8EC3-8F96F8D10196";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.52144301 0.62748325 1.8213893 
		-0.22504734 0.62748325 1.8213893 0.52144301 0.60570341 1.8213893 -0.22504734 0.60570341 
		1.8213893 0.52144301 0.60570341 2.5752151 -0.22504734 0.60570341 2.5752151 0.52144301 
		0.62748325 2.5752151 -0.22504734 0.62748325 2.5752151;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
createNode transform -n "Tableleg_four_whitebox" -p "Table_Whiteboxes";
	rename -uid "BEE7A93E-4537-F579-CE36-F2B521C7987B";
	setAttr ".rp" -type "double3" 1.25 0 0 ;
	setAttr ".sp" -type "double3" 1.25 0 0 ;
createNode mesh -n "Tableleg_four_whiteboxShape" -p "Tableleg_four_whitebox";
	rename -uid "58C10544-4CDC-E163-765A-B4B9BB9EF051";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.521443 0.62748325 -0.42861068 
		0.77495271 0.62748325 -0.42861068 1.521443 0.60570341 -0.42861068 0.77495271 0.60570341 
		-0.42861068 1.521443 0.60570341 0.32521507 0.77495271 0.60570341 0.32521507 1.521443 
		0.62748325 0.32521507 0.77495271 0.62748325 0.32521507;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
createNode transform -n "Tableleg_two_whitebox" -p "Table_Whiteboxes";
	rename -uid "B42B0513-4912-C150-D490-0A849EF6C2F1";
	setAttr ".rp" -type "double3" 0.25 0 0 ;
	setAttr ".sp" -type "double3" 0.25 0 0 ;
createNode mesh -n "Tableleg_two_whiteboxShape" -p "Tableleg_two_whitebox";
	rename -uid "137FC9AE-456F-7FBC-C074-1CAF849EE5BD";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.52144301 0.62748325 -0.42861068 
		-0.22504734 0.62748325 -0.42861068 0.52144301 0.60570341 -0.42861068 -0.22504734 
		0.60570341 -0.42861068 0.52144301 0.60570341 0.32521507 -0.22504734 0.60570341 0.32521507 
		0.52144301 0.62748325 0.32521507 -0.22504734 0.62748325 0.32521507;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
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
createNode transform -n "frige";
	rename -uid "18DA995F-43AA-A9DD-0E15-6ABEA1430F89";
createNode transform -n "frige_door" -p "frige";
	rename -uid "1CF00FB2-4C32-C9B8-2CCF-6B8D352280E9";
	setAttr ".t" -type "double3" -0.82402441560368411 0 -13.516940894212329 ;
	setAttr ".rp" -type "double3" -0.28372894372602686 2.2036077645944934 11.506750646721075 ;
	setAttr ".sp" -type "double3" -0.28372894372602686 2.2036077645944934 11.506750646721075 ;
createNode mesh -n "frige_doorShape" -p "frige_door";
	rename -uid "85A9762E-4826-1079-E021-7DB393B739C9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 5 "f[11:12]" "f[15]" "f[21:22]" "f[32:33]" "f[52:53]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[27]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 6 "f[1:2]" "f[13]" "f[18:20]" "f[40:41]" "f[44:45]" "f[48:49]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 13 "f[3:4]" "f[7:10]" "f[26]" "f[30:31]" "f[34:35]" "f[38:39]" "f[42:43]" "f[46:47]" "f[50:51]" "f[54:55]" "f[58:59]" "f[62:63]" "f[66:67]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 9 "f[5:6]" "f[14]" "f[16:17]" "f[23:25]" "f[28:29]" "f[36:37]" "f[56:57]" "f[60:61]" "f[64:65]";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 110 ".uvst[0].uvsp[0:109]" -type "float2" 0.125 0.2283624 0.125
		 0 0.32500499 0.25 0.17499509 0.25 0.35070518 0.25 0.16309561 0.24484996 0.15184683
		 0.23998156 0.1417395 0.23560716 0.13291979 0.23179004 0.65462422 -1.7858469e-09 0.66862398
		 0.23846188 0.53666282 0.75 0.375 0 0.53666264 1.186207e-09 0.53666276 0.22836238
		 0.375 0.29999489 0.53666276 0.45000494 0.375 0.5216375 0.375 0.75 0.375 0.27429476
		 0.53666282 0.29999498 0.375 0.25000009 0.53666282 0.27429482 0.38052943 0.24334669
		 0.53666276 0.25000003 0.38039228 0.23597194 0.53640121 0.24316004 0.375 0.22836238
		 0.53647602 0.23582576 0.375 0.51029009 0.53666288 0.52163756 0.375 0.49765328 0.53666288
		 0.51029015 0.375 0.48317155 0.536663 0.49765334 0.375 0.46705437 0.53666288 0.48317164
		 0.375 0.45000488 0.53666276 0.46705443 0.66089058 0.23773241 0.65684015 0.23623024
		 0.65448946 0.23398115 0.84537584 -3.1854959e-09 0.84537578 0.22735339 0.84193075
		 0.23138288 0.8276577 0.24686335 0.8096534 0.26225111 0.625 0.77962422 0.625 0.97037578
		 0.53666276 1 0.375 1 0.65369916 0.2313163 0.65462416 0.22735333 0.79815686 0.26935476
		 0.79283226 0.26677468 0.625 0.98520643 0.63979363 2.6535238e-11 0.625 1 0.62500006
		 1.8343869e-09 0.58077574 1 0.58077568 1.5098884e-09 0.58055001 0.22843553 0.625 0.2283624
		 0.63955557 0.22793518 0.67132735 0.24384885 0.625 0.29999503 0.67499501 0.25 0.58259809
		 0.29932627 0.5825941 0.45027798 0.82500488 0.25 0.625 0.45000494 0.80673575 0.2602281
		 0.57974875 0.74984372 0.625 0.75 0.875 0 0.625 0.76479357 0.86020643 -1.5907548e-09
		 0.85820323 0.2299657 0.625 0.52163762 0.87499994 0.2283624 0.58058214 0.52143055
		 0.65604162 0.24339391 0.625 0.27429482 0.64929479 0.25 0.58155924 0.27402821 0.64415568
		 0.24197006 0.625 0.25 0.5803054 0.2527841 0.6382007 0.23846024 0.62157404 0.24305803
		 0.57822698 0.24293105 0.6369822 0.23374182 0.62176478 0.23574588 0.57776678 0.23537925
		 0.81895071 0.27332726 0.625 0.51029021 0.81182289 0.29527965 0.57887799 0.5107106
		 0.78311592 0.31065446 0.625 0.49765337 0.74146718 0.36980057 0.57959813 0.49845335
		 0.75581706 0.33592132 0.625 0.48317164 0.66083997 0.45520112 0.58073783 0.48398224
		 0.77744466 0.30354115 0.625 0.46705446 0.74061507 0.35548466 0.58161557 0.46761343;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 84 ".pt[0:83]" -type "float3"  -0.081285059 0.11675814 12.241083 
		-0.081285059 0.11675814 11.119458 -0.081285059 3.2362947 12.016781 -0.081285059 2.9662983 
		12.241083 -0.081285059 3.0497315 12.230105 -0.081285059 3.124999 12.198245 -0.081285059 
		3.1847312 12.148622 -0.081285059 3.2230802 12.086094 -0.081285059 2.9662983 11.119458 
		-0.081285059 3.2362947 11.343761 -0.081285059 3.2230802 11.274447 -0.081285059 3.1847312 
		11.211919 -0.081285059 3.124999 11.162297 -0.081285059 3.0497315 11.130436 0.29687822 
		0.11675814 12.108174 0.28670675 0.11675814 12.159037 0.25774083 0.11675814 12.202155 
		0.21439025 0.11675814 12.230965 0.16325471 0.11675814 12.241083 0.16325454 2.9662983 
		12.241083 0.2143901 2.9653394 12.230965 0.25774068 2.9626102 12.202155 0.2867066 
		2.9585254 12.159037 0.29687807 2.9537067 12.108174 0.29687807 3.0763104 12.006321 
		0.2867066 3.1375339 12.010324 0.25774068 3.1894364 12.013716 0.2143901 3.224117 12.015985 
		0.16325454 3.2362947 12.016781 0.16325454 3.2362947 11.343761 0.2143901 3.224117 
		11.344558 0.25774068 3.1894364 11.346824 0.2867066 3.1375339 11.350219 0.29687807 
		3.0763104 11.354221 0.21439025 0.11675814 11.129576 0.25774083 0.11675814 11.158386 
		0.28670675 0.11675814 11.201505 0.29687822 0.11675814 11.252367 0.16325471 0.11675814 
		11.119458 0.29687807 2.9537077 11.252367 0.2867066 2.9585259 11.201505 0.25774068 
		2.9626105 11.158386 0.2143901 2.9653394 11.129576 0.16325454 2.9662983 11.119458 
		0.29687807 3.0690289 12.044512 0.2867066 3.1279817 12.060425 0.25774068 3.1779599 
		12.073914 0.2143901 3.211354 12.08293 0.16325454 3.2230802 12.086094 0.29687807 3.0536869 
		12.069527 0.2867066 3.1038349 12.099795 0.25774068 3.1463487 12.125456 0.2143901 
		3.1747561 12.142601 0.16325454 3.1847312 12.148622 0.29687807 3.0297899 12.089378 
		0.2867066 3.0662251 12.131041 0.25774068 3.0971131 12.166358 0.2143901 3.1177514 
		12.189958 0.16325454 3.124999 12.198245 0.29687807 2.9996772 12.102125 0.2867066 
		3.0188322 12.1511 0.25774068 3.0350711 12.19262 0.2143901 3.0459216 12.220363 0.16325454 
		3.0497315 12.230105 0.29687807 2.9996772 11.258415 0.2867066 3.0188322 11.20944 0.25774068 
		3.0350711 11.167921 0.2143901 3.0459216 11.140179 0.16325454 3.0497315 11.130436 
		0.29687807 3.0297904 11.271163 0.2867066 3.0662255 11.229502 0.25774068 3.0971131 
		11.194182 0.2143901 3.1177514 11.170584 0.16325454 3.124999 11.162297 0.29687807 
		3.0536869 11.291014 0.2867066 3.1038349 11.260745 0.25774068 3.1463487 11.235085 
		0.2143901 3.1747561 11.217939 0.16325454 3.1847312 11.211919 0.29687807 3.0690284 
		11.31603 0.2867066 3.1279817 11.300117 0.25774068 3.1779599 11.286627 0.2143901 3.211354 
		11.277613 0.16325454 3.2230802 11.274447;
	setAttr -s 84 ".vt[0:83]"  -0.5 0.036707461 0.15295887 -0.5 0.036707461 -0.5
		 -0.5 1.017455101 0.022380352 -0.5 0.93257117 0.15295887 -0.5 0.95880163 0.14656782
		 -0.5 0.98246491 0.12802029 -0.5 1.0012440681 0.099132061 -0.5 1.013300538 0.062731266
		 -0.5 0.93257117 -0.5 -0.5 1.017455101 -0.36942101 -0.5 1.013300538 -0.4097724 -0.5 1.0012440681 -0.44617391
		 -0.5 0.98246491 -0.47506142 -0.5 0.95880163 -0.49360919 -0.28305089 0.036707461 0.075585365
		 -0.28888619 0.036707461 0.10519505 -0.3055037 0.036707461 0.13029671 -0.33037356 0.036707461 0.1470685
		 -0.35970959 0.036707461 0.15295887 -0.35970968 0.93257117 0.15295887 -0.33037364 0.93226975 0.1470685
		 -0.30550379 0.93141174 0.13029671 -0.28888628 0.9301275 0.10519505 -0.28305098 0.92861253 0.075585365
		 -0.28305098 0.96715778 0.016290665 -0.28888628 0.98640573 0.018620968 -0.30550379 1.0027233362 0.020596027
		 -0.33037364 1.013626575 0.021916866 -0.35970968 1.017455101 0.022380352 -0.35970968 1.017455101 -0.36942101
		 -0.33037364 1.013626575 -0.36895752 -0.30550379 1.0027233362 -0.36763811 -0.28888628 0.98640573 -0.3656621
		 -0.28305098 0.96715778 -0.36333179 -0.33037356 0.036707461 -0.49411035 -0.3055037 0.036707461 -0.47733784
		 -0.28888619 0.036707461 -0.45223618 -0.28305089 0.036707461 -0.4226265 -0.35970959 0.036707461 -0.5
		 -0.28305098 0.92861283 -0.4226265 -0.28888628 0.93012762 -0.45223618 -0.30550379 0.9314118 -0.47733784
		 -0.33037364 0.93226975 -0.49411035 -0.35970968 0.93257117 -0.5 -0.28305098 0.96486855 0.038523674
		 -0.28888628 0.98340267 0.047787666 -0.30550379 0.99911523 0.055640221 -0.33037364 1.0096139908 0.060888767
		 -0.35970968 1.013300538 0.062731266 -0.28305098 0.96004522 0.053086281 -0.28888628 0.97581118 0.070707321
		 -0.30550379 0.98917705 0.085645676 -0.33037364 0.99810803 0.095626831 -0.35970968 1.0012440681 0.099132061
		 -0.28305098 0.95253229 0.064643383 -0.28888628 0.96398705 0.088896751 -0.30550379 0.9736979 0.10945749
		 -0.33037364 0.98018634 0.12319613 -0.35970968 0.98246491 0.12802029 -0.28305098 0.94306517 0.072063923
		 -0.28888628 0.94908726 0.10057497 -0.30550379 0.95419258 0.12474585 -0.33037364 0.95760387 0.14089632
		 -0.35970968 0.95880163 0.14656782 -0.28305098 0.94306517 -0.41910577 -0.28888628 0.94908726 -0.44761682
		 -0.30550379 0.95419258 -0.47178745 -0.33037364 0.95760387 -0.48793793 -0.35970968 0.95880163 -0.49360919
		 -0.28305098 0.95253241 -0.41168451 -0.28888628 0.96398717 -0.43593764 -0.30550379 0.9736979 -0.45649934
		 -0.33037364 0.98018634 -0.47023726 -0.35970968 0.98246491 -0.47506142 -0.28305098 0.96004522 -0.40012836
		 -0.28888628 0.97581118 -0.41774917 -0.30550379 0.98917705 -0.43268728 -0.33037364 0.99810803 -0.44266868
		 -0.35970968 1.0012440681 -0.44617391 -0.28305098 0.96486843 -0.38556528 -0.28888628 0.98340267 -0.3948288
		 -0.30550379 0.99911523 -0.4026823 -0.33037364 1.0096139908 -0.4079299 -0.35970968 1.013300538 -0.4097724;
	setAttr -s 150 ".ed[0:149]"  0 18 0 1 38 0 0 3 0 1 0 0 2 9 0 8 1 0 2 7 0
		 7 6 0 6 5 0 5 4 0 4 3 0 8 13 0 13 12 0 12 11 0 11 10 0 10 9 0 37 14 0 18 17 0 17 20 1
		 20 19 1 19 18 1 17 16 0 16 21 1 21 20 1 16 15 0 15 22 1 22 21 1 15 14 0 14 23 1 23 22 1
		 63 19 1 23 59 1 45 44 1 44 24 1 46 45 1 47 46 1 28 48 1 48 47 1 28 27 1 27 30 1 30 29 1
		 29 28 1 27 26 1 26 31 1 31 30 1 26 25 1 25 32 1 32 31 1 25 24 1 24 33 1 33 32 1 83 29 1
		 33 79 1 37 36 0 36 40 1 40 39 1 39 37 1 36 35 0 35 41 1 41 40 1 35 34 0 34 42 1 42 41 1
		 34 38 0 38 43 1 43 42 1 65 64 1 64 39 1 66 65 1 67 66 1 43 68 1 68 67 1 50 49 1 49 44 1
		 51 50 1 52 51 1 48 53 1 53 52 1 55 54 1 54 49 1 56 55 1 57 56 1 53 58 1 58 57 1 60 59 1
		 59 54 1 61 60 1 62 61 1 58 63 1 63 62 1 70 69 1 69 64 1 71 70 1 72 71 1 68 73 1 73 72 1
		 75 74 1 74 69 1 76 75 1 77 76 1 73 78 1 78 77 1 80 79 1 79 74 1 81 80 1 82 81 1 78 83 1
		 83 82 1 19 3 1 2 28 1 29 9 1 8 43 1 7 48 1 6 53 1 5 58 1 4 63 1 13 68 1 12 73 1 11 78 1
		 10 83 1 27 47 1 26 46 1 25 45 1 42 67 1 41 66 1 40 65 1 47 52 1 46 51 1 45 50 1 52 57 1
		 51 56 1 50 55 1 57 62 1 56 61 1 55 60 1 20 62 1 21 61 1 22 60 1 67 72 1 66 71 1 65 70 1
		 72 77 1 71 76 1 70 75 1 77 82 1 76 81 1 75 80 1 30 82 1 31 81 1 32 80 1;
	setAttr -s 68 -ch 300 ".fc[0:67]" -type "polyFaces" 
		f 14 5 3 2 -11 -10 -9 -8 -7 4 -16 -15 -14 -13 -12
		mu 0 14 0 1 12 27 25 23 21 4 2 3 5 6 7 8
		f 4 17 18 19 20
		mu 0 4 13 60 61 14
		f 4 21 22 23 -19
		mu 0 4 60 58 62 61
		f 4 24 25 26 -23
		mu 0 4 58 56 63 62
		f 4 27 28 29 -26
		mu 0 4 56 9 52 63
		f 4 38 39 40 41
		mu 0 4 20 67 68 16
		f 4 42 43 44 -40
		mu 0 4 67 65 70 68
		f 4 45 46 47 -44
		mu 0 4 66 64 71 69
		f 4 48 49 50 -47
		mu 0 4 64 10 54 71
		f 4 53 54 55 56
		mu 0 4 42 76 77 43
		f 4 57 58 59 -55
		mu 0 4 76 74 79 77
		f 4 60 61 62 -59
		mu 0 4 73 72 80 78
		f 4 63 64 65 -62
		mu 0 4 72 11 30 80
		f 4 0 -21 108 -3
		mu 0 4 12 13 14 27
		f 4 109 -42 110 -5
		mu 0 4 15 20 16 37
		f 4 111 -65 -2 -6
		mu 0 4 17 30 11 18
		f 4 6 112 -37 -110
		mu 0 4 15 19 22 20
		f 4 7 113 -77 -113
		mu 0 4 19 21 24 22
		f 4 8 114 -83 -114
		mu 0 4 21 23 26 24
		f 4 9 115 -89 -115
		mu 0 4 23 25 28 26
		f 4 10 -109 -31 -116
		mu 0 4 25 27 14 28
		f 4 11 116 -71 -112
		mu 0 4 17 29 32 30
		f 4 12 117 -95 -117
		mu 0 4 29 31 34 32
		f 4 13 118 -101 -118
		mu 0 4 31 33 36 34
		f 4 14 119 -107 -119
		mu 0 4 33 35 38 36
		f 4 15 -111 -52 -120
		mu 0 4 35 37 16 38
		f 14 -34 -74 -80 -86 -32 -29 -17 -57 -68 -92 -98 -104 -53 -50
		mu 0 14 10 39 40 41 51 52 9 42 43 44 45 46 53 54
		f 12 -61 -58 -54 16 -28 -25 -22 -18 -1 -4 1 -64
		mu 0 12 72 73 75 47 48 55 57 59 49 50 18 11
		f 4 -39 36 37 -121
		mu 0 4 67 20 22 84
		f 4 -43 120 35 -122
		mu 0 4 65 67 84 82
		f 4 -49 122 32 33
		mu 0 4 10 64 81 39
		f 4 -46 121 34 -123
		mu 0 4 64 66 83 81
		f 4 -66 70 71 -124
		mu 0 4 80 30 32 97
		f 4 -63 123 69 -125
		mu 0 4 78 80 97 95
		f 4 -56 125 66 67
		mu 0 4 43 77 94 44
		f 4 -60 124 68 -126
		mu 0 4 77 79 96 94
		f 4 -38 76 77 -127
		mu 0 4 84 22 24 87
		f 4 -36 126 75 -128
		mu 0 4 82 84 87 86
		f 4 -33 128 72 73
		mu 0 4 39 81 85 40
		f 4 -35 127 74 -129
		mu 0 4 81 83 86 85
		f 4 -78 82 83 -130
		mu 0 4 87 24 26 90
		f 4 -76 129 81 -131
		mu 0 4 86 87 90 89
		f 4 -73 131 78 79
		mu 0 4 40 85 88 41
		f 4 -75 130 80 -132
		mu 0 4 85 86 89 88
		f 4 -84 88 89 -133
		mu 0 4 90 26 28 93
		f 4 -82 132 87 -134
		mu 0 4 89 90 93 92
		f 4 -79 134 84 85
		mu 0 4 41 88 91 51
		f 4 -81 133 86 -135
		mu 0 4 88 89 92 91
		f 4 -20 135 -90 30
		mu 0 4 14 61 93 28
		f 4 -24 136 -88 -136
		mu 0 4 61 62 92 93
		f 4 -27 137 -87 -137
		mu 0 4 62 63 91 92
		f 4 -30 31 -85 -138
		mu 0 4 63 52 51 91
		f 4 -72 94 95 -139
		mu 0 4 97 32 34 101
		f 4 -70 138 93 -140
		mu 0 4 95 97 101 99
		f 4 -67 140 90 91
		mu 0 4 44 94 98 45
		f 4 -69 139 92 -141
		mu 0 4 94 96 100 98
		f 4 -96 100 101 -142
		mu 0 4 101 34 36 105
		f 4 -94 141 99 -143
		mu 0 4 99 101 105 103
		f 4 -91 143 96 97
		mu 0 4 45 98 102 46
		f 4 -93 142 98 -144
		mu 0 4 98 100 104 102
		f 4 -102 106 107 -145
		mu 0 4 105 36 38 109
		f 4 -100 144 105 -146
		mu 0 4 103 105 109 107
		f 4 -97 146 102 103
		mu 0 4 46 102 106 53
		f 4 -99 145 104 -147
		mu 0 4 102 104 108 106
		f 4 -41 147 -108 51
		mu 0 4 16 68 109 38
		f 4 -45 148 -106 -148
		mu 0 4 68 70 107 109
		f 4 -48 149 -105 -149
		mu 0 4 69 71 106 108
		f 4 -51 52 -103 -150
		mu 0 4 71 54 53 106;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "fridge_body" -p "frige";
	rename -uid "EE951CD0-4A8D-6150-C627-9E9DD22FFCB5";
	setAttr ".t" -type "double3" -1.5550480867592349 0 -1.5386038203088885 ;
	setAttr ".s" -type "double3" 2.7430968187444762 4.1807740935827251 2.7177571204582662 ;
	setAttr ".rp" -type "double3" -0.61090491039954897 2.2036077645944934 -0.47158642718237076 ;
	setAttr ".sp" -type "double3" -0.22270628809928894 0.52708128094673157 -0.17352044582366943 ;
	setAttr ".spt" -type "double3" -0.38819862230025998 1.6765264836477618 -0.29806598135870133 ;
createNode mesh -n "fridge_bodyShape" -p "fridge_body";
	rename -uid "5D348B71-4493-F89D-88EB-15B1CE9E6A21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[9:10]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[6:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[14]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[15]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 3 "f[1]" "f[4:5]" "f[11:13]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0.625 0.75 0.375
		 1 0.625 1 0.375 0 0.625 0.52163762 0.37500003 0.75 0.625 0.29999501 0.375 0.45000491
		 0.37500003 0.29999501 0.625 0.2283624 0.37500006 0.52163756 0.625 0.45000491 0.125
		 0.2283624 0.125 0 0.37500003 0.2283624 0.32500499 0.25 0.17499509 0.25 0.67499501
		 0.25 0.62500006 1.8343869e-09 0.875 0 0.87499994 0.2283624 0.82500488 0.25 0.37811494
		 0.23565993 0.37830281 0.24299733 0.375 0.25 0.35070518 0.25 0.375 0.27429482 0.625
		 0.27429482 0.64929479 0.25 0.625 0.25 0.62295568 0.24282892 0.62294638 0.2355683
		 0.16309561 0.24484996 0.375 0.4670544 0.15184683 0.23998156 0.37500003 0.48317158
		 0.1417395 0.23560716 0.37500003 0.49765331 0.13291979 0.23179004 0.37500006 0.51029015
		 0.625 0.51029021 0.81182289 0.29527965 0.625 0.49765337 0.74146718 0.36980057 0.625
		 0.48317161 0.66083997 0.45520112 0.625 0.46705443 0.74061507 0.35548466;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  -0.49999994 0.036707461 0.15295887 0.054587439 0.036707461 0.15295887
		 -0.49999994 0.036707461 -0.5 0.054587439 0.036707461 -0.5 -0.49999994 1.017455101 0.022380352
		 -0.49999994 0.93257105 0.15295887 -0.49999994 0.95880163 0.14656782 -0.49999994 0.98246473 0.12802029
		 -0.49999994 1.0012438297 0.099132061 -0.49999994 1.013300538 0.062731266 0.054587364 1.017455101 0.022380352
		 0.054587364 1.013300538 0.062731266 0.054587364 1.0012438297 0.099132061 0.054587364 0.98246473 0.12802029
		 0.054587364 0.95880163 0.14656782 0.054587364 0.93257105 0.15295887 -0.49999994 0.93257105 -0.5
		 -0.49999994 1.017455101 -0.36942101 -0.49999994 1.013300538 -0.4097724 -0.49999994 1.0012438297 -0.44617391
		 -0.49999994 0.98246473 -0.47506142 -0.49999994 0.95880163 -0.49360919 0.054587364 0.93257105 -0.5
		 0.054587364 0.95880163 -0.49360919 0.054587364 0.98246473 -0.47506142 0.054587364 1.0012438297 -0.44617391
		 0.054587364 1.013300538 -0.4097724 0.054587364 1.017455101 -0.36942101;
	setAttr -s 42 ".ed[0:41]"  0 1 0 2 3 0 0 5 0 1 15 0 2 0 0 3 1 0 4 17 0
		 10 27 0 16 2 0 22 3 0 4 10 1 15 5 1 16 22 1 27 17 1 4 9 0 9 11 1 11 10 0 9 8 0 8 12 1
		 12 11 0 8 7 0 7 13 1 13 12 0 7 6 0 6 14 1 14 13 0 6 5 0 15 14 0 16 21 0 21 23 1 23 22 0
		 21 20 0 20 24 1 24 23 0 20 19 0 19 25 1 25 24 0 19 18 0 18 26 1 26 25 0 18 17 0 27 26 0;
	setAttr -s 16 -ch 84 ".fc[0:15]" -type "polyFaces" 
		f 4 0 3 11 -3
		mu 0 4 3 18 9 14
		f 4 10 7 13 -7
		mu 0 4 8 6 11 7
		f 4 12 9 -2 -9
		mu 0 4 10 4 0 5
		f 4 1 5 -1 -5
		mu 0 4 5 0 2 1
		f 4 14 15 16 -11
		mu 0 4 8 26 27 6
		f 4 17 18 19 -16
		mu 0 4 26 24 29 27
		f 4 20 21 22 -19
		mu 0 4 24 23 30 29
		f 4 23 24 25 -22
		mu 0 4 23 22 31 30
		f 4 26 -12 27 -25
		mu 0 4 22 14 9 31
		f 4 28 29 30 -13
		mu 0 4 10 39 40 4
		f 4 31 32 33 -30
		mu 0 4 39 37 42 40
		f 4 34 35 36 -33
		mu 0 4 37 35 44 42
		f 4 37 38 39 -36
		mu 0 4 35 33 46 44
		f 4 40 -14 41 -39
		mu 0 4 33 7 11 46
		f 14 8 4 2 -27 -24 -21 -18 -15 6 -41 -38 -35 -32 -29
		mu 0 14 12 13 3 14 22 23 24 25 15 16 32 34 36 38
		f 14 -17 -20 -23 -26 -28 -4 -6 -10 -31 -34 -37 -40 -42 -8
		mu 0 14 17 28 29 30 31 9 18 19 20 41 43 45 47 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "frige_handel" -p "frige";
	rename -uid "56E93A20-4DD7-A520-2B7F-A8A8D18DAF7D";
	setAttr ".t" -type "double3" -0.58410625072407785 2.3463090459253757 -1.5114534394682204 ;
	setAttr ".s" -type "double3" 0.27436816848265344 0.27281509353380817 0.15593923900356918 ;
	setAttr ".rp" -type "double3" -0.22609084096603194 0 0 ;
	setAttr ".sp" -type "double3" -0.50000004460238257 0 0 ;
	setAttr ".spt" -type "double3" 0.27390920363634846 0 0 ;
createNode mesh -n "frige_handelShape" -p "frige_handel";
	rename -uid "121A19CC-4F3E-8B9A-90C7-D89C61ADC15E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 3 "f[3]" "f[16:18]" "f[26:32]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[4]" "f[6:15]" "f[19:25]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.375 0.25 0.375
		 0.5 0.125 0 0.125 0.25 0.875 0.25 0.625 0.25 0.875 0 0.625 0 0.625 0 0.625 0.25 0.375
		 0 0.49513265 -7.4505806e-09 0.875 0 0.875 0 0.625 0.5 0.375 0.75 0.875 0 0.875 0.092885807
		 0.875 0.25 0.875 0 0.62500095 0 0.49513263 0.99999905 0.375 0.99999905 0.62500101
		 0 0.49513265 0.75 0.62500101 0 0.625 0.092885837 0.625 0 0.625 0.75 0.625 0.75 0.62499994
		 0.65711415 0.62954515 0.29817864 0.50568098 0.97969311 0.63429511 0.60986054 0.516707
		 0.9584676 0.63936508 0.94253975 0.52847588 0.93581218 0.6338917 0.40566701 0.625
		 0.75 0.875 0 0.625 0.75 0.875 0 0.58031833 0.75009161 0.53690964 0.74960494 0.62664801
		 0.16433115 0.62775546 0.1688896 0.62961262 0.32664782 0.63050902 0.36597598 0.61919963
		 0.74068213 0.61052507 0.69034272 0.61228389 0.73447239 0.6023311 0.72116917;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[6]" -type "float3" 3.5090316e-08 0 0 ;
	setAttr ".pt[7]" -type "float3" 3.5090316e-08 0 0 ;
	setAttr ".pt[8]" -type "float3" 3.5090316e-08 0 0 ;
	setAttr ".pt[9]" -type "float3" 3.5090316e-08 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.044170167 4.4408921e-16 0 ;
	setAttr ".pt[11]" -type "float3" 0.044170167 4.4408921e-16 0 ;
	setAttr ".pt[12]" -type "float3" 0.025348971 0 0 ;
	setAttr ".pt[13]" -type "float3" 0.025348971 0 0 ;
	setAttr -s 38 ".vt[0:37]"  -0.50000012 -0.49999905 0.49998474 -0.50000012 0.5 0.49998474
		 0.1553607 0.5 0.49998474 -0.50000012 0.5 -0.5 0.1553607 0.5 -0.5 -0.50000012 -0.49999905 -0.5
		 0.65267205 -0.49999905 -0.5 0.65267205 -0.49999905 0.49998474 0.65267205 0.5 -0.5
		 0.65267205 0.5 0.49998474 0.25380635 -2.75783539 -0.5 0.25380635 -2.75783539 0.49998474
		 0.62732315 -2.75783539 -0.5 0.62732315 -2.75783539 0.49998474 0.17381859 -0.92332411 0.49998474
		 0.45371771 -0.49999905 0.49998474 0.1553607 -0.12845612 0.49998474 -0.18507922 -0.49999905 0.49998474
		 -0.07772541 -0.52043056 0.49998474 0.019827843 -0.57985926 0.49998474 0.09867382 -0.67285919 0.49998474
		 0.15161562 -0.79094124 0.49998474 0.17381859 -0.92332411 -0.5 0.15161562 -0.79094124 -0.5
		 0.09867382 -0.67285919 -0.5 0.019827843 -0.57985926 -0.5 -0.07772541 -0.52043056 -0.5
		 -0.18507922 -0.49999905 -0.5 0.1553607 -0.12845612 -0.5 0.45371771 -0.49999905 -0.5
		 0.1553607 -0.27707338 0.49998474 0.3343749 -0.49999905 0.49998474 0.1553607 -0.42569065 0.49998474
		 0.2150321 -0.49999905 0.49998474 0.3343749 -0.49999905 -0.5 0.1553607 -0.27707338 -0.5
		 0.2150321 -0.49999905 -0.5 0.1553607 -0.42569065 -0.5;
	setAttr -s 69 ".ed[0:68]"  0 17 0 1 2 0 3 4 0 5 27 0 0 1 0 1 3 0 2 4 1
		 3 5 0 4 28 1 5 0 0 6 7 1 4 8 0 8 6 0 2 9 0 9 8 0 7 9 0 10 11 0 6 12 0 10 12 0 7 13 0
		 12 13 0 11 13 0 14 11 0 15 7 1 16 2 1 15 14 1 16 15 1 17 16 1 22 10 0 29 6 1 29 22 1
		 28 27 1 28 29 1 14 22 1 27 17 1 14 21 0 21 23 1 23 22 0 21 20 0 20 24 1 24 23 0 20 19 0
		 19 25 1 25 24 0 19 18 0 18 26 1 26 25 0 18 17 0 27 26 0 18 30 1 30 16 1 30 31 1 31 15 1
		 31 21 1 19 32 1 32 30 1 32 33 1 33 31 1 33 20 1 23 34 1 34 29 1 34 35 1 35 28 1 35 26 1
		 24 36 1 36 34 1 36 37 1 37 35 1 37 25 1;
	setAttr -s 33 -ch 138 ".fc[0:32]" -type "polyFaces" 
		f 5 0 27 24 -2 -5
		mu 0 5 10 11 26 9 0
		f 4 1 6 -3 -6
		mu 0 4 0 9 14 1
		f 5 2 8 31 -4 -8
		mu 0 5 1 14 30 24 15
		f 4 3 34 -1 -10
		mu 0 4 15 24 21 22
		f 4 -11 -13 -15 -16
		mu 0 4 8 19 4 5
		f 4 9 4 5 7
		mu 0 4 2 10 0 3
		f 4 -17 18 20 -22
		mu 0 4 20 13 6 7
		f 4 -7 13 14 -12
		mu 0 4 18 9 5 4
		f 5 -25 26 23 15 -14
		mu 0 5 9 26 27 8 5
		f 4 33 28 16 -23
		mu 0 4 23 12 13 20
		f 4 10 19 -21 -18
		mu 0 4 19 8 7 6
		f 5 -24 25 22 21 -20
		mu 0 5 8 27 23 20 7
		f 5 -31 29 17 -19 -29
		mu 0 5 12 16 19 6 13
		f 5 -33 -9 11 12 -30
		mu 0 5 16 17 18 4 19
		f 4 35 36 37 -34
		mu 0 4 23 37 39 12
		f 4 38 39 40 -37
		mu 0 4 37 35 41 39
		f 4 41 42 43 -40
		mu 0 4 36 34 42 40
		f 4 44 45 46 -43
		mu 0 4 34 32 43 42
		f 4 47 -35 48 -46
		mu 0 4 32 21 24 43
		f 4 -48 49 50 -28
		mu 0 4 25 31 44 26
		f 4 -51 51 52 -27
		mu 0 4 26 44 45 27
		f 4 -53 53 -36 -26
		mu 0 4 27 45 37 23
		f 4 -45 54 55 -50
		mu 0 4 31 33 46 44
		f 4 -56 56 57 -52
		mu 0 4 44 46 47 45
		f 4 -58 58 -39 -54
		mu 0 4 45 47 35 37
		f 4 -59 -57 -55 -42
		mu 0 4 35 47 46 33
		f 4 -38 59 60 30
		mu 0 4 28 38 48 29
		f 4 -61 61 62 32
		mu 0 4 29 48 49 30
		f 4 -63 63 -49 -32
		mu 0 4 30 49 43 24
		f 4 -41 64 65 -60
		mu 0 4 38 40 50 48
		f 4 -66 66 67 -62
		mu 0 4 48 50 51 49
		f 4 -68 68 -47 -64
		mu 0 4 49 51 42 43
		f 4 -69 -67 -65 -44
		mu 0 4 42 51 50 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group1";
	rename -uid "F04E971D-454C-CB80-B50D-51B87FA6F531";
	setAttr ".t" -type "double3" 1.0040515952708529 0.97609286902631354 -10.784259049417532 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.71145743203127632 0.71145743203127632 0.71145743203127632 ;
	setAttr ".rp" -type "double3" -0.082211077213287534 -0.8226273596116398 13.076446056365967 ;
	setAttr ".sp" -type "double3" -0.082211077213287354 -1.2553853314620027 13.076446056365967 ;
	setAttr ".spt" -type "double3" -2.1510571102112408e-16 0.43275797185036169 2.7533531010703882e-14 ;
createNode transform -n "chair_body" -p "group1";
	rename -uid "E013C430-452F-0F6B-686D-5FAD5186D712";
	setAttr ".rp" -type "double3" -0.082211077213287354 0.81139311194419861 13.076446056365967 ;
	setAttr ".sp" -type "double3" -0.082211077213287354 0.81139311194419861 13.076446056365967 ;
createNode mesh -n "chair_bodyShape" -p "|group1|chair_body";
	rename -uid "E4A81896-4BF4-DF89-234B-9D928B5F6E41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[34]" "f[38]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[35]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[33]" "f[37]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[1]" "f[36]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[0]" "f[31:32]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[2]" "f[4:30]";
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0.625 1 0.37500209
		 0.25 0.41663975 0 0.37500209 0.5 0.625 0.75 0.41664183 0.25 0.44544214 0.5 0.44544196
		 0.25000024 0.41664186 0.089473799 0.41664183 0.5 0.41664183 0.66052628 0.43422365
		 0.2550714 0.4201282 0.26085669 0.41094655 0.25906345 0.41014665 0.25595126 0.40892771
		 0.49225354 0.4098765 0.4883779 0.42036194 0.48903227 0.43458661 0.49590796 0.41334125
		 0.15331566 0.38644001 0.25055036 0.4093208 0.21910582 0.39893422 0.24937651 0.38769808
		 0.50076127 0.41302931 0.59615397 0.40111163 0.50290179 0.40982902 0.53312737 0.37500209
		 0.5 0.4166418 0.5 0.41664183 0.25000021 0.39603481 0.25000012 0.38138786 0.25000003
		 0.38138789 0.5 0.39603481 0.5 0.625 0 0.875 0 0.59071016 0.25000003 0.875 0.025022715
		 0.625 0.025022503 0.59071004 0.5 0.625 0.72497749 0.62879491 0.1527444 0.625 0.24999997
		 0.76507741 0.12394305 0.625 0.51613444 0.81190389 0.081803456 0.625 0.60510057 0.41663975
		 1 0.125 0.25 0.125 0.16052726 0.37500209 0.25 0.37500134 0.16052739 0.3750014 0.58947265
		 0.41663975 0.75 0.375 0 0.375 1 0.125 0 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt[0:47]" -type "float3"  0.25548643 0.37855881 13.283127 
		-0.1718992 -0.37855881 13.283127 -0.1718992 -0.37855881 12.869776 0.25548643 0.37855881 
		12.869776 -0.10866997 0.37855881 12.869776 -0.10866997 0.37855881 13.283127 -0.2607114 
		-5.4371395 13.283127 -0.2607114 -5.4371395 12.869776 -0.13566333 -0.94069242 13.283127 
		-0.11479714 0.10759009 13.283127 -0.073091939 -0.37855881 13.283127 -0.090479955 
		-0.40482739 13.283127 -0.10654723 -0.48163667 13.283127 -0.1200733 -0.60315323 13.283127 
		-0.13003078 -0.76014668 13.283127 -0.13566333 -0.94069242 12.869776 -0.13003078 -0.76014668 
		12.869776 -0.1200733 -0.60315323 12.869776 -0.10654723 -0.48163667 12.869776 -0.090479955 
		-0.40482739 12.869776 -0.073091939 -0.37855881 12.869776 -0.11479714 0.10759009 12.869776 
		-0.11919591 -0.086869471 13.283127 -0.15345576 -0.37855881 13.283127 -0.12359469 
		-0.28132904 13.283127 -0.13501465 -0.37855881 13.283127 -0.15345576 -0.37855881 12.869776 
		-0.11919591 -0.086869471 12.869776 -0.13501465 -0.37855881 12.869776 -0.12359469 
		-0.28132904 12.869776 -0.20597292 -4.9453969 13.283127 -0.21632226 -5.197866 13.283127 
		-0.23593117 -5.3740296 13.283127 -0.20597292 -4.9453969 12.869776 -0.23593117 -5.3740296 
		12.869776 -0.21632226 -5.197866 12.869776 0.19273844 -0.37855881 13.283127 0.25548643 
		0.3027789 13.283127 0.24707976 -0.037889954 13.283127 0.22411247 -0.28727689 13.283127 
		0.19273844 -0.37855881 12.869776 0.22411247 -0.28727689 12.869776 0.24707976 -0.037889954 
		12.869776 0.25548643 0.3027789 12.869776 -0.1449517 0.24252835 13.283127 -0.16577064 
		-0.10759367 13.283127 -0.1449517 0.24252835 12.869776 -0.16577064 -0.10759367 12.869776;
	setAttr -s 48 ".vt[0:47]"  0.56134766 -0.5 0.49999809 -0.49999437 0.5 0.49999809
		 -0.49999437 0.5 -0.50000858 0.56134766 -0.5 -0.50000858 -0.34297496 -0.5 -0.50000858
		 -0.34297496 -0.5 0.49999809 -0.72054487 7.18136692 0.49999809 -0.72054487 7.18136692 -0.50000858
		 -0.41000852 1.24246538 0.49999809 -0.35819077 -0.14210486 0.49999809 -0.25462276 0.5 0.49999809
		 -0.29780304 0.53469551 0.49999809 -0.33770347 0.63614511 0.49999809 -0.37129325 0.79664403 0.49999809
		 -0.39602101 1.004000783 0.49999809 -0.41000852 1.24246538 -0.50000858 -0.39602101 1.004000783 -0.50000858
		 -0.37129325 0.79664403 -0.50000858 -0.33770347 0.63614511 -0.50000858 -0.29780304 0.53469551 -0.50000858
		 -0.25462276 0.5 -0.50000858 -0.35819077 -0.14210486 -0.50000858 -0.3691144 0.11473709 0.49999809
		 -0.45419312 0.5 0.49999809 -0.38003805 0.37157902 0.49999809 -0.40839764 0.5 0.49999809
		 -0.45419312 0.5 -0.50000858 -0.3691144 0.11473709 -0.50000858 -0.40839764 0.5 -0.50000858
		 -0.38003805 0.37157902 -0.50000858 -0.58461088 6.53187418 0.49999809 -0.61031175 6.86533451 0.49999809
		 -0.65900725 7.098011494 0.49999809 -0.58461088 6.53187418 -0.50000858 -0.65900725 7.098011494 -0.50000858
		 -0.61031175 6.86533451 -0.50000858 0.40552333 0.5 0.49999809 0.56134766 -0.39991 0.49999809
		 0.54047108 0.050045002 0.49999809 0.48343557 0.37943494 0.49999809 0.40552333 0.5 -0.50000858
		 0.48343557 0.37943494 -0.50000858 0.54047108 0.050045002 -0.50000858 0.56134766 -0.39991 -0.50000858
		 -0.43307468 -0.32033113 0.49999809 -0.4847751 0.14210959 0.49999809 -0.43307468 -0.32033113 -0.50000858
		 -0.4847751 0.14210959 -0.50000858;
	setAttr -s 85 ".ed[0:84]"  0 37 0 1 2 1 2 47 0 3 0 0 4 3 0 5 0 0 4 5 1
		 5 9 1 1 6 0 2 7 0 6 7 0 8 30 0 10 36 0 1 8 1 9 1 1 9 10 1 15 33 0 20 40 0 21 4 1
		 2 15 1 21 20 1 2 21 1 8 15 1 20 10 1 8 14 0 14 16 1 16 15 0 14 13 0 13 17 1 17 16 0
		 13 12 0 12 18 1 18 17 0 12 11 0 11 19 1 19 18 0 11 10 0 20 19 0 11 22 1 22 9 1 22 23 1
		 23 1 1 23 14 1 12 24 1 24 22 1 24 25 1 25 23 1 25 13 1 16 26 1 26 2 1 26 27 1 27 21 1
		 27 19 1 17 28 1 28 26 1 28 29 1 29 27 1 29 18 1 33 30 1 6 32 0 32 34 1 34 7 0 32 31 0
		 31 35 1 35 34 0 31 30 0 33 35 0 43 3 0 36 40 1 43 37 1 36 39 0 39 41 0 41 40 0 39 38 0
		 38 42 0 42 41 0 38 37 0 43 42 0 45 1 0 47 45 1 5 44 0 44 46 0 46 4 0 44 45 0 47 46 0;
	setAttr -s 39 -ch 170 ".fc[0:38]" -type "polyFaces" 
		f 4 -4 -68 69 -1
		mu 0 4 34 35 37 38
		f 4 79 78 1 2
		mu 0 4 49 51 50 48
		f 4 23 12 68 -18
		mu 0 4 6 7 36 39
		f 4 -7 4 3 -6
		mu 0 4 47 53 4 0
		f 4 22 16 58 -12
		mu 0 4 5 9 28 29
		f 4 -2 8 10 -10
		mu 0 4 3 50 1 27
		f 4 24 25 26 -23
		mu 0 4 5 14 15 9
		f 4 27 28 29 -26
		mu 0 4 14 13 16 15
		f 4 30 31 32 -29
		mu 0 4 13 12 17 16
		f 4 33 34 35 -32
		mu 0 4 12 11 18 17
		f 4 36 -24 37 -35
		mu 0 4 11 7 6 18
		f 4 -37 38 39 15
		mu 0 4 7 11 19 8
		f 4 -40 40 41 -15
		mu 0 4 8 19 20 50
		f 4 -42 42 -25 -14
		mu 0 4 50 20 14 5
		f 4 -34 43 44 -39
		mu 0 4 11 12 21 19
		f 4 -45 45 46 -41
		mu 0 4 19 21 22 20
		f 4 -47 47 -28 -43
		mu 0 4 20 22 13 14
		f 4 -48 -46 -44 -31
		mu 0 4 13 22 21 12
		f 4 -27 48 49 19
		mu 0 4 9 15 23 3
		f 4 -50 50 51 -22
		mu 0 4 3 23 24 10
		f 4 -52 52 -38 -21
		mu 0 4 10 24 18 6
		f 4 -30 53 54 -49
		mu 0 4 15 16 25 23
		f 4 -55 55 56 -51
		mu 0 4 23 25 26 24
		f 4 -57 57 -36 -53
		mu 0 4 24 26 17 18
		f 4 -58 -56 -54 -33
		mu 0 4 17 26 25 16
		f 4 59 60 61 -11
		mu 0 4 1 31 32 27
		f 4 62 63 64 -61
		mu 0 4 31 30 33 32
		f 4 65 -59 66 -64
		mu 0 4 30 29 28 33
		f 6 -9 13 11 -66 -63 -60
		mu 0 6 1 50 5 29 30 31
		f 6 -17 -20 9 -62 -65 -67
		mu 0 6 28 9 3 27 32 33
		f 4 70 71 72 -69
		mu 0 4 36 42 44 39
		f 4 73 74 75 -72
		mu 0 4 42 41 45 43
		f 4 76 -70 77 -75
		mu 0 4 41 38 37 45
		f 8 -13 -16 -8 5 0 -77 -74 -71
		mu 0 8 36 7 8 2 34 38 41 42
		f 8 -5 -19 20 17 -73 -76 -78 67
		mu 0 8 4 53 10 6 39 44 46 40
		f 4 80 81 82 6
		mu 0 4 47 55 57 53
		f 4 83 -80 84 -82
		mu 0 4 54 51 49 56
		f 5 -81 7 14 -79 -84
		mu 0 5 54 2 8 50 51
		f 5 -85 -3 21 18 -83
		mu 0 5 57 52 3 10 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "chair_leg_3" -p "group1";
	rename -uid "41ABCF72-4706-0D5E-AA86-D8BA35931DED";
	setAttr ".rp" -type "double3" -0.38927155733108521 -0.6884133517742157 12.587206840515137 ;
	setAttr ".sp" -type "double3" -0.38927155733108521 -0.6884133517742157 12.587206840515137 ;
createNode mesh -n "chair_leg_Shape3" -p "|group1|chair_leg_3";
	rename -uid "D4B3E837-4785-5DD1-076A-A795230D69BF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[1]" "f[11:14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[3:4]" "f[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[2]" "f[9]" "f[15]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.50000006 6.7055225e-08
		 0.25000003 3.7252903e-08 0.28731349 0.25 0.75 3.7252903e-08 0.78731346 0.24999997
		 0.46268609 0.24999999 0.71268654 0.24999997 0.21268655 0.24999999 0.5 0.75 0.53731382
		 0.5 0.46268609 0.50000006 0.375 0.41231346 0.375 0.33768654 0.53731382 0.24999999
		 0.62499994 0.33768654 0.62499994 0.41231346 0.625 0.875 0.50000018 1 0.375 0.875
		 0 0 0.41666225 6.2087899e-08 0 0 0.33333772 1.9868073e-08 0.375 0.25 0.41884285 0.25
		 0 0 0.66666234 1.2417593e-08 0 0 0.58333778 9.9340509e-09 0.58115709 0.25 0.625 0.25
		 0.41884285 0.5 0.375 0.5 0.125 0.25 0.375 0.75 0.125 0 0.43749344 0.75 0.625 0.5
		 0.875 0.25 0.58115709 0.5 0.5625065 0.75 0.875 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -0.24065518 -1.0457449 12.587207 
		-0.50247115 -1.0457449 12.32539 -0.37155005 -1.0457449 12.360465 -0.27572837 -1.0457449 
		12.456285 0.059275035 -0.95088845 12.475806 0.02420201 -0.95088845 12.344911 -0.071619891 
		-0.95088845 12.24909 -0.20251472 -0.95088845 12.214015 -0.76428711 -1.0457449 12.587207 
		-0.72921395 -1.0457449 12.456285 -0.6333921 -1.0457449 12.360465 -0.68710816 -0.95088845 
		12.475806 -0.4253183 -0.95088845 12.214015 -0.55621296 -0.95088845 12.24909 -0.65203512 
		-0.95088845 12.344911 -0.071619891 -0.95088845 12.925323 0.02420201 -0.95088845 12.829503 
		0.059275035 -0.95088845 12.698607 -0.20251472 -0.95088845 12.960399 -0.27572837 -1.0457449 
		12.718128 -0.37155005 -1.0457449 12.813949 -0.50247115 -1.0457449 12.849024 -0.65203512 
		-0.95088845 12.829503 -0.55621296 -0.95088845 12.925323 -0.4253183 -0.95088845 12.960399 
		-0.68710816 -0.95088845 12.698607 -0.6333921 -1.0457449 12.813949 -0.72921395 -1.0457449 
		12.718128;
	setAttr -s 28 ".vt[0:27]"  -0.35077953 -0.20964044 0 0 -0.20964044 0.35078049
		 -0.17540729 -0.20964044 0.30378723 -0.30378866 -0.20964044 0.17540741 -0.5 0.82944715 0.14925385
		 -0.45300937 0.82944715 0.32462692 -0.32462776 0.82944715 0.45300674 -0.14925563 0.82944715 0.5
		 0.35077953 -0.20964044 0 0.30378866 -0.20964044 0.17540741 0.17540717 -0.20964044 0.30378723
		 0.49999976 0.82944715 0.14925385 0.14925528 0.82944715 0.5 0.32462716 0.82944715 0.45300674
		 0.45300913 0.82944715 0.32462692 -0.32462776 0.82944715 -0.45300674 -0.45300937 0.82944715 -0.32462692
		 -0.5 0.82944715 -0.14925385 -0.14925563 0.82944715 -0.5 -0.30378866 -0.20964044 -0.17540741
		 -0.17540729 -0.20964044 -0.30378723 0 -0.20964044 -0.35078049 0.45300913 0.82944715 -0.32462692
		 0.32462716 0.82944715 -0.45300674 0.14925528 0.82944715 -0.5 0.49999976 0.82944715 -0.14925385
		 0.17540717 -0.20964044 -0.30378723 0.30378866 -0.20964044 -0.17540741;
	setAttr -s 44 ".ed[0:43]"  4 17 0 7 12 0 11 25 0 18 24 0 0 4 1 7 1 1
		 1 12 1 11 8 1 17 0 1 21 18 1 24 21 1 8 25 1 0 3 0 3 5 1 5 4 0 3 2 0 2 6 1 6 5 0 2 1 0
		 7 6 0 1 10 0 10 13 1 13 12 0 10 9 0 9 14 1 14 13 0 9 8 0 11 14 0 17 16 0 16 19 1
		 19 0 0 16 15 0 15 20 1 20 19 0 15 18 0 21 20 0 24 23 0 23 26 1 26 21 0 23 22 0 22 27 1
		 27 26 0 22 25 0 8 27 0;
	setAttr -s 18 -ch 88 ".fc[0:17]" -type "polyFaces" 
		f 3 5 6 -2
		mu 0 3 5 0 13
		f 3 9 3 10
		mu 0 3 8 10 9
		f 3 7 11 -3
		mu 0 3 6 3 4
		f 3 8 4 0
		mu 0 3 7 1 2
		f 4 12 13 14 -5
		mu 0 4 1 22 23 2
		f 4 15 16 17 -14
		mu 0 4 22 20 24 23
		f 4 18 -6 19 -17
		mu 0 4 20 0 5 24
		f 4 20 21 22 -7
		mu 0 4 0 28 29 13
		f 4 23 24 25 -22
		mu 0 4 28 26 30 29
		f 4 26 -8 27 -25
		mu 0 4 26 3 6 30
		f 4 28 29 30 -9
		mu 0 4 7 33 35 1
		f 4 31 32 33 -30
		mu 0 4 32 31 36 34
		f 4 34 -10 35 -33
		mu 0 4 31 10 8 36
		f 4 36 37 38 -11
		mu 0 4 9 39 40 8
		f 4 39 40 41 -38
		mu 0 4 39 37 42 40
		f 4 42 -12 43 -41
		mu 0 4 38 4 3 41
		f 16 -40 -37 -4 -35 -32 -29 -1 -15 -18 -20 1 -23 -26 -28 2 -43
		mu 0 16 37 39 9 10 31 32 11 12 23 24 5 13 29 30 14 15
		f 12 -27 -24 -21 -19 -16 -13 -31 -34 -36 -39 -42 -44
		mu 0 12 16 25 27 17 19 21 18 34 36 8 40 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "chair_leg_1" -p "group1";
	rename -uid "283AD24D-42A4-BE72-D1E1-C9A294389DF4";
	setAttr ".rp" -type "double3" 0.5369393527507782 -0.6884133517742157 13.548055648803711 ;
	setAttr ".sp" -type "double3" 0.5369393527507782 -0.6884133517742157 13.548055648803711 ;
createNode mesh -n "chair_leg_Shape1" -p "|group1|chair_leg_1";
	rename -uid "3A00CC54-4786-3955-CF86-1CB4430C4250";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[1]" "f[11:14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[3:4]" "f[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[2]" "f[9]" "f[15]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.50000006 6.7055225e-08
		 0.25000003 3.7252903e-08 0.28731349 0.25 0.75 3.7252903e-08 0.78731346 0.24999997
		 0.46268609 0.24999999 0.71268654 0.24999997 0.21268655 0.24999999 0.5 0.75 0.53731382
		 0.5 0.46268609 0.50000006 0.375 0.41231346 0.375 0.33768654 0.53731382 0.24999999
		 0.62499994 0.33768654 0.62499994 0.41231346 0.625 0.875 0.50000018 1 0.375 0.875
		 0 0 0.41666225 6.2087899e-08 0 0 0.33333772 1.9868073e-08 0.375 0.25 0.41884285 0.25
		 0 0 0.66666234 1.2417593e-08 0 0 0.58333778 9.9340509e-09 0.58115709 0.25 0.625 0.25
		 0.41884285 0.5 0.375 0.5 0.125 0.25 0.375 0.75 0.125 0 0.43749344 0.75 0.625 0.5
		 0.875 0.25 0.58115709 0.5 0.5625065 0.75 0.875 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  0.79875541 -1.0457449 13.548056 
		0.53693938 -1.0457449 13.286239 0.66786045 -1.0457449 13.321314 0.76368219 -1.0457449 
		13.417134 0.91013104 -0.95088845 13.436655 0.87505805 -0.95088845 13.305759 0.77923614 
		-0.95088845 13.209939 0.6483413 -0.95088845 13.174864 0.27512336 -1.0457449 13.548056 
		0.31019658 -1.0457449 13.417134 0.40601838 -1.0457449 13.321314 0.16374788 -0.95088845 
		13.436655 0.42553774 -0.95088845 13.174864 0.29464307 -0.95088845 13.209939 0.1988209 
		-0.95088845 13.305759 0.77923614 -0.95088845 13.886172 0.87505805 -0.95088845 13.790352 
		0.91013104 -0.95088845 13.659456 0.6483413 -0.95088845 13.921247 0.76368219 -1.0457449 
		13.678977 0.66786045 -1.0457449 13.774797 0.53693938 -1.0457449 13.809873 0.1988209 
		-0.95088845 13.790352 0.29464307 -0.95088845 13.886172 0.42553774 -0.95088845 13.921247 
		0.16374788 -0.95088845 13.659456 0.40601838 -1.0457449 13.774797 0.31019658 -1.0457449 
		13.678977;
	setAttr -s 28 ".vt[0:27]"  -0.35077953 -0.20964044 0 0 -0.20964044 0.35078049
		 -0.17540729 -0.20964044 0.30378723 -0.30378866 -0.20964044 0.17540741 -0.5 0.82944715 0.14925385
		 -0.45300937 0.82944715 0.32462692 -0.32462776 0.82944715 0.45300674 -0.14925563 0.82944715 0.5
		 0.35077953 -0.20964044 0 0.30378866 -0.20964044 0.17540741 0.17540717 -0.20964044 0.30378723
		 0.49999976 0.82944715 0.14925385 0.14925528 0.82944715 0.5 0.32462716 0.82944715 0.45300674
		 0.45300913 0.82944715 0.32462692 -0.32462776 0.82944715 -0.45300674 -0.45300937 0.82944715 -0.32462692
		 -0.5 0.82944715 -0.14925385 -0.14925563 0.82944715 -0.5 -0.30378866 -0.20964044 -0.17540741
		 -0.17540729 -0.20964044 -0.30378723 0 -0.20964044 -0.35078049 0.45300913 0.82944715 -0.32462692
		 0.32462716 0.82944715 -0.45300674 0.14925528 0.82944715 -0.5 0.49999976 0.82944715 -0.14925385
		 0.17540717 -0.20964044 -0.30378723 0.30378866 -0.20964044 -0.17540741;
	setAttr -s 44 ".ed[0:43]"  4 17 0 7 12 0 11 25 0 18 24 0 0 4 1 7 1 1
		 1 12 1 11 8 1 17 0 1 21 18 1 24 21 1 8 25 1 0 3 0 3 5 1 5 4 0 3 2 0 2 6 1 6 5 0 2 1 0
		 7 6 0 1 10 0 10 13 1 13 12 0 10 9 0 9 14 1 14 13 0 9 8 0 11 14 0 17 16 0 16 19 1
		 19 0 0 16 15 0 15 20 1 20 19 0 15 18 0 21 20 0 24 23 0 23 26 1 26 21 0 23 22 0 22 27 1
		 27 26 0 22 25 0 8 27 0;
	setAttr -s 18 -ch 88 ".fc[0:17]" -type "polyFaces" 
		f 3 5 6 -2
		mu 0 3 5 0 13
		f 3 9 3 10
		mu 0 3 8 10 9
		f 3 7 11 -3
		mu 0 3 6 3 4
		f 3 8 4 0
		mu 0 3 7 1 2
		f 4 12 13 14 -5
		mu 0 4 1 22 23 2
		f 4 15 16 17 -14
		mu 0 4 22 20 24 23
		f 4 18 -6 19 -17
		mu 0 4 20 0 5 24
		f 4 20 21 22 -7
		mu 0 4 0 28 29 13
		f 4 23 24 25 -22
		mu 0 4 28 26 30 29
		f 4 26 -8 27 -25
		mu 0 4 26 3 6 30
		f 4 28 29 30 -9
		mu 0 4 7 33 35 1
		f 4 31 32 33 -30
		mu 0 4 32 31 36 34
		f 4 34 -10 35 -33
		mu 0 4 31 10 8 36
		f 4 36 37 38 -11
		mu 0 4 9 39 40 8
		f 4 39 40 41 -38
		mu 0 4 39 37 42 40
		f 4 42 -12 43 -41
		mu 0 4 38 4 3 41
		f 16 -40 -37 -4 -35 -32 -29 -1 -15 -18 -20 1 -23 -26 -28 2 -43
		mu 0 16 37 39 9 10 31 32 11 12 23 24 5 13 29 30 14 15
		f 12 -27 -24 -21 -19 -16 -13 -31 -34 -36 -39 -42 -44
		mu 0 12 16 25 27 17 19 21 18 34 36 8 40 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "chair_leg_4" -p "group1";
	rename -uid "FE7C4C15-4DB9-D6F1-F42E-8DBC0302A888";
	setAttr ".rp" -type "double3" -0.38927155733108521 -0.6884133517742157 13.548055648803711 ;
	setAttr ".sp" -type "double3" -0.38927155733108521 -0.6884133517742157 13.548055648803711 ;
createNode mesh -n "chair_leg_Shape4" -p "|group1|chair_leg_4";
	rename -uid "172ED681-4644-DF84-152F-A6ABDF3937EB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[1]" "f[11:14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[3:4]" "f[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[2]" "f[9]" "f[15]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".pv" -type "double2" 0.59375324845314026 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.50000006 6.7055225e-08
		 0.25000003 3.7252903e-08 0.28731349 0.25 0.75 3.7252903e-08 0.78731346 0.24999997
		 0.46268609 0.24999999 0.71268654 0.24999997 0.21268655 0.24999999 0.5 0.75 0.53731382
		 0.5 0.46268609 0.50000006 0.375 0.41231346 0.375 0.33768654 0.53731382 0.24999999
		 0.62499994 0.33768654 0.62499994 0.41231346 0.625 0.875 0.50000018 1 0.375 0.875
		 0 0 0.41666225 6.2087899e-08 0 0 0.33333772 1.9868073e-08 0.375 0.25 0.41884285 0.25
		 0 0 0.66666234 1.2417593e-08 0 0 0.58333778 9.9340509e-09 0.58115709 0.25 0.625 0.25
		 0.41884285 0.5 0.375 0.5 0.125 0.25 0.375 0.75 0.125 0 0.43749344 0.75 0.625 0.5
		 0.875 0.25 0.58115709 0.5 0.5625065 0.75 0.875 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -0.24065518 -1.0457449 13.548056 
		-0.50247115 -1.0457449 13.286239 -0.37155005 -1.0457449 13.321314 -0.27572837 -1.0457449 
		13.417134 0.059275035 -0.95088845 13.436655 0.02420201 -0.95088845 13.305759 -0.071619891 
		-0.95088845 13.209939 -0.20251472 -0.95088845 13.174864 -0.76428711 -1.0457449 13.548056 
		-0.72921395 -1.0457449 13.417134 -0.6333921 -1.0457449 13.321314 -0.68710816 -0.95088845 
		13.436655 -0.4253183 -0.95088845 13.174864 -0.55621296 -0.95088845 13.209939 -0.65203512 
		-0.95088845 13.305759 -0.071619891 -0.95088845 13.886172 0.02420201 -0.95088845 13.790352 
		0.059275035 -0.95088845 13.659456 -0.20251472 -0.95088845 13.921247 -0.27572837 -1.0457449 
		13.678977 -0.37155005 -1.0457449 13.774797 -0.50247115 -1.0457449 13.809873 -0.65203512 
		-0.95088845 13.790352 -0.55621296 -0.95088845 13.886172 -0.4253183 -0.95088845 13.921247 
		-0.68710816 -0.95088845 13.659456 -0.6333921 -1.0457449 13.774797 -0.72921395 -1.0457449 
		13.678977;
	setAttr -s 28 ".vt[0:27]"  -0.35077953 -0.20964044 0 0 -0.20964044 0.35078049
		 -0.17540729 -0.20964044 0.30378723 -0.30378866 -0.20964044 0.17540741 -0.5 0.82944715 0.14925385
		 -0.45300937 0.82944715 0.32462692 -0.32462776 0.82944715 0.45300674 -0.14925563 0.82944715 0.5
		 0.35077953 -0.20964044 0 0.30378866 -0.20964044 0.17540741 0.17540717 -0.20964044 0.30378723
		 0.49999976 0.82944715 0.14925385 0.14925528 0.82944715 0.5 0.32462716 0.82944715 0.45300674
		 0.45300913 0.82944715 0.32462692 -0.32462776 0.82944715 -0.45300674 -0.45300937 0.82944715 -0.32462692
		 -0.5 0.82944715 -0.14925385 -0.14925563 0.82944715 -0.5 -0.30378866 -0.20964044 -0.17540741
		 -0.17540729 -0.20964044 -0.30378723 0 -0.20964044 -0.35078049 0.45300913 0.82944715 -0.32462692
		 0.32462716 0.82944715 -0.45300674 0.14925528 0.82944715 -0.5 0.49999976 0.82944715 -0.14925385
		 0.17540717 -0.20964044 -0.30378723 0.30378866 -0.20964044 -0.17540741;
	setAttr -s 44 ".ed[0:43]"  4 17 0 7 12 0 11 25 0 18 24 0 0 4 1 7 1 1
		 1 12 1 11 8 1 17 0 1 21 18 1 24 21 1 8 25 1 0 3 0 3 5 1 5 4 0 3 2 0 2 6 1 6 5 0 2 1 0
		 7 6 0 1 10 0 10 13 1 13 12 0 10 9 0 9 14 1 14 13 0 9 8 0 11 14 0 17 16 0 16 19 1
		 19 0 0 16 15 0 15 20 1 20 19 0 15 18 0 21 20 0 24 23 0 23 26 1 26 21 0 23 22 0 22 27 1
		 27 26 0 22 25 0 8 27 0;
	setAttr -s 18 -ch 88 ".fc[0:17]" -type "polyFaces" 
		f 3 5 6 -2
		mu 0 3 5 0 13
		f 3 9 3 10
		mu 0 3 8 10 9
		f 3 7 11 -3
		mu 0 3 6 3 4
		f 3 8 4 0
		mu 0 3 7 1 2
		f 4 12 13 14 -5
		mu 0 4 1 22 23 2
		f 4 15 16 17 -14
		mu 0 4 22 20 24 23
		f 4 18 -6 19 -17
		mu 0 4 20 0 5 24
		f 4 20 21 22 -7
		mu 0 4 0 28 29 13
		f 4 23 24 25 -22
		mu 0 4 28 26 30 29
		f 4 26 -8 27 -25
		mu 0 4 26 3 6 30
		f 4 28 29 30 -9
		mu 0 4 7 33 35 1
		f 4 31 32 33 -30
		mu 0 4 32 31 36 34
		f 4 34 -10 35 -33
		mu 0 4 31 10 8 36
		f 4 36 37 38 -11
		mu 0 4 9 39 40 8
		f 4 39 40 41 -38
		mu 0 4 39 37 42 40
		f 4 42 -12 43 -41
		mu 0 4 38 4 3 41
		f 16 -40 -37 -4 -35 -32 -29 -1 -15 -18 -20 1 -23 -26 -28 2 -43
		mu 0 16 37 39 9 10 31 32 11 12 23 24 5 13 29 30 14 15
		f 12 -27 -24 -21 -19 -16 -13 -31 -34 -36 -39 -42 -44
		mu 0 12 16 25 27 17 19 21 18 34 36 8 40 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "chair_leg_2" -p "group1";
	rename -uid "A498DB1F-41F1-36BC-C16E-66A17F3E001C";
	setAttr ".rp" -type "double3" 0.5369393527507782 -0.6884133517742157 12.587206840515137 ;
	setAttr ".sp" -type "double3" 0.5369393527507782 -0.6884133517742157 12.587206840515137 ;
createNode mesh -n "chair_leg_Shape2" -p "|group1|chair_leg_2";
	rename -uid "3188EFA5-48A1-F2CA-0A68-FB8499A17E77";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[1]" "f[11:14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[3:4]" "f[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[2]" "f[9]" "f[15]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.50000006 6.7055225e-08
		 0.25000003 3.7252903e-08 0.28731349 0.25 0.75 3.7252903e-08 0.78731346 0.24999997
		 0.46268609 0.24999999 0.71268654 0.24999997 0.21268655 0.24999999 0.5 0.75 0.53731382
		 0.5 0.46268609 0.50000006 0.375 0.41231346 0.375 0.33768654 0.53731382 0.24999999
		 0.62499994 0.33768654 0.62499994 0.41231346 0.625 0.875 0.50000018 1 0.375 0.875
		 0 0 0.41666225 6.2087899e-08 0 0 0.33333772 1.9868073e-08 0.375 0.25 0.41884285 0.25
		 0 0 0.66666234 1.2417593e-08 0 0 0.58333778 9.9340509e-09 0.58115709 0.25 0.625 0.25
		 0.41884285 0.5 0.375 0.5 0.125 0.25 0.375 0.75 0.125 0 0.43749344 0.75 0.625 0.5
		 0.875 0.25 0.58115709 0.5 0.5625065 0.75 0.875 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  0.79875541 -1.0457449 12.587207 
		0.53693938 -1.0457449 12.32539 0.66786045 -1.0457449 12.360465 0.76368219 -1.0457449 
		12.456285 0.91013104 -0.95088845 12.475806 0.87505805 -0.95088845 12.344911 0.77923614 
		-0.95088845 12.24909 0.6483413 -0.95088845 12.214015 0.27512336 -1.0457449 12.587207 
		0.31019658 -1.0457449 12.456285 0.40601838 -1.0457449 12.360465 0.16374788 -0.95088845 
		12.475806 0.42553774 -0.95088845 12.214015 0.29464307 -0.95088845 12.24909 0.1988209 
		-0.95088845 12.344911 0.77923614 -0.95088845 12.925323 0.87505805 -0.95088845 12.829503 
		0.91013104 -0.95088845 12.698607 0.6483413 -0.95088845 12.960399 0.76368219 -1.0457449 
		12.718128 0.66786045 -1.0457449 12.813949 0.53693938 -1.0457449 12.849024 0.1988209 
		-0.95088845 12.829503 0.29464307 -0.95088845 12.925323 0.42553774 -0.95088845 12.960399 
		0.16374788 -0.95088845 12.698607 0.40601838 -1.0457449 12.813949 0.31019658 -1.0457449 
		12.718128;
	setAttr -s 28 ".vt[0:27]"  -0.35077953 -0.20964044 0 0 -0.20964044 0.35078049
		 -0.17540729 -0.20964044 0.30378723 -0.30378866 -0.20964044 0.17540741 -0.5 0.82944715 0.14925385
		 -0.45300937 0.82944715 0.32462692 -0.32462776 0.82944715 0.45300674 -0.14925563 0.82944715 0.5
		 0.35077953 -0.20964044 0 0.30378866 -0.20964044 0.17540741 0.17540717 -0.20964044 0.30378723
		 0.49999976 0.82944715 0.14925385 0.14925528 0.82944715 0.5 0.32462716 0.82944715 0.45300674
		 0.45300913 0.82944715 0.32462692 -0.32462776 0.82944715 -0.45300674 -0.45300937 0.82944715 -0.32462692
		 -0.5 0.82944715 -0.14925385 -0.14925563 0.82944715 -0.5 -0.30378866 -0.20964044 -0.17540741
		 -0.17540729 -0.20964044 -0.30378723 0 -0.20964044 -0.35078049 0.45300913 0.82944715 -0.32462692
		 0.32462716 0.82944715 -0.45300674 0.14925528 0.82944715 -0.5 0.49999976 0.82944715 -0.14925385
		 0.17540717 -0.20964044 -0.30378723 0.30378866 -0.20964044 -0.17540741;
	setAttr -s 44 ".ed[0:43]"  4 17 0 7 12 0 11 25 0 18 24 0 0 4 1 7 1 1
		 1 12 1 11 8 1 17 0 1 21 18 1 24 21 1 8 25 1 0 3 0 3 5 1 5 4 0 3 2 0 2 6 1 6 5 0 2 1 0
		 7 6 0 1 10 0 10 13 1 13 12 0 10 9 0 9 14 1 14 13 0 9 8 0 11 14 0 17 16 0 16 19 1
		 19 0 0 16 15 0 15 20 1 20 19 0 15 18 0 21 20 0 24 23 0 23 26 1 26 21 0 23 22 0 22 27 1
		 27 26 0 22 25 0 8 27 0;
	setAttr -s 18 -ch 88 ".fc[0:17]" -type "polyFaces" 
		f 3 5 6 -2
		mu 0 3 5 0 13
		f 3 9 3 10
		mu 0 3 8 10 9
		f 3 7 11 -3
		mu 0 3 6 3 4
		f 3 8 4 0
		mu 0 3 7 1 2
		f 4 12 13 14 -5
		mu 0 4 1 22 23 2
		f 4 15 16 17 -14
		mu 0 4 22 20 24 23
		f 4 18 -6 19 -17
		mu 0 4 20 0 5 24
		f 4 20 21 22 -7
		mu 0 4 0 28 29 13
		f 4 23 24 25 -22
		mu 0 4 28 26 30 29
		f 4 26 -8 27 -25
		mu 0 4 26 3 6 30
		f 4 28 29 30 -9
		mu 0 4 7 33 35 1
		f 4 31 32 33 -30
		mu 0 4 32 31 36 34
		f 4 34 -10 35 -33
		mu 0 4 31 10 8 36
		f 4 36 37 38 -11
		mu 0 4 9 39 40 8
		f 4 39 40 41 -38
		mu 0 4 39 37 42 40
		f 4 42 -12 43 -41
		mu 0 4 38 4 3 41
		f 16 -40 -37 -4 -35 -32 -29 -1 -15 -18 -20 1 -23 -26 -28 2 -43
		mu 0 16 37 39 9 10 31 32 11 12 23 24 5 13 29 30 14 15
		f 12 -27 -24 -21 -19 -16 -13 -31 -34 -36 -39 -42 -44
		mu 0 12 16 25 27 17 19 21 18 34 36 8 40 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "group2";
	rename -uid "F8B0A47F-4E33-598C-4488-41BC617AA02D";
	setAttr ".t" -type "double3" 0.99650294450820565 0.97609286902631531 -15.091003081446216 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".s" -type "double3" 0.71145743203127632 0.71145743203127632 0.71145743203127632 ;
	setAttr ".rp" -type "double3" -0.082211077213287534 -0.8226273596116398 13.076446056365967 ;
	setAttr ".sp" -type "double3" -0.082211077213287354 -1.2553853314620027 13.076446056365967 ;
	setAttr ".spt" -type "double3" -2.1510571102112408e-16 0.43275797185036169 2.7533531010703882e-14 ;
createNode transform -n "chair_body" -p "group2";
	rename -uid "EC419CD0-42D7-2B0E-B338-1F8AA40B64EB";
	setAttr ".rp" -type "double3" -0.082211077213287354 0.81139311194419861 13.076446056365967 ;
	setAttr ".sp" -type "double3" -0.082211077213287354 0.81139311194419861 13.076446056365967 ;
createNode mesh -n "chair_bodyShape" -p "|group2|chair_body";
	rename -uid "89294804-4DD0-BFEE-8BFD-F0A827101402";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[34]" "f[38]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[35]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[33]" "f[37]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[1]" "f[36]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[0]" "f[31:32]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[2]" "f[4:30]";
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0.625 1 0.37500209
		 0.25 0.41663975 0 0.37500209 0.5 0.625 0.75 0.41664183 0.25 0.44544214 0.5 0.44544196
		 0.25000024 0.41664186 0.089473799 0.41664183 0.5 0.41664183 0.66052628 0.43422365
		 0.2550714 0.4201282 0.26085669 0.41094655 0.25906345 0.41014665 0.25595126 0.40892771
		 0.49225354 0.4098765 0.4883779 0.42036194 0.48903227 0.43458661 0.49590796 0.41334125
		 0.15331566 0.38644001 0.25055036 0.4093208 0.21910582 0.39893422 0.24937651 0.38769808
		 0.50076127 0.41302931 0.59615397 0.40111163 0.50290179 0.40982902 0.53312737 0.37500209
		 0.5 0.4166418 0.5 0.41664183 0.25000021 0.39603481 0.25000012 0.38138786 0.25000003
		 0.38138789 0.5 0.39603481 0.5 0.625 0 0.875 0 0.59071016 0.25000003 0.875 0.025022715
		 0.625 0.025022503 0.59071004 0.5 0.625 0.72497749 0.62879491 0.1527444 0.625 0.24999997
		 0.76507741 0.12394305 0.625 0.51613444 0.81190389 0.081803456 0.625 0.60510057 0.41663975
		 1 0.125 0.25 0.125 0.16052726 0.37500209 0.25 0.37500134 0.16052739 0.3750014 0.58947265
		 0.41663975 0.75 0.375 0 0.375 1 0.125 0 0.375 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt[0:47]" -type "float3"  0.25548643 0.37855881 13.283127 
		-0.1718992 -0.37855881 13.283127 -0.1718992 -0.37855881 12.869776 0.25548643 0.37855881 
		12.869776 -0.10866997 0.37855881 12.869776 -0.10866997 0.37855881 13.283127 -0.2607114 
		-5.4371395 13.283127 -0.2607114 -5.4371395 12.869776 -0.13566333 -0.94069242 13.283127 
		-0.11479714 0.10759009 13.283127 -0.073091939 -0.37855881 13.283127 -0.090479955 
		-0.40482739 13.283127 -0.10654723 -0.48163667 13.283127 -0.1200733 -0.60315323 13.283127 
		-0.13003078 -0.76014668 13.283127 -0.13566333 -0.94069242 12.869776 -0.13003078 -0.76014668 
		12.869776 -0.1200733 -0.60315323 12.869776 -0.10654723 -0.48163667 12.869776 -0.090479955 
		-0.40482739 12.869776 -0.073091939 -0.37855881 12.869776 -0.11479714 0.10759009 12.869776 
		-0.11919591 -0.086869471 13.283127 -0.15345576 -0.37855881 13.283127 -0.12359469 
		-0.28132904 13.283127 -0.13501465 -0.37855881 13.283127 -0.15345576 -0.37855881 12.869776 
		-0.11919591 -0.086869471 12.869776 -0.13501465 -0.37855881 12.869776 -0.12359469 
		-0.28132904 12.869776 -0.20597292 -4.9453969 13.283127 -0.21632226 -5.197866 13.283127 
		-0.23593117 -5.3740296 13.283127 -0.20597292 -4.9453969 12.869776 -0.23593117 -5.3740296 
		12.869776 -0.21632226 -5.197866 12.869776 0.19273844 -0.37855881 13.283127 0.25548643 
		0.3027789 13.283127 0.24707976 -0.037889954 13.283127 0.22411247 -0.28727689 13.283127 
		0.19273844 -0.37855881 12.869776 0.22411247 -0.28727689 12.869776 0.24707976 -0.037889954 
		12.869776 0.25548643 0.3027789 12.869776 -0.1449517 0.24252835 13.283127 -0.16577064 
		-0.10759367 13.283127 -0.1449517 0.24252835 12.869776 -0.16577064 -0.10759367 12.869776;
	setAttr -s 48 ".vt[0:47]"  0.56134766 -0.5 0.49999809 -0.49999437 0.5 0.49999809
		 -0.49999437 0.5 -0.50000858 0.56134766 -0.5 -0.50000858 -0.34297496 -0.5 -0.50000858
		 -0.34297496 -0.5 0.49999809 -0.72054487 7.18136692 0.49999809 -0.72054487 7.18136692 -0.50000858
		 -0.41000852 1.24246538 0.49999809 -0.35819077 -0.14210486 0.49999809 -0.25462276 0.5 0.49999809
		 -0.29780304 0.53469551 0.49999809 -0.33770347 0.63614511 0.49999809 -0.37129325 0.79664403 0.49999809
		 -0.39602101 1.004000783 0.49999809 -0.41000852 1.24246538 -0.50000858 -0.39602101 1.004000783 -0.50000858
		 -0.37129325 0.79664403 -0.50000858 -0.33770347 0.63614511 -0.50000858 -0.29780304 0.53469551 -0.50000858
		 -0.25462276 0.5 -0.50000858 -0.35819077 -0.14210486 -0.50000858 -0.3691144 0.11473709 0.49999809
		 -0.45419312 0.5 0.49999809 -0.38003805 0.37157902 0.49999809 -0.40839764 0.5 0.49999809
		 -0.45419312 0.5 -0.50000858 -0.3691144 0.11473709 -0.50000858 -0.40839764 0.5 -0.50000858
		 -0.38003805 0.37157902 -0.50000858 -0.58461088 6.53187418 0.49999809 -0.61031175 6.86533451 0.49999809
		 -0.65900725 7.098011494 0.49999809 -0.58461088 6.53187418 -0.50000858 -0.65900725 7.098011494 -0.50000858
		 -0.61031175 6.86533451 -0.50000858 0.40552333 0.5 0.49999809 0.56134766 -0.39991 0.49999809
		 0.54047108 0.050045002 0.49999809 0.48343557 0.37943494 0.49999809 0.40552333 0.5 -0.50000858
		 0.48343557 0.37943494 -0.50000858 0.54047108 0.050045002 -0.50000858 0.56134766 -0.39991 -0.50000858
		 -0.43307468 -0.32033113 0.49999809 -0.4847751 0.14210959 0.49999809 -0.43307468 -0.32033113 -0.50000858
		 -0.4847751 0.14210959 -0.50000858;
	setAttr -s 85 ".ed[0:84]"  0 37 0 1 2 1 2 47 0 3 0 0 4 3 0 5 0 0 4 5 1
		 5 9 1 1 6 0 2 7 0 6 7 0 8 30 0 10 36 0 1 8 1 9 1 1 9 10 1 15 33 0 20 40 0 21 4 1
		 2 15 1 21 20 1 2 21 1 8 15 1 20 10 1 8 14 0 14 16 1 16 15 0 14 13 0 13 17 1 17 16 0
		 13 12 0 12 18 1 18 17 0 12 11 0 11 19 1 19 18 0 11 10 0 20 19 0 11 22 1 22 9 1 22 23 1
		 23 1 1 23 14 1 12 24 1 24 22 1 24 25 1 25 23 1 25 13 1 16 26 1 26 2 1 26 27 1 27 21 1
		 27 19 1 17 28 1 28 26 1 28 29 1 29 27 1 29 18 1 33 30 1 6 32 0 32 34 1 34 7 0 32 31 0
		 31 35 1 35 34 0 31 30 0 33 35 0 43 3 0 36 40 1 43 37 1 36 39 0 39 41 0 41 40 0 39 38 0
		 38 42 0 42 41 0 38 37 0 43 42 0 45 1 0 47 45 1 5 44 0 44 46 0 46 4 0 44 45 0 47 46 0;
	setAttr -s 39 -ch 170 ".fc[0:38]" -type "polyFaces" 
		f 4 -4 -68 69 -1
		mu 0 4 34 35 37 38
		f 4 79 78 1 2
		mu 0 4 49 51 50 48
		f 4 23 12 68 -18
		mu 0 4 6 7 36 39
		f 4 -7 4 3 -6
		mu 0 4 47 53 4 0
		f 4 22 16 58 -12
		mu 0 4 5 9 28 29
		f 4 -2 8 10 -10
		mu 0 4 3 50 1 27
		f 4 24 25 26 -23
		mu 0 4 5 14 15 9
		f 4 27 28 29 -26
		mu 0 4 14 13 16 15
		f 4 30 31 32 -29
		mu 0 4 13 12 17 16
		f 4 33 34 35 -32
		mu 0 4 12 11 18 17
		f 4 36 -24 37 -35
		mu 0 4 11 7 6 18
		f 4 -37 38 39 15
		mu 0 4 7 11 19 8
		f 4 -40 40 41 -15
		mu 0 4 8 19 20 50
		f 4 -42 42 -25 -14
		mu 0 4 50 20 14 5
		f 4 -34 43 44 -39
		mu 0 4 11 12 21 19
		f 4 -45 45 46 -41
		mu 0 4 19 21 22 20
		f 4 -47 47 -28 -43
		mu 0 4 20 22 13 14
		f 4 -48 -46 -44 -31
		mu 0 4 13 22 21 12
		f 4 -27 48 49 19
		mu 0 4 9 15 23 3
		f 4 -50 50 51 -22
		mu 0 4 3 23 24 10
		f 4 -52 52 -38 -21
		mu 0 4 10 24 18 6
		f 4 -30 53 54 -49
		mu 0 4 15 16 25 23
		f 4 -55 55 56 -51
		mu 0 4 23 25 26 24
		f 4 -57 57 -36 -53
		mu 0 4 24 26 17 18
		f 4 -58 -56 -54 -33
		mu 0 4 17 26 25 16
		f 4 59 60 61 -11
		mu 0 4 1 31 32 27
		f 4 62 63 64 -61
		mu 0 4 31 30 33 32
		f 4 65 -59 66 -64
		mu 0 4 30 29 28 33
		f 6 -9 13 11 -66 -63 -60
		mu 0 6 1 50 5 29 30 31
		f 6 -17 -20 9 -62 -65 -67
		mu 0 6 28 9 3 27 32 33
		f 4 70 71 72 -69
		mu 0 4 36 42 44 39
		f 4 73 74 75 -72
		mu 0 4 42 41 45 43
		f 4 76 -70 77 -75
		mu 0 4 41 38 37 45
		f 8 -13 -16 -8 5 0 -77 -74 -71
		mu 0 8 36 7 8 2 34 38 41 42
		f 8 -5 -19 20 17 -73 -76 -78 67
		mu 0 8 4 53 10 6 39 44 46 40
		f 4 80 81 82 6
		mu 0 4 47 55 57 53
		f 4 83 -80 84 -82
		mu 0 4 54 51 49 56
		f 5 -81 7 14 -79 -84
		mu 0 5 54 2 8 50 51
		f 5 -85 -3 21 18 -83
		mu 0 5 57 52 3 10 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "chair_leg_3" -p "group2";
	rename -uid "2D87E137-4263-B118-85EF-E09A44CA5A46";
	setAttr ".rp" -type "double3" -0.38927155733108521 -0.6884133517742157 12.587206840515137 ;
	setAttr ".sp" -type "double3" -0.38927155733108521 -0.6884133517742157 12.587206840515137 ;
createNode mesh -n "chair_leg_Shape3" -p "|group2|chair_leg_3";
	rename -uid "AD257E02-4234-055B-0C47-8596DE7A7A09";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[1]" "f[11:14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[3:4]" "f[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[2]" "f[9]" "f[15]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.50000006 6.7055225e-08
		 0.25000003 3.7252903e-08 0.28731349 0.25 0.75 3.7252903e-08 0.78731346 0.24999997
		 0.46268609 0.24999999 0.71268654 0.24999997 0.21268655 0.24999999 0.5 0.75 0.53731382
		 0.5 0.46268609 0.50000006 0.375 0.41231346 0.375 0.33768654 0.53731382 0.24999999
		 0.62499994 0.33768654 0.62499994 0.41231346 0.625 0.875 0.50000018 1 0.375 0.875
		 0 0 0.41666225 6.2087899e-08 0 0 0.33333772 1.9868073e-08 0.375 0.25 0.41884285 0.25
		 0 0 0.66666234 1.2417593e-08 0 0 0.58333778 9.9340509e-09 0.58115709 0.25 0.625 0.25
		 0.41884285 0.5 0.375 0.5 0.125 0.25 0.375 0.75 0.125 0 0.43749344 0.75 0.625 0.5
		 0.875 0.25 0.58115709 0.5 0.5625065 0.75 0.875 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -0.24065518 -1.0457449 12.587207 
		-0.50247115 -1.0457449 12.32539 -0.37155005 -1.0457449 12.360465 -0.27572837 -1.0457449 
		12.456285 0.059275035 -0.95088845 12.475806 0.02420201 -0.95088845 12.344911 -0.071619891 
		-0.95088845 12.24909 -0.20251472 -0.95088845 12.214015 -0.76428711 -1.0457449 12.587207 
		-0.72921395 -1.0457449 12.456285 -0.6333921 -1.0457449 12.360465 -0.68710816 -0.95088845 
		12.475806 -0.4253183 -0.95088845 12.214015 -0.55621296 -0.95088845 12.24909 -0.65203512 
		-0.95088845 12.344911 -0.071619891 -0.95088845 12.925323 0.02420201 -0.95088845 12.829503 
		0.059275035 -0.95088845 12.698607 -0.20251472 -0.95088845 12.960399 -0.27572837 -1.0457449 
		12.718128 -0.37155005 -1.0457449 12.813949 -0.50247115 -1.0457449 12.849024 -0.65203512 
		-0.95088845 12.829503 -0.55621296 -0.95088845 12.925323 -0.4253183 -0.95088845 12.960399 
		-0.68710816 -0.95088845 12.698607 -0.6333921 -1.0457449 12.813949 -0.72921395 -1.0457449 
		12.718128;
	setAttr -s 28 ".vt[0:27]"  -0.35077953 -0.20964044 0 0 -0.20964044 0.35078049
		 -0.17540729 -0.20964044 0.30378723 -0.30378866 -0.20964044 0.17540741 -0.5 0.82944715 0.14925385
		 -0.45300937 0.82944715 0.32462692 -0.32462776 0.82944715 0.45300674 -0.14925563 0.82944715 0.5
		 0.35077953 -0.20964044 0 0.30378866 -0.20964044 0.17540741 0.17540717 -0.20964044 0.30378723
		 0.49999976 0.82944715 0.14925385 0.14925528 0.82944715 0.5 0.32462716 0.82944715 0.45300674
		 0.45300913 0.82944715 0.32462692 -0.32462776 0.82944715 -0.45300674 -0.45300937 0.82944715 -0.32462692
		 -0.5 0.82944715 -0.14925385 -0.14925563 0.82944715 -0.5 -0.30378866 -0.20964044 -0.17540741
		 -0.17540729 -0.20964044 -0.30378723 0 -0.20964044 -0.35078049 0.45300913 0.82944715 -0.32462692
		 0.32462716 0.82944715 -0.45300674 0.14925528 0.82944715 -0.5 0.49999976 0.82944715 -0.14925385
		 0.17540717 -0.20964044 -0.30378723 0.30378866 -0.20964044 -0.17540741;
	setAttr -s 44 ".ed[0:43]"  4 17 0 7 12 0 11 25 0 18 24 0 0 4 1 7 1 1
		 1 12 1 11 8 1 17 0 1 21 18 1 24 21 1 8 25 1 0 3 0 3 5 1 5 4 0 3 2 0 2 6 1 6 5 0 2 1 0
		 7 6 0 1 10 0 10 13 1 13 12 0 10 9 0 9 14 1 14 13 0 9 8 0 11 14 0 17 16 0 16 19 1
		 19 0 0 16 15 0 15 20 1 20 19 0 15 18 0 21 20 0 24 23 0 23 26 1 26 21 0 23 22 0 22 27 1
		 27 26 0 22 25 0 8 27 0;
	setAttr -s 18 -ch 88 ".fc[0:17]" -type "polyFaces" 
		f 3 5 6 -2
		mu 0 3 5 0 13
		f 3 9 3 10
		mu 0 3 8 10 9
		f 3 7 11 -3
		mu 0 3 6 3 4
		f 3 8 4 0
		mu 0 3 7 1 2
		f 4 12 13 14 -5
		mu 0 4 1 22 23 2
		f 4 15 16 17 -14
		mu 0 4 22 20 24 23
		f 4 18 -6 19 -17
		mu 0 4 20 0 5 24
		f 4 20 21 22 -7
		mu 0 4 0 28 29 13
		f 4 23 24 25 -22
		mu 0 4 28 26 30 29
		f 4 26 -8 27 -25
		mu 0 4 26 3 6 30
		f 4 28 29 30 -9
		mu 0 4 7 33 35 1
		f 4 31 32 33 -30
		mu 0 4 32 31 36 34
		f 4 34 -10 35 -33
		mu 0 4 31 10 8 36
		f 4 36 37 38 -11
		mu 0 4 9 39 40 8
		f 4 39 40 41 -38
		mu 0 4 39 37 42 40
		f 4 42 -12 43 -41
		mu 0 4 38 4 3 41
		f 16 -40 -37 -4 -35 -32 -29 -1 -15 -18 -20 1 -23 -26 -28 2 -43
		mu 0 16 37 39 9 10 31 32 11 12 23 24 5 13 29 30 14 15
		f 12 -27 -24 -21 -19 -16 -13 -31 -34 -36 -39 -42 -44
		mu 0 12 16 25 27 17 19 21 18 34 36 8 40 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "chair_leg_1" -p "group2";
	rename -uid "BA1710EC-4824-A212-CA81-29BDDC0D4F94";
	setAttr ".rp" -type "double3" 0.5369393527507782 -0.6884133517742157 13.548055648803711 ;
	setAttr ".sp" -type "double3" 0.5369393527507782 -0.6884133517742157 13.548055648803711 ;
createNode mesh -n "chair_leg_Shape1" -p "|group2|chair_leg_1";
	rename -uid "52256EFA-4612-5598-4139-DA822C7573C7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[1]" "f[11:14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[3:4]" "f[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[2]" "f[9]" "f[15]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.50000006 6.7055225e-08
		 0.25000003 3.7252903e-08 0.28731349 0.25 0.75 3.7252903e-08 0.78731346 0.24999997
		 0.46268609 0.24999999 0.71268654 0.24999997 0.21268655 0.24999999 0.5 0.75 0.53731382
		 0.5 0.46268609 0.50000006 0.375 0.41231346 0.375 0.33768654 0.53731382 0.24999999
		 0.62499994 0.33768654 0.62499994 0.41231346 0.625 0.875 0.50000018 1 0.375 0.875
		 0 0 0.41666225 6.2087899e-08 0 0 0.33333772 1.9868073e-08 0.375 0.25 0.41884285 0.25
		 0 0 0.66666234 1.2417593e-08 0 0 0.58333778 9.9340509e-09 0.58115709 0.25 0.625 0.25
		 0.41884285 0.5 0.375 0.5 0.125 0.25 0.375 0.75 0.125 0 0.43749344 0.75 0.625 0.5
		 0.875 0.25 0.58115709 0.5 0.5625065 0.75 0.875 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  0.79875541 -1.0457449 13.548056 
		0.53693938 -1.0457449 13.286239 0.66786045 -1.0457449 13.321314 0.76368219 -1.0457449 
		13.417134 0.91013104 -0.95088845 13.436655 0.87505805 -0.95088845 13.305759 0.77923614 
		-0.95088845 13.209939 0.6483413 -0.95088845 13.174864 0.27512336 -1.0457449 13.548056 
		0.31019658 -1.0457449 13.417134 0.40601838 -1.0457449 13.321314 0.16374788 -0.95088845 
		13.436655 0.42553774 -0.95088845 13.174864 0.29464307 -0.95088845 13.209939 0.1988209 
		-0.95088845 13.305759 0.77923614 -0.95088845 13.886172 0.87505805 -0.95088845 13.790352 
		0.91013104 -0.95088845 13.659456 0.6483413 -0.95088845 13.921247 0.76368219 -1.0457449 
		13.678977 0.66786045 -1.0457449 13.774797 0.53693938 -1.0457449 13.809873 0.1988209 
		-0.95088845 13.790352 0.29464307 -0.95088845 13.886172 0.42553774 -0.95088845 13.921247 
		0.16374788 -0.95088845 13.659456 0.40601838 -1.0457449 13.774797 0.31019658 -1.0457449 
		13.678977;
	setAttr -s 28 ".vt[0:27]"  -0.35077953 -0.20964044 0 0 -0.20964044 0.35078049
		 -0.17540729 -0.20964044 0.30378723 -0.30378866 -0.20964044 0.17540741 -0.5 0.82944715 0.14925385
		 -0.45300937 0.82944715 0.32462692 -0.32462776 0.82944715 0.45300674 -0.14925563 0.82944715 0.5
		 0.35077953 -0.20964044 0 0.30378866 -0.20964044 0.17540741 0.17540717 -0.20964044 0.30378723
		 0.49999976 0.82944715 0.14925385 0.14925528 0.82944715 0.5 0.32462716 0.82944715 0.45300674
		 0.45300913 0.82944715 0.32462692 -0.32462776 0.82944715 -0.45300674 -0.45300937 0.82944715 -0.32462692
		 -0.5 0.82944715 -0.14925385 -0.14925563 0.82944715 -0.5 -0.30378866 -0.20964044 -0.17540741
		 -0.17540729 -0.20964044 -0.30378723 0 -0.20964044 -0.35078049 0.45300913 0.82944715 -0.32462692
		 0.32462716 0.82944715 -0.45300674 0.14925528 0.82944715 -0.5 0.49999976 0.82944715 -0.14925385
		 0.17540717 -0.20964044 -0.30378723 0.30378866 -0.20964044 -0.17540741;
	setAttr -s 44 ".ed[0:43]"  4 17 0 7 12 0 11 25 0 18 24 0 0 4 1 7 1 1
		 1 12 1 11 8 1 17 0 1 21 18 1 24 21 1 8 25 1 0 3 0 3 5 1 5 4 0 3 2 0 2 6 1 6 5 0 2 1 0
		 7 6 0 1 10 0 10 13 1 13 12 0 10 9 0 9 14 1 14 13 0 9 8 0 11 14 0 17 16 0 16 19 1
		 19 0 0 16 15 0 15 20 1 20 19 0 15 18 0 21 20 0 24 23 0 23 26 1 26 21 0 23 22 0 22 27 1
		 27 26 0 22 25 0 8 27 0;
	setAttr -s 18 -ch 88 ".fc[0:17]" -type "polyFaces" 
		f 3 5 6 -2
		mu 0 3 5 0 13
		f 3 9 3 10
		mu 0 3 8 10 9
		f 3 7 11 -3
		mu 0 3 6 3 4
		f 3 8 4 0
		mu 0 3 7 1 2
		f 4 12 13 14 -5
		mu 0 4 1 22 23 2
		f 4 15 16 17 -14
		mu 0 4 22 20 24 23
		f 4 18 -6 19 -17
		mu 0 4 20 0 5 24
		f 4 20 21 22 -7
		mu 0 4 0 28 29 13
		f 4 23 24 25 -22
		mu 0 4 28 26 30 29
		f 4 26 -8 27 -25
		mu 0 4 26 3 6 30
		f 4 28 29 30 -9
		mu 0 4 7 33 35 1
		f 4 31 32 33 -30
		mu 0 4 32 31 36 34
		f 4 34 -10 35 -33
		mu 0 4 31 10 8 36
		f 4 36 37 38 -11
		mu 0 4 9 39 40 8
		f 4 39 40 41 -38
		mu 0 4 39 37 42 40
		f 4 42 -12 43 -41
		mu 0 4 38 4 3 41
		f 16 -40 -37 -4 -35 -32 -29 -1 -15 -18 -20 1 -23 -26 -28 2 -43
		mu 0 16 37 39 9 10 31 32 11 12 23 24 5 13 29 30 14 15
		f 12 -27 -24 -21 -19 -16 -13 -31 -34 -36 -39 -42 -44
		mu 0 12 16 25 27 17 19 21 18 34 36 8 40 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "chair_leg_4" -p "group2";
	rename -uid "70637E55-49D5-D690-834E-BF964D64F388";
	setAttr ".rp" -type "double3" -0.38927155733108521 -0.6884133517742157 13.548055648803711 ;
	setAttr ".sp" -type "double3" -0.38927155733108521 -0.6884133517742157 13.548055648803711 ;
createNode mesh -n "chair_leg_Shape4" -p "|group2|chair_leg_4";
	rename -uid "F5D1D5D1-4541-D521-155D-0E8F02D9C914";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[1]" "f[11:14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[3:4]" "f[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[2]" "f[9]" "f[15]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".pv" -type "double2" 0.59375324845314026 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.50000006 6.7055225e-08
		 0.25000003 3.7252903e-08 0.28731349 0.25 0.75 3.7252903e-08 0.78731346 0.24999997
		 0.46268609 0.24999999 0.71268654 0.24999997 0.21268655 0.24999999 0.5 0.75 0.53731382
		 0.5 0.46268609 0.50000006 0.375 0.41231346 0.375 0.33768654 0.53731382 0.24999999
		 0.62499994 0.33768654 0.62499994 0.41231346 0.625 0.875 0.50000018 1 0.375 0.875
		 0 0 0.41666225 6.2087899e-08 0 0 0.33333772 1.9868073e-08 0.375 0.25 0.41884285 0.25
		 0 0 0.66666234 1.2417593e-08 0 0 0.58333778 9.9340509e-09 0.58115709 0.25 0.625 0.25
		 0.41884285 0.5 0.375 0.5 0.125 0.25 0.375 0.75 0.125 0 0.43749344 0.75 0.625 0.5
		 0.875 0.25 0.58115709 0.5 0.5625065 0.75 0.875 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -0.24065518 -1.0457449 13.548056 
		-0.50247115 -1.0457449 13.286239 -0.37155005 -1.0457449 13.321314 -0.27572837 -1.0457449 
		13.417134 0.059275035 -0.95088845 13.436655 0.02420201 -0.95088845 13.305759 -0.071619891 
		-0.95088845 13.209939 -0.20251472 -0.95088845 13.174864 -0.76428711 -1.0457449 13.548056 
		-0.72921395 -1.0457449 13.417134 -0.6333921 -1.0457449 13.321314 -0.68710816 -0.95088845 
		13.436655 -0.4253183 -0.95088845 13.174864 -0.55621296 -0.95088845 13.209939 -0.65203512 
		-0.95088845 13.305759 -0.071619891 -0.95088845 13.886172 0.02420201 -0.95088845 13.790352 
		0.059275035 -0.95088845 13.659456 -0.20251472 -0.95088845 13.921247 -0.27572837 -1.0457449 
		13.678977 -0.37155005 -1.0457449 13.774797 -0.50247115 -1.0457449 13.809873 -0.65203512 
		-0.95088845 13.790352 -0.55621296 -0.95088845 13.886172 -0.4253183 -0.95088845 13.921247 
		-0.68710816 -0.95088845 13.659456 -0.6333921 -1.0457449 13.774797 -0.72921395 -1.0457449 
		13.678977;
	setAttr -s 28 ".vt[0:27]"  -0.35077953 -0.20964044 0 0 -0.20964044 0.35078049
		 -0.17540729 -0.20964044 0.30378723 -0.30378866 -0.20964044 0.17540741 -0.5 0.82944715 0.14925385
		 -0.45300937 0.82944715 0.32462692 -0.32462776 0.82944715 0.45300674 -0.14925563 0.82944715 0.5
		 0.35077953 -0.20964044 0 0.30378866 -0.20964044 0.17540741 0.17540717 -0.20964044 0.30378723
		 0.49999976 0.82944715 0.14925385 0.14925528 0.82944715 0.5 0.32462716 0.82944715 0.45300674
		 0.45300913 0.82944715 0.32462692 -0.32462776 0.82944715 -0.45300674 -0.45300937 0.82944715 -0.32462692
		 -0.5 0.82944715 -0.14925385 -0.14925563 0.82944715 -0.5 -0.30378866 -0.20964044 -0.17540741
		 -0.17540729 -0.20964044 -0.30378723 0 -0.20964044 -0.35078049 0.45300913 0.82944715 -0.32462692
		 0.32462716 0.82944715 -0.45300674 0.14925528 0.82944715 -0.5 0.49999976 0.82944715 -0.14925385
		 0.17540717 -0.20964044 -0.30378723 0.30378866 -0.20964044 -0.17540741;
	setAttr -s 44 ".ed[0:43]"  4 17 0 7 12 0 11 25 0 18 24 0 0 4 1 7 1 1
		 1 12 1 11 8 1 17 0 1 21 18 1 24 21 1 8 25 1 0 3 0 3 5 1 5 4 0 3 2 0 2 6 1 6 5 0 2 1 0
		 7 6 0 1 10 0 10 13 1 13 12 0 10 9 0 9 14 1 14 13 0 9 8 0 11 14 0 17 16 0 16 19 1
		 19 0 0 16 15 0 15 20 1 20 19 0 15 18 0 21 20 0 24 23 0 23 26 1 26 21 0 23 22 0 22 27 1
		 27 26 0 22 25 0 8 27 0;
	setAttr -s 18 -ch 88 ".fc[0:17]" -type "polyFaces" 
		f 3 5 6 -2
		mu 0 3 5 0 13
		f 3 9 3 10
		mu 0 3 8 10 9
		f 3 7 11 -3
		mu 0 3 6 3 4
		f 3 8 4 0
		mu 0 3 7 1 2
		f 4 12 13 14 -5
		mu 0 4 1 22 23 2
		f 4 15 16 17 -14
		mu 0 4 22 20 24 23
		f 4 18 -6 19 -17
		mu 0 4 20 0 5 24
		f 4 20 21 22 -7
		mu 0 4 0 28 29 13
		f 4 23 24 25 -22
		mu 0 4 28 26 30 29
		f 4 26 -8 27 -25
		mu 0 4 26 3 6 30
		f 4 28 29 30 -9
		mu 0 4 7 33 35 1
		f 4 31 32 33 -30
		mu 0 4 32 31 36 34
		f 4 34 -10 35 -33
		mu 0 4 31 10 8 36
		f 4 36 37 38 -11
		mu 0 4 9 39 40 8
		f 4 39 40 41 -38
		mu 0 4 39 37 42 40
		f 4 42 -12 43 -41
		mu 0 4 38 4 3 41
		f 16 -40 -37 -4 -35 -32 -29 -1 -15 -18 -20 1 -23 -26 -28 2 -43
		mu 0 16 37 39 9 10 31 32 11 12 23 24 5 13 29 30 14 15
		f 12 -27 -24 -21 -19 -16 -13 -31 -34 -36 -39 -42 -44
		mu 0 12 16 25 27 17 19 21 18 34 36 8 40 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "chair_leg_2" -p "group2";
	rename -uid "BDAB4E1E-481B-A241-1BB3-A191B4E23195";
	setAttr ".rp" -type "double3" 0.5369393527507782 -0.6884133517742157 12.587206840515137 ;
	setAttr ".sp" -type "double3" 0.5369393527507782 -0.6884133517742157 12.587206840515137 ;
createNode mesh -n "chair_leg_Shape2" -p "|group2|chair_leg_2";
	rename -uid "4DA42B32-476C-95EE-AF96-88A13015D668";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[1]" "f[11:14]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[17]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[3:4]" "f[10]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[2]" "f[9]" "f[15]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[16]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 43 ".uvst[0].uvsp[0:42]" -type "float2" 0.50000006 6.7055225e-08
		 0.25000003 3.7252903e-08 0.28731349 0.25 0.75 3.7252903e-08 0.78731346 0.24999997
		 0.46268609 0.24999999 0.71268654 0.24999997 0.21268655 0.24999999 0.5 0.75 0.53731382
		 0.5 0.46268609 0.50000006 0.375 0.41231346 0.375 0.33768654 0.53731382 0.24999999
		 0.62499994 0.33768654 0.62499994 0.41231346 0.625 0.875 0.50000018 1 0.375 0.875
		 0 0 0.41666225 6.2087899e-08 0 0 0.33333772 1.9868073e-08 0.375 0.25 0.41884285 0.25
		 0 0 0.66666234 1.2417593e-08 0 0 0.58333778 9.9340509e-09 0.58115709 0.25 0.625 0.25
		 0.41884285 0.5 0.375 0.5 0.125 0.25 0.375 0.75 0.125 0 0.43749344 0.75 0.625 0.5
		 0.875 0.25 0.58115709 0.5 0.5625065 0.75 0.875 0 0.625 0.75;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  0.79875541 -1.0457449 12.587207 
		0.53693938 -1.0457449 12.32539 0.66786045 -1.0457449 12.360465 0.76368219 -1.0457449 
		12.456285 0.91013104 -0.95088845 12.475806 0.87505805 -0.95088845 12.344911 0.77923614 
		-0.95088845 12.24909 0.6483413 -0.95088845 12.214015 0.27512336 -1.0457449 12.587207 
		0.31019658 -1.0457449 12.456285 0.40601838 -1.0457449 12.360465 0.16374788 -0.95088845 
		12.475806 0.42553774 -0.95088845 12.214015 0.29464307 -0.95088845 12.24909 0.1988209 
		-0.95088845 12.344911 0.77923614 -0.95088845 12.925323 0.87505805 -0.95088845 12.829503 
		0.91013104 -0.95088845 12.698607 0.6483413 -0.95088845 12.960399 0.76368219 -1.0457449 
		12.718128 0.66786045 -1.0457449 12.813949 0.53693938 -1.0457449 12.849024 0.1988209 
		-0.95088845 12.829503 0.29464307 -0.95088845 12.925323 0.42553774 -0.95088845 12.960399 
		0.16374788 -0.95088845 12.698607 0.40601838 -1.0457449 12.813949 0.31019658 -1.0457449 
		12.718128;
	setAttr -s 28 ".vt[0:27]"  -0.35077953 -0.20964044 0 0 -0.20964044 0.35078049
		 -0.17540729 -0.20964044 0.30378723 -0.30378866 -0.20964044 0.17540741 -0.5 0.82944715 0.14925385
		 -0.45300937 0.82944715 0.32462692 -0.32462776 0.82944715 0.45300674 -0.14925563 0.82944715 0.5
		 0.35077953 -0.20964044 0 0.30378866 -0.20964044 0.17540741 0.17540717 -0.20964044 0.30378723
		 0.49999976 0.82944715 0.14925385 0.14925528 0.82944715 0.5 0.32462716 0.82944715 0.45300674
		 0.45300913 0.82944715 0.32462692 -0.32462776 0.82944715 -0.45300674 -0.45300937 0.82944715 -0.32462692
		 -0.5 0.82944715 -0.14925385 -0.14925563 0.82944715 -0.5 -0.30378866 -0.20964044 -0.17540741
		 -0.17540729 -0.20964044 -0.30378723 0 -0.20964044 -0.35078049 0.45300913 0.82944715 -0.32462692
		 0.32462716 0.82944715 -0.45300674 0.14925528 0.82944715 -0.5 0.49999976 0.82944715 -0.14925385
		 0.17540717 -0.20964044 -0.30378723 0.30378866 -0.20964044 -0.17540741;
	setAttr -s 44 ".ed[0:43]"  4 17 0 7 12 0 11 25 0 18 24 0 0 4 1 7 1 1
		 1 12 1 11 8 1 17 0 1 21 18 1 24 21 1 8 25 1 0 3 0 3 5 1 5 4 0 3 2 0 2 6 1 6 5 0 2 1 0
		 7 6 0 1 10 0 10 13 1 13 12 0 10 9 0 9 14 1 14 13 0 9 8 0 11 14 0 17 16 0 16 19 1
		 19 0 0 16 15 0 15 20 1 20 19 0 15 18 0 21 20 0 24 23 0 23 26 1 26 21 0 23 22 0 22 27 1
		 27 26 0 22 25 0 8 27 0;
	setAttr -s 18 -ch 88 ".fc[0:17]" -type "polyFaces" 
		f 3 5 6 -2
		mu 0 3 5 0 13
		f 3 9 3 10
		mu 0 3 8 10 9
		f 3 7 11 -3
		mu 0 3 6 3 4
		f 3 8 4 0
		mu 0 3 7 1 2
		f 4 12 13 14 -5
		mu 0 4 1 22 23 2
		f 4 15 16 17 -14
		mu 0 4 22 20 24 23
		f 4 18 -6 19 -17
		mu 0 4 20 0 5 24
		f 4 20 21 22 -7
		mu 0 4 0 28 29 13
		f 4 23 24 25 -22
		mu 0 4 28 26 30 29
		f 4 26 -8 27 -25
		mu 0 4 26 3 6 30
		f 4 28 29 30 -9
		mu 0 4 7 33 35 1
		f 4 31 32 33 -30
		mu 0 4 32 31 36 34
		f 4 34 -10 35 -33
		mu 0 4 31 10 8 36
		f 4 36 37 38 -11
		mu 0 4 9 39 40 8
		f 4 39 40 41 -38
		mu 0 4 39 37 42 40
		f 4 42 -12 43 -41
		mu 0 4 38 4 3 41
		f 16 -40 -37 -4 -35 -32 -29 -1 -15 -18 -20 1 -23 -26 -28 2 -43
		mu 0 16 37 39 9 10 31 32 11 12 23 24 5 13 29 30 14 15
		f 12 -27 -24 -21 -19 -16 -13 -31 -34 -36 -39 -42 -44
		mu 0 12 16 25 27 17 19 21 18 34 36 8 40 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "90F4337A-47C8-6A45-89E4-2395B4820E72";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A9D92789-4AFB-21FE-27EE-32BC6A270BA0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "93327FC0-4F0A-E62C-5265-FE94CE1BBFE4";
createNode displayLayerManager -n "layerManager";
	rename -uid "05AE6BDF-4C9E-D7B4-F843-FBB6B1677D8A";
createNode displayLayer -n "defaultLayer";
	rename -uid "F2F821AD-4B80-45B9-220E-588855FFD377";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "CA9BCFE7-4C32-AECC-8961-16ABD707B387";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "541BC819-4E29-D3D6-28B8-F7AFA60095BF";
	setAttr ".g" yes;
createNode lambert -n "pink_color";
	rename -uid "D1664B22-453F-CA94-0BE1-A5B96497B848";
	setAttr ".c" -type "float3" 0.833 0.59726101 0.68888485 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "E4F621FA-4580-9919-3A06-708B2CDC73C5";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "AB80F4F0-408F-9C86-7C6B-9D87915811D4";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B083FF9F-4456-6DED-2B0E-F2ADAB745FA7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 637\n            -height 234\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 636\n            -height 234\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 637\n            -height 234\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 852\n            -height 535\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
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
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 852\\n    -height 535\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 852\\n    -height 535\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 1 -size 2 -divisions 4 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "994DDE33-44E7-1A83-A64D-4EB798FA0C76";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "4C17F844-49FC-13E6-7C94-CD9F050A8335";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -43.253966535210033 -336.11109775525608 ;
	setAttr ".tgi[0].vh" -type "double2" 422.61903082567613 44.047617297323981 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -214.28572082519531;
	setAttr ".tgi[0].ni[0].y" 31.428571701049805;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 92.857139587402344;
	setAttr ".tgi[0].ni[1].y" 31.428571701049805;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "8CC7DC3E-426F-D2BD-25FA-B3937DF705A9";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "2511FDA6-4E68-DAB3-9115-9884BAD0FEEF";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "C475AE4F-4E0A-3C3A-F422-2FA71B0AC2D1";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "251B6AFC-4FB3-6689-6B48-EB8670B62CEE";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode lambert -n "Black_tile";
	rename -uid "0EEA9ED7-4E37-62C5-9D4E-8BA0340AAAD1";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "A2D297CF-4097-8E27-9616-3CAAD4EA5135";
	setAttr ".ihi" 0;
	setAttr -s 18 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "5BCAA7EE-41AD-B8CE-31A3-CE9171DCE823";
createNode lambert -n "Whitetile";
	rename -uid "3180EF9E-46D4-C41D-8724-35A4E99ABD3D";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "6D1A4909-4ED6-AD78-7121-C88422C56196";
	setAttr ".ihi" 0;
	setAttr -s 23 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "C0B2D446-4EE3-4D40-59A4-79B40E165A08";
createNode lambert -n "CabnetPurple";
	rename -uid "A967703C-4A92-E5DB-A42A-359496FDA9A5";
	setAttr ".c" -type "float3" 0.11507814 0.096496001 0.32600001 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "16414FDE-4256-AC3D-9D6A-2EB0F07883A5";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "27FCB4E0-4063-A722-F499-57AF3A010259";
createNode lambert -n "CountertopTan";
	rename -uid "2D0E6D8F-48F8-8BE4-6094-A987EC8CD65D";
	setAttr ".c" -type "float3" 0.29899999 0.27324563 0.127075 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "279C4EBF-4F79-6D18-095A-EDA9353112BC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "FC3BCBD1-40D7-9116-3331-C1BBE1DC7BA5";
createNode groupId -n "groupId2";
	rename -uid "7EB3D1CA-427F-5F24-457A-3E8DDFAC7050";
	setAttr ".ihi" 0;
createNode lambert -n "SinkBlack";
	rename -uid "233A515C-4059-7E95-12FE-9EB1D97A2845";
	setAttr ".c" -type "float3" 0.033698998 0.034237467 0.046999998 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "6AC500ED-4BCE-1CF4-7AEF-04B99E345A8C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "7272CCF7-460D-B065-B203-0FB85118F0F9";
createNode groupId -n "groupId3";
	rename -uid "72DFA533-43D2-3F8A-2887-7E8359F8122E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "1AA004DB-4A6A-6457-A37D-7B94F700EE1A";
	setAttr ".ihi" 0;
createNode lambert -n "lambert8";
	rename -uid "26CF6362-40E8-C696-18D4-5293514C152B";
	setAttr ".c" -type "float3" 0.41299999 0.10035899 0.1763048 ;
createNode shadingEngine -n "lambert8SG";
	rename -uid "45D9F144-4321-95E1-EC68-CE8B97881A0C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "78088AC9-495D-76D5-9F2D-13BE1172D203";
createNode lambert -n "lambert9";
	rename -uid "EDB8DF98-4F7E-91E7-1E73-6EB9C75B3C4D";
	setAttr ".c" -type "float3" 0.191 0.13261876 0.050997004 ;
createNode shadingEngine -n "lambert9SG";
	rename -uid "B2DB3E58-4ABB-6E08-2220-5783ACEDAAB1";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "97B5223E-4347-F450-932B-44964FAF3797";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "30CEF35C-4C90-E245-612A-CC870DA85477";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 92;
	setAttr ".unw" 92;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId4.id" "pCubeShape2.iog.og[1].gid";
connectAttr "lambert6SG.mwc" "pCubeShape2.iog.og[1].gco";
connectAttr "groupId2.id" "pCubeShape2.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert9SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pink_color.oc" "lambert2SG.ss";
connectAttr "Whiteboox_roomShape.iog" "lambert2SG.dsm" -na;
connectAttr "window_wallShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "pink_color.msg" "materialInfo1.m";
connectAttr "pink_color.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "Black_tile.oc" "lambert3SG.ss";
connectAttr "TileShape36.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape34.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape32.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape25.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape29.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape27.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape20.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape22.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape24.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape17.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape15.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape13.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape8.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape10.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape12.iog" "lambert3SG.dsm" -na;
connectAttr "pasted__pCubeShape7.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape3.iog" "lambert3SG.dsm" -na;
connectAttr "TileShape1.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "Black_tile.msg" "materialInfo2.m";
connectAttr "Whitetile.oc" "lambert4SG.ss";
connectAttr "TileShape31.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape35.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape33.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape26.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape28.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape30.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape23.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape21.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape19.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape14.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape16.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape18.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape11.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape9.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape7.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape2.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape4.iog" "lambert4SG.dsm" -na;
connectAttr "TileShape6.iog" "lambert4SG.dsm" -na;
connectAttr "lowerDoorknob_oneShape.iog" "lambert4SG.dsm" -na;
connectAttr "lowerDoorknob_twoShape.iog" "lambert4SG.dsm" -na;
connectAttr "upperDoorknob_oneShape.iog" "lambert4SG.dsm" -na;
connectAttr "upperDoorknob_twoShape.iog" "lambert4SG.dsm" -na;
connectAttr "fridge_bodyShape.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "Whitetile.msg" "materialInfo3.m";
connectAttr "CabnetPurple.oc" "lambert5SG.ss";
connectAttr "pCubeShape3.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" "lambert5SG.dsm" -na;
connectAttr "pCubeShape12.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape11.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape10.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape9.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "groupId2.msg" "lambert5SG.gn" -na;
connectAttr "groupId3.msg" "lambert5SG.gn" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "CabnetPurple.msg" "materialInfo4.m";
connectAttr "CountertopTan.oc" "lambert6SG.ss";
connectAttr "groupId4.msg" "lambert6SG.gn" -na;
connectAttr "pCubeShape2.iog.og[1]" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "CountertopTan.msg" "materialInfo5.m";
connectAttr "SinkBlack.oc" "lambert7SG.ss";
connectAttr "sinkShape.iog" "lambert7SG.dsm" -na;
connectAttr "lambert7SG.msg" "materialInfo6.sg";
connectAttr "SinkBlack.msg" "materialInfo6.m";
connectAttr "lambert8.oc" "lambert8SG.ss";
connectAttr "frige_doorShape.iog" "lambert8SG.dsm" -na;
connectAttr "lambert8SG.msg" "materialInfo7.sg";
connectAttr "lambert8.msg" "materialInfo7.m";
connectAttr "lambert9.oc" "lambert9SG.ss";
connectAttr "|group1|chair_leg_2|chair_leg_Shape2.iog" "lambert9SG.dsm" -na;
connectAttr "|group1|chair_leg_4|chair_leg_Shape4.iog" "lambert9SG.dsm" -na;
connectAttr "|group1|chair_leg_1|chair_leg_Shape1.iog" "lambert9SG.dsm" -na;
connectAttr "|group1|chair_leg_3|chair_leg_Shape3.iog" "lambert9SG.dsm" -na;
connectAttr "|group1|chair_body|chair_bodyShape.iog" "lambert9SG.dsm" -na;
connectAttr "|group2|chair_body|chair_bodyShape.iog" "lambert9SG.dsm" -na;
connectAttr "|group2|chair_leg_3|chair_leg_Shape3.iog" "lambert9SG.dsm" -na;
connectAttr "|group2|chair_leg_1|chair_leg_Shape1.iog" "lambert9SG.dsm" -na;
connectAttr "|group2|chair_leg_4|chair_leg_Shape4.iog" "lambert9SG.dsm" -na;
connectAttr "|group2|chair_leg_2|chair_leg_Shape2.iog" "lambert9SG.dsm" -na;
connectAttr "lambert9SG.msg" "materialInfo8.sg";
connectAttr "lambert9.msg" "materialInfo8.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "lambert8SG.pa" ":renderPartition.st" -na;
connectAttr "lambert9SG.pa" ":renderPartition.st" -na;
connectAttr "pink_color.msg" ":defaultShaderList1.s" -na;
connectAttr "Black_tile.msg" ":defaultShaderList1.s" -na;
connectAttr "Whitetile.msg" ":defaultShaderList1.s" -na;
connectAttr "CabnetPurple.msg" ":defaultShaderList1.s" -na;
connectAttr "CountertopTan.msg" ":defaultShaderList1.s" -na;
connectAttr "SinkBlack.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert8.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert9.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Tableleg_one_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Tabletoop_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Tableleg_three_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Tableleg_four_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Tableleg_two_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "frige_handelShape.iog" ":initialShadingGroup.dsm" -na;
// End of Corner_room.ma
