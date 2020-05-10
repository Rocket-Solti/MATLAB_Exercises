
%%
[filename,pathname] = uigetfile('*.xlsx', 'Chose files to load:','MultiSelect','on');
nfiles = length(filename);
for k = 1:nfiles
  file = fullfile(filename,pathname(k));
end
S=xlsread(filename);
newfile=S;
% % x=newfile(:,1);
% % y=newfile(:,2);
% % plot(x,y,'m','lineWidth',2);
plot(S)