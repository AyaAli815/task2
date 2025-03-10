function y = RK4(f, t, y0)
    h = t(2) - t(1);
    y = zeros(size(t));
    y(1) = y0;
    for i = 1:length(t)-1
        k1 = f(t(i), y(i));
        k2 = f(t(i) + h/2, y(i) + (h/2) * k1);
        k3 = f(t(i) + h/2, y(i) + (h/2) * k2);
        k4 = f(t(i) + h, y(i) + h * k3);
        y(i+1) = y(i) + (h/6) * (k1 + 2*k2 + 2*k3 + k4);
    end
end
