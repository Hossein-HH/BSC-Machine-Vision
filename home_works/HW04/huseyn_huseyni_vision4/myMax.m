function max = myMax(inputMatrix)

    s = size(inputMatrix,2);

    if(s == 0)
    disp("impossible")
    else
        max = inputMatrix(1);
        for i=1:s
            if(inputMatrix(i) > max)
                max = inputMatrix(i);
            end
        end
    end
end

