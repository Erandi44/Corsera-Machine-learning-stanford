function p = predicted(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);


% You need to return the following variables correctly 


% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


m = size(X, 1)
a_1 = [ones(m, 1) X]

z_2 = a_1*Theta1'

sig_z_2 = sigmoid(z_2)
a_2 = [ones(size(sig_z_2,1),1) sig_z_2]

z_3 = a_2*Theta2'

a_3 = sigmoid(z_3)


[predict_max, index_max] = max(a_3, [], 2)

p = index_max



% =========================================================================


end
