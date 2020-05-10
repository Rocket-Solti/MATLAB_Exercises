%%Question 9
function y=Fibonacci(N)
y(1)=1;
y(2)=1;



for k=3:N;
   y(k+2)=y(k+1)+y(k)

end 
end

    

%%
function f = Fibonacci(n)
f=zeros(n,1)
f(1)=1;
f(2)=2;
for k=3:n;
    %f(k)=f(k-1)+f(k-2)
end




end
%%
%% Amrit
function y=Fibonacci(N)
y=zeros(N,1)

j1=1;
j2=1;
for k=3:N;
    j1=j2;
    j2=ji+j2;
    y(k)=j2+j1(k)
end
end





