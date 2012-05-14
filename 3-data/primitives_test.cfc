
component extends="mxunit.framework.TestCase" {
	
	data = [-1,0,1,-99,99,true,false,'',chr(0)];
	_len = data.size();

	/**
	*
	* @mxunit:dataprovider data
	*/ 
	function test_with_dataprovider(a) {
		o = new Thing();
		actual = o.right_way( a );
		debug(actual);
		// assertEquals(1, actual, 'why?');
	}



	
	function test_simple_path(){
		
		o = new Thing();

		
		actual = o.right_way(true);
		assertEquals(1, actual, 'why?');

		actual = o.right_way(false);
		assertEquals(0, actual, 'why?');


		actual = o.right_way(-9);
		assertEquals(0, actual, 'why?');


		actual = o.right_way(1);
		assertEquals(1, actual, 'why?');	


	}

	
}

