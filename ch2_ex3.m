x = -3:3;
      y = [-1 -1 -1 0 1 1 1];
      t = -3:.01:3;
      plot(x,y,'o',t,[pchip(x,y,t); spline(x,y,t)])
      legend('data','pchip','spline',4)