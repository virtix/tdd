/**
*  
* @file  /Users/sheltonb/Software/apache-tomcat-6.0.35/webapps/cfusion/tdd/3-data/Thing.cfc
* @author  
* @description
*
*/

component output="false" displayname="Thing"  {
	
	public function init(){ 
		return this;
	}	


	public any function right_way(flag) {
		
		if(flag == true){
			return 1;
		}
		else {
			return 0;
		}

	}
	
	
}