function print(filename, type)

[f,m,p]=textread(filename,'%d%d%d','headerlines',4);
subplot(2,1,1)
plot(f,m);

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
plot(f,unwrap(p));

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
