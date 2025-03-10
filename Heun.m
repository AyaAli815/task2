function y = Heuns(f, t, y0)
    y = zeros(size(t));
    y(1) = y0;
    h = t(2) - t(1);
    for i = 1:length(t)-1
        y_pred = y(i) + h * f(t(i), y(i));
        y(i+1) = y(i) + (h/2) * (f(t(i), y(i)) + f(t(i+1), y_pred));
    end
end
