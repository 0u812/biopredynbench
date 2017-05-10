function M = callUnfold(unfoldCommand)
    % USAGE: callUnfold('bin/unfold -t 24.225 input/dm_hkgn53_wls_5_003')
  % [~, rawOutput] = system(unfoldCommand);
    [whatever, rawOutput] = system(unfoldCommand);
    allLines = strread(rawOutput, '%s', 'delimiter', '\n');   
    M = [];
  %   format shortG
    for i = 1:length(allLines)                
        oneLine = allLines(i);
        temp = char(oneLine);
        if ((length(temp) == 0) || (~isstrprop(temp(1), 'digit')))
           continue; 
        end        
        M = [M; strread(char(oneLine), '%f', 'delimiter', ' ')'];        
    end
end