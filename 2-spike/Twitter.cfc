/**
*  
* @file  /Users/sheltonb/Software/apache-tomcat-6.0.35/webapps/cfusion/tdd/2-spike/Twitter.cfc
* @author  
* @description
*
*/

component output="false" displayname=""  {
	
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
	


	public function init(){ 
		return this;
	}	
}