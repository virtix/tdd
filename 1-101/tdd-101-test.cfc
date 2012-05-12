
component extends="mxunit.framework.TestCase" {
	

	function setUp(){
	  mo = new MyObject(); 
	  data = [1,2,3,4];

	}


	function test_array_shuffle() {
		shuffled = mo.shuffle(data);
		debug([data,shuffled]);
		assertIsArray(shuffled);
		assertEquals(data.size(), shuffled.size());
		assertNotEquals(data, shuffled);
	}
	
	

	function test_something_else() {		
		var d = [99,1,123,101,9,-1];
		actual = mo.greatest(d.suffle());
		assertEquals(123, actual, 'Should be the same!');
	}
	
	

	function test_something(){
		actual = mo.compute(data);
		assertEquals(10, actual, 'These should be the same');
	}

	
}

