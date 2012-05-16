
component extends="mxunit.framework.TestCase" {
	

	function lastindexof_should_work_with_expected_data(){
		//expected data
		x =  [10,0,3,-1,0,99,100];
		y = 0;
		expected = 5;
		actual = lastIndexOf( x, y );
		debug(actual);
		assertEquals(expected, actual);
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

