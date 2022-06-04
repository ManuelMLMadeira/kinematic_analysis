function TESTE_ERASE3_gait(t)

global Body NBody tstart tend tstep Nsteps
newplot; axis([-1 2 -0.1 1]); %axis square;

figure 
for time = t(1):4:t(length(t))
    
    %cla(gca);
    hold on

    %plot for each body
    for i = 7:NBody  
        if i < 11
        plot([Body(i).pProx(1,time) Body(i).pDist(1,time)],...
             [Body(i).pProx(2,time) Body(i).pDist(2,time)],...
            '-r');
        else
            plot([Body(i).pProx(1,time) Body(i).pDist(1,time)],...
             [Body(i).pProx(2,time) Body(i).pDist(2,time)],...
            '-b');
        end

    end
    xlabel('X axis (m)')
    ylabel('Y axis (m)')
    title('Stick diagram plot of gait')
    hold off; pause(0.01);

end

end