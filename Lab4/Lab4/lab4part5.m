clear
x=ReadMyImage('Part5.bmp');
figure;
DisplayMyImage(x);


h1=zeros(2,2);
h1(1,1)=0.5;
h1(1,2)=-0.5;
y1 = DSLSI2D(h1,x);


s1 = y1.^2;
figure;
subplot(1, 2, 1);
DisplayMyImage(x);
subplot(1, 2, 2);
DisplayMyImage(s1);


h2=zeros(2,2);
h2(1,1) = h1(1,1);
h2(2,1) = h1(1,2);
y2 = DSLSI2D(h2,x);
s2 = y2.^2;
figure;
subplot(1, 2, 1);
DisplayMyImage(x);
subplot(1, 2, 2);
DisplayMyImage(s2);

h3=zeros(2,2);
h3 = 0.5.*h1+0.5.*h2;
y3 = DSLSI2D(h3,x);
s3 = y3.^2;
figure;
subplot(1, 2, 1);
DisplayMyImage(x);
subplot(1, 2, 2);
DisplayMyImage(s3);
