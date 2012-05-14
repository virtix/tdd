/**
*  
* @file  /Users/sheltonb/Software/apache-tomcat-6.0.35/webapps/cfusion/tdd/fixtures/MyObject.cfc
* @author  
* @description
*
*/

component output="false" displayname="MyObject"  {
	
	public function init(){ 
		return this;
	}	



	public any function compute_max(array a) {
		ret_val = '';
		for(item in a) {
		   if(item > ret_val) ret_val = item;
		}
		return ret_val;

	}
	
	

	public array function shuffle(a) {
		col = createObject("java", "java.util.Collections");
		col.shuffle(a);
		return a;
	}
	
	
	
	
}