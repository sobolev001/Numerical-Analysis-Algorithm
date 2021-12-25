function Bernstein_gui()
% By lyqmath
% Dlut math
clc; clear all; close all;
figure('NumberTitle', 'off', 'Name', 'Bernstein', 'Units', 'Normalized', 'Position', [0.1 0.1 0.8 0.8]);
set(gcf, 'resize', 'off', 'color', [0.9 0.9 0.02]);
set(gca, 'color', [0.1 0.5 0.3])
hold on; box on;
axis([0 1 0 1])
global Hsbt Hsb Hs h1 h2 h3
Hsbt = uicontrol(gcf, 'Style', 'text', ...
    'units', 'normalized', ...
    'Position', [0 0.005 0.1 0.03], ...
    'string', 'n=1', 'FontSize', 14);
Hsb = uicontrol(gcf, 'Style', 'slider', ...
    'units', 'normalized', ...
    'Position', [0.11 0.005 0.20 0.03], ...
    'Min', 2, 'Max', 100, 'Value', 2, ...
    'CallBack', @slider_funb);
Hs = uicontrol(gcf, 'Style', 'text',...
    'units' , 'normalized',...
    'Position', [0 0.045 0.4 0.03],...
    'string','使用Bernstein多项式逼近','FontSize',14);
x=0:0.01:1;
y1=sin(pi*x./2);
n=1;
y=Bernstein(n,x);
h1 = plot(x,y1,'b*');
h2 = plot(x,y,'y-','LineWidth', 2);
set(h1,'LineStyle','*');
str = sprintf('%2d次Bernstein逼近', n);
title(str, 'FontSize', 18);
legend('sin(\pi x/2)','Bernstein多项式')
function y=Bernstein(n,x)
m=length(x);
y=zeros(1,m);
for k=0:n
    for i=1:m
        y(i)=y(i)+f(k/n)*nchoosek(n,k)*x(i)^k*(1-x(i))^(n-k);
    end
end
function t=f(x)
t=sin(pi*x./2);
function slider_funb(src, evnt)
global Hsbt Hsb Hs h1 h2
hold on;
delete(h1); delete(h2);
n = get(src, 'value');
n = round(n);
set(src, 'value', n);
str = sprintf('n=%d', n);
set(Hsbt, 'string', str);
s=sprintf('使用%2d次Bernstein多项式逼近',n);
set(Hs,'string',s);
x=0:0.01:1;
y1=sin(pi*x./2);
y2=polyval(polyfit(x,y1,n),x);
y=Bernstein(n,x);
h1 = plot(x,y1,'b*');
h2 = plot(x,y,'y-','LineWidth', 2);
h3 = plot(x,y2,'y--','LineWidth', 2);
str = sprintf('%2d次Bernstein逼近', n);
title(str, 'FontSize', 18);
hold off
