function kadai14_3()
    % パラメータ
    g = 9.81; % 重力加速度 [m/s^2]
    L = 1.0; % 振り子の長さ [m]

    % 初期条件
    theta0 = pi/4; % 初期角度 [rad]
    omega0 = 0; % 初期角速度 [rad/s]
    tspan = [0 10]; % シミュレーション時間の範囲 [s]
    initial_conditions = [theta0; omega0];

    % 運動方程式の解法
    [t, y] = ode45(@(t, y) pendulum_eq_no_friction(t, y, g, L), tspan, initial_conditions);

    % 結果のプロット
    figure;
    plot(t, y(:, 1));
    title('摩擦を無視した単振り子の角度の変化');
    xlabel('時間 [s]');
    ylabel('角度 [rad]');
end

function dydt = pendulum_eq_no_friction(t, y, g, L)
    theta = y(1);
    omega = y(2);
    dydt = zeros(2, 1);
    dydt(1) = omega;
    dydt(2) = -(g/L)*sin(theta);
end