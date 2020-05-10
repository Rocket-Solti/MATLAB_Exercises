%% Question1
t=[-pi:0.1:pi];
A=2;
X=pi*2;
A=2;
S=A*sin(t);
plot(t,S);
xlabel('Frequency');
ylabel('Amplitude');
title('my first coustum plot');
%% Question2
xlim([-4,4]);
ylim([-3 3]);
%  set(gca, 'ylim',[-3,3]);
% set(gca,'xlim',[-pi/4,pi/4]);



%% Question3
hold on
plot([0 0], xlim ,'k')
plot([0 0], ylim,'k')
ax = gca;
ax.XAxisLocation = 'origin'
ax.YAxisLocation = 'origin'


%% Question 4
set(gcf,'units','normalized','outerposition',[0 0 1 1]);%%Automatically maximize the figure
saveas(gcf,'Myfirstplot.png');%%save as png

print('Myfirstplot.png');%% to print the figure

%% Question 5
f=2;
f_x=@ (x) sin(2*pi*f*x);
g_x=@ (x) cos(2*pi*f*x);
t=[0:0.01:1];

%% Question 6
figure;
subplot(2,2,1);
plot(t,f*sin(t),'k');
subplot(2,2,4);
plot(f*cos(t),t,'k');
subplot(2,2,2);
plot(f*cos(t),f*sin(t),'k')
%% Question 7
figure 

for k=1:length(t)
    %figure 
    %subplot(2,2,1)
    plot(t,f*sin(t),'k');
   

end

f_x=sin(2*pi*f*t);
g_x=cos(2*pi*f*t);
figure 
subplot(2,2,1)
plot(f_x,'r')
hold on
plot(g_x)
%% my trial 
t=0:0.01:1;
f=2;

a1=animatedline('color','g','Marker','o','LineWidth',2);
g_x=cos(2*pi*f*t);
a2=animatedline('color','r','Marker','*','Linewidth',2);
%set( gca,'Xlim',[0 4*pi],'Ylim',[0 12])
for k=1:length(t)
    addpoints(a1,t(k),f_x(k));
    addpoints(a2,t(k),g_x(k));
   % addpoints(0,t(k),'ks','MarkerFaceColor','o','LineWidth',2)
    drawnow
 
    
end

%%
t=0:0.01:1;
f=2;
plot(t,f_x,t,g_x);
hold on 
for k=1:length(t)
    subplot(2,1,2)
    plot(t,f_x,t,g_x);
    hold on 
plot(t,(k))
   

end
%%
%%from the tutor

f_x=sin(2*pi*f*t);
g_x=cos(2*pi*f*t);
plot(t,f_x,'k');
hold on
