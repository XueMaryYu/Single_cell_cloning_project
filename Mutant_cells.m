D=setdiff(A05Copy,A05unique);
[lia,locb]=ismember(D,A05Copy);
A05_2=A05(locb,:);% not unique to A05
%check row 1 colomn 1 is in other 4 files 
A19_1=WA19(:,1);%extract WA19 first colomn
M=intersect(A19_1,WA05Copy);%common gene ID between A05 and A19
for i=1:1:17129
A=M(i,:);%get the first elements in the common gene ID
[lia,locA19]=ismember(A,A19_1);%location of this number in A19
B1=WA19(locA19,3);%get the location and the FPKM in A19
[lia1,locWA05]=ismember(A,WA05Copy);%
BM=[WA05(locWA05,:) B1];
N(locWA05,:)=BM;
end 


X=zeros(17874,1);
N=[WA05 X];
A=M(1,:);%get the first elements in the common gene ID
[lia,locA19]=ismember(A,A19_1);%location of this number in A19
B1=WA19(locA19,3);%get the location and the FPKM in A19
[lia,locWA05]=ismember(A,WA05_1);%
BM=[WA05(locWA05,:) B1];
N(locWA05,:)=BM;
[lia1,locWA05]=ismember(9,WA05Copy)

A1=M1(1,:);%get the first elements in the common gene ID
[lia,locB08]=ismember(A1,B08);%location of this number in A19
B1=WB08(locB08,3);

N1=[N X];
B08=WB08(:,1);%extract WA19 first colomn
M1=intersect(B08,WA05Copy);%common gene ID between A05 and A19
a=size(M1,1);
for i=1:1:a
A1=M1(i,:);%get the first elements in the common gene ID
[lia,locB08]=ismember(A1,B08);%location of this number in A19
B1=WB08(locB08,3);%get the location and the FPKM in A19
[lia1,locWA05]=ismember(A1,WA05Copy);%
BM1=[N(locWA05,:) B1];
N1(locWA05,:)=BM1;
end 

N2=[N1 X];
B12=WB12(:,1);%extract WA19 first colomn
M2=intersect(B12,WA05Copy);%common gene ID between A05 and A19
a=size(M2,1);
for i=1:1:a
A2=M2(i,:);%get the first elements in the common gene ID
[lia,locB12]=ismember(A2,B12);%location of this number in A19
B2=WB12(locB12,3);%get the location and the FPKM in A19
[lia1,locWA05]=ismember(A2,WA05Copy);%
BM2=[N1(locWA05,:) B2];
N2(locWA05,:)=BM2;
end 

N3=[N2 X];
D10=WD10(:,1);%extract WA19 first colomn
M3=intersect(D10,WA05Copy);%common gene ID between A05 and A19
a=size(M3,1);
for i=1:1:a
A3=M3(i,:);%get the first elements in the common gene ID
[lia,locD10]=ismember(A3,D10);%location of this number in A19
B3=WD10(locD10,3);%get the location and the FPKM in A19
[lia1,locWA05]=ismember(A3,WA05Copy);%
BM3=[N2(locWA05,:) B3];
N3(locWA05,:)=BM3;
end 