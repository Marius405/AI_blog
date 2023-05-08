package Application.MO.Model;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "quote")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Quote {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nom;
    private  String fonction;
    private String texte;
    private String image;
}
