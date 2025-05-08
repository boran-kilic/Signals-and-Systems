clear
x=ReadMyImage('BORAN KILIC 16 TC copy.bmp');
% figure;
% DisplayMyImage(x);
h1=zeros(2,2);

h1(1,1)=5;
h1(1,2)=-5;
y1 = DSLSI2D(h1,x);


s1 = y1;
figure;
subplot(1, 3, 1);
DisplayMyImage(s1);

h2=zeros(2,2);
h2(1,1) = h1(1,1);
h2(2,1) = h1(1,2);
y2 = DSLSI2D(h2,x);
s2 = y2;

subplot(1, 3, 2);
DisplayMyImage(s2);

h3=zeros(2,2);
h3 = h1+h2;
y3 = DSLSI2D(h3,x);
s3 = y3;

subplot(1, 3, 3);
DisplayMyImage(s3);