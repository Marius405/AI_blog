package Application.MO.Repository;

import Application.MO.Model.Concert;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ConcertRepository extends JpaRepository<Concert, Long> {
    @Query(value = "SELECT * FROM concert order by date DESC", nativeQuery = true)
    public List<Concert> listConcert();
}
