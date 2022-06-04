function []=KinematicResults(q,qd,qdd,t)

global NBody

% Plot for each body
for i = 1:2:2*NBody
    
    figure
    subplot(231)
    plot(t,q(i,:)); xlabel('Time(s)'); title('Position x [m]');
    subplot(232)
    plot(t,qd(i,:)),xlabel('Time(s)'), title('Velocity x [m/s]');
    subplot(233)
    plot(t,qdd(i,:)), xlabel('Time(s)'), title('Acceleration x [m/s^2]');
    subplot(234)
    plot(t,q(i+1,:)); xlabel('Time(s)'); title('Position z [m]');
    subplot(235)
    plot(t,qd(i+1,:)),xlabel('Time(s)'), title('Velocity z [m/s]');
    subplot(236)
    plot(t,qdd(i+1,:)), xlabel('Time(s)'), title('Acceleration z [m/s^2]');
    
    suptitle(sprintf('Body %i',(i+1)/2));

end

end
