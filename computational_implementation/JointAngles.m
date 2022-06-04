function [] = JointAngles(t,q)

global NDriver JntDriver

code = ["neck joint", "left shoulder", "left elbow", "right shoulder",...
        "right elbow", "left leg","left knee","left ankle","left toes", ...
        "right leg","right knee","right ankle","right toes"];

% Plot the angle for each joint
for i = 1:(NDriver-3)  
    figure(i+1)
    legend = code(1,i);
    hold on
    plot(t,(q(3*JntDriver(i).bodyj,:) - q(3*JntDriver(i).bodyi,:))*180/pi); 
    xlabel('Time (s)');
    ylabel('Theta (deg)');
    title(sprintf('Angle of %s joint', legend));
    axis tight
    hold off
end


end


