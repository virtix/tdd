
component name="MyObject"  {
	

	function init(){ 
		return this;
	}


	public array function shuffle(array ints) {
		
		col = createObject('java','java.util.Collections');
		col.shuffle(ints);
		return ints;
	}
	
	

	public any function greatest(array ints) {
		results = 0;

		for(i in ints) {
		   if (i > results) results = i;
		}

		return results;
	}
	
	

	public any function compute(array ints) {
		
		var results = 0;
		for(item in ints) {
		   results += ints[item];
		}

		return results;
	}
		
			
}