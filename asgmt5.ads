-- [1] Provided Samples: random.ads, Line 40

generic 
	type BINARY_NUMBER is range <>;
	type BINARY_ARRAY is array(INTEGER) of BINARY_NUMBER;

package Asgmt5 is 

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
	
	-- random number generator
	function Random_Number return BINARY_NUMBER; --SOURCE [1]


end Asgmt5;