package Application.MO.Controller;

import Application.MO.Model.Concert;
import Application.MO.Service.ConcertService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
@Controller
@RestController
@RequestMapping("/AI")
@CrossOrigin(origins = "*", maxAge = 3600)
public class ConcertController {
    private final ConcertService service;

    @Autowired
    public ConcertController(ConcertService service) {

        this.service = service;
    }
    @GetMapping("/listeConcert")
    public List<Concert> concertList(){
        return  service.getAllSorted();
    }
    @GetMapping("/listeConcertPage")
    public ModelAndView concertListe(){
        ModelAndView val=new ModelAndView();
        val.setViewName("huhu");
        val.addObject("liste",service.getAllSorted());
        return val;
    }

    //description | titre | date | lieu
    @PostMapping("/insertConcert")
    public void insertConcert(@RequestBody Concert c){
        service.insert(c);
    }
}
