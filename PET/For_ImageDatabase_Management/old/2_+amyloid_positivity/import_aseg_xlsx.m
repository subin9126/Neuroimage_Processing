function [orig_aseg] = import_aseg_xlsx(filename)
%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: /media/imgdb_mnt/Public_codes/IMGDAY_CODES/FS_DATA_REARRANGE/asegstats_NIPA_191202_before.xlsx
%    Worksheet: asegstats_NIPA_191202
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2020/04/01 17:44:50

%% Import the data
[~, ~, raw] = xlsread(filename);
raw = raw(2:end,:);
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};
cellVectors = raw(:,1);
raw = raw(:,[2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67]);

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Create table
orig_aseg = table;

%% Allocate imported array to column variable names
orig_aseg.Measurevolume = cellVectors(:,1);
orig_aseg.LeftLateralVentricle = data(:,1);
orig_aseg.LeftInfLatVent = data(:,2);
orig_aseg.LeftCerebellumWhiteMatter = data(:,3);
orig_aseg.LeftCerebellumCortex = data(:,4);
orig_aseg.LeftThalamusProper = data(:,5);
orig_aseg.LeftCaudate = data(:,6);
orig_aseg.LeftPutamen = data(:,7);
orig_aseg.LeftPallidum = data(:,8);
orig_aseg.rdVentricle = data(:,9);
orig_aseg.thVentricle = data(:,10);
orig_aseg.BrainStem = data(:,11);
orig_aseg.LeftHippocampus = data(:,12);
orig_aseg.LeftAmygdala = data(:,13);
orig_aseg.CSF = data(:,14);
orig_aseg.LeftAccumbensarea = data(:,15);
orig_aseg.LeftVentralDC = data(:,16);
orig_aseg.Leftvessel = data(:,17);
orig_aseg.Leftchoroidplexus = data(:,18);
orig_aseg.RightLateralVentricle = data(:,19);
orig_aseg.RightInfLatVent = data(:,20);
orig_aseg.RightCerebellumWhiteMatter = data(:,21);
orig_aseg.RightCerebellumCortex = data(:,22);
orig_aseg.RightThalamusProper = data(:,23);
orig_aseg.RightCaudate = data(:,24);
orig_aseg.RightPutamen = data(:,25);
orig_aseg.RightPallidum = data(:,26);
orig_aseg.RightHippocampus = data(:,27);
orig_aseg.RightAmygdala = data(:,28);
orig_aseg.RightAccumbensarea = data(:,29);
orig_aseg.RightVentralDC = data(:,30);
orig_aseg.Rightvessel = data(:,31);
orig_aseg.Rightchoroidplexus = data(:,32);
orig_aseg.thVentricle1 = data(:,33);
orig_aseg.WMhypointensities = data(:,34);
orig_aseg.LeftWMhypointensities = data(:,35);
orig_aseg.RightWMhypointensities = data(:,36);
orig_aseg.nonWMhypointensities = data(:,37);
orig_aseg.LeftnonWMhypointensities = data(:,38);
orig_aseg.RightnonWMhypointensities = data(:,39);
orig_aseg.OpticChiasm = data(:,40);
orig_aseg.CC_Posterior = data(:,41);
orig_aseg.CC_Mid_Posterior = data(:,42);
orig_aseg.CC_Central = data(:,43);
orig_aseg.CC_Mid_Anterior = data(:,44);
orig_aseg.CC_Anterior = data(:,45);
orig_aseg.BrainSegVol = data(:,46);
orig_aseg.BrainSegVolNotVent = data(:,47);
orig_aseg.BrainSegVolNotVentSurf = data(:,48);
orig_aseg.lhCortexVol = data(:,49);
orig_aseg.rhCortexVol = data(:,50);
orig_aseg.CortexVol = data(:,51);
orig_aseg.lhCorticalWhiteMatterVol = data(:,52);
orig_aseg.rhCorticalWhiteMatterVol = data(:,53);
orig_aseg.CorticalWhiteMatterVol = data(:,54);
orig_aseg.SubCortGrayVol = data(:,55);
orig_aseg.TotalGrayVol = data(:,56);
orig_aseg.SupraTentorialVol = data(:,57);
orig_aseg.SupraTentorialVolNotVent = data(:,58);
orig_aseg.SupraTentorialVolNotVentVox = data(:,59);
orig_aseg.MaskVol = data(:,60);
orig_aseg.BrainSegVoltoeTIV = data(:,61);
orig_aseg.MaskVoltoeTIV = data(:,62);
orig_aseg.lhSurfaceHoles = data(:,63);
orig_aseg.rhSurfaceHoles = data(:,64);
orig_aseg.SurfaceHoles = data(:,65);
orig_aseg.EstimatedTotalIntraCranialVol = data(:,66);

%% Clear temporary variables
clearvars data raw cellVectors;