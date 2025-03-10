function y = EulerForward(f, t, y0)
    y = zeros(size(t));
    y(1) = y0;
    h = t(2) - t(1);
    for i = 1:length(t)-1
        k = f(t(i), y(i));
        y(i+1) = y(i) + h * k;
    end
end
