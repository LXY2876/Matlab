function   z= find_1(x,y,i,j,L,index) %ֻ��·������ܿ��л��ĵط�,�ʺϻص��ռ���
%UNTITLED �˴���ʾ�йش˺�����ժҪ x,y��ǰλ�ã�i��jĿ��λ��
%   �˴���ʾ��ϸ˵��       1       
%                 2  ��ǰλ��()  0    
%                        3 
z=-ones(20,1);  
s1=(i-x)/abs(i-x);  s2=(j-y)/abs(j-y);
if x==i
    s1=0;
elseif y==j
    s2=0;
end
if  x==i-1 && y==j  %�ص��ռ����Ϸ�һ������
   z(1)=1;  
elseif x==i && (L(x,y+s2)==6  )    %x��������ͬ,��y����
   z=find_1(x,y+s2,i,j,L,index+1);z(index)=1-s2;
elseif y==j && (L(x+s1,y)==6 )    %y��������ͬ����x����
   z=find_1(x+s1,y,i,j,L,index+1);z(index)=2+s1;
elseif L(x,y+s2)==6  && y~=j
    z=find_1(x,y+s2,i,j,L,index+1);z(index)=1-s2;
elseif L(x+s1,y)==6   && x~=i
    z=find_1(x+s1,y,i,j,L,index+1);z(index)=2+s1;
else
    z(1)=0; 
end 
end

