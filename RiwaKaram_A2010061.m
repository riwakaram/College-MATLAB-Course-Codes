%Problem_01

x = [-3:0.1:3];
y1 = -x.^2;
y2 = x.^2;
grid on
plot(x, y1, 'b')
hold on
plot(x, y2, 'ro')
hold off
ylabel("y\_1 = -x\^2 and y\_2 = x\^2")
xlabel("x")
title("Plots")
legend("y\_1 = -x\^2", "y\_2 = x\^2")

%Problem_02

A = [9 -15; 2 -45];
B = [-4; -26];
Sol = inv(A)*B

%Problem_03

A = rand(5)
temp = A(:,4);
A(:,4) = A(:,2);
A(:,2) = temp;
A

%Problem_04

prompt = "Enter a value (scalar or vector): "
val = input(prompt)
x = [8 1 6; 3 5 7; 4 9 2]
[row, col] = size(x)
for i = 1:row
    for j = 1:col
        if x(i, j) == val
            x(i, :) = []
            x(:, j) = []
            break
        end
    end
end


%Problem_05

A = randi([0, 7], 7)
[row, col] = size(A)
countMultipleOf3 = 0;
countNotMultipleOf3 = 0;

for i = 1:row
    for j = 1:col
        temp = A(i, j);
        if mod(temp, 3) == 0
            countMultipleOf3 = countMultipleOf3 + 1;
        else
            countNotMultipleOf3 = countNotMultipleOf3 + 1;
        end
    end
end

B = zeros(1, countMultipleOf3);
for i = 1:countMultipleOf3
    for j = 1:row
        for k = 1:col
            if mod(A(j, k), 3) == 0
                B(1, i) = A(j, k);
            end
        end
    end
end
B

C = zeros(1, countNotMultipleOf3);
for i = 1:countNotMultipleOf3
    for j = 1:row
        for k = 1:col
            if mod(A(j, k), 3) ~= 0
                C(1, i) = A(j, k);
            end
        end
    end
end
C
