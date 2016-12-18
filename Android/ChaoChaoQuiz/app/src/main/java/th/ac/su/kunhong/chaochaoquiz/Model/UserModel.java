package th.ac.su.kunhong.chaochaoquiz.Model;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by Kunhong on 12/15/2016 AD.
 */

public class UserModel {
    private int user_id;
    private String username;
    private String displayname;

    public String getDisplayname(){ return displayname; }
    public void setDisplayname(String displayname){

        this.displayname = displayname;
    }

    public int getUser_id(){return user_id;}
    public void setUser_id(int user_id){

        this.user_id = user_id;
    }

    public String getUsername(){ return username; }
    public void setUsername(String username){
        this.username = username;
    }

    public void setUerMode(String jsonObjstr){
        try {
            JSONObject data = new JSONObject(jsonObjstr);

            this.username = data.get("username").toString();
            this.displayname = data.getString("display_name");
            this.user_id = data.getInt("user_id");
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

}
