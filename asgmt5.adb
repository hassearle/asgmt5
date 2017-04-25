with Ada.Text_IO, Ada.Integer_Text_IO, 
		Ada.Numerics.discrete_Random;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body Asgmt5 is


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

	function Random_Number return BINARY_NUMBER is
		Temp : BINARY_NUMBER;
		begin
			Temp := BINARY_NUMBER(1);
			return Temp;
		end Random_Number;


end Asgmt5;