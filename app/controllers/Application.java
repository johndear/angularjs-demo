package controllers;

import play.mvc.Controller;
import play.mvc.With;

@With(Secure.class)
public class Application extends Controller {

    public static void index() {
        render();
    }
    
    public static void welcome(){
    	render("public/pages/welcome.html");
    }

}