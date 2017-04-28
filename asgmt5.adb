	with Ada.Text_IO, Ada.Integer_Text_IO,Ada.Numerics.discrete_Random,
		Ada.Strings.Unbounded;
	use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Unbounded;

package body Asgmt5 is

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
			begin
				Temp := Int_To_Bin(Y);
				return Plus_Overload(X, Temp);
			end Plus_Overload;		

		-- SOURCE [6]
		function Minus_Overload(X,Y : BINARY_ARRAY) return BINARY_ARRAY is
			Temp : BINARY_ARRAY;
			Temp_Plus_One : BINARY_ARRAY;
			Add_One_Array : BINARY_ARRAY := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
			Final_Diff : BINARY_ARRAY;
			begin
				for I in BINARY_ARRAY'Range loop
					if Y(I) = 1 then Temp(I) := 0; end if;
					if Y(I) = 0 then Temp(I) := 1; end if;					
				end loop;
				Temp_Plus_One := Plus_Overload(Temp, Add_One_Array);
				Final_Diff := Plus_Overload(X, Temp_Plus_One);
				return Final_Diff;
			end Minus_Overload;	

		function Minus_Overload(X : BINARY_ARRAY; Y : INTEGER) return BINARY_ARRAY is
			Temp : BINARY_ARRAY;
			begin
				Temp := Int_To_Bin(Y);
				return Minus_Overload(Temp, X);
			end Minus_Overload;

		procedure Reverse_Bin_Arr(X : BINARY_ARRAY) is
			Temp : BINARY_ARRAY;
			begin
				for I in BINARY_ARRAY'Range  loop
					if X(I) = 1 then Temp(I) := 0; end if;
					if X(I) = 0 then Temp(I) := 1; end if;			
				end loop;

				F_Array := Temp;
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
			type NUM is range 0..32767; --half so that sums can be binary
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

		-- high random integer number generator 
		function Top_Random_Number return INTEGER is
			type NUM is range 32767..65535; 
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
			end Top_Random_Number;

end Asgmt5;