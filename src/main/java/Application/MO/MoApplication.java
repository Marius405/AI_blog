package Application.MO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


import java.util.List;

@RestController
@SpringBootApplication
public class MoApplication {

	public static void main(String[] args) {
		SpringApplication.run(MoApplication.class, args);
	}


	@GetMapping("/huhu")
	public String message(){
		return  "huhu";
	}



}
