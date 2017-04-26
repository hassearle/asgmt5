--[1] https://en.wikibooks.org/wiki/Ada_Programming/Control#for_loop
--[2] https://www-users.cs.york.ac.uk/~andy/lrm95/a_05_02.htm 
--		(see 56, 58)
--[3] http://www.cs.fsu.edu/~baker/ada/examples/enums.adb

with Ada.Text_IO, Ada.Integer_Text_IO,Ada.Numerics.discrete_Random,
		Ada.Strings.Unbounded;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Unbounded;

procedure Main is
	
	--types for binary arrays and numbers
	type BINARY_NUMBER is range 0..1;
	type BINARY_ARRAY is array(INTEGER range 0..15) of BINARY_NUMBER;

	Zero_Array: BINARY_ARRAY := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
	-- A_Int : INTEGER;
	A_Array: BINARY_ARRAY;
	Temp : BINARY_NUMBER;
	-- B_Array: BINARY_ARRAY;
	-- C_Array: BINARY_ARRAY;
	-- D_Array: BINARY_ARRAY;
	BTI : INTEGER;
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
		
		function Random_Number return BINARY_NUMBER;
	
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   --IMPLEMENTATION 
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


		function Bin_To_Int(X : BINARY_ARRAY) return INTEGER is
			Int : INTEGER;
			Intt: INTEGER;
				begin

				for I in BINARY_ARRAY'Range loop
					if X(I) = 1 then
						Intt := 15 - I;
						Int := Int + 2**(Intt);
					end if;
				end loop;
				-- if Int  null then
				-- 	Int := 0;
				-- end if;
				Put(Int);
				return Int; 
			end Bin_To_Int;	


		function Int_To_Bin(X : INTEGER) return BINARY_ARRAY is
			--http://www.adacore.com/uploads_gems/gem_7.ada
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
		function Random_Number return BINARY_NUMBER is--SOURCE [2]
			package Rand_Int is new Ada.Numerics.discrete_Random(BINARY_NUMBER);
			use Rand_Int;
			G : Generator;
			NUM : BINARY_NUMBER; 
			begin
				Reset(G);
				NUM := Random(G);
				return NUM;
			end Random_Number;
	
begin
	
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   --START OF MAIN
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-


		for I in BINARY_ARRAY'Range loop --SOURCE [1]
			A_Array(I) := Random_Number;
			Put(INTEGER'Image(INTEGER(A_Array(I)))); --SOURCE [3]
			Put_Line("");
		end loop;

		-- Temp := 1;
		-- A_Array(0) := 1;
		-- Put(INTEGER'Image(INTEGER(A_Array(0))));

		--Put(INTEGER'Image(INTEGER(Temp)));	--print BINARY_NUMBER
		--Put(INTEGER(Temp));
		if A_Array /= Zero_Array then
			BTI := Bin_To_Int(A_Array);
			else Put("ERROR: Number cannot be 0");
		end if;

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

	
	

	



