function print(filename, type)

[f,m,p]=textread(filename,'%d%d%d','headerlines',4);

len_f = length(f);

for i = 1 : len_f
    if f(i) <= 70000
        new_f(i) = f(i);
        new_m(i) = m(i);
        new_p(i) = p(i);
    end 
end

new_f = new_f';
new_m = new_m';
new_p = new_p';

subplot(2,1,1)
%plot(f,m);
plot(new_f,new_m);
%ylim([-10 max(new_m)]);
switch type
    case 2
        title('2-Wire Impedance Measurement');
    case 4
        title('4-Wire Impedance Measurement');
    otherwise 
        warning('ERROR')
end

ylabel('Magnitude [dB]');
xlabel('Frequency [Hz]');
grid();

subplot(2,1,2);
%plot(f,unwrap(p));
plot(new_f,unwrap(new_p));

switch type
    case 2
        title('2-Wire Impedance Measurement');
    case 4
        title('4-Wire Impedance Measurement');
    otherwise 
        warning('ERROR')
end

ylabel('Phase [°]');
xlabel('Frequency [Hz]');
grid();

end
