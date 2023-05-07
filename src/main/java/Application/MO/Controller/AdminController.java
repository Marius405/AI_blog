package Application.MO.Controller;

import Application.MO.Model.Admin;
import Application.MO.Model.Article;
import Application.MO.Service.AdminService;
import Application.MO.Service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@Controller
@RestController
@RequestMapping("/AI/Admin")
@CrossOrigin(origins = "*", maxAge = 3600)
public class AdminController {
    private final AdminService service;
    private final ArticleService articleservice;
    @Autowired
    public AdminController(AdminService service,ArticleService articleservice) {
        this.service = service;
        this.articleservice=articleservice;
    }
    @GetMapping("")
    public ModelAndView index(){
        ModelAndView val=new ModelAndView();
        val.setViewName("BackOffice/index");

        return val;
    }
    @PostMapping ("/Login")
    public ModelAndView login(@RequestParam("email") String email, @RequestParam("mdp") String mdp,HttpServletRequest request){

        ModelAndView val=new ModelAndView();
        HttpSession session= request.getSession();
        Admin admin=this.service.login(email, mdp);
        if(admin!=null){
            session.setAttribute("admin",admin);
            val.setViewName("BackOffice/accueil_admin");
            val.addObject("liste",this.articleservice.listearticle());

        }else{
            val.setViewName("BackOffice/index");
        }


        return val;
    }
    @GetMapping("/ToAjoutArticle")
    public ModelAndView tAjoutArticle(){
        ModelAndView val=new ModelAndView();
        val.setViewName("BackOffice/ajout_article");
        return val;
    }
    @PostMapping("/AjoutArticle")
    public ModelAndView ajoutArticle(@RequestParam String titre,@RequestParam String resume,@RequestParam String contenu,@RequestParam String image){
        ModelAndView val=new ModelAndView();
        Article a=new Article();
        a.setTitre(titre);
        a.setResume(resume);
        a.setContenu(contenu);
        a.setEtat(1);
        LocalDateTime now =java.time.LocalDateTime.now();
        a.setDate(Timestamp.valueOf(now));
        a.setImage(image);
        this.articleservice.insert(a);
        //val=new ModelAndView("redirect:/ListeProduitAdmin");
        val.setViewName("BackOffice/accueil_admin");
        val.addObject("liste",this.articleservice.listearticle());
        return val;
    }

}
