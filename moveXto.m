function moveXto( obj, x )
%MOVEXTO move object to x 
 obj.XData = obj.XData -mean(obj.XData) + x;

end

