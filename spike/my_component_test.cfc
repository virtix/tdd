
component extends="mxunit.framework.TestCase" {
	

	function my_component_should_shuffle_an_array() {
		mc = new MyComponent();
		_array = [1,2,3,4,5,6];
		actual = mc.shuffle(_array);
		debug([_array,actual]);
		assertNotEquals(_array, actual, 'These should not be the same, bitch.');
	}


	function test_my_component_is_alive(){
		mc =  new MyComponent();
		assertSame(mc, mc, 'why?');
	}

	
}

