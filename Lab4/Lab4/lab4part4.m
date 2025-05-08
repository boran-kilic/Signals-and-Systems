clear
figure;
x=ReadMyImage('Part4.bmp');
subplot(2, 2, 1);
DisplayMyImage(x);
title('unprocessed image')

D = 22103444;
D7 =rem(D,7);
Mh = 30 +D7;
Nh = Mh;

B = 0.7;
h=zeros(Mh-1,Nh-1);
for m = 1:Mh-1
    for n = 1:Nh-1     
    h(m,n)= sinc(B*(m-(Mh-1)/2))*sinc(B*(n-(Nh-1)/2));
    end
end
y = DSLSI2D(h,x);
subplot(2, 2, 2);
DisplayMyImage(y);
title('B=0.7')

B = 0.4;
h=zeros(Mh-1,Nh-1);
for m = 1:Mh-1
    for n = 1:Nh-1     
    h(m,n)= sinc(B*(m-(Mh-1)/2))*sinc(B*(n-(Nh-1)/2));
    end
end
y = DSLSI2D(h,x);
subplot(2, 2, 3);
DisplayMyImage(y);
title('B=0.4')

B = 0.1;
h=zeros(Mh-1,Nh-1);
for m = 1:Mh-1
    for n = 1:Nh-1     
    h(m,n)= sinc(B*(m-(Mh-1)/2))*sinc(B*(n-(Nh-1)/2));
    end
end
y = DSLSI2D(h,x);
subplot(2, 2, 4);
DisplayMyImage(y);
title('B=0.1')

