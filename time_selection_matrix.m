function S = create_time_selection_matrix(w, h, t)
    % Initialize the selection matrix with zeros
    S = zeros(w * h, w * h * t);
    
    % Fill the selection matrix
    for i = 1:w
        for j = 1:h
            row_index = (i-1) * h + (j-1) + 1;
            col_index = (i-1) * h * t + (j-1) * t + 1; % Select the first element along t-dimension
            S(row_index, col_index) = 1;
        end
    end
end