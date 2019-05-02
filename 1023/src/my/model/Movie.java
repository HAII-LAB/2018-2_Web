package my.model;

public class Movie {
	private int movieId;
	private String title;
	private String maker;
	private int price;
	private String movieImage;
	private int accessCount;
	private String movietype;
	
	public Movie() {
	}
	
	public Movie(int movieId, String title, String maker, int price, String movieImage) {
		super();
		this.movieId = movieId;
		this.title = title;
		this.maker = maker;
		this.price = price;
		this.movieImage = movieImage;
	}

	public Movie(String title, String maker, int price, String movieImage, String movietype) {
		super();
		this.title = title;
		this.maker = maker;
		this.price = price;
		this.movieImage = movieImage;
		this.movietype = movietype;
	}
	public Movie(int movieId, String title, String maker, int price, String movieImage, String movietype) {
		super();
		this.movieId = movieId;
		this.title = title;
		this.maker = maker;
		this.price = price;
		this.movieImage = movieImage;
		this.movietype = movietype;
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
	public int getAccessCount() {
		return accessCount;
	}
	public void setAccessCount(int accessCount) {
		this.accessCount = accessCount;
	}
	public String getMovietype() {
		return movietype;
	}
	public void setMovietype(String movietype) {
		this.movietype = movietype;
	}
	
}
