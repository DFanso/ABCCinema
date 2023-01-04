import com.abccinema.dao.AdminDAO;
import com.abccinema.entity.AdminUsers;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static  org.junit.Assert.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;


public class AdminDAOTest {
    private static EntityManagerFactory entityManagerFactory;
    private static EntityManager entityManager;
    private static AdminDAO adminDAO;

    @BeforeClass
    public static void setupClass()
    {
        entityManagerFactory = Persistence.createEntityManagerFactory("ABC_Cinema");
        entityManager = entityManagerFactory.createEntityManager();
        adminDAO = new AdminDAO(entityManager);



    }

    @Test
    public void testCreateUser()
    {
        AdminUsers adminUsers = new AdminUsers();

        adminUsers.setUserName("Bamtu");
        adminUsers.setPassword("Bamtu123");
        adminUsers.setIsActive(1);
        adminUsers = adminDAO.create(adminUsers);


        assertTrue(adminUsers.getUserID() >0);

        System.out.println("User Added Done");
    }
    @Test(expected = PersistenceException.class)
    public void testCreateUserFiledNotSet()
    {
        AdminUsers adminUsers = new AdminUsers();


        adminUsers = adminDAO.create(adminUsers);


    }
    @Test
    public void testUpdateUser()
    {
        AdminUsers adminUsers = new AdminUsers();
        adminUsers.setUserID(9);
        adminUsers.setUserName("Bamtu");
        adminUsers.setPassword("1234");
        adminUsers.setIsActive(1);

        adminUsers = adminDAO.update(adminUsers);

        String expected = "1234";
        String actual = adminUsers.getPassword();
        assertEquals(expected,actual);

    }
    @Test
    public void testGetUsersFound()
    {
        Integer userID = 1 ;
        AdminUsers adminUsers = adminDAO.get(userID);
        if (adminUsers != null)
        {
            System.out.println(adminUsers.getPassword());
        }


        assertNotNull(adminUsers);

    }
    @Test
    public void deleteUser()
    {
        Integer userID = 9;
        adminDAO.delete(userID);

        AdminUsers adminUsers = adminDAO.get(9);

        assertNull(adminUsers);
    }

    @AfterClass
    public static void tearDownClass()
    {

        entityManager.close();
        entityManagerFactory.close();
    }



}
