function value = calculte_currency(img)
x1=imread('0.5-back.jpg');
x2=imread('0.5-Front.jpg');
x3=imread('1-back.jpg');
x4=imread('1-Front.jpg');
x5=imread('5-back.jpg');
x6=imread('5-Front.jpg');
x7=imread('10-back.jpg');
x8=imread('10-Front.jpg');
x9=imread('20-back.jpg');
x10=imread('20-front.jpg');
x11=imread('50-back.jpg');
x12=imread('50-Front.jpg');
x13=imread('100-back.jpg');
x14=imread('100-Front.jpg');
x15=imread('200-back.jpg');
x16=imread('200-front.jpg');
[xs,ys, ~]=size(img);
x=zeros(xs,ys,16);
x(:,:,1)=imresize(x1(:,:,1), [xs, ys]);
x(:,:,2)=imresize(x2(:,:,1), [xs, ys]);
x(:,:,3)=imresize(x3(:,:,1), [xs, ys]);
x(:,:,4)=imresize(x4(:,:,1), [xs, ys]);
x(:,:,5)=imresize(x5(:,:,1), [xs, ys]);
x(:,:,6)=imresize(x6(:,:,1), [xs, ys]);
x(:,:,7)=imresize(x7(:,:,1), [xs, ys]);
x(:,:,8)=imresize(x8(:,:,1), [xs, ys]);
x(:,:,9)=imresize(x9(:,:,1), [xs, ys]);
x(:,:,10)=imresize(x10(:,:,1), [xs, ys]);
x(:,:,11)=imresize(x11(:,:,1), [xs, ys]);
x(:,:,12)=imresize(x12(:,:,1), [xs, ys]);
x(:,:,13)=imresize(x13(:,:,1), [xs, ys]);
x(:,:,14)=imresize(x14(:,:,1), [xs, ys]);
x(:,:,15)=imresize(x15(:,:,1), [xs, ys]);
x(:,:,16)=imresize(x16(:,:,1), [xs, ys]);
[c,~]=imhist(img(:,:,1));
min=1000;
minindex=1000;
c=c/xs/ys;
for i=1:16
    [c1,~]=imhist(uint8(x(:,:,i)));
    c1=c1/xs/ys;
    compare=pdist2(c',c1','cosine');
    if compare<min
        min=compare;
        minindex=i;
    end
end
if minindex==1 || minindex==2
    value=0.5;
elseif minindex==3 || minindex==4
    value=1;
elseif minindex==5 || minindex==6
    value=5;
elseif minindex==7 || minindex==8
    value=10;
elseif minindex==9 || minindex==10
    value=20;
elseif minindex==11 || minindex==12
    value=50;
elseif minindex==13 || minindex==14
    value=100;
else
    value=200;
end  
end