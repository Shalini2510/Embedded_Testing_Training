package wipro.sqlEx.demoOnSql;
import org.springframework.data.jpa.repository.JpaRepository;

	import java.util.Optional;

	public interface LoginRepository  extends JpaRepository<User, Long> {
	  // inbuilt class in java-->  save, save all, methods, delete method
	  
	  Optional<User> findByUsernameContaining(String username);

	

}
