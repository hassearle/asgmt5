--[1] https://en.wikibooks.org/wiki/Ada_Programming/Control#for_loop

with Ada.Text_IO, Ada.Integer_Text_IO, 
		Ada.Numerics.discrete_Random, Asgmt5;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is

	type BINARY_NUMBER is range 0..1;
	type BINARY_ARRAY is array(INTEGER range 0..15) of BINARY_NUMBER;



	package My_Asgmt5 is new Asgmt5(INTEGER, array(INTEGER) of INTEGER);
	use My_Asgmt5;
		
	

	A_Int : INTEGER;
	A_Array: BINARY_ARRAY;
	B_Array: BINARY_ARRAY;
	C_Array: BINARY_ARRAY;
	D_Array: BINARY_ARRAY;
	BTI : INTEGER;
	ITB : BINARY_ARRAY;

begin

	-- for I in BINARY_ARRAY'Range loop --SOURCE [1]
	-- 	A_Array(I) := Random_Number;
	-- end loop;

	BTI := Bin_To_Int(A_Array);
	Put(BTI);
	B_Array := Int_To_Bin;
	Print_Bin_Arr(B_Array); 
	C_Array := Plus_Overload(A_Array : B_Array);
	Put_Line(C_Array);
	D_Array := Minus_Overload(A_Array : B_Array);
	Put_Line(D_Array);
	Reverse_Bin_Arr(D_Array);
	Put_Line(D_Array);

end Main;