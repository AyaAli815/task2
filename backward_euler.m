function y = backward_euler(f, t, y0)
    y = zeros(size(t));
    y(1) = y0;
    for i = 1:length(t)-1

        h = t(i+1) - t(i);
        y(i+1) = (y(i) + h * t(i+1)) / (1 + 2*h);
    end
end
