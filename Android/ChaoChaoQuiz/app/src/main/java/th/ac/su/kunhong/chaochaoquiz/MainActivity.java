package th.ac.su.kunhong.chaochaoquiz;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;

import th.ac.su.kunhong.chaochaoquiz.Model.UserModel;

public class MainActivity extends AppCompatActivity {

    SessionManagement session;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);



        //Session class instance
        session = new SessionManagement(getApplicationContext());

        TextView lblName = (TextView) findViewById(R.id.lblName);
        TextView lblEmail = (TextView) findViewById(R.id.lblEmail);

        Button btnLogout = (Button) findViewById(R.id.btnLogout);
        Button btnPlay = (Button) findViewById(R.id.btnPlay);


        HashMap<String, String> user = session.getUserDetails();

        //get name
        String name = user.get(SessionManagement.KEY_NAME);

        //get email
        String email = user.get(SessionManagement.KEY_EMAIL);

        //show
        lblName.setText(Html.fromHtml("Name: <b>" + name + "<b>"));
        lblEmail.setText(Html.fromHtml("Email: <b>" + email + "<b>"));

        btnLogout.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View arg0) {
                // Clear the session data
                // This will clear all session data and
                // redirect user to LoginActivity
                session.logoutUser();
            }
        });

        btnPlay.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(),PlayActivity.class);
                //intent.putExtra("MODE",getPlayMode());  Send Mode to Playing page
                startActivity(intent);
                finish();
            }
        });





    }

}
