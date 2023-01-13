package com.abccinema.entity;
import javax.persistence.*;


@Entity
@NamedQueries({
        @NamedQuery(name = "Movies.findMovieData", query = "SELECT m FROM Movies m where MovieId =:movieID")




})
public class Movies {

    private Integer MovieId;
    private String MovieName;
    private String BgImageURL;
    private String CardImageURL;

    @Column
    @Id

    public int getMovieId() {
        return MovieId;
    }

    public void setMovieId(int movieId) {
        MovieId = movieId;
    }

    public String getMovieName() {
        return MovieName;
    }

    public void setMovieName(String movieName) {
        MovieName = movieName;
    }

    public String getBgImageURL() {
        return BgImageURL;
    }

    public void setBgImageURL(String bgImageURL) {
        BgImageURL = bgImageURL;
    }

    public String getCardImageURL() {
        return CardImageURL;
    }

    public void setCardImageURL(String cardImageURL) {
        CardImageURL = cardImageURL;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getCast() {
        return Cast;
    }

    public void setCast(String cast) {
        Cast = cast;
    }

    public String getTrailerURL() {
        return TrailerURL;
    }

    public void setTrailerURL(String trailerURL) {
        TrailerURL = trailerURL;
    }

    private String Description;
    private String Cast;
    private String TrailerURL;


}
