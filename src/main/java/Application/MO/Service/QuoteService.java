package Application.MO.Service;

import Application.MO.Model.Quote;
import Application.MO.Repository.ConcertRepository;
import Application.MO.Repository.QuoteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.util.List;

@Service
public class QuoteService {
    JdbcTemplate template;
    private final QuoteRepository repository;
    @Autowired
    public QuoteService(QuoteRepository repository) {
        this.repository = repository;
    }

    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }
    public List<Quote> liste(){
        return this.repository.findAll();
    }
}
