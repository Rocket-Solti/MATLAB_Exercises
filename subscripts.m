%%Question 8
function X=subscripts(R)
dim=size(R);
A=find(R>70);
 [(X(:,1),X(:,2)]= ind2sub(dim,A);
     end
     