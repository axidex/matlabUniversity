%reasonable size for our matrix
n = 10;

%creates a random 10x10 matrix
A = rand(n);

%our goal result for Gaussian functions
Goal_Result = [1;2;3;4;5;6;7;8;9;10];

%b is found by multiplying A and our goal result
b = zeros(1,n);
b = A * Goal_Result;

%our two parameters are passed through both functions, and their results
%are assigned to variables x and y
Naive_Result = Gauss(A,b);
Pivoted_Result = Gauss3(A,b);

%our r and norm values are calculated for both function results
r_Naive = (A * transpose(Naive_Result)) - b;
r_Pivoted = (A * Pivoted_Result) - b;

norm_Naive = norm(r_Naive)
norm_Pivoted = norm(r_Pivoted)

%The most accurate method is output to the user
%(Partially Povoted gaussian elimination is more accurate)
if norm_Naive > norm_Pivoted
    disp("Partially Pivoted Gaussian Elimination is more accurate");

else if norm_Naive == norm_Pivoted
        disp("The two methods are equally accurate");

    else
        disp("Naive Gaussian Elimination is more accurate");
    end
end
