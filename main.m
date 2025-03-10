function main()
    f = @(t, y) -2*y + t;

    t0 = 0;
    y0 = 1;
    h = 0.1;
    t_end = 1;
    t = t0:h:t_end;

    y_heun = Heun(f, t, y0);
    y_forward = EulerForward(f, t, y0);
    y_backward = backward_euler(f, t, y0);
    y_rk2 = RK2(f, t, y0);
    y_rk4 = RK4(f, t, y0);
    y_rk3 = RK3(f, t, y0);


    figure;
    plot(t, y_heun, 'b', 'LineWidth', 1.5, 'DisplayName', 'Heun’s Method');

    hold on;
    plot(t, y_backward, 'g', 'LineWidth', 1.5, 'DisplayName', 'Backward Euler');
    plot(t, y_forward, 'r', 'LineWidth', 1.5, 'DisplayName', 'Forward Euler');
    plot(t, y_rk2, 'm', 'LineWidth', 1.5, 'DisplayName', 'RK2');
    plot(t, y_rk4, 'c', 'LineWidth', 1.5, 'DisplayName', 'RK4');
    plot(t, y_rk3, 'k', 'LineWidth', 1.5, 'DisplayName', 'RK3');

    hold off;

    title('Numerical Methods Comparison')
    xlabel('t')
    ylabel('y(t)')
    legend('Location', 'best');
    grid on;
end





