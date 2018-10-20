
   
   speed_x = 200*
   if(gamepad.isPressed(3))
      speed_x=speed_x*3;
   end
   moveXby(ship,speed_x*T);
   if(mean(ship.XData)>width)
       moveXto(ship,width)
   elseif(mean(ship.XData)<0)
       moveXto(ship,0)
   end
    
    
   %  The following lines check for collision between the ship and the 
   %  asteroids
   for rock = rocks
        if (isCollision(ship,rock))
          disp('Hit!'); 
           text(0, 100, 'Hit by rock!!');
           done = 1;  % game over
           break;
       end
   end
end 