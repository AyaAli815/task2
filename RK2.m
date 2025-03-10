function y = RK2(f, t, y0)
    h = t(2) - t(1);
    y = zeros(size(t));
    y(1) = y0;
    for i = 1:length(t)-1
        k1 = f(t(i), y(i));
        k2 = f(t(i) + h, y(i) + h * k1);
        y(i+1) = y(i) + (h/2) * (k1 + k2);
    end
end

