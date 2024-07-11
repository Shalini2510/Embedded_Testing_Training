package wipro.sqlEx.demoOnSql;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
  // inbuilt class in java-->  save, save all, methods, delete method
  
  List<User> findByUsernameContaining(String username);

}
