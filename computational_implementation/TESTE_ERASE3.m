function TESTE_ERASE3(t)

global Body NBody tstart tend tstep Nsteps
newplot; axis([-0.6 1.2 -0.1 2]); %axis square;


for time = 80:5:(t(length(t)) - 60)
    
    %cla(gca);
    hold on

    %plot for each body
    for i = [1,2,5,6,11,12,13,14]
        if time <180
        plot([Body(i).pProx(1,time) Body(i).pDist(1,time)],...
             [Body(i).pProx(2,time) Body(i).pDist(2,time)],...
            '-r');
        elseif time <260
            plot([Body(i).pProx(1,time) Body(i).pDist(1,time)],...
             [Body(i).pProx(2,time) Body(i).pDist(2,time)],...
            '-b');
        else
            plot([Body(i).pProx(1,time) Body(i).pDist(1,time)],...
             [Body(i).pProx(2,time) Body(i).pDist(2,time)],...
            '-k');
        end

    end
    xlabel('X axis (m)')
    ylabel('Y axis (m)')
    title('Stick diagram plot of gait')
    hold off; pause(0.01);

end

end