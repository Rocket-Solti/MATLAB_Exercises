dirdata=dir('*.xls');
filename={dirData.name};
Temp=[];
for iFile=1:numel(fileNames)
    [path,Fname,Ext]=fleparts(fileNames{iFile});
    LD=xlsread(FName)
    Avg=mean(LD);
    Temp=[Temp;Avg]
end
