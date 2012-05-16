
component extends="mxunit.framework.TestCase" {
	

	function test_my_object_shuffles_an_array(){
		//setup
		mo = new MyObject();
		a = [1,2,3,4,5,6];

		//exercise
		a2 = mo.shuffle(a);
		
		//test
		debug([a,a2]);
		assertEquals(a.size(), a2.size(), 'Arrays should be of the same size. (Test 1 of 2)' );
		assertNotEquals(a, a2, 'Should not be the same.  (Test 2 of 2)');
	}

	
}

