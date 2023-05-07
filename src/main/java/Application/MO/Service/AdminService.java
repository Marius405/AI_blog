package Application.MO.Service;

import Application.MO.Model.Admin;
import Application.MO.Model.Concert;
import Application.MO.Repository.AdminRepository;
import Application.MO.Repository.ConcertRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.util.List;
@Service
public class AdminService {
    JdbcTemplate template;
    private final AdminRepository repository;
    @Autowired
    public AdminService(AdminRepository repository) {
        this.repository = repository;
    }


    @Autowired
    public void setDataSource(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }
    public Admin login(String email, String mdp){
        Admin val=null;
        val=(this.repository.login(email, mdp));
        return val;
    }
}
