function [q,r] = qrdecomp(A)
x=size(A);
if x(1)<x(2)
    fprintf('Improper input for qrdecomp()!!');
    return;
end
q=zeros(x);
r=zeros(x(2),x(2));
for i=1:x(2)
    for j=i:x(2)
        if i==j
            e=A(:,j);
            for k=1:j-1
                e=e-q(:,k)*r(k,j);
            end
            r(i,j)=sum(e.^2);
            r(i,j)=sqrt(r(i,j));
            q(:,j)=e/r(i,j);
        else
            r(i,j)=q(:,i)'*A(:,j);
        end
    end
end
end

