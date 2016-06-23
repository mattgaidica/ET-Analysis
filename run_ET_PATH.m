p = '/Users/mattgaidica/Documents/Data/ET Data/Binary converted data/30000 Hz';
listing = dir(p);
jj = 1;
ET_PATH = struct;
for ii=3:21
    ET_PATH(jj).patient = listing(ii).name;
    ET_PATH(jj).binary = fullfile(p,listing(ii).name);
    ET_PATH(jj).mtc = '';
    jj = jj + 1;
end