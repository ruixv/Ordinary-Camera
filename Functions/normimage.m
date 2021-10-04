function image = normimage(B)
%     % 分通道归一化
%     % R通道
%     Bmax_1=max(max(B(:,:,1)));
%     Bmin_1=min(min(B(:,:,1)));
%     image(:,:,1)=(B(:,:,1)-Bmin_1)./(Bmax_1-Bmin_1);
%     % G通道
%     Bmax_2=max(max(B(:,:,2)));
%     Bmin_2=min(min(B(:,:,2)));
%     image(:,:,2)=(B(:,:,2)-Bmin_2)./(Bmax_2-Bmin_2);
%     % B通道
%     Bmax_3=max(max(B(:,:,3)));
%     Bmin_3=min(min(B(:,:,3)));
%     image(:,:,3)=(B(:,:,3)-Bmin_3)./(Bmax_3-Bmin_3);
    Bmax = max(B(:));
    Bmin = min(B(:));
    value = Bmax-Bmin
    image = (B-Bmin) ./ (Bmax-Bmin);
end