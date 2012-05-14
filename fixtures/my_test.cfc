
component extends="mxunit.framework.TestCase" {


	function setUp(){
	  mo = new MyObject(); 
	}


	function my_object_should_compute_the_max_value_of_an_array() {
		a = [1,-9,0,'',7,0,11,-1];
		actual= mo.compute_max(a);
		assertEquals(11, actual, 'Thess should be the same');
	}

	function my_object_should_shuffle_an_array(){
		a = [1,2,3,4,5,6,7];
		b = mo.shuffle(a);
		debug([a,b]);
		assertNotEquals(a, b, 'These should not be the same');
	}

	
}

