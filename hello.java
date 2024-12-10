import spark.*;

public class Hello {

    public static void main(String[] args) {
        // Start a Spark web server on port 5000
        Spark.port(5000);

        // Define a route for the root ("/") URL
        Spark.get("/", (req, res) -> {
            // Return a simple HTML page with the message
            return "<html><body><h1>Hello, Docker!</h1></body></html>";
        });
    }
}
