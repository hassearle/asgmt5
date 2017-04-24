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


   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   -- DEFINITION 
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

		-- convert binary value to int equivalent 
		-- must implemented with a loop
		function Bin_To_Int(X : BINARY_ARRAY) return INTEGER; 

		-- convert int to binary value equivalent 
		-- limits size of int to 16 bits 
		-- binary array should order the least significant bit to the far right
		function Int_To_Bin(X : INTEGER) return BINARY_ARRAY;

		-- returns sum of two binary arrays 
		-- dont worry about overflows
		function Plus_Overload(First, Second : BINARY_ARRAY)
			return BINARY_ARRAY;

		-- returns sum of binary array and int
		function Plus_Overload(X : BINARY_ARRAY; Y : INTEGER) 
			return BINARY_ARRAY;

		-- returns the difference of two binary arrays
		-- subtract the second from the first parameter
		function Minus_Overload(X,Y : BINARY_ARRAY) 
			return BINARY_ARRAY;


		-- returns the difference of binary array and int
		-- subtract the second from the first parameter
		function Minus_Overload(X : BINARY_ARRAY; Y : INTEGER) 
			return BINARY_ARRAY;


		-- reverse array
		procedure Reverse_Bin_Arr(X : BINARY_ARRAY);


		-- prints binary array to console
		procedure Print_Bin_Arr(X : BINARY_ARRAY);  
		
	
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   --IMPLEMENTATION 
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

		function 


		function Bin_To_Int(X : BINARY_ARRAY) return INTEGER is
			Temp : INTEGER;
			begin
				Temp := 1;
				return Temp; 
			end Bin_To_Int;	


		function Int_To_Bin(X : INTEGER) return BINARY_ARRAY is
			Temp : BINARY_ARRAY;
			begin
				--Temp := BINARY_ARRAY(1);
				return Temp;
			end Int_To_Bin;	
			
		function Plus_Overload(First, Second : BINARY_ARRAY) return BINARY_ARRAY is
			Temp : BINARY_ARRAY;
			begin
				--Temp := BINARY_ARRAY(1);
				return Temp;
			end Plus_Overload;

		function Plus_Overload(X : BINARY_ARRAY; Y : INTEGER) return BINARY_ARRAY is
			Temp : BINARY_ARRAY;
			begin
				--Temp := BINARY_ARRAY(1);
				return Temp;
			end Plus_Overload;		


		function Minus_Overload(X,Y : BINARY_ARRAY) return BINARY_ARRAY is
			Temp : BINARY_ARRAY;
			begin
				--Temp := BINARY_ARRAY(1);
				return Temp;
			end Minus_Overload;	


		function Minus_Overload(X : BINARY_ARRAY; Y : INTEGER) return BINARY_ARRAY is
			Temp : BINARY_ARRAY;
			begin
				--Temp := BINARY_ARRAY(1);
				return Temp;
			end Minus_Overload;


		procedure Reverse_Bin_Arr(X : BINARY_ARRAY) is
			Temp : INTEGER;
			begin
				Temp := 1;

			end Reverse_Bin_Arr;

		procedure Print_Bin_Arr(X : BINARY_ARRAY) is
			Temp : INTEGER;
			begin
			 	Temp := 1;

			end Print_Bin_Arr; 

 -- --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	
	

begin
	
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   --START OF MAIN
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

		Put("hello");

		-- BTI := Bin_To_Int(A_Array);
		-- Put(BTI);
		-- B_Array := Int_To_Bin;
		-- Print_Bin_Arr(B_Array); 
		-- C_Array := Plus_Overload(A_Array : B_Array);
		-- Put_Line(C_Array);
		-- D_Array := Minus_Overload(A_Array : B_Array);
		-- Put_Line(D_Array);
		-- Reverse_Bin_Arr(D_Array);
		-- Put_Line(D_Array);

end Main;




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