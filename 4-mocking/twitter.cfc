
component name="Twitter"  {
	

	function init(){ 
		return this;
	}	


	public any function search(string q) {
		twitter = new http(); 
		twitter.setMethod("get"); 
		twitter.setCharset("utf-8");
		twitter.setUrl("http://search.twitter.com/search.json?q=" & q );
		result = twitter.send().getPrefix();
		json = deSerializeJSON(result.Filecontent);
		tweets = json.results;
		return tweets;
	}
	
	
}