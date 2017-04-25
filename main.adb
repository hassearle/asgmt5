--[1] https://en.wikibooks.org/wiki/Ada_Programming/Control#for_loop
--[2] https://www-users.cs.york.ac.uk/~andy/lrm95/a_05_02.htm 
--		(see 56, 58)

with Ada.Text_IO, Ada.Integer_Text_IO, 
		Ada.Numerics.discrete_Random;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
	
	--types for binary arrays and numbers
	type BINARY_NUMBER is range 0..1;
	type BINARY_ARRAY is array(INTEGER range 0..15) of BINARY_NUMBER;

	-- A_Int : INTEGER;
	A_Array: BINARY_ARRAY;
	-- B_Array: BINARY_ARRAY;
	-- C_Array: BINARY_ARRAY;
	-- D_Array: BINARY_ARRAY;
	-- BTI : INTEGER;
	-- ITB : BINARY_ARRAY;


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
		
		function Random_Number return INTEGER;
	
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   --IMPLEMENTATION 
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

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

     --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		-- random number generator
		function Random_Number return INTEGER is --SOURCE [2]
			
			--types for random number generator
			subtype Rand_Range is INTEGER range 0..1;
			package Rand_Int is new Ada.Numerics.discrete_Random(Rand_Range);
			use Rand_Int;
			G : Generator;
			NUM : INTEGER; 
			begin
				Reset(G);
				NUM := Random(G);
				return NUM;
			end Random_Number;
	

begin
	
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   --START OF MAIN
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

		Put(Random_Number);

		for I in BINARY_ARRAY'Range loop --SOURCE [1]
			A_Array(I) := BINARY_NUMBER(Random_Number);
		end loop;

		Put(A_Array(0));

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


	-- function Random_Number return BINARY_NUMBER is
	-- 	Temp : BINARY_NUMBER;
	-- 	begin
	-- 		Temp := BINARY_NUMBER(1);
	-- 		return Temp;
	-- 	end Random_Number;

