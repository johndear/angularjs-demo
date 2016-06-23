package controllers;

import play.mvc.Controller;
import play.mvc.With;

// @With(Secure.class)
// @Check("administrator")
public class Application extends Controller {

    public static void index() {
        render("public/pages/admin/index.html");
    }
    
    public static void welcome(){
    	render("public/pages/admin/permission/welcome.html");
    }

}