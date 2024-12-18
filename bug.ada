```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index := 11; -- Invalid Index
begin
   My_Arr(Index) := 12; -- Raises Constraint_Error
exception
   when Constraint_Error =>
      Put_Line("Error: Index out of bounds");
end Example;
```