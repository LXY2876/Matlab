function z = check_new(x,y,i,j,L,index)%x,y��ǰλ�ã�i��jĿ��λ��
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
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

