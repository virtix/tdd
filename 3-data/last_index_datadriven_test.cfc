
component extends="mxunit.framework.TestCase" {
	
	//rewrite
	function indexof_should_work_with_expected_data(){
		x =  [10,0,3,-1,99,100];
		y = 3;
		expected = 3;
		actual = lastIndexOf( x, y );
		assertEquals(expected, actual);
	}



	my_data = [6,5,4,3,2,1];
	/**
	*
	* This input finds the bug
	* 
	* @dataprovider my_data 
	*/
	function indexof_should_work_with_all_elements(i){
		x =  [10,0,3,-1,99,100];
		y = x[i];
		debug(i);
		expected = i;
		actual = lastIndexOf( x, y );
		assertEquals(expected, actual, "Failed on input value #i# for for array value #y#");
	}	


	/**
	* Returns the last index of y if found in x,
	* else returns -1.
	*/   	 
	private function lastIndexOf(x, y) {
        
        for (i = x.size(); i > 1; i--){
            if( x[i]==y ) return i;
        }
    	return -1;
	}


}

