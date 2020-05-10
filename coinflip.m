function[x]=coinflip()
x_in=(logical(rand(0,1)))
if x_in ==true
    x='tails'
else
    x='heads'
end 
end
%%
function[x]=coinflip();
x=logical(rand(5,10))
if x<=6
    x='tails'
else 
    x='heads'
end
end
