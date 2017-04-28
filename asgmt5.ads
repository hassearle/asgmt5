	package Asgmt5 is

		type BINARY_NUMBER is range 0..1;
		type BINARY_ARRAY is array(INTEGER range 0..15) of BINARY_NUMBER;

		A_B_Sum : INTEGER; --A_Array + B_Array
		A_B_Dif : INTEGER; --A_Array - B_Array
		A_R_Sum : INTEGER; --A_Array + Random Integer 
		R_A_Dif : INTEGER; --Random Integer - A_Array
		C_R_Sum : INTEGER; --C_Array + Random Integer 
		A_Random_Int: Integer;
		B_Random_Int: Integer;
		C_Random_Int: Integer;	
		Zero_Array: BINARY_ARRAY := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
		-- A_Int : INTEGER;
		A_Array: BINARY_ARRAY;
		Temp : BINARY_NUMBER;
		B_Array: BINARY_ARRAY;
		C_Array: BINARY_ARRAY;
		D_Array: BINARY_ARRAY;
		E_Array: BINARY_ARRAY;
		F_Array: BINARY_ARRAY;
		BTI : INTEGER;

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

		function Top_Random_Number return INTEGER;

end Asgmt5;