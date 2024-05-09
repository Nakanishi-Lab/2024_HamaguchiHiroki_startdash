function kadai15_3()
    % パラメータ
    m = 1.0; % 質量 [kg]
    k = 1.0; % バネ定数 [N/m]
    b = 0.5; % ダンパー係数 [Ns/m]
    
    % 外力の振幅と周波数
    F_amplitude = 5; % 外力の振幅 [N]
    F_frequency = pi; % 外力の周波数 [Hz]
    
    % 初期条件
    x0 = 0.1; % 初期変位 [m]
    v0 = 0; % 初期速度 [m/s]
    tspan = [0 200]; % シミュレーション時間の範囲 [s]
    initial_conditions = [x0; v0];
    
    % 外力関数
    F = @(t) F_amplitude * sin(F_frequency * t);
    
    % 運動方程式の解法（外乱なし）
    [t_no_disturbance, y_no_disturbance] = ode45(@(t, y) spring_mass_damper_eq(t, y, m, k, b, F), tspan, initial_conditions);
    
    % 外乱を加える時刻
    disturbance_time = 5; % 外乱を加える時刻 [s]
    disturbance_value = 10; % 外乱の大きさ [N]
    
    % 運動方程式の解法（外乱あり）
    [t_with_disturbance, y_with_disturbance] = ode45(@(t, y) spring_mass_damper_eq_with_disturbance(t, y, m, k, b, F, disturbance_time, disturbance_value), tspan, initial_conditions);
    
    % 結果のプロット
    figure;
    plot(t_no_disturbance, y_no_disturbance(:, 1), 'b', 'DisplayName', '外乱なし');
    hold on;
    plot(t_with_disturbance, y_with_disturbance(:, 1), 'r', 'DisplayName', '外乱あり');
    hold off;
    title('バネ-マス-ダンパ系の振動');
    xlabel('時間 [s]');
    ylabel('変位 [m]');
    legend('Location', 'northwest');
end

% バネ-マス-ダンパ系の運動方程式（外乱なし）
function dydt = spring_mass_damper_eq(t, y, m, k, b, F)
    x = y(1);
    v = y(2);
    dydt = zeros(2, 1);
    dydt(1) = v;
    dydt(2) = (1/m) * (F(t) - k*x - b*v);
end

% バネ-マス-ダンパ系の運動方程式（外乱あり）
function dydt = spring_mass_damper_eq_with_disturbance(t, y, m, k, b, F, disturbance_time, disturbance_value)
    x = y(1);
    v = y(2);
    dydt = zeros(2, 1);
    dydt(1) = v;
    % 外乱が加わる時刻で速度に外乱を加える
    if t >= disturbance_time
        dydt(2) = (1/m) * (F(t) - k*x - b*v + disturbance_value);
    else
        dydt(2) = (1/m) * (F(t) - k*x - b*v);
    end
end
