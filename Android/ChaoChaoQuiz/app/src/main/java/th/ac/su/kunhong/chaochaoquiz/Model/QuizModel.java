package th.ac.su.kunhong.chaochaoquiz.Model;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by Kunhong on 12/18/2016 AD.
 */

public class QuizModel {

    private int question_id;
    private String question;
    private String 	choice1,choice2,choice3,choice4;
    private String answer;

    public int getQuestion_id(){ return question_id; }
    public void setQuestion_id(int question_id){
        this.question_id = question_id;
    }

    public String getQuestion(){ return question; }
    public void setQuestion(String question){
        this.question = question;
    }

    public String getChoice1(){ return choice1; }
    public void setChoice1(String choice1){
        this.choice1 = choice1;
    }

    public String getChoice2(){ return choice2; }
    public void setChoice2(String choice2){
        this.choice2 = choice2;
    }

    public String getChoice3(){ return choice3; }
    public void setChoice3(String choice3){
        this.choice3 = choice3;
    }

    public String getChoice4(){ return choice4; }
    public void setChoice4(String choice4){
        this.choice4 = choice4;
    }

    public String getAnswer(){ return answer; }
    public void setAnswer(String answer){
        this.answer = answer;
    }

    public void setQuizModel(String jsonObjstr){
        try {
            JSONObject data = new JSONObject(jsonObjstr);
            this.question_id = data.getInt("question_id");
            this.question = data.get("question").toString();
            this.answer = data.get("answer").toString();
            this.choice1 = data.getString("choice1");
            this.choice2 = data.getString("choice2");
            this.choice3 = data.getString("choice3");
            this.choice4 = data.getString("choice4");

            }catch (JSONException e) {
                e.printStackTrace();
            }
    }

    public int CountState(int state){
        state++;
        return state;
    }

}
