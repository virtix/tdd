component extends="mxunit.framework.TestCase" {



function spike_twitter(){

		query = 'mxunit';
		twitter = new http(); 
		twitter.setMethod("get"); 
		twitter.setCharset("utf-8");
		twitter.setUrl("http://search.twitter.com/search.json?q=" & query );
		result = twitter.send().getPrefix();
		json = deSerializeJSON(result.Filecontent);
		tweets = json.results;

	    for (tweet in tweets){
	    	debug(tweet);
		}

	}


}

