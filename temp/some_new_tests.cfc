
component extends="mxunit.framework.TestCase" {
	



	function test_my_object_should_compute_min() {
		mo = new MyObject2();
		a = [2,1,-10,99,4,-123,-001.00];
		actual = mo.compute_min(a);
		assertEquals(-123, actual, 'why?');

	}
	
	

	function my_object_should_have_a_heartbeat(){
		mo = new MyObject2();
		a = [2,1,-10,99,4,-123,-001.00];
		actual = mo.compute_max(a);
		debug(actual);
		assertEquals(99, actual, 'These should be equal');

	}

	
}

