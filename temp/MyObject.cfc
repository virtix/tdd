
component name="MyObject"  {
	

	function init(){ 
		return this;
	}




	public any function compute_min(a) {
		ret_val = 999999999999999999999999999;
		for(item in a) {
		   if (item < ret_val) ret_val = item;
		}

		return ret_val;
	}
	
	
	function compute_max(array a){
		ret_val = -9999999999999999999999999999;
		for(item in a) {
		   if (item > ret_val) ret_val = item;
		}

		return ret_val;
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