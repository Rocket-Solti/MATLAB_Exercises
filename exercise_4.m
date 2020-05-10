%%Question 2
a = logical([0, 0, 0, 0, 1, 1, 1, 1]);
b = logical([0, 0, 1, 1, 0, 0, 1, 1]);
c = logical([0, 1, 0, 1, 0, 1, 0, 1]);

a|b|c;%a or b or c

a&b&c;%%a and b and c

~((a&b)|b);%% not (a and b or b )
a&(b|~c);%% a and (b or not c) 
%%Question 3
a&b;
a|b;
~a|b;
~a&b;
xor(a,b);
%%Question 4
while 1
end
%%Question 7
c =20;
x = 500;
while x < 100 && c <= 10
x = c.^2 - 10;
c = c+1;
end

c=1;
x=0;
for k=1:100
    x(k)=c^.2-10;
end
