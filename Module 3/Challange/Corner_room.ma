//Maya ASCII 2024 scene
//Name: Corner_room.ma
//Last modified: Sat, Sep 14, 2024 10:24:43 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19045)";
fileInfo "UUID" "D1204E98-443D-1037-9FE5-8BAC56A09418";
createNode transform -s -n "persp";
	rename -uid "EB6DD354-4C68-BCAF-3394-DB900876FD27";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.976032496738338 14.283454211017951 18.635474010538353 ;
	setAttr ".r" -type "double3" -26.400000000000066 45.599999999999604 0 ;
	setAttr ".rpt" -type "double3" 1.8869745210502117e-17 -3.8630176655322265e-17 1.4355466472962995e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F4915474-45D6-B304-5BD5-8CA5A71FE5CE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 28.317101259015246;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.1458244089542395 1.6926748187179284 0.88924059898415697 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CBC35376-4442-C18B-0C0D-B9ADF171B8E1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.148741476727428 1000.1057116988908 0.70485496967523598 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "609F7B03-4013-58A9-FE6A-AE930623F378";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 998.3077370909989;
	setAttr ".ow" 1.1302278570237763;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -2.148741476727428 1.7979746078918906 0.70485496967523598 ;
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
	setAttr ".t" -type "double3" 2.5 0.50000001202731292 0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 2.5 0.50000001202731292 -0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 2.5 0.50000001202731292 -2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 1.5 0.50000001202731292 2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 0.5 0.50000001202731292 1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 1.5 0.50000001202731292 0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 1.5 0.50000001202731292 1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 1.5 0.50000001202731292 -1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 0.5 0.50000001202731292 -2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 2.5 0.50000001202731292 2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
createNode mesh -n "TileShape1" -p "Tile01";
	rename -uid "C11E0E2C-45A3-E19A-422A-8A909E09A627";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Tile10" -p "Tiles";
	rename -uid "D054455A-4A20-B1D4-2316-1C8F5469B984";
	setAttr ".t" -type "double3" 1.5 0.50000001202731292 -0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 0.5 0.50000001202731292 2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 0.5 0.50000001202731292 0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 1.5 0.50000001202731292 -2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 0.5 0.50000001202731292 -0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 2.5 0.50000001202731292 1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -1.5 0.50000001202731292 0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -2.5 0.50000001202731292 0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -1.5 0.50000001202731292 -2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -0.5 0.50000001202731292 1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -0.5 0.50000001202731292 -2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -1.5 0.50000001202731292 -0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -2.5 0.50000001202731292 -1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -0.5 0.50000001202731292 -1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -2.5 0.50000001202731292 -0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -1.5 0.50000001202731292 2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -0.5 0.50000001202731292 0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -0.5 0.50000001202731292 2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -1.5 0.50000001202731292 1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -1.5 0.50000001202731292 -1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -2.5 0.50000001202731292 1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -2.5 0.50000001202731292 2.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 0.5 0.50000001202731292 -1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -0.5 0.50000001202731292 -0.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" -2.5000000000000004 0.48365072350378879 -2.4990253155030362 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
	setAttr ".t" -type "double3" 2.5 0.50000001202731292 -1.5 ;
	setAttr ".rp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
	setAttr ".sp" -type "double3" 0.5 -0.50000001202731292 0.5 ;
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
createNode transform -n "fridge_whitebox";
	rename -uid "04E2D7F7-4396-58E4-5168-0FA1BBD2FC52";
	setAttr ".t" -type "double3" -1.5929098984534007 0 -1.5740417338810024 ;
	setAttr ".s" -type "double3" 2.7430968187444762 4.1807740935827251 2.7177571204582662 ;
createNode mesh -n "fridge_whiteboxShape" -p "fridge_whitebox";
	rename -uid "B997D645-432D-4612-98FE-71A64E04AF8C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.53670746 -0.34704089 
		-0.44541258 0.53670746 -0.34704089 -9.3132257e-10 0.51745492 -0.34704089 -0.44541261 
		0.51745492 -0.34704089 -9.3132257e-10 0.51745492 9.3132257e-10 -0.44541261 0.51745492 
		9.3132257e-10 0 0.53670746 0 -0.44541258 0.53670746 0;
createNode transform -n "window_wall";
	rename -uid "D31C8085-48DA-0F83-356A-AEBC498131AF";
	setAttr ".t" -type "double3" 5.1347185473747787 3.5463424202555043 -3.2206355333328247 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".rp" -type "double3" -2.1347185473747787 1.1920928955078125e-07 -1.7367367270833629 ;
	setAttr ".rpt" -type "double3" 0 1.7367366078740734 1.7367368462926525 ;
	setAttr ".sp" -type "double3" -2.1347185473747787 1.1920928955078125e-07 -1.7367367270833629 ;
createNode mesh -n "window_wallShape" -p "window_wall";
	rename -uid "03F3B0BE-46B9-9800-05B7-1294BDD39694";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".pt[0:79]" -type "float3"  -3.5380332 0 0 -3.5380332 
		0 0 -3.5380332 0 0 -3.5380332 0 0 -3.5380332 0 0 -3.5380332 0 0 -3.5380332 0 0 -3.5380332 
		0 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 
		-0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 
		0 -3.5380332 -0.10691052 0 -3.5380332 0 0 -3.5380332 0 0 -3.5380332 -0.10691052 0 
		-3.5380332 -0.10691052 0 -3.5380332 0 0 -3.5380332 0 0 -3.5380332 0 0 -3.5380332 
		0 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 
		-0.10691052 0 -6.2197046 0 0.16698371 -3.5309925 0 0.16698371 -3.5309925 -0.10691052 
		0.16698365 -6.0000005 -0.10691052 0.16698365 -6.2197046 0 0 -6.2197046 0 1.0118767 
		-6.0000005 -0.10691052 0 -6.0000005 -0.10691052 1.0118767 -3.5309925 0 0 -3.5309925 
		0 1.0118767 -3.5309925 -0.10691052 1.0118767 -3.5309925 -0.10691052 0 -3.5380332 
		0 0 -3.5380332 0 0 -3.5380332 0 0 -3.5380332 0 0 -3.5380332 -0.10691052 0 -3.5380332 
		-0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 
		0 -3.5380332 -0.10691052 0 -6.0000005 -0.10691052 0 -6.2197046 0 0 -3.5380332 0 0 
		-3.5380332 0 0 -3.5380332 0 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 
		-0.10691052 0 -6.0000005 -0.10691052 0 -6.2197046 0 0 -3.5380332 0 0 -3.5380332 0 
		0 -3.5380332 0 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 
		0 -3.5380332 0 0 -3.5380332 0 0 -3.5380332 0 0 -3.5309925 0 0 -3.5309925 -0.10691052 
		0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 -0.10691052 0 -3.5380332 
		0 0 -3.5380332 0 0 -3.5380332 0 0 -3.5309925 0 0 -3.5309925 -0.10691052 0 -3.5380332 
		-0.10691052 0;
createNode transform -n "sink";
	rename -uid "A5C85FC0-4A72-D3D3-852D-29BD0A309B38";
	setAttr ".t" -type "double3" -2.1141028802806918 1.7708084870296212 1.5633973371075078 ;
	setAttr ".s" -type "double3" 0.81229398149005683 0.9579637785338343 1.1136734474837666 ;
	setAttr ".rp" -type "double3" 0.50006985692886241 0.027166099457196162 0.55763316370161875 ;
	setAttr ".sp" -type "double3" 0.70339212088637071 0.03653481362908062 0.64422653239606964 ;
	setAttr ".spt" -type "double3" -0.2033222639575081 -0.0093687141718844531 -0.086593368694450501 ;
createNode mesh -n "sinkShape" -p "sink";
	rename -uid "5913C048-4401-0BD3-6B1E-84840ED9CE90";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Doorknobs";
	rename -uid "91369EC3-4E82-A222-17A9-03BEA061C6F1";
createNode transform -n "upperDoorknob_two" -p "Doorknobs";
	rename -uid "07A8A101-4D25-FC7E-0FA0-5BAF4F21ACAD";
	setAttr ".t" -type "double3" -1.6805737665799314 4.1033803045401553 0.53650629966513508 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.11103297877948498 0.095790136283104038 0.12525466599976412 ;
	setAttr ".rp" -type "double3" 0 0.13818352902858913 0 ;
	setAttr ".rpt" -type "double3" -0.13818352902858913 -0.13818352902858913 0 ;
	setAttr ".sp" -type "double3" 0 1.4425653244734222 0 ;
	setAttr ".spt" -type "double3" 0 -1.304381795444834 0 ;
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
	setAttr -s 22 ".pt";
	setAttr ".pt[301]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[302]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[303]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[304]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[305]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[306]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[307]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[308]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[309]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[310]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[311]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[312]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[313]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[314]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[315]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[316]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[317]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[318]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[319]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[320]" -type "float3" 0 -0.34811658 0 ;
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
	setAttr ".t" -type "double3" -1.6805737665799314 4.1033803045401553 1.1349433745024307 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.11103297877948498 0.095790136283104038 0.12525466599976412 ;
	setAttr ".rp" -type "double3" 0 0.13818352902858913 0 ;
	setAttr ".rpt" -type "double3" -0.13818352902858913 -0.13818352902858913 0 ;
	setAttr ".sp" -type "double3" 0 1.4425653244734222 0 ;
	setAttr ".spt" -type "double3" 0 -1.304381795444834 0 ;
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
	setAttr -s 22 ".pt";
	setAttr ".pt[301]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[302]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[303]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[304]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[305]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[306]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[307]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[308]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[309]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[310]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[311]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[312]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[313]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[314]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[315]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[316]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[317]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[318]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[319]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[320]" -type "float3" 0 -0.34811658 0 ;
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
	setAttr ".t" -type "double3" -1.251054351678198 0.9222993424447965 0.53650629966513508 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.11103297877948498 0.095790136283104038 0.12525466599976412 ;
	setAttr ".rp" -type "double3" 0 0.13818352902858913 0 ;
	setAttr ".rpt" -type "double3" -0.13818352902858913 -0.13818352902858913 0 ;
	setAttr ".sp" -type "double3" 0 1.4425653244734222 0 ;
	setAttr ".spt" -type "double3" 0 -1.304381795444834 0 ;
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
	setAttr -s 22 ".pt";
	setAttr ".pt[301]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[302]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[303]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[304]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[305]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[306]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[307]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[308]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[309]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[310]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[311]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[312]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[313]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[314]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[315]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[316]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[317]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[318]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[319]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[320]" -type "float3" 0 -0.34811658 0 ;
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
	setAttr ".t" -type "double3" -1.251054351678198 0.9222993424447965 1.1349433745024307 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 0.11103297877948498 0.095790136283104038 0.12525466599976412 ;
	setAttr ".rp" -type "double3" 0 0.13818352902858913 0 ;
	setAttr ".rpt" -type "double3" -0.13818352902858913 -0.13818352902858913 0 ;
	setAttr ".sp" -type "double3" 0 1.4425653244734222 0 ;
	setAttr ".spt" -type "double3" 0 -1.304381795444834 0 ;
createNode mesh -n "lowerDoorknob_oneShape" -p "lowerDoorknob_one";
	rename -uid "C54712FF-4530-D4DD-2CAD-E7A384C409CF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47500008344650269 0.7000001072883606 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt";
	setAttr ".pt[301]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[302]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[303]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[304]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[305]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[306]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[307]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[308]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[309]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[310]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[311]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[312]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[313]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[314]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[315]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[316]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[317]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[318]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[319]" -type "float3" 0 -0.34811658 0 ;
	setAttr ".pt[320]" -type "float3" 0 -0.34811658 0 ;
createNode transform -n "Cabnets_counter";
	rename -uid "D74E1BF6-4F27-2581-FAEE-67AA88E12746";
createNode transform -n "pCube11" -p "Cabnets_counter";
	rename -uid "7941E68A-4091-CA2B-6B9C-E8A0F4C19BA2";
	setAttr ".t" -type "double3" -1.4333402735331646 0.24831958278630673 0.28327031532541791 ;
	setAttr ".s" -type "double3" 0.25503317637904988 3.0509512970510144 1.1907645997716976 ;
	setAttr ".rp" -type "double3" -0.12085145809984549 1.1583996867093427 0.41372183466121809 ;
	setAttr ".sp" -type "double3" -0.47386563511339663 0.37968475204079066 0.3564434344983054 ;
	setAttr ".spt" -type "double3" 0.3530141770135472 0.77871493466855113 0.057278400162905085 ;
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
	setAttr -s 4 ".pt";
	setAttr ".pt[2]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[7]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[11]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[15]" -type "float3" 0.11834095 0 1.110223e-16 ;
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
	setAttr ".t" -type "double3" -1.8628597845759358 3.4848668870950501 0.28327031532541791 ;
	setAttr ".s" -type "double3" 0.25503317637904988 3.0509512970510144 1.1907645997716976 ;
	setAttr ".rp" -type "double3" -0.12085145809984549 1.1583996867093427 0.41372183466121809 ;
	setAttr ".sp" -type "double3" -0.47386563511339663 0.37968475204079066 0.3564434344983054 ;
	setAttr ".spt" -type "double3" 0.3530141770135472 0.77871493466855113 0.057278400162905085 ;
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
	setAttr -s 4 ".pt";
	setAttr ".pt[2]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[7]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[11]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[15]" -type "float3" 0.11834095 0 1.110223e-16 ;
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
	setAttr ".t" -type "double3" -1.4333402735331646 0.24831958278630673 2.0956434433829751 ;
	setAttr ".s" -type "double3" 0.25503317637904988 3.0509512970510144 1.1907645997716976 ;
	setAttr ".rp" -type "double3" -0.12085145809984549 1.1583996867093427 0.41372183466121809 ;
	setAttr ".sp" -type "double3" -0.47386563511339663 0.37968475204079066 0.3564434344983054 ;
	setAttr ".spt" -type "double3" 0.3530141770135472 0.77871493466855113 0.057278400162905085 ;
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
	setAttr -s 4 ".pt";
	setAttr ".pt[2]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[7]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[11]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[15]" -type "float3" 0.11834095 0 1.110223e-16 ;
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
	setAttr ".t" -type "double3" -1.8628597845759358 3.4848668870950501 2.0956434433829751 ;
	setAttr ".s" -type "double3" 0.25503317637904988 3.0509512970510144 1.1907645997716976 ;
	setAttr ".rp" -type "double3" -0.12085145809984549 1.1583996867093427 0.41372183466121809 ;
	setAttr ".sp" -type "double3" -0.47386563511339663 0.37968475204079066 0.3564434344983054 ;
	setAttr ".spt" -type "double3" 0.3530141770135472 0.77871493466855113 0.057278400162905085 ;
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
	setAttr -s 4 ".pt";
	setAttr ".pt[2]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[7]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[11]" -type "float3" 0.11834095 0 1.110223e-16 ;
	setAttr ".pt[15]" -type "float3" 0.11834095 0 1.110223e-16 ;
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
	setAttr ".t" -type "double3" -2.133449783907543 3.2379397297945633 1.6244654307348982 ;
	setAttr ".s" -type "double3" 2.7430968187444762 4.1807740935827251 2.7177571204582662 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "C8F32317-4943-F29E-8821-3AAE27BD42BF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49410955607891083 0.37499997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[5]" -type "float3" 0 0.0055218027 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.0055218027 0 ;
	setAttr ".pt[8]" -type "float3" 0 0.0055218027 0 ;
	setAttr ".pt[10]" -type "float3" 0 0.0055218027 0 ;
	setAttr ".pt[16]" -type "float3" 0.00088452548 0.0065318355 0.0021718098 ;
	setAttr ".pt[17]" -type "float3" -0.00088452548 0.0065318355 0.0021718098 ;
	setAttr ".pt[18]" -type "float3" -0.00088452548 0.0065318355 0.0021718098 ;
	setAttr ".pt[19]" -type "float3" 0.00088452548 0.0065318355 0.0021718098 ;
	setAttr ".pt[20]" -type "float3" 0.00088452548 0.0065318355 -0.0021718098 ;
	setAttr ".pt[21]" -type "float3" -0.00088452548 0.0065318355 -0.0021718098 ;
	setAttr ".pt[22]" -type "float3" -0.00088452548 0.0065318355 -0.0021718098 ;
	setAttr ".pt[23]" -type "float3" 0.00088452548 0.0065318355 -0.0021718098 ;
createNode mesh -n "polySurfaceShape1" -p "pCube3";
	rename -uid "069143AA-416E-DAD8-CC89-52A92F4F6658";
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
createNode transform -n "pCube2" -p "Cabnets_counter";
	rename -uid "817FBCD0-4D37-9A1E-D3F0-B7B4A0727AE5";
	setAttr ".t" -type "double3" -1.5929098984534007 0 1.6244654307348982 ;
	setAttr ".s" -type "double3" 2.7430968187444762 4.1807740935827251 2.7177571204582662 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "1FA7B8A4-4CD9-D912-AAEA-64A42E2508EC";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "pCube2";
	rename -uid "9D892878-44D2-9A1D-B245-BF9F746B0805";
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
	setAttr ".pv" -type "double2" 0.5 0.375 ;
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
createNode transform -n "Table_Whiteboxes";
	rename -uid "A8EACF61-412E-BA79-9F29-1EAB0621E674";
createNode transform -n "Tableleg_one_whitebox" -p "Table_Whiteboxes";
	rename -uid "E3A80FEB-4E11-F972-BFC6-BC89E5A08C96";
	setAttr ".t" -type "double3" 1.25 0 2.25 ;
	setAttr ".s" -type "double3" 0.45711393473763223 3.4729516623512837 0.18648225422224016 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.53670746 -0.11717887 
		-0.44541258 0.53670746 -0.11717887 0 -0.18162428 -0.11717887 -0.44541258 -0.18162428 
		-0.11717887 0 -0.18162428 -0.43727377 -0.44541258 -0.18162428 -0.43727377 0 0.53670746 
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
createNode transform -n "Tabletoop_whitebox" -p "Table_Whiteboxes";
	rename -uid "69028D07-4AB5-27D1-7FE0-B38E46834DEC";
	setAttr ".t" -type "double3" 1.2181608008145282 0.9522378148532713 1.6244654307348982 ;
	setAttr ".s" -type "double3" 2.7430968187444762 4.1807740935827251 2.0106679361369602 ;
	setAttr ".rp" -type "double3" -0.6109049103995503 0.27636960703924196 -0.55741003054866445 ;
	setAttr ".sp" -type "double3" -0.22270628809928894 0.066104888916015625 -0.27722629904747009 ;
	setAttr ".spt" -type "double3" -0.38819862230026142 0.21026471812322634 -0.2801837315011943 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.53670746 -0.11717887 
		-0.44541258 0.53670746 -0.11717887 0 -0.40449768 -0.11717887 -0.44541258 -0.40449768 
		-0.11717887 0 -0.40449768 -0.43727377 -0.44541258 -0.40449768 -0.43727377 0 0.53670746 
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
createNode transform -n "Tableleg_three_whitebox" -p "Table_Whiteboxes";
	rename -uid "52F3874A-4480-2190-D60E-DAA3AB8C2AA0";
	setAttr ".t" -type "double3" 0.25 0 2.25 ;
	setAttr ".s" -type "double3" 0.45711393473763223 3.4729516623512837 0.18648225422224016 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.53670746 -0.11717887 
		-0.44541258 0.53670746 -0.11717887 0 -0.18162428 -0.11717887 -0.44541258 -0.18162428 
		-0.11717887 0 -0.18162428 -0.43727377 -0.44541258 -0.18162428 -0.43727377 0 0.53670746 
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
createNode transform -n "Tableleg_four_whitebox" -p "Table_Whiteboxes";
	rename -uid "BEE7A93E-4537-F579-CE36-F2B521C7987B";
	setAttr ".t" -type "double3" 1.25 0 0 ;
	setAttr ".s" -type "double3" 0.45711393473763223 3.4729516623512837 0.18648225422224016 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.53670746 -0.11717887 
		-0.44541258 0.53670746 -0.11717887 0 -0.18162428 -0.11717887 -0.44541258 -0.18162428 
		-0.11717887 0 -0.18162428 -0.43727377 -0.44541258 -0.18162428 -0.43727377 0 0.53670746 
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
createNode transform -n "Tableleg_two_whitebox" -p "Table_Whiteboxes";
	rename -uid "B42B0513-4912-C150-D490-0A849EF6C2F1";
	setAttr ".t" -type "double3" 0.25 0 0 ;
	setAttr ".s" -type "double3" 0.45711393473763223 3.4729516623512837 0.18648225422224016 ;
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0.53670746 -0.11717887 
		-0.44541258 0.53670746 -0.11717887 0 -0.18162428 -0.11717887 -0.44541258 -0.18162428 
		-0.11717887 0 -0.18162428 -0.43727377 -0.44541258 -0.18162428 -0.43727377 0 0.53670746 
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B0A84FBE-439A-F05E-7D76-5892D682E60E";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E86F763D-455D-12FC-479F-809B99B17FC5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C1862545-410A-5137-03E4-E0B4BAE3F6F9";
createNode displayLayerManager -n "layerManager";
	rename -uid "186900BC-4566-3197-1BAA-5AB74202E4FB";
createNode displayLayer -n "defaultLayer";
	rename -uid "F2F821AD-4B80-45B9-220E-588855FFD377";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "97E1D8C4-4658-E541-796B-F6844BAEBF66";
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
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 571\n            -height 234\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 571\n            -height 234\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 571\n            -height 234\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1150\n            -height 535\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1150\\n    -height 535\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1150\\n    -height 535\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
createNode polyBevel3 -n "polyBevel1";
	rename -uid "D7822C2A-46C8-C850-70A2-B29E8059ADDE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 2.5 0.50000001202731292 2.5 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.15;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak1";
	rename -uid "D0C8BEFF-4867-2D96-FCA8-7FB0DDF8AE56";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 -0.84653449 0 0 -0.84653449
		 0 0 -0.84653449 0 0 -0.84653449 0;
createNode polyCube -n "polyCube1";
	rename -uid "20E15226-40C7-BF6A-C0A8-0E9F1EEF4B20";
	setAttr ".cuv" 4;
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
	setAttr -s 22 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "C0B2D446-4EE3-4D40-59A4-79B40E165A08";
createNode polyCube -n "polyCube2";
	rename -uid "779E848B-4A39-49C7-A784-E999553C56E5";
	setAttr ".cuv" 4;
createNode polyPlane -n "polyPlane1";
	rename -uid "9BB48C02-415C-B9B3-48A6-5A820BEE8345";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "D6B8FE6B-44A9-EE16-E081-A2B84C450352";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.5338907 3.4398019 -2.9963682 ;
	setAttr ".rs" 33861;
	setAttr ".ls" -type "double3" 1.4399999966352757 1.4399999966352757 1.4399999966352757 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.6646691661186752 2.1963357206934311 -2.9963680574515275 ;
	setAttr ".cbx" -type "double3" 7.4031120639153061 4.6832681175821644 -2.9963680574515275 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "55CEE541-4DB3-660E-0135-F59EFF113BE9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  -0.7384429 0 0.97768891 0
		 0 0.97768891 -0.7384429 0 -0.50924349 0 0 -0.50924349;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "9C608886-4156-C6AD-0FF7-429FFF5A55F7";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "41A04329-4983-059A-775A-BEAE72EB919E";
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -8.4376949871511897e-15 0.32571278544443771 ;
	setAttr ".pvt" -type "float3" 6.5338902 3.4398019 -2.6706557 ;
	setAttr ".rs" 60011;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.4734402995415268 1.9227734085672714 -2.9963680574515275 ;
	setAttr ".cbx" -type "double3" 7.5943404536552963 4.9568305489176137 -2.9963680574515275 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "2EEF293E-4D88-B4A2-BB08-FBBDBF3F2E28";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.5338902 1.9227734 -2.8335116 ;
	setAttr ".rs" 62047;
	setAttr ".lt" -type "double3" 0 0 0.28229926735722044 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.4734402995415268 1.9227734085672714 -2.9963680574515275 ;
	setAttr ".cbx" -type "double3" 7.5943404536552963 1.9227734085672714 -2.670655138216298 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "D36D2C0E-4FB6-A14E-3088-D6B022D151C9";
	setAttr ".ics" -type "componentList" 2 "f[16]" "f[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.5338902 1.7816237 -2.8335116 ;
	setAttr ".rs" 54765;
	setAttr ".lt" -type "double3" -8.8817841970012523e-16 1.8719943797937923e-16 0.28453238084574783 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.4734402995415268 1.6404741284006454 -2.9963680574515275 ;
	setAttr ".cbx" -type "double3" 7.5943404536552963 1.9227734085672714 -2.670655138216298 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "3F329168-4F98-DC18-317B-278EE02AFE36";
	setAttr ".ics" -type "componentList" 6 "f[9]" "f[11]" "f[13]" "f[15]" "f[17]" "f[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".ws" yes;
	setAttr ".s" -type "double3" 1.4141255409510143 1.6002550345575055 1 ;
	setAttr ".pvt" -type "float3" 6.5338902 3.2986524 -2.8335116 ;
	setAttr ".rs" 48365;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 5.4734402995415268 1.6404741284006454 -2.9963680574515275 ;
	setAttr ".cbx" -type "double3" 7.5943404536552963 4.9568305489176137 -2.670655138216298 ;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "369A55AB-4816-DB65-6A98-BC9524786063";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[18]" "e[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".wt" 0.27788639068603516;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "84FA8C35-43EB-96CB-D55E-978008E9C939";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[28:39]" -type "float3"  -0.26588708 0 0.47047827 0.26588708
		 0 0.47047827 0.26588708 0 0.47047827 -0.26588708 0 0.47047827 -0.26588708 0 -0.82587832
		 -0.26588708 0 -0.47047827 -0.26588708 0 -0.82587832 -0.26588708 0 -0.47047827 0.26588708
		 0 -0.82587832 0.26588708 0 -0.47047827 0.26588708 0 -0.47047827 0.26588708 0 -0.82587832;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "6BA36E3D-4B4D-8015-DDE9-B987DD1583B6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[80:81]" "e[83]" "e[85]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".wt" 0.68814128637313843;
	setAttr ".re" 80;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "171B66CF-4276-A58A-EC35-159F972CED2C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[8]" "e[19]" "e[21]" "e[60]" "e[64]" "e[87]" "e[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".wt" 0.49674844741821289;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "A4468DBE-49C9-266B-0DC3-8880A9D4478D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[8]" "e[19]" "e[21]" "e[60]" "e[64]" "e[107]" "e[109]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".wt" 0.84519875049591064;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "AB5659D7-4DAD-88BF-0D47-7DA5BE33DDE4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[2]" "e[10]" "e[23:24]" "e[68]" "e[72]" "e[84]" "e[92]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".wt" 0.50359946489334106;
	setAttr ".dr" no;
	setAttr ".re" 23;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "36D80C07-4CFB-D6B8-D2B5-229EFCA2EEA9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[2]" "e[10]" "e[23:24]" "e[68]" "e[72]" "e[84]" "e[92]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".wt" 0.8089524507522583;
	setAttr ".dr" no;
	setAttr ".re" 23;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "F376DABA-468D-87D4-21AC-53A5EA3A1FD4";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[48:79]" -type "float3"  0 0 -0.37470114 0 0 -0.37648016
		 0 0 0.35165757 0 0 0.35165757 0 0 -0.37648016 0 0 -0.37470114 0 0 -0.37470114 0 0
		 -0.37470114 0 0 -0.39998844 0 0 -0.44383982 0 0 0.17158128 0 0 0.17158128 0 0 -0.44383982
		 0 0 -0.39998844 0 0 -0.39998844 0 0 -0.39998844 0 0 -0.35766339 0 0 -0.35766339 0
		 0 -0.35766339 0 0 -0.35766339 0 0 -0.35569406 0 0 0.38248593 0 0 0.38248593 0 0 -0.35569406
		 0 0 -0.43098298 0 0 -0.43098298 0 0 -0.43098298 0 0 -0.43098298 0 0 -0.4816533 0
		 0 0.11549918 0 0 0.11549918 0 0 -0.4816533;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "22942D5A-40B4-B5F0-950C-929FD302B4F6";
	setAttr ".dc" -type "componentList" 2 "f[62]" "f[73]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "DA59936D-4326-DB3D-3ADB-5CA5091BBEA3";
	setAttr ".ics" -type "componentList" 6 "e[107]" "e[109:110]" "e[126]" "e[132]" "e[145]" "e[147:148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0 1 0 0 -1 0 0 6.9031120639153061 3.6740246292703964 -2.9963680574515275 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 62;
	setAttr ".sv2" 74;
	setAttr ".d" 1;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "E416C0B0-4684-F7AE-D9B0-DDAA1E024ADF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:4]" "e[7:8]" "e[11]";
	setAttr ".ix" -type "matrix" 2.7430968187444762 0 0 0 0 4.1807740935827251 0 0 0 0 2.7177571204582662 0
		 -2.133449783907543 3.2379397297945633 1.6244654307348982 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.099999999999999978;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyPlane -n "polyPlane2";
	rename -uid "9E72AAA0-4F45-B611-8D72-3FBA65C79375";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "296B0C8A-4551-A8D7-5571-16B1AEB528C0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.75861618022868449 0 0 0 0 0.75861618022868449 0 0
		 0 0 0.75861618022868449 0 -1.882157326029815 2.576365775354895 4.2097723673600358 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 8.4376949871511897e-15 0.16489566243950016 -3.3750779948604759e-14 ;
	setAttr ".pvt" -type "float3" -1.8821573 2.7412617 4.2097726 ;
	setAttr ".rs" 36302;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2614654161441572 2.576365775354895 3.8304642772456936 ;
	setAttr ".cbx" -type "double3" -1.5028492359154728 2.576365775354895 4.5890804574743784 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "12E2B554-4C1C-0FD2-A2E2-F0AB1A17D013";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[6]" "e[8]" "e[10:11]";
	setAttr ".ix" -type "matrix" 0.75861618022868449 0 0 0 0 0.75861618022868449 0 0
		 0 0 0.75861618022868449 0 -1.882157326029815 2.576365775354895 4.2097723673600358 1;
	setAttr ".ws" yes;
	setAttr ".s" -type "double3" 1.4707960658483588 1 1.4707960658483588 ;
	setAttr ".pvt" -type "float3" -1.8821574 2.7412615 4.2097726 ;
	setAttr ".rs" 42846;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2614655970123492 2.7412614971129483 3.8304642772456936 ;
	setAttr ".cbx" -type "double3" -1.5028492359154728 2.7412614971129483 4.5890808192107615 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "A4F6279B-495F-FB1B-FEFE-0BA8FD79CC1B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[14]" "e[16]" "e[18:19]";
	setAttr ".ix" -type "matrix" 0.75861618022868449 0 0 0 0 0.75861618022868449 0 0
		 0 0 0.75861618022868449 0 -1.882157326029815 2.576365775354895 4.2097723673600358 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.8821576 2.7412615 4.2097726 ;
	setAttr ".rs" 44333;
	setAttr ".lt" -type "double3" -1.6799686862610814e-17 -9.6005450058960358e-16 -0.13717985360601465 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4400425505325392 2.7412614971129483 3.6518873237255036 ;
	setAttr ".cbx" -type "double3" -1.3242725536975701 2.7412614971129483 4.7676577727309519 ;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "2594B957-46CF-EFA8-2C2D-E8A03AC742CD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[7]" "e[9]";
	setAttr ".ix" -type "matrix" 0.71094037319995307 0 0 0 0 0.74356748423570829 0 0
		 0 0 0.86558552878537121 0 -1.882157326029815 2.576365775354895 4.2097723673600358 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".sg" 4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak5";
	rename -uid "507CCCCD-4AF6-DA1A-B5F6-1D83361D1A03";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.20666297 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.20666297 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.20666297 0 ;
	setAttr ".tk[3]" -type "float3" 0 -0.20666297 0 ;
	setAttr ".tk[8]" -type "float3" 0.032005813 0 -0.091173694 ;
	setAttr ".tk[9]" -type "float3" -0.032005813 0 -0.091173694 ;
	setAttr ".tk[10]" -type "float3" 0.032005813 0 0.091173694 ;
	setAttr ".tk[11]" -type "float3" -0.032005813 0 0.091173694 ;
	setAttr ".tk[12]" -type "float3" 0.032005813 0 -0.091173694 ;
	setAttr ".tk[13]" -type "float3" -0.032005813 0 -0.091173694 ;
	setAttr ".tk[14]" -type "float3" 0.032005813 0 0.091173694 ;
	setAttr ".tk[15]" -type "float3" -0.032005813 0 0.091173694 ;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "E9643086-48D7-9F24-849C-3D8FA062AF75";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[12:13]" "e[19]" "e[24]" "e[40]" "e[43]" "e[46]" "e[49]" "e[51]" "e[54]" "e[57]" "e[60]" "e[62]" "e[65]" "e[68]" "e[71]" "e[73]" "e[76]" "e[79]" "e[82]";
	setAttr ".ix" -type "matrix" 0.71094037319995307 0 0 0 0 0.74356748423570829 0 0
		 0 0 0.86558552878537121 0 -1.882157326029815 2.576365775354895 4.2097723673600358 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.6;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "DBB0EA95-45EE-91B2-C19A-20975BCB686E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[13:14]" "e[18]" "e[22]" "e[28:43]";
	setAttr ".ix" -type "matrix" 0.71094037319995307 0 0 0 0 0.74356748423570829 0 0
		 0 0 0.86558552878537121 0 -1.882157326029815 2.576365775354895 4.2097723673600358 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "5CB0B781-42DC-B453-B766-F2A735186BF2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 0.71094037319995307 0 0 0 0 0.74356748423570829 0 0
		 0 0 0.86558552878537121 0 -1.882157326029815 2.576365775354895 4.2097723673600358 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.19999999999999993;
	setAttr ".sg" 4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "378D3F5B-4F99-A55D-F198-8CA7DD1C3438";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[0]" "e[2]" "e[5]" "e[8]" "e[11]" "e[14]" "e[16]" "e[18]";
	setAttr ".ix" -type "matrix" 2.7430968187444762 0 0 0 0 4.1807740935827251 0 0 0 0 2.7177571204582662 0
		 -2.133449783907543 3.2379397297945633 1.6244654307348982 1;
	setAttr ".wt" 0.42767965793609619;
	setAttr ".re" 11;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "DC1CF3C5-4DEB-AD4F-6925-50AAF2DE2A42";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.7430968187444762 0 0 0 0 4.1807740935827251 0 0 0 0 2.7177571204582662 0
		 -1.5929098984534007 0 1.6244654307348982 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2038147 1.587375 0.8710317 ;
	setAttr ".rs" 42774;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9644583078256388 1.5873750295439659 -0.92281695205706482 ;
	setAttr ".cbx" -type "double3" -1.4431713098802632 1.5873750295439659 2.6648803170977522 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "2E2C21EC-431C-A19E-2EF7-6BB1B76B315A";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.7430968187444762 0 0 0 0 4.1807740935827251 0 0 0 0 2.7177571204582662 0
		 -1.5929098984534007 0 1.6244654307348982 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1458242 1.587375 0.88924038 ;
	setAttr ".rs" 53223;
	setAttr ".lt" -type "double3" 0 0 0.21059948341428347 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9644586348282616 1.5873750295439659 -1.0710386692489582 ;
	setAttr ".cbx" -type "double3" -1.3271899787035777 1.5873750295439659 2.8495193812444293 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "B791B3D9-45CB-A19C-C386-6EAE795E2F11";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[8]" -type "float3" -2.1420419e-08 -1.8626451e-09 0.067938045 ;
	setAttr ".tk[9]" -type "float3" 0.042281225 -1.8626451e-09 0.067938045 ;
	setAttr ".tk[10]" -type "float3" 0.042281225 -1.8626451e-09 -0.054538254 ;
	setAttr ".tk[11]" -type "float3" -2.1420419e-08 -1.8626451e-09 -0.054538254 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "ABA17EFE-4AE2-E73E-99AE-15AE66E7DFAD";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.7430968187444762 0 0 0 0 4.1807740935827251 0 0 0 0 2.7177571204582662 0
		 -1.5929098984534007 0 1.6244654307348982 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.1458244 1.7979745 0.88924044 ;
	setAttr ".rs" 42842;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9644586348282616 1.7979744832951132 -1.0710386692489582 ;
	setAttr ".cbx" -type "double3" -1.3271901013295613 1.7979744832951132 2.849519543235377 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "2ED5C02E-48A6-6EA9-CC16-EF8B8E4CCAA2";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.0088927792 ;
	setAttr ".tk[1]" -type "float3" -0.024483334 0 0.0088927792 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.0088927792 ;
	setAttr ".tk[3]" -type "float3" -0.024483334 0 0.0088927792 ;
	setAttr ".tk[5]" -type "float3" -0.024483334 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.024483334 0 0 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "2B68F4BB-4368-C5CC-A03B-1188FC6AF2A6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0.075705826 0 -0.26751357
		 -0.10378528 0 -0.26751357 -0.10378528 0 0.65344089 0.075705826 0 0.65344089;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "3DDFB17D-4AB3-67F8-D91A-B9B4D9B67352";
	setAttr ".dc" -type "componentList" 1 "f[1]";
createNode polySphere -n "polySphere1";
	rename -uid "D13FCF3F-452B-F73A-5FCC-0A8332B60D28";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "106E75A0-450D-276F-50DD-5D880B5750CC";
	setAttr ".dc" -type "componentList" 2 "f[260:359]" "f[380:399]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "CFF7B6DE-4B4C-659F-6E77-CD96362151C3";
	setAttr ".ics" -type "componentList" 1 "e[260:279]";
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "8416339F-4AEC-268E-678A-90B3E546BF80";
	setAttr ".ics" -type "componentList" 1 "f[280]";
	setAttr ".ix" -type "matrix" 0 0.53226144101020079 0 0 -0.45919146305051495 0 0 0
		 0 0 0.60043628254530657 0 0 0 4.1777553308507933 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.26990595 -4.7587882e-08 4.1777554 ;
	setAttr ".rs" 38005;
	setAttr ".ls" -type "double3" 0.7833333366193953 0.7833333366193953 0.7833333366193953 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26990596614637063 -0.43060865077210375 3.6919919545714324 ;
	setAttr ".cbx" -type "double3" -0.26990596614637063 0.43060855559634142 4.6635185639749892 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "CEA3AA8D-48F5-687F-641B-C08FC9BFC875";
	setAttr ".ics" -type "componentList" 1 "f[280]";
	setAttr ".ix" -type "matrix" 0 0.53226144101020079 0 0 -0.45919146305051495 0 0 0
		 0 0 0.60043628254530657 0 0 0 4.1777553308507933 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.30408281 -1.5862627e-08 4.1777554 ;
	setAttr ".rs" 47226;
	setAttr ".lt" -type "double3" 0 -4.2050170800558225e-16 0.51818264139737602 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30408281526789227 -0.33731007170117633 3.7972405984160886 ;
	setAttr ".cbx" -type "double3" -0.30408281526789227 0.33731003997592224 4.558270063285498 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "8A512CF8-4A9C-A2AC-E94D-E3BE8963A874";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[281]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[282]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[283]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[284]" -type "float3" 1.0429302e-16 0.074428231 0 ;
	setAttr ".tk[285]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[286]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[287]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[288]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[289]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[290]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[291]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[292]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[293]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[294]" -type "float3" 1.0429302e-16 0.074428231 0 ;
	setAttr ".tk[295]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[296]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[297]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[298]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[299]" -type "float3" 1.110223e-16 0.074428231 0 ;
	setAttr ".tk[300]" -type "float3" 1.110223e-16 0.074428231 0 ;
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
createNode polyBevel3 -n "polyBevel7";
	rename -uid "8438FB91-41BF-59AE-BDBE-6B80B0196112";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[24:26]";
	setAttr ".ix" -type "matrix" 2.7430968187444762 0 0 0 0 4.1807740935827251 0 0 0 0 2.7177571204582662 0
		 -1.5929098984534007 0 1.6244654307348982 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode lambert -n "CountertopTan";
	rename -uid "2D0E6D8F-48F8-8BE4-6094-A987EC8CD65D";
	setAttr ".c" -type "float3" 0.29899999 0.27324563 0.127075 ;
createNode shadingEngine -n "lambert6SG";
	rename -uid "279C4EBF-4F79-6D18-095A-EDA9353112BC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "FC3BCBD1-40D7-9116-3331-C1BBE1DC7BA5";
createNode groupId -n "groupId1";
	rename -uid "3B62D310-49F9-CE7F-E227-CA9F4D1FC097";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "0E3394B1-4382-18D6-E06E-968C9B5EB973";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
	setAttr ".irc" -type "componentList" 1 "f[5:40]";
createNode groupId -n "groupId2";
	rename -uid "7EB3D1CA-427F-5F24-457A-3E8DDFAC7050";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "3639450A-4EAB-7513-42C8-C8BE8AB76234";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "E7F568A6-4666-2817-1D40-3CBF13598C81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[5:40]";
createNode lambert -n "SinkBlack";
	rename -uid "233A515C-4059-7E95-12FE-9EB1D97A2845";
	setAttr ".c" -type "float3" 0.033698998 0.034237467 0.046999998 ;
createNode shadingEngine -n "lambert7SG";
	rename -uid "6AC500ED-4BCE-1CF4-7AEF-04B99E345A8C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "7272CCF7-460D-B065-B203-0FB85118F0F9";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "539D11B4-401B-95F1-3A3C-839EC837104D";
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
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
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
connectAttr "polyBevel1.out" "TileShape1.i";
connectAttr "polyCube2.out" "fridge_whiteboxShape.i";
connectAttr "polyBridgeEdge1.out" "window_wallShape.i";
connectAttr "polyBevel6.out" "sinkShape.i";
connectAttr "polyExtrudeFace9.out" "lowerDoorknob_oneShape.i";
connectAttr "polySplitRing7.out" "pCubeShape3.i";
connectAttr "groupId1.id" "pCubeShape2.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupId3.id" "pCubeShape2.iog.og[1].gid";
connectAttr "lambert6SG.mwc" "pCubeShape2.iog.og[1].gco";
connectAttr "groupParts2.og" "pCubeShape2.i";
connectAttr "groupId2.id" "pCubeShape2.ciog.cog[0].cgid";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert7SG.message" ":defaultLightSet.message";
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
connectAttr "polyTweak1.out" "polyBevel1.ip";
connectAttr "TileShape1.wm" "polyBevel1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
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
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "Whitetile.msg" "materialInfo3.m";
connectAttr "polyTweak2.out" "polyExtrudeEdge1.ip";
connectAttr "window_wallShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyPlane1.out" "polyTweak2.ip";
connectAttr "polyExtrudeEdge1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeFace1.ip";
connectAttr "window_wallShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "window_wallShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "window_wallShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "window_wallShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak3.out" "polySplitRing1.ip";
connectAttr "window_wallShape.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak3.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "window_wallShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "window_wallShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "window_wallShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "window_wallShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "window_wallShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyBridgeEdge1.ip";
connectAttr "window_wallShape.wm" "polyBridgeEdge1.mp";
connectAttr "|Cabnets_counter|pCube3|polySurfaceShape1.o" "polyBevel2.ip";
connectAttr "pCubeShape3.wm" "polyBevel2.mp";
connectAttr "polyPlane2.out" "polyExtrudeEdge2.ip";
connectAttr "sinkShape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "polyExtrudeEdge3.ip";
connectAttr "sinkShape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge3.out" "polyExtrudeEdge4.ip";
connectAttr "sinkShape.wm" "polyExtrudeEdge4.mp";
connectAttr "polyTweak5.out" "polyBevel3.ip";
connectAttr "sinkShape.wm" "polyBevel3.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweak5.ip";
connectAttr "polyBevel3.out" "polyBevel4.ip";
connectAttr "sinkShape.wm" "polyBevel4.mp";
connectAttr "polyBevel4.out" "polyBevel5.ip";
connectAttr "sinkShape.wm" "polyBevel5.mp";
connectAttr "polyBevel5.out" "polyBevel6.ip";
connectAttr "sinkShape.wm" "polyBevel6.mp";
connectAttr "polyBevel2.out" "polySplitRing7.ip";
connectAttr "pCubeShape3.wm" "polySplitRing7.mp";
connectAttr "polySurfaceShape2.o" "polyExtrudeFace5.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak7.ip";
connectAttr "polyExtrudeFace7.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "deleteComponent3.ig";
connectAttr "polySphere1.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyExtrudeFace8.ip";
connectAttr "lowerDoorknob_oneShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyTweak9.out" "polyExtrudeFace9.ip";
connectAttr "lowerDoorknob_oneShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak9.ip";
connectAttr "CabnetPurple.oc" "lambert5SG.ss";
connectAttr "pCubeShape3.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" "lambert5SG.dsm" -na;
connectAttr "pCubeShape12.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape11.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape10.iog" "lambert5SG.dsm" -na;
connectAttr "pCubeShape9.iog" "lambert5SG.dsm" -na;
connectAttr "groupId1.msg" "lambert5SG.gn" -na;
connectAttr "groupId2.msg" "lambert5SG.gn" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "CabnetPurple.msg" "materialInfo4.m";
connectAttr "deleteComponent3.og" "polyBevel7.ip";
connectAttr "pCubeShape2.wm" "polyBevel7.mp";
connectAttr "CountertopTan.oc" "lambert6SG.ss";
connectAttr "groupId3.msg" "lambert6SG.gn" -na;
connectAttr "pCubeShape2.iog.og[1]" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "CountertopTan.msg" "materialInfo5.m";
connectAttr "polyBevel7.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "SinkBlack.oc" "lambert7SG.ss";
connectAttr "sinkShape.iog" "lambert7SG.dsm" -na;
connectAttr "lambert7SG.msg" "materialInfo6.sg";
connectAttr "SinkBlack.msg" "materialInfo6.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert7SG.pa" ":renderPartition.st" -na;
connectAttr "pink_color.msg" ":defaultShaderList1.s" -na;
connectAttr "Black_tile.msg" ":defaultShaderList1.s" -na;
connectAttr "Whitetile.msg" ":defaultShaderList1.s" -na;
connectAttr "CabnetPurple.msg" ":defaultShaderList1.s" -na;
connectAttr "CountertopTan.msg" ":defaultShaderList1.s" -na;
connectAttr "SinkBlack.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "fridge_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Tableleg_one_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Tabletoop_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Tableleg_three_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Tableleg_four_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Tableleg_two_whiteboxShape.iog" ":initialShadingGroup.dsm" -na;
// End of Corner_room.ma
