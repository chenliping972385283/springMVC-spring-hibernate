package simples.entity;

import java.io.Serializable;

/**
 * Created by jinli on 2017/2/10.
 */
public class BoardUserData implements Serializable{

    private String username;

    private String  title;

    private String label;

    public BoardUserData(){}

    public BoardUserData(String username, String title, String label) {
        this.username = username;
        this.title = title;
        this.label = label;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
}
