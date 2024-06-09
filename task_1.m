%TASK 1

%Task 1.1
%The assigned task:
% Plot the polinomial: 1. 𝟐𝒙𝟑 − 𝒙
% Here we are defining a linear space function: So it starts at -1 ends at
% 1 and the seperation is 100 points

% running the task one with the . included
%{
x = linspace(-1, 1, 100);  
y = 2 * x.^3 - x;
%plot(x, y); % The run was successful and we could see the graph as there is no syntax error 
%}


% running the task one without the . included
%{
x = linspace(-1, 1, 100);  
y = 2 * x^3 - x;
plot(x, y); % This will GENERATE AN ERROR(SYNTAX ERROR) matlab will interpret plot function as a matrix multiplication
%}


%Task 1.2
%The assigned task:
%Plot the polynomial 𝟒𝒙^3 − 𝟑𝒙 using the function polyval. First find out how to use polyval using help
%{
%ON COMMAND WINDOW PASS 'doc polyval p' command to get the documentation
y = polyval(p,x) evaluates the polynomial p at each point in x. The argument p is a vector of length n+1 whose elements are the coefficients (in descending powers) of an nth-degree polynomial:
The polynomial coefficients in p can be calculated for different purposes by functions like polyint, polyder, and polyfit, but you can specify any vector for the coefficients.
To evaluate a polynomial in a matrix sense, use polyvalm instead.
%}

% so this means it is a polynomial of 4th grade so 4x^4, 0x^3, 3x^2 then 0x^1
%{
p = [4 0 3 0];
x = linspace(-1000, 1000, 100);
% polyval(p, x) evaluates the polynomial defined by the coefficients p at each point in the vector x. Specifically, it calculates for each element in x and stores the results in the vector y1.
y1 = polyval(p, x);
plot(x, y1, 'g');
%}



%Task 1.3
%The assigned task:
%Design 3D graph.
% What is happening is we are defining a vector in space (this also defines the z axis length)
%{
t = -10*pi : pi/100 : 10*pi; 
% This will defi a spiral curve
x = t.*cos(t);
y = t.*sin(t);
plot3(x, y, t);
%}