
component name="Thing"  {
	
	variables.twitter = '';

	function init(){ 
		variables.twitter = new Twitter();
		return this;
	}	



	public any function set_twitter(twit) {
		variables.twitter = twit;
	}



	public any function search_twitter(q) {
		var result = variables.twitter.search(q);
		return result;
	}
	
	
}