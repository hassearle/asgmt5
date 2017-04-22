generic 
	type BINARY_ARRAY is digits <>; 

package Asgmt5 is 

	
	-- convert binary value to int equivalent 
	-- must implemented with a loop
	function Bin_To_Int(BINARY_ARRAY) return INTEGER; 


	-- convert int to binary value equivalent 
	-- limits size of int to 16 bits 
	-- binary array should order the least significant bit to the far right
	function Int_To_Bin(INTEGER) return BINARY_ARRAY;

	
	-- returns sum of two binary arrays 
	-- dont worry about overflows
	function Plus_Overload(BINARY_ARRAY, BINARY_ARRAY) 
		return BINARY_ARRAY;

	-- returns sum of binary array and int
	function Plus_Overload(BINARY_ARRAY, INTEGER) 
		return BINARY_ARRAY;

	-- returns the difference of two binary arrays
	-- subtract the second from the first parameter
	function Minus_Overload(BINARY_ARRAY, BINARY_ARRAY) 
		return BINARY_ARRAY;


	-- returns the difference of binary array and int
	-- subtract the second from the first parameter
	function Minus_Overload(BINARY_ARRAY, INTEGER) 
		return BINARY_ARRAY;


	-- reverse array
	procedure Reverse_Bin_Arr(BINARY_ARRAY);


	-- prints binary array to console
	procedure Print_Bin_Arr(BINARY_ARRAY); 


end Asgmt5;