function [] = wyndor %HW7
A = [ 1 -3 -5 0 0 0 0; 0 1 0 1 0 0 4; 0 0 2 0 1 0 12; 0 3 2 0 0 1 18 ];
 n = 3; %number of constraints (rows-1)
% k = 6; % number of columns 
 
%check for most negative value in row 1 (Real Life is Row 0)
%ratio test to pick smallest [make sure to account for 0 and negatives!]
%pick that to be pivotRow
%divide by factor
%zero out all other rows

for PivotRow = 3                                    %Picking Row  from Column 1 
   for Row = 1: PivotRow-1             
        m = -(A (Row,PivotRow)/ A(PivotRow,PivotRow)); 
        %A(Row,PivotRow) = 0;
        for Col = 2 : 7
            A(Row,Col) = A(Row,Col)+ m*A(PivotRow,Col);
        end
    end
   for Row = PivotRow+1
      m = -(A (Row,PivotRow)/ A(PivotRow,PivotRow)); 
      for Col = 2: 7
        A(Row,Col) = A(Row,Col)+ m*A(PivotRow,Col);
      end
   end
   for Row = PivotRow
       for Col = 2 : 7
         A(Row,Col) = (A(Row,Col))/(A(PivotRow,PivotRow));
       end
   end
end % FOR 
disp(A) 


for PivotRow = 2
   for Row = 1            
        m = -(A (Row,PivotRow)/ A(PivotRow,PivotRow)); 
        %A(Row,PivotRow) = 0;
        for Col = 2 : 7
            A(Row,Col) = A(Row,Col)+ m*A(PivotRow,Col);
        end
    end
   for Row = PivotRow+1:n+1
      m = -(A (Row,PivotRow)/ A(PivotRow,PivotRow)); 
      for Col = 2: 7
        A(Row,Col) = A(Row,Col)+ m*A(PivotRow,Col);
      end
   end
   for Row = PivotRow
       for Col = 2 : 7
         A(Row,Col) = (A(Row,Col))/(A(PivotRow,PivotRow));
       end
   end
end % FOR 
disp(A)
end