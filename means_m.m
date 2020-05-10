function[a,b,H_M,A_M,G_M]=means_m(a,b)
x=randi(100)
y=randi(100);
x=2*a+1;
y=b/3;
H_M = 2/((1/x)+(1/y));
A_M=(x+y)/2;
G_M= sqrt(x.*y);

end
