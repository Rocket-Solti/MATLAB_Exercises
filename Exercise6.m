%% 1
asciichars=char(1:128)
%% 2
char (53)% because the ascii value for 53 is 5.
%% 3
double('5');
str2num('5');% sting to nummber
%% 4
shift=double('a')-double('A');
F1=find(asciichars=='a');
F2=find(asciichars=='A'):
DI=F1-F2;
%% 5
alph.lower=char([double('a'):double('z')]);
alph.lower(3)

alph.upper=upper(alph.lower)%% make it upper case(easier to understand))%%
alph.upper=char(double(alph.lower)-shift);
alph.upper(3)
%% 6
date=08;
month='December'
disp(['Today''s date is the',num2str(date),'th of',month])
%% 7
cell_1(1,1)={pi};
cell_1(1,2)={[2,3;1,4]};
cell_1(2,1)={'hello'};
f=@(x) 3*x+2;
cell_1(2,2)={f};
%% 8
cell_1{2,1}
cell_1{2,2}
%% 9
A=cell_1;
A1=cell_1{1,2}
f_cell=cell_1(2,2)
f_cell(A1)
cell_1{2,2}(cell_1{1,2})
%%
%structure Arrays contain data in fields that you acessed by the name. 


%% 11
text='lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempr incididunt ut labore et dolore magna aliqua.'
spaces=[text == ' '];
FL(2:length(spaces))=spaces(1:end-1);
FL(1)=1;
text(FL==1)=upper(text(FL==1))
