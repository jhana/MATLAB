flag=0;
l=input('\nInput length of the rectangle [in m]:');
b=input('Input breadth of the rectangle [in m]:');
c=-input('Input |dP/dz| [in Pa/m](the absolute value) or |c|:');
myu=input('Input (Dynamic) viscosity [in Pa.s] \n(input "1" if you entered |c| above):');
c=c/myu;
d=input('Which of these do you want to input?\n1.Number of divisions per dimension\n2.Number of discrete points\n : ');
switch d
    case 1
        dx=input('Input number of x-segments:(length)')-1;
        dy=input('Input number of y-segments:(breadth)')-1;
    case 2
        x=input('Input number of discrete points:');
        sx=ceil(sqrt(x));
        while flag==0
            while(mod(sx,10)~=0)
                sx=sx+1;
            end
            dx=sx;
            dy=x/dx;
            flag=1;
            if ceil(dy)~=dy
                flag=0;
                sx=sx+1;
                continue;
            else if dy<(x/l)
                fprintf('\nUnable to Discretize automatically! please input manually..');
                dx=input('\nInput number of x-segments:(length)')-1;
                dy=input('Input number of y-segments:(breadth)')-1;
                flag=1;
                end
            end                                 
            fprintf('Discretization\n  %dx%d (of %dx%d)',dx,dy,l,b);    
            an=input('\n agreeable? [y/n]','s');
            if an=='y' || an=='Y'
                flag=1;
            else flag=0;
                 sx=sx+1;
            end
        end
end
delx=l/(dx+1);
dely=b/(dy+1);
est=input('Do you want to give a common initial estimate\n for all the points?[y/n]','s');
if est=='Y' || est=='y'
    est=input('Input Estimate:');
else est=0;
end
W=ones((dx+2),(dy+2));
W(1,:)=zeros(1,(dy+2));
W(dx+2,:)=zeros(1,(dy+2));
W(:,1)=zeros((dx+2),1);
W(:,dy+2)=zeros((dx+2),1);
A=zeros(dx*dy);
B=ones(dx*dy,1)*c;
k=1;
for i=2:dy+1
    for j=2:dx+1
      if i-1~=dy
        A(k,(i-1)*dx+(j-2)+1)=1/(delx*delx);
      end
        A(k,(i-2)*dx+(j-2)+1)=-2/(delx*delx)-2/(dely*dely);
      if i-3~=-1
        A(k,(i-3)*dx+(j-2)+1)=1/(delx*delx);
      end
      if j-1~=dx
        A(k,(i-2)*dx+(j-1)+1)=1/(dely*dely);
      end
      if j-3~=-1
        A(k,(i-2)*dx+(j-3)+1)=1/(dely*dely);
      end
      k=k+1; 
    end
end
w=B\A;
k=1;
for i=2:dy+1
    for j=2:dx+1
        W(j,i)=w(k);
        k=k+1;
    end
end