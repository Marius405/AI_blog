package Application.MO.Controller;

import Application.MO.Service.ArticleService;
import Application.MO.Service.ConcertService;
import Application.MO.Service.QuoteService;
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
    private final QuoteService quoteService;

    @Autowired
    public ArticleController(ArticleService service,QuoteService quoteService) {

        this.service = service;
        this.quoteService=quoteService;
    }
    @GetMapping("")
    public ModelAndView index(){
        ModelAndView val=new ModelAndView();
        val.setViewName("index");
        val.addObject("listetop",service.listepublietop3());
        val.addObject("quote",quoteService.liste());
        return val;
    }
    @GetMapping("Article/{id}/{url}")
    public ModelAndView getArticle(@PathVariable long id,@PathVariable String url){
        ModelAndView val=new ModelAndView();
        val.setViewName("detail_article");
        val.addObject("article",service.find(id));
        return val;
    }
}
