package Application.MO.Model;

import lombok.*;
import javax.persistence.*;
import java.sql.Date;

@Entity(name = "concert")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Concert {
    //id | description | titre
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String description;
    private String titre;
    private Date date;
    private  String lieu;
    private double quota;
}
