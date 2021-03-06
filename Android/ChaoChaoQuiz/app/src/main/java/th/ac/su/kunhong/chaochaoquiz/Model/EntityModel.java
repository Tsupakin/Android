package th.ac.su.kunhong.chaochaoquiz.Model;

import android.content.ContentValues;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Objects;

/**
 * Created by Kunhong on 12/18/2016 AD.
 */

public class EntityModel {
    private ContentValues values;

    public EntityModel() { values = new ContentValues(); }

    public ContentValues getValues(){return values;}

    public byte[] getDataEncode(){
        StringBuilder postData = new StringBuilder();
        byte[]  result = null;

        try {
            for (Map.Entry<String, Object> entry : values.valueSet() ){
                if (postData.length()!=0)
                    postData.append('&');
                //ถ้าข้อมูลมีมากกว่า 1 ชุดจะส่งแบบ  www.test.com/index.php?x1=sss&x2=sss
                //นี่คือ 1 loop (x1=sss)

                postData.append(URLEncoder.encode(entry.getKey(),"UTF-8"));
                postData.append('=');
                postData.append(URLEncoder.encode(""+entry.getValue(),"UTF-8"));
            }

            result = postData.toString().getBytes("UTF-8");

        }catch (UnsupportedEncodingException e){
            e.printStackTrace();

        }
        return result;
    }
}
