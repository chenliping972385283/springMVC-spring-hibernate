package simples.entity;

import javax.persistence.*;

/**
 * Created by jinli on 2017/2/8.
 */
@Entity
public class Board {

    private int id;

    private String title;

    private String label;

    private String content;

    private String  boardSelection;

    private int score;

    private String  isFirst;

    @Id
    @Column()
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Column
    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    @Column
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Column
    public String getBoardSelection() {
        return boardSelection;
    }

    public void setBoardSelection(String boardSelection) {
        this.boardSelection = boardSelection;
    }

    @Column
    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String  getIsFirst() {
        return isFirst;
    }

    public void setIsFirst(String isFirst) {
        this.isFirst = isFirst;
    }
}
