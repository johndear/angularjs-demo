package controllers;

import play.mvc.Controller;
import play.mvc.With;

//@With(Secure.class)
//@Check("administrator")
public class Application extends Controller {

	//@Check("administrator")
    public static void index() {
        render("public/pages/admin/index.html");
    }
    
//    @check
    public static void aa(){
    	
    }

}