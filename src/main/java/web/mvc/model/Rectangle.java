package web.mvc.model;

public class Rectangle {
    private int width;
    private int height;

    // Empty constructor for javabean
    public Rectangle() { }

    public Rectangle(int width, int height) {
        this.width = width;
        this.height = height;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getArea() {
        return this.width * this.height;
    }
}
