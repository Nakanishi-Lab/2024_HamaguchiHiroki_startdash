function kadai14_4_2()
    % パラメータ
    g = 9.81; % 重力加速度 [m/s^2]
    L = 1.0; % 振り子の長さ [m]

    % 初期条件
    theta0 = pi/4; % 初期角度 [rad]
    omega0 = 0; % 初期角速度 [rad/s]
    tspan = [0 10]; % シミュレーション時間の範囲 [s]
    initial_conditions = [theta0; omega0];

    % 非線形方程式の解法
    [t_nonlinear, y_nonlinear] = ode45(@(t, y) pendulum_eq_nonlinear(t, y, g, L), tspan, initial_conditions);

    % 線形化方程式の解法
    [t_linear, y_linear] = ode45(@(t, y) pendulum_eq_linear(t, y, g, L), tspan, initial_conditions);

    % 結果のプロット
    figure;
    plot(t_nonlinear, y_nonlinear(:, 1), 'b', 'DisplayName', '非線形方程式');
    hold on;
    plot(t_linear, y_linear(:, 1), 'r', 'DisplayName', '線形化方程式');
    hold off;
    title('非線形方程式と線形化方程式による単振り子のシミュレーション');
    xlabel('時間 [s]');
    ylabel('角度 [rad]');
    legend;
end

% 非線形方程式
function dydt = pendulum_eq_nonlinear(t, y, g, L)
    theta = y(1);
    omega = y(2);
    dydt = zeros(2, 1);
    dydt(1) = omega;
    dydt(2) = -(g/L)*sin(theta);
end

% 線形化方程式
function dydt = pendulum_eq_linear(t, y, g, L)
    theta = y(1);
    omega = y(2);
    dydt = zeros(2, 1);
    dydt(1) = omega;
    dydt(2) = -(g/L)*theta;
end