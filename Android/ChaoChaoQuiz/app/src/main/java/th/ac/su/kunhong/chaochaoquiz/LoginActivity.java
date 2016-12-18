package th.ac.su.kunhong.chaochaoquiz;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject;

import th.ac.su.kunhong.chaochaoquiz.Model.EntityModel;
import th.ac.su.kunhong.chaochaoquiz.Model.UserModel;

public class LoginActivity extends AppCompatActivity {




    // Session Manager Class
    SessionManagement session;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);


    }

    public void onClickSignIn(View v) {

        // Session Manager
        session = new SessionManagement(getApplicationContext());

        // Email, Password input text
        EditText username_edt = (EditText) findViewById(R.id.EdtUsername);
        EditText password_edt = (EditText) findViewById(R.id.EdtPassword);


        Button BTNSignin = (Button) findViewById(R.id.BTNSignin);

        EntityModel entity = new EntityModel();

        String username = username_edt.getText().toString();
        String password = password_edt.getText().toString();

        //Assign Data to EntityModel object
        entity.getValues().put("login_username", username_edt.getText().toString());
        entity.getValues().put("login_password", password_edt.getText().toString());


        //Create ServerConnector object
        ServerConnector connector = new ServerConnector();

        String strresult = connector.connect("getusersignin.php", true, entity);
        //Toast.makeText(this, strresult, Toast.LENGTH_SHORT).show();


        try {
            JSONObject jdata = new JSONObject(strresult);
            Toast.makeText(this, "Welcome " + jdata.get("display_name").toString(), Toast.LENGTH_LONG).show();

            if (username.trim().length() > 0 && password.trim().length() > 0) {

                if (username.equals(jdata.get("username"))) {

                    session.createLoginSession(jdata.get("display_name").toString(), jdata.get("email").toString());
                    //Toast.makeText(getApplicationContext(), "User Login Status: " + session.isLoggedIn(), Toast.LENGTH_LONG).show();

                }
            }

        } catch (JSONException e) {
            e.printStackTrace();
        }

        UserModel user = new UserModel();
        user.setUerMode(strresult);

        if (user.getUser_id() != 0) {
            Intent dointent = new Intent(this, MainActivity.class);
            dointent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);

            //Add new Flag to Start
            dointent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);

            startActivity(dointent);
            finish();
        } else {
            Toast.makeText(this, "Username of Password is incorrect.", Toast.LENGTH_LONG).show();
        }
    }

    public void onClickRegister(View v){
        Intent dointent = new Intent(this, RegisterActivity.class);
        startActivity(dointent);
    }
}
