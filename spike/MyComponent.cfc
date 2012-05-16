/**
*  
* @file  /Users/sheltonb/Software/apache-tomcat-6.0.35/webapps/cfusion/tdd/1-101/MyComponent.cfc
* @author  
* @description
*
*/

component output="false" displayname="MyComponent"  {
	


	
	public array function shuffle(_array) {
		col = createObject("java","java.util.Collections");
		col.shuffle(_array);
		return _array;
	}
	
	

	public function init(){ 
		return this;
	}	
}