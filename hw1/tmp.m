% x1 = -5.0:0.25:5.0;
% x2 = -5.0:0.25:5.0;
% [xt, yt] = meshgrid(x1,x2);
% grid = [xt(:) yt(:)];
% 
% tt = [0.001 0.01 0.1 1 5 25];
% for i=1:length(tt)
%     theta2 = tt(i);
% 
%     y=exp((-1/theta2) * ((grid(:,1) - grid(:,2)).^2));
%     ygrid = reshape(y,length(x1),length(x2));    
%     subplot(2,3,i)
%     %figure(2)
%     surf(x1,x2,ygrid)
%     title(['theta=' num2str(theta2)]);
% end
fslssvm_script
x1=-10:0.1:10;
y1=x1.^2;
ep=0;
y2(x1<=-ep)=-x1(x1<=-ep)-ep;
y2(x1>-ep)=0;
y2(x1>ep)=x1(x1>ep)-ep;
plot(x1,y1)
hold on
plot(x1,y2)