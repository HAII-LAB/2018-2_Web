package my.model;

public class Movie {
	private int movieId;
	private String title;
	private String maker;
	private int price;
	private String movieImage;
	public Movie() {
	}
	public Movie(String title, String maker, int price, String movieImage) {
		super();
		this.title = title;
		this.maker = maker;
		this.price = price;
		this.movieImage = movieImage;
	}
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getMovieImage() {
		return movieImage;
	}
	public void setMovieImage(String movieImage) {
		this.movieImage = movieImage;
	}
	
}
