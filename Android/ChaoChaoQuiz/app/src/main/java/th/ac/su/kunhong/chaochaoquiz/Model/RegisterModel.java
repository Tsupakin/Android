package th.ac.su.kunhong.chaochaoquiz.Model;

import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by Kunhong on 12/16/2016 AD.
 */

public class RegisterModel {

    private String Status;

    public String getStatus(){return Status;}
    public void setStatus(String status){
        Status = status;
    }

    public void setRegisterModel(String jsonObjstr){
        try {
            JSONObject data = new JSONObject(jsonObjstr);

            this.Status = data.get("status").toString();
        }catch (JSONException e){
            Log.d("ERROR::",jsonObjstr);
            e.printStackTrace();
        }
    }

}
