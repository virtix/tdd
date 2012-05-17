component extends="mxunit.framework.TestCase" {


function twitter_sketch(){
		query = 'cfobjective';
		
		twitter = new http(); 
		twitter.setMethod("get"); 
		twitter.setCharset("utf-8");
		twitter.setUrl("http://search.twitter.com/search.json?q=" & query );
		
		results = twitter.send().getPrefix();
		
		json = deSerializeJSON(results.Filecontent);
		tweets = json.results;

		for (tweet in tweets){
			debug(tweet);	    	
		}


 }


} //end component

