function y = RK3(f, t, y0)
   h = t(2) - t(1);
    y = zeros(size(t));
    y(1) = y0;
    for i = 1:length(t)-1
        k1 = f(t(i), y(i));
        k2 = f(t(i) + h/2, y(i) + (h/2) * k1);
        k3 = f(t(i) + h, y(i) - (k1*h) +(2*h*k2));
        y(i+1) = y(i) + (h/6) * (k1 + 4*k2 + k3 );
    end
end
