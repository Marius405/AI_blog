package Application.MO.Repository;

import Application.MO.Model.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ArticleRepository extends JpaRepository<Article, Long> {
    @Query(value = "SELECT * FROM article where etat=1", nativeQuery = true)
    public List<Article> listepublie();
    @Query(value = "SELECT * FROM article where etat=1 order by date DESC limit 3", nativeQuery = true)
    public List<Article> toplistepublie();
}
