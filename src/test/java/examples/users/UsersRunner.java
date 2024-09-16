package examples.users;

import com.intuit.karate.junit5.Karate;

public class UsersRunner {
    @Karate.Test
    Karate postUsers(){
        return Karate.run("users").relativeTo(getClass());
    }

}
