X=[1 1 2 3 5 8 13 21];
Y=diff(X);%%derivatives
A=[1 1 1; 5 5 5;25 25 25]
Y=diff(A);
%%
diff(A,1,2)%%look up some example
%%%
%%calculating with time
t1=datetime('now');
t2=t1+minutes(5);
t=t1:minutes(1.5):t2;
dt=diff(t);
%%
%variables
step_size=0.01;
x=0:step_size:2*pi;
my_fct=sin(x)
my_fct_d1=diff(my_fct)/(step_size);
my_fct_d2=diff(my_fct_d1)/(step_size);
my_fct_d3=diff(my_fct_d2)/(step_size);
figure ;
subplot(4,1,1)
plot(x(1:length(my_fct)),my_fct,'black','linewidth',2);
title('Derivaties of the Sine function ');
 xlabel('input/a.u');
ylabel('Amplitude');
%hold on
subplot(4,1,2)
plot(x(1:length(my_fct_d1)),my_fct_d1,'red','linewidth',2);
 xlabel('input/a.u');
ylabel('Amplitude');
subplot(4,1,3)
plot(x(1:length(my_fct_d2)),my_fct_d2,'blue','linewidth',2);
 xlabel('input/a.u');
ylabel('Amplitude');
subplot(4,1,4)
plot(x(1:length(my_fct_d3)),my_fct_d3,'green','linewidth',2);
 xlabel('input/a.u');
ylabel('Amplitude');
%hold off
legend('sin(x)','sin(x1)',...
    'sin(x2)','sin(x3)')
    xlabel('input/a.u');
ylabel('Amplitude');
%%
curve sketching
x=-5:0.01:5;
my_poly=[1,-4 ,0 ,7]
y=polyval(my_poly,x)
zero_points=roots(my_poly);
figure
plot(x,y,'b-','linewidth',2)
grid on 
hold on% if you like it
scatter(zero_points,zeros(1,length(zero_points)),'g','filled')
%%first derivatives
poly_1=polyder(my_poly);
y_1=polyval(poly_1,x)
plot(poly_1)
%%high and low points
extreme_points_x=roots(poly_1);
extreme_points_y=polyval(my_poly,extreme_ponts,x)
%%second derivatives 
poly_2=polyder(poly_1)
y_2=polyval(poly_2,x)
%%turning points
turning_points_x=roots(poly_2)
turning_points_y=polyval(my_poly)

%%Annotaion 
text(zero_points,zeros(1,length(zero_points))+30,'zeros','Fontsize',14 )
%%
x=0:0.1:10;
y=besselj(1,x)
str='Here is minimum'
f=figure
p=plot(x,y)
t=text(4,-0.37,str)
t.Color='r'%%change the color of the text
t.FontSize=30;
p.LineWidth=4;
p.LineStyle='--';
f.Name='My Result'

    