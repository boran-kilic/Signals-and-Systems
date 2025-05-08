clear
x=ReadMyImage('Part6x.bmp');
figure;
DisplayMyImage(x);

figure;
h=ReadMyImage('Part6h.bmp');
DisplayMyImage(h);

y = DSLSI2D(h,x);
s1= abs(y);

figure;
DisplayMyImage(s1);

s3 = s1.^3;
figure;
DisplayMyImage(s3);

s5 = s1.^5;
figure;
DisplayMyImage(s5);