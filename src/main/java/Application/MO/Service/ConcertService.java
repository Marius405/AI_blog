package Application.MO.Service;

import Application.MO.Model.Concert;
import Application.MO.Repository.ConcertRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.util.List;

@Service
public class ConcertService {
    JdbcTemplate template;
    private final ConcertRepository repository;
    @Autowired
    public ConcertService(ConcertRepository repository) {
        this.repository = repository;
    }


    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }
    public List<Concert> getAll(){
        return this.repository.findAll();
    }
    public List<Concert> getAllSorted(){
        return this.repository.listConcert();
    }
    public void insert(Concert c){
        this.repository.save(c);
    }
    public Concert getById(long id){
        return this.repository.getReferenceById(id);
    }
}
