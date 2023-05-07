package Application.MO.Repository;

import Application.MO.Model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface AdminRepository extends JpaRepository<Admin, Long> {
    @Query(value = "SELECT * FROM admin where email=?1 and mdp=md5(?2)", nativeQuery = true)
    public Admin login(String email,String mdp);
}
