function rotateBy(obj,angle )
%ROTATEBY rotate obj by angle degrees
rotate(obj,[0,0,1],angle,[mean(obj.XData),mean(obj.YData),0])


end

