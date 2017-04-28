--[1] https://en.wikibooks.org/wiki/Ada_Programming/Control#for_loop
--[2] https://www-users.cs.york.ac.uk/~andy/lrm95/a_05_02.htm 
--		(see 56, 58)
--[3] http://www.cs.fsu.edu/~baker/ada/examples/enums.adb
--[4] http://www.wikihow.com/Convert-from-Decimal-to-Binary
--[5] https://en.wikibooks.org/wiki/Ada_Programming/Control
--[6] http://www.wikihow.com/Subtract-Binary-Numbers

with Ada.Text_IO, Ada.Integer_Text_IO,Ada.Numerics.discrete_Random,
		Ada.Strings.Unbounded, Asgmt5;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Unbounded, Asgmt5;

procedure Main is
	
begin
	
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   --START OF MAIN
   --=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

   		--section 1----------------------------------------------------------
			Put("Printing Random Array A_Array");
			Put_Line("");

	   		--generates array
			for I in BINARY_ARRAY'Range loop --SOURCE [1]
				if I = 0 then  --limits array to < 32767 so section 5 can make a 
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
	   		A_Random_Int := Random_Number;
	   		B_Array := Int_To_Bin(A_Random_Int);
	   		Put_Line("");	
	   		Put_Line("");
	   		Put("Printing Array created from Int_To_Bin function: Int_To_Bin(");
	   		Put (A_Random_Int, Width => 1);
	   		Put_Line(")"); 
			Print_Bin_Arr(B_Array); 
   		--------------------------------------------------------------

   		--section 4----------------------------------------------------------
			C_Array := Plus_Overload(A_Array , B_Array);
			A_B_Sum := BTI + A_Random_Int; 
   			Put_Line("");	
	   		Put_Line("");
	   		Put_Line("Printing value of A_Array + B_Array, first + overload");
	   		Put("Int value of A_Array: ");
			Put(BTI, Width => 1);
			Put_Line("");
			Put("Int value of B_Array: ");   
			Put (A_Random_Int, Width => 1);
			Put_Line("");
			Put("Int value of C_Array: ");
			Put(A_B_Sum, Width => 1);
			Put_Line("");
			Put("Binary value of C_Array: "); 
			Print_Bin_Arr(C_Array);
   		--------------------------------------------------------------

   		--section 5----------------------------------------------------------
	   		B_Random_Int := Random_Number;
		   	C_R_Sum := A_B_Sum + B_Random_Int;
			D_Array := Plus_Overload(C_Array, B_Random_Int);
	   		Put_Line("");
	   		Put_Line("");
	   		Put("Printing value of Int_To_Bin(");
			Put(B_Random_Int, Width => 1);
	   		Put_Line(") + C_Array, second + overload");
	   		Put("Int value of D_Array after addition: ");
			Put(C_R_Sum, Width => 1);
			Put_Line("");
			Put("Current binary value of ArrayD: ");
			Print_Bin_Arr(D_Array);
   		--section 5----------------------------------------------------------

   		--section 6----------------------------------------------------------
   			A_B_Dif := BTI - A_Random_Int;
   			E_Array := Minus_Overload(A_Array, B_Array);
   			Put_Line("");
	   		Put_Line("");
   			Put_Line("Printing value of A_Array - B_Array, first - overload");
			Put("Int value of A_Array: ");
			Put(BTI, Width => 1);
			Put_Line("");
			Put("Int value of B_Array: ");
			Put(A_Random_Int, Width => 1);
			Put_Line("");
			Put("Int value of E_Array (Note, this value will be incorrect if first number is smaller than second): ");
			Put(A_B_Dif, Width => 1);
			Put_Line("");
			Put_Line("Binary value of E_Array");
			Print_Bin_Arr(E_Array);
   		--section 6----------------------------------------------------------

   		--section 7----------------------------------------------------------
	   		C_Random_Int := Top_Random_Number;
	   		R_A_Dif := C_Random_Int - BTI;
	   		F_Array := Minus_Overload(A_Array, C_Random_Int);
	   		Put_Line("");
	   		Put_Line("");
	   		Put("Printing value of Int_To_Bin(");
	   		Put(C_Random_Int, Width => 1);
	   		Put_Line(") - A_Array, second - overload");
			Put("Int value of A_Array: ");
			Put(BTI, Width => 1);
			Put_Line("");
			Put("Int value of F_Array after modification: ");
			Put(R_A_Dif, Width => 1);
			Put_Line("");
			Put_Line("Binary value of F_Array");
			Print_Bin_Arr(F_Array);
   		--section 7----------------------------------------------------------

   		--section 8----------------------------------------------------------
   			Reverse_Bin_Arr(F_Array);
   			Put_Line("");
	   		Put_Line("");
	   		Put_Line("Reversing and printing F_Array");
   			Print_Bin_Arr(F_Array);
   		--section 8----------------------------------------------------------

end Main;

	
	

	



