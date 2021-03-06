function   z= find_1(x,y,i,j,L,index) %只找路径，会避开有环的地方,适合回到收集区
%UNTITLED 此处显示有关此函数的摘要 x,y当前位置，i，j目标位置
%   此处显示详细说明       1       
%                 2  当前位置()  0    
%                        3 
z=-ones(20,1);  
s1=(i-x)/abs(i-x);  s2=(j-y)/abs(j-y);
if x==i
    s1=0;
elseif y==j
    s2=0;
end
if  x==i-1 && y==j  %回到收集区上方一个就行
   z(1)=1;  
elseif x==i && (L(x,y+s2)==6  )    %x轴坐标相同,看y方向
   z=find_1(x,y+s2,i,j,L,index+1);z(index)=1-s2;
elseif y==j && (L(x+s1,y)==6 )    %y轴坐标相同，看x方向
   z=find_1(x+s1,y,i,j,L,index+1);z(index)=2+s1;
elseif L(x,y+s2)==6  && y~=j
    z=find_1(x,y+s2,i,j,L,index+1);z(index)=1-s2;
elseif L(x+s1,y)==6   && x~=i
    z=find_1(x+s1,y,i,j,L,index+1);z(index)=2+s1;
else
    z(1)=0; 
end 
end

