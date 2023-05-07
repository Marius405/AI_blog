package Application.MO.Service;

import Application.MO.Model.Article;
import Application.MO.Repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.util.List;

@Service
public class ArticleService {
    JdbcTemplate template;
    private final ArticleRepository repository;
    @Autowired
    public ArticleService(ArticleRepository repository) {
        this.repository = repository;
    }

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public List<Article> listearticle(){

        return this.repository.findAll();
    }
    public List<Article> listepublie(){
        return this.repository.listepublie();
    }
    public List<Article> listepublietop3(){

        return this.repository.toplistepublie();
    }
    public Article find(long id){

        return this.repository.getById(id);
    }
    public void publier(long id){
        Article a=repository.getById(id);
        a.setEtat(1);
        this.repository.save(a);
    }
    public void depublier(long id){
        Article a=repository.getById(id);
        a.setEtat(0);
        this.repository.save(a);
    }
    public void insert(Article a){
        this.repository.save(a);
    }
}
