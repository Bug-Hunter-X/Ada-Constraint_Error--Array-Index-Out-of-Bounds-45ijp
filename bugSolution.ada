```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index;
begin
   Index := 11; 
   if Index in My_Arr'Range then
       My_Arr(Index) := 12; -- No error if Index is in range
   else
       Put_Line("Index out of range");
   end if;
   
   --Or use a subtype to ensure the index is always within bounds:
   Index := 5;
   My_Arr(Index) := 20; -- No error
exception
   when others =>
      Put_Line("An unexpected error occurred");
end Example_Solution;
```