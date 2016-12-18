package th.ac.su.kunhong.chaochaoquiz;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import th.ac.su.kunhong.chaochaoquiz.Model.EntityModel;
import th.ac.su.kunhong.chaochaoquiz.Model.RegisterModel;
import th.ac.su.kunhong.chaochaoquiz.Model.UserModel;

public class RegisterActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);
    }

    public void onClickConfirm(View v){
        EditText username_edt     = (EditText)findViewById(R.id.EdtUsername);
        EditText email_edt        = (EditText)findViewById(R.id.EdtEmail);
        EditText password_edt     = (EditText)findViewById(R.id.EdtPassword);
        EditText display_name_edt = (EditText)findViewById(R.id.EdtName);

        EntityModel entity = new EntityModel();


        entity.getValues().put("username",username_edt.getText().toString());
        entity.getValues().put("password",password_edt.getText().toString());
        entity.getValues().put("email",email_edt.getText().toString());
        entity.getValues().put("display_name",display_name_edt.getText().toString());

        //Create ServerConnector object
        ServerConnector connector = new ServerConnector();

        String strresult = connector.connect("register_user.php",true,entity);
        Toast.makeText(this, strresult, Toast.LENGTH_SHORT).show();


        RegisterModel register = new RegisterModel();
        register.setRegisterModel(strresult);

        if (register.getStatus() == null){
            Intent dointent = new Intent(this,LoginActivity.class);
            startActivity(dointent);
            finish();
        }else {
            Toast.makeText(this,"Sorry! There is something wrong, please try again.",Toast.LENGTH_SHORT).show();
        }
    }
}
