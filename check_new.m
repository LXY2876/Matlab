function z = check_new(x,y,i,j,L,index)%x,y当前位置，i，j目标位置
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
z=-ones(20,1);
s1=(i-x)/abs(i-x);  s2=(j-y)/abs(j-y);
if x==i
    s1=0;
elseif y==j
    s2=0;
end
if  x==i && y==j
   z(1)=1;  
elseif   x==i
   
end

