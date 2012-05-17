component extends="mxunit.framework.TestCase" {



public any function search(query) {
	twitter = new http(); 
	twitter.setMethod("get"); 
	twitter.setCharset("utf-8");
	twitter.setUrl("http://search.twitter.com/search.json?q=" & query );
	results = twitter.send().getPrefix();
	json = deSerializeJSON(results.Filecontent);
	tweets = json.results;
	return tweets;
}



function spike_twitter(){
		query = 'cfobjective';
		
		tweets = search(query);	

		for (tweet in tweets){
			debug(tweet);
			assertIsStruct(tweet, 'Not a struct? = #tweet.toString()#');	    	
		}


 }

} //end component

