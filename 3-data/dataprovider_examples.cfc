
component extends="mxunit.framework.TestCase" {
	
	_data = [
				{'name'='Bob', 'email'='bob@mxunit.org'},
				{'name'='Marc', 'email'='marc@mxunit.org'},
				{'name'='Mark', 'email'='mark@mxunit.org'},
				{'name'='Ryan', 'email'='ryan@mxunit.org'}
		    ];

	/**
	* @mxunit:dataprovider  _data
	*/
	function array_of_structs(data) {
		//Do something for each element in arguments.data
		debug(arguments.data);
	}


	/**
	* @mxunit:dataprovider  100
	*/
	function simple_iterator(i) {
		//Do something for each element in arguments.data
		seed = randomize(i, "SHA1PRNG");
		debug( rand("SHA1PRNG") );
	}
		

}




