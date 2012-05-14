/**
*  
* @file  /Users/sheltonb/Software/apache-tomcat-6.0.35/webapps/cfusion/tdd/2-spike/Twitter.cfc
* @author  
* @description
*
*/

component output="false" displayname="Twitter"  {
	
	public function init(){ 
		return this;
	}	


	public any function search_twitter(q) {
		twitter = new http(); 
		twitter.setMethod("get"); 
		twitter.setCharset("utf-8");
		twitter.setUrl("http://search.twitter.com/search.json?q=" & q );
		result = twitter.send().getPrefix();
		json = deSerializeJSON(result.Filecontent);
		return json.results;
	}
	
	
}