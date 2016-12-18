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

import th.ac.su.kunhong.chaochaoquiz.Model.EntityModel;
import th.ac.su.kunhong.chaochaoquiz.Model.QuizModel;

public class PlayActivity extends AppCompatActivity {

    SessionManagement session;
    int state;

    int score = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_play);

        state++;

        //Create ServerConnector object
        ServerConnector connector = new ServerConnector();

        session = new SessionManagement(getApplicationContext());


        TextView TVPlayer = (TextView)findViewById(R.id.TVPlayer);
        TextView TVState = (TextView)findViewById(R.id.TVState);
        TextView TVQuestion = (TextView)findViewById(R.id.TVQuestion);

        Button btnAnswerA = (Button) findViewById(R.id.btnAnswerA);
        Button btnAnswerB = (Button) findViewById(R.id.btnAnswerB);
        Button btnAnswerC = (Button) findViewById(R.id.btnAnswerC);
        Button btnAnswerD = (Button) findViewById(R.id.btnAnswerD);

        EntityModel entity = new EntityModel();

        String question = TVQuestion.getText().toString();
        //String answerA = btnAnswerA.getText().toString();


        //Assign Data to EntityModel object

        HashMap<String, String> user = session.getUserDetails();

        String strresult = connector.connect("select_state.php", true, entity);
        //Toast.makeText(this, strresult, Toast.LENGTH_SHORT).show();

            QuizModel quiz = new QuizModel();


        TVState.setText(String.valueOf(state));

        try {

            JSONObject jdata = new JSONObject(strresult);
            //TVState.setText(jdata.get("question_id").toString());
            TVQuestion.setText(jdata.get("question").toString());
            btnAnswerA.setText(jdata.get("choice1").toString());
            btnAnswerB.setText(jdata.get("choice2").toString());
            btnAnswerC.setText(jdata.get("choice3").toString());
            btnAnswerD.setText(jdata.get("choice4").toString());

        }catch (JSONException e) {
            e.printStackTrace();
        }


        //get name
        String name = user.get(SessionManagement.KEY_NAME);

        //show
        TVPlayer.setText(Html.fromHtml("Player: " + name + "<b>"));

        btnAnswerA.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent dointent = new Intent(getApplicationContext(),PlayActivity.class);
                startActivity(dointent);
                state++;


            }
        });

        btnAnswerB.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent dointent = new Intent(getApplicationContext(),PlayActivity.class);
                startActivity(dointent);
                state++;


            }
        });
        btnAnswerC.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent dointent = new Intent(getApplicationContext(),PlayActivity.class);
                startActivity(dointent);
                state++;


            }
        });
        btnAnswerD.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent dointent = new Intent(getApplicationContext(),PlayActivity.class);
                startActivity(dointent);
                state++;


            }
        });


    }




}
