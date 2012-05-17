component extends="mxunit.framework.TestCase" {


function spike_twitter(){
		query = 'cfobjective';

		twitter = new Twitter();
		
		tweets = twitter.search(query);	

		for (tweet in tweets){
			debug(tweet);
			assertIsStruct(tweet, 'Not a struct? = #tweet.toString()#');	    	
		}


 }

} //end component

