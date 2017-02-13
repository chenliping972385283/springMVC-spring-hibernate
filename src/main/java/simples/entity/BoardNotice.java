package simples.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by jinli on 2017/2/13.
 */
@Entity
public class BoardNotice {

    private int id;

    private String url;

    private String noticeName;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getNoticeName() {
        return noticeName;
    }

    public void setNoticeName(String noticeName) {
        this.noticeName = noticeName;
    }
}
