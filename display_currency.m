function total = display_currency(counts)

total="";
if counts(1)==0
    total=strcat("");
else
    disp(strcat(int2str(counts(1)), " 0.50 L.E"));
end
if counts(2)==0
    total=strcat("");
else
    disp(strcat(int2str(counts(2)), " 1.00 L.E"));
end
if counts(3)==0
    total=strcat("");
else
disp(strcat(int2str(counts(3)), " 5.00 L.E"));
end
if counts(4)==0
    total=strcat("");
else
disp(strcat(int2str(counts(4)), " 10.00 L.E"));
end
if counts(5)==0
    total=strcat("");
else
    disp(strcat(int2str(counts(5)), " 20.00 L.E"));
end
if counts(6)==0
    total=strcat("");
else
    disp(strcat(int2str(counts(6)), " 50.00 L.E"));
end
if counts(7)==0
    total=strcat("");
else
    disp(strcat(int2str(counts(7)), " 100.00 L.E"));
end
if counts(8)==0
    total=strcat("");
else
    disp(strcat(int2str(counts(8)), " 200 L.E"));
end
total=strcat(total);
end