import com.abccinema.entity.AdminUsers;
import com.abccinema.entity.AdminUsers;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.prefs.Preferences;

public class UserTest {
    public static void main(String[] args) {

        AdminUsers adminUsers = new AdminUsers();
        adminUsers.setUserName("Chethaka");
        adminUsers.setPassword("werwewr@");
        adminUsers.setIsActive(1);

        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("ABC_Cinema");
        EntityManager entityManager = entityManagerFactory.createEntityManager();

        entityManager.getTransaction().begin();

        entityManager.persist(adminUsers);

        entityManager.getTransaction().commit();
        entityManager.close();
        entityManagerFactory.close();

        System.out.println("User Added Done");





    }
}
