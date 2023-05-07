package Application.MO.Controller;

import Application.MO.Service.ArticleService;
import Application.MO.Service.ConcertService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RestController
@RequestMapping("/AI")
@CrossOrigin(origins = "*", maxAge = 3600)
public class ArticleController {
    private final ArticleService service;

    @Autowired
    public ArticleController(ArticleService service) {
        this.service = service;
    }
    @GetMapping("")
    public ModelAndView index(){
        ModelAndView val=new ModelAndView();
        val.setViewName("index");
        val.addObject("listetop",service.listepublietop3());
        return val;
    }
    @GetMapping("Article/{id}")
    public ModelAndView getArticle(@PathVariable long id){
        ModelAndView val=new ModelAndView();
        val.setViewName("index");
        val.addObject("article",service.find(id));
        return val;
    }
}
