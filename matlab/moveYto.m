function moveYto(obj,y)
    obj.YData = obj.YData - mean(obj.YData) + y;
end

