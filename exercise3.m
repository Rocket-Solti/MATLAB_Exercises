%%Matlab exercise 3
%%Amrit lamichhane
%Question 2 
f_x=@(x) x.^5-sqrt(x)*2-10;
%%here f_x is used as function, in command window give any nummer of x to
%%find the value. For eg y=f_x(5) calculate the value of x with 5.

g_x=@(x) exp(-3.*x)/sin(x);

h_x={@(x)x.^2;
    @(y) y^(-2);
    @(x,y) (x.^2+y^(-2))};
h_x{1}(x)%put any values  in x to calxulate x
h_x{2} (y) %put  any values in y to calculate y
h_x{3} (x,y)%%put  any values in x and y to calculate y
a_x={@(x,y) (x.^2+y.^(-2))}%%can we do this aswell?ask?
b=a_x{1}(2,2)%% may be we can write in command
%%Question 3
t=linspace(-1.5,1.5,100);
y1=f_x(t); %for plotting t in function f
y2=g_x(t);%same as above plotting t in g
plot(y1);
hold on
plot((y2);% plot y2 in red
%%Question 4
%length(x) gives the length of the x.
%size(x) is for the dimension of the x??
%numel(M) is equivalent to prod(size(M)) 
%%length(M) is equivalent to max(size(M)) 
d_x=@(B) min(size(B));
%%Question 5
x=input('number to test:');% to test any nummer, input here
y=mod(x,2); %%mod function divide the input number by 2, and if the reminder is 1, this is odd
%%and if the reminder is zero, then it is even
if y==1
    disp('odd')
else
    disp('even')
end
%%Question 6
B=ones(5);
 B = ones(5);
B(1:2:end, 2:2:end) = 0;% as the matrix is same ,for alternating i used some tricks?!may be there are other ways ask ??
B(2:2:end, 1:2:end) = 0;
M=2;
A=mod(B,M);%%
imagesc(B);%%for image
colormap(gray);%%for black and white colour
%%question7
P=rand(5,6);%creates the random matrix of 5 rows and 6 column
[M,N]=size(P);%dimension m and n
R=[M,N, 0:100];%%is maybe final answer.please ask!!
%%Question 8
