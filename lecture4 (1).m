uiopen('\\daten.uni-oldenburg.de\home\xabe0870\Desktop\MATLAB_2018_19\Lecture_Data\Spectrum_Exp_35.xlsx',1)
figure 
plot(xvalue,yvalue)
imshow(jeffrey-blum-1101039-unsplash)
%%
A=[1 2 3;4 5 6; 7 8 9];
B=reshape(A,1,[]);
X=magic(3);
Y=repmat(X,3,[])
%%
a=30;
if a==10
    fprint('value of a is 10\n')
elseif a==20
    fprintf('value of a is 200\n')
elseif a==30
    fprintf('value of a is 30\n')
else
     fprintf('none of the values are matching\n')
      fprintf('the exact value of a is:%d\n,a')
end
my_statement=true;
~my_statement
%%
k=1
value=1
while value<10
   fprintf('loop no:%d and value: %2.3f\n',k, value)
    k=k+1;

   value=value+1+rand;
   if k>7
       fprintf('Loop stopped at number %2.3f\n',k)
   end
end


%%
grade=input('grade:')
switch(grade)
    case 'A'
        fprintf('Excellent')
    case 'B'
        fprintf('well done')
    case 'C'
        fprintf('Passed')
    case 'D'
        fprintf('Better luck next time')
    otherwise
        fprintf('Invalid grade')
end

%%
X=[1 0 0 0 1 1]
Y=[0 0 0 0 0 0]
any(X)
any(Y)
any(X) || any(Y) %%or 
any(X)&&any(Y)
%%
b=2;
a=20;
x=(b~=0)&&(a/b >=10)
switch x
    case true
        fprintf('Condition fulfilled\n')
    case false 
        fprintf('Condition not fulfilled\n')
end

%%
