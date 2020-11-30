function [counts] = get_counts(value)
countha=0;
counto=0;
countf=0;
countt=0;
counttw=0;
countfi=0;
counth=0;
countth=0;
counts=[0, 0, 0, 0, 0, 0, 0, 0];
if value==0.5
    countha=countha+1;
    counts(1)=countha;
elseif value==1
    counto=counto+1;
    counts(2)=counto;
elseif value==5
    countf=countf+1;
    counts(3)=countf;
elseif value==10
    countt=countt+1;
    counts(4)=countt;
elseif value==20
    counttw=counttw+1;
    counts(5)=counttw;
elseif value==50
    countfi=countfi+1;
    counts(6)=countfi;
elseif value==100
    counth=counth+1;
    counts(7)=counth;
else
    countth=countth+1;
    counts(8)=countth;
end
end