/*
 *  Example on how to mock an external service (Twitter)
 *
 */
component extends="mxunit.framework.TestCase" {


	function test_the_thing_using_the_real_thing(){
		
		//thing under test
		thing = new Thing();

		//execute Thing
		tweets = thing.search_twitter('cfobjective');

		debug(tweets.size());


		//Debug
	    for (tweet in tweets){
	    	debug(tweet);
		}
		//Test it
		assert(tweets.size() > 0, 'What up, yo?');
	
	}



	function test_the_thing_using_a_mock(){
		
		//thing under test
		thing = new Thing();

		//set up the json data
		raw = fileRead( expandPath("../fixtures/twitter-search-results.json") );
		json = deserializeJSON(raw);
	

		//define mock and inject into Thing
		twitter = mock('Twitter');
		//define behavior
		twitter.search('mxunit').returns( json );
		
		//Inject mock into Thing
		thing.set_twitter(twitter);

		//execute Thing
		tweets = thing.search_twitter('mxunit');

		//Debug
	    for (tweet in tweets){
	    	debug(tweet);
		}

		//Test
		assert(tweets.size() > 0, 'What up, yo?');
	
	}

} //

