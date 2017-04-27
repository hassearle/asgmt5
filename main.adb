--[1] https://en.wikibooks.org/wiki/Ada_Programming/Control#for_loop
--[2] https://www-users.cs.york.ac.uk/~andy/lrm95/a_05_02.htm 
--		(see 56, 58)
--[3] http://www.cs.fsu.edu/~baker/ada/examples/enums.adb
--[4] http://www.wikihow.com/Convert-from-Decimal-to-Binary

with Ada.Text_IO, Ada.Integer_Text_IO,Ada.Numerics.discrete_Random,
		Ada.Strings.Unbounded;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Unbounded;

procedure Main is
	
	--types for binary arrays and numbers
	type BINARY_NUMBER is range 0..1;
	type BINARY_ARRAY is array(INTEGER range 0..15) of BINARY_NUMBER;

	Random_Int: Integer;
	Zero_Array: BINARY_ARRAY := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
	-- A_Int : INTEGER;
	A_Array: BINARY_ARRAY;
	Temp : BINARY_NUMBER;
	B_Array: BINARY_ARRAY;
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
		
     --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
     --HELPER FUNCTION DEFINITIONS
     --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

		function Random_Binary return BINARY_NUMBER;

		function Random_Number return INTEGER;
	
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
				-- if Int  null then	--write an exception 
				-- 	Int := 0;
				-- end if;
				return Int; 
			end Bin_To_Int;	


		function Int_To_Bin(X : INTEGER) return BINARY_ARRAY is --SOURCE[4]
			Temp : BINARY_ARRAY;
			Divided : INTEGER;
			Remainder : INTEGER;
			begin
				Divided := X;
				for I in BINARY_ARRAY'Range loop
					if Divided rem 2 = 0 then
						Remainder := 0;
						else Remainder := 1;
					end if;
					Divided := Divided / 2;
					Temp(15 - I) := BINARY_NUMBER(Remainder);
				end loop;
				return Temp;
			end Int_To_Bin;	
			
		function Plus_Overload(First, Second : BINARY_ARRAY) return BINARY_ARRAY is
			Temp : BINARY_ARRAY;
			Remain : BINARY_NUMBER := 0;
			begin
				for I in BINARY_ARRAY'Range loop
					if First(15 - I) = 1 and Second(15 - I) = 1 then
					 	elsif Remain = 0 then

					 	elsif Remain = 1 then
					 		
					 end if;

					if (First(15 - I) = 0 and Second(15 - I) = 1) or 
						(First(15 - I) = 1 and Second(15 - I) = 0)
						 then
					 	elsif Remain = 0 then

					 	elsif Remain = 1 then
					 		
					 end if; 

					if First(15 - I) = 0 and Second(15 - I) = 0 then
					 	elsif Remain = 0 then

					 	elsif Remain = 1 then
					 		
					 end if;
					
				end loop;
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
			Temp : BINARY_ARRAY;
			begin
				Temp := X;
				-- for I in BINARY_ARRAY'Range  loop
				-- 	X(15 - I) := BINARY_NUMBER(Temp(I));					
				-- end loop;

				-- for I in BINARY_ARRAY'Range  loop
				-- 	Put(INTEGER'Image(INTEGER(X(I))));
				-- end loop;
			end Reverse_Bin_Arr;

		procedure Print_Bin_Arr(X : BINARY_ARRAY) is
			begin
			for I in BINARY_ARRAY'Range  loop
					Put(INTEGER'Image(INTEGER(X(I))));
				end loop;
			end Print_Bin_Arr; 

     --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
     -- HELPER FUNCTIONS
     --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
		
		-- random binary number generator
		function Random_Binary return BINARY_NUMBER is--SOURCE [2]
			package Rand_Int is new Ada.Numerics.discrete_Random(BINARY_NUMBER);
			use Rand_Int;
			G : Generator;
			NUM : BINARY_NUMBER; 
			begin
				Reset(G);
				NUM := Random(G);
				return NUM;
			end Random_Binary;

		-- random integer number generator 
		function Random_Number return INTEGER is
			type NUM is range 0..65535;
			NUMM : NUM; 
			INT : INTEGER;
			package Rand_Int is new Ada.Numerics.discrete_Random(NUM);
			use Rand_Int;
			G : Generator;
			begin -- Random_Number
				Reset(G);
				NUMM := Random(G);
				INT := INTEGER(NUMM);
				return INT;
			end Random_Number;

begin
	
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   --START OF MAIN
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

   		--------------------------------------------------------------
			Put("Printing Random Array A_Array");
			Put_Line("");

	   		--generates array
			for I in BINARY_ARRAY'Range loop --SOURCE [1]
				A_Array(I) := Random_Binary;
				Put(INTEGER'Image(INTEGER(A_Array(I)))); --SOURCE [3]
			end loop;
   		--------------------------------------------------------------

   		--------------------------------------------------------------
	   		Put_Line("");	
	   		Put_Line("");
	   		Put_Line("Printing Integer value of A_Array"); 
	   		--prints integer equilivant of the previously generated array
			if A_Array /= Zero_Array then
				BTI := Bin_To_Int(A_Array);
				else Put("0");
			end if;
			Put(BTI);
   		--------------------------------------------------------------

   		--------------------------------------------------------------
	   		Put_Line("");	
	   		Put_Line("");
	   		Put("Printing Array created from Int_To_Bin function: Int_To_Bin(");
	   		Random_Int := Random_Number;
	   		Put (Random_Int, Width => 1);
	   		Put_Line(")"); 
	   		B_Array := Int_To_Bin(Random_Int);
			Print_Bin_Arr(B_Array); 
		-- C_Array := Plus_Overload(A_Array : B_Array);
		-- Put_Line(C_Array);
		-- D_Array := Minus_Overload(A_Array : B_Array);
		-- Put_Line(D_Array);
		-- Reverse_Bin_Arr(D_Array);
		-- Put_Line(D_Array);

end Main;

	
	

	



