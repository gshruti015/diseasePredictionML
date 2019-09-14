package shruti;



import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class webcrawler {

    public static void main(String[] args) {
        try {
            Document doc = Jsoup.connect("http://www.jsoup.org").get();
            Elements anchors = doc.select("a");
            for(Element anchor : anchors){
            System.out.println(anchor.attr("href"));
        }
        
        
        
        } catch (IOException ex) {
            Logger.getLogger(webcrawler.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
