img=imread("0.5-back.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("0.5-Front.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("1-back.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("1-Front.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("5-back.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("5-Front.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("10-back.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("10-Front.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("20-back.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("20-front.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("50-back.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("50-Front.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("100-back.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("100-Front.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("200-back.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
img=imread("200-front.jpg");
total=[0];
value=calculte_currency(img);
totalcounts=get_counts(value);
total=total+totalcounts;
display_currency(total);
t2=imread("all-front-back.jpg");
t3=get_one_currency(t2);
[~, c]=size(t3);
sum=0.00;
value=0.00;
total=[0, 0, 0, 0, 0, 0, 0, 0];
for i=1:c
    img=t3{:, i};
    value=calculte_currency(img);
    totalcounts=get_counts(value);
    total=total+totalcounts;
    sum=sum+value;
end
display_currency(total);
disp(sum+" L.E");
t2=imread("all-back.jpg");
t3=get_one_currency(t2);
[~, c]=size(t3);
sum=0.00;
value=0.00;
total=[0, 0, 0, 0, 0, 0, 0, 0];
for i=1:c
    img=t3{:, i};
    value=calculte_currency(img);
    totalcounts=get_counts(value);
    total=total+totalcounts;
    sum=sum+value;
end
display_currency(total);
disp(sum+" L.E");
t1=imread('one-rotated.jpg');
t3=get_one_currency(t1);
[~, c]=size(t3);
sum=0.00;
value=0.00;
total=[0, 0, 0, 0, 0, 0, 0, 0];
t3{:, 1}=get_one_rotated_currency(t3{:, 1});
for i=1:c
    img=t3{:, i};
    value=calculte_currency(img);
    totalcounts=get_counts(value);
    total=total+totalcounts;
    sum=sum+value;
end
display_currency(total);
disp(sum+" L.E");