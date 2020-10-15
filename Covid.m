data = xlsread('C:\Users\Alih1\Desktop\COVID_FINAL_DATA');
cases = (data(:,2))/10000;
expired = (data(:,7))/10000;
hold on
plot(cases,expired,'r+');
xlabel('Cases (10k)')
ylabel('Deaths (10k)')
Y = expired;
m = length(Y);
X = [ones(m,1), cases];
theta = zeros(2,1);
J = cost(X,Y,theta);
alpha = 0.001;
iterations = 500;
[theta, J_hist] = Gradient(X,Y,theta,alpha,iterations);
plot(X(:,2), X*theta, 'k');
legend('Cases','Hypothesis line')