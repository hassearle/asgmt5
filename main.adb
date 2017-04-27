--[1] https://en.wikibooks.org/wiki/Ada_Programming/Control#for_loop
--[2] https://www-users.cs.york.ac.uk/~andy/lrm95/a_05_02.htm 
--		(see 56, 58)
--[3] http://www.cs.fsu.edu/~baker/ada/examples/enums.adb
--[4] http://www.wikihow.com/Convert-from-Decimal-to-Binary
--[5] https://en.wikibooks.org/wiki/Ada_Programming/Control

with Ada.Text_IO, Ada.Integer_Text_IO,Ada.Numerics.discrete_Random,
		Ada.Strings.Unbounded;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Unbounded;

procedure Main is
	
	--types for binary arrays and numbers
	type BINARY_NUMBER is range 0..1;
	type BINARY_ARRAY is array(INTEGER range 0..15) of BINARY_NUMBER;

	A_B_Sum : INTEGER;
	C_R_Sum : INTEGER;
	Random_Int: Integer;
	Zero_Array: BINARY_ARRAY := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
	-- A_Int : INTEGER;
	A_Array: BINARY_ARRAY;
	Temp : BINARY_NUMBER;
	B_Array: BINARY_ARRAY;
	C_Array: BINARY_ARRAY;
	D_Array: BINARY_ARRAY;
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

		--returns sum of binary array and int
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
					 	case Remain is
					 		when 0 =>
					 			Temp(15 - I) := 0;
					 			Remain := 1; 
					 		when 1 =>
					 			Temp(15 - I) := 1;
					 			Remain := 1;		
					 	end case;		 		
					 end if;

					if (First(15 - I) = 0 and Second(15 - I) = 1) or 
						(First(15 - I) = 1 and Second(15 - I) = 0)
						 then
					 	case Remain is
					 		when 0 =>
					 			Temp(15 - I) := 1;
					 			Remain := 0; 
					 		when 1 =>
					 			Temp(15 - I) := 0;
					 			Remain := 1;		
					 	end case;
					 end if; 

					if First(15 - I) = 0 and Second(15 - I) = 0 then
					 	case Remain is
					 		when 0 =>
					 			Temp(15 - I) := 0;
					 			Remain := 0; 
					 		when 1 =>
					 			Temp(15 - I) := 1;
					 			Remain := 0;		
					 	end case;
					 		
					 end if;
					
				end loop;
				return Temp;
			end Plus_Overload;

		function Plus_Overload(X : BINARY_ARRAY; Y : INTEGER) return BINARY_ARRAY is
			Temp : BINARY_ARRAY;
			Temp1 : BINARY_ARRAY;
			begin
				Temp := Int_To_Bin(Y);
				return Plus_Overload(X, Temp);
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
			type NUM is range 0..32767; --half so that 
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

   		--section 1----------------------------------------------------------
			Put("Printing Random Array A_Array");
			Put_Line("");

	   		--generates array
			for I in BINARY_ARRAY'Range loop --SOURCE [1]
				if I = 0 then  --limits array to < 32767 so section 4 can make a 
								-- binary number from sum 
					A_Array(I) := 0;
					Put(INTEGER'Image(INTEGER(A_Array(I)))); --SOURCE [3]
					else 
						A_Array(I) := Random_Binary;
						Put(INTEGER'Image(INTEGER(A_Array(I)))); --SOURCE [3]
				end if;				
			end loop;
   		--------------------------------------------------------------

   		--section 2----------------------------------------------------------
	   		--prints integer equilivant of the previously generated array
			if A_Array /= Zero_Array then
				BTI := Bin_To_Int(A_Array);
				else Put("0");
			end if;
	   		Put_Line("");	
	   		Put_Line("");
	   		Put_Line("Printing Integer value of A_Array"); 
			Put(BTI);
   		--------------------------------------------------------------

   		--section 3----------------------------------------------------------
	   		Random_Int := Random_Number;
	   		B_Array := Int_To_Bin(Random_Int);
	   		Put_Line("");	
	   		Put_Line("");
	   		Put("Printing Array created from Int_To_Bin function: Int_To_Bin(");
	   		Put (Random_Int, Width => 1);
	   		Put_Line(")"); 
			Print_Bin_Arr(B_Array); 
   		--------------------------------------------------------------

   		--section 4----------------------------------------------------------
			C_Array := Plus_Overload(A_Array , B_Array);
			A_B_Sum := BTI + Random_Int; 
   			Put_Line("");	
	   		Put_Line("");
	   		Put_Line("Printing value of A_Array + B_Array, first + overload");
	   		Put("Int value of A_Array: ");
			Put(BTI, Width => 1);
			Put_Line("");
			Put("Int value of B_Array: ");   
			Put (Random_Int, Width => 1);
			Put_Line("");
			Put("Int value of C_Array: ");
			Put(A_B_Sum, Width => 1);
			Put_Line("");
			Put("Binary value of C_Array: "); 
			Print_Bin_Arr(C_Array);
   		--------------------------------------------------------------

   		--section 5----------------------------------------------------------
	   		Random_Int := Random_Number;
		   	C_R_Sum := A_B_Sum + Random_Int;
		   	
	   		Put_Line("");
	   		Put_Line("");
	   		Put("Printing value of Int_To_Bin(");
			Put (Random_Int, Width => 1);
	   		Put_Line(") + C_Array, second + overload");
	   		Put("Int value of C_Array after addition: ");
			Put(C_R_Sum, Width => 1);
			Put_Line("");
			Put("Current binary value of Array3: ");
			Put_Line("");
			D_Array := Plus_Overload(C_Array, Random_Int);
			Print_Bin_Arr(D_Array);





		-- Put_Line(C_Array);
		-- D_Array := Minus_Overload(A_Array : B_Array);
		-- Put_Line(D_Array);
		-- Reverse_Bin_Arr(D_Array);
		-- Put_Line(D_Array);

end Main;

	
	

	



