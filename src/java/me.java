
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class me {

    public static void main(String[] args) {
        try {
            Document doc = Jsoup.connect("https://www.youtube.com/results?search_query=cancer").get();
            
           
            for(Element list : doc.select("ol"))
            {
                System.out.println(list.attr("class"));
                
                    for(Element list2: list.select("div"))
                    {
                       if(list.hasClass("result-list")&& list2.hasClass("yt-lockup-thumbnail"))
                       {
                            for(Element anchor : list.select("a"))
                            {
                                  System.out.println(anchor.className()); 
                                  System.out.println("www.youtube.com"+anchor.attr("href")); 
                            } 
                       }else
                         System.out.println("hi ");
               
               
                   }
                    
                       
                 }
              }
        
                            
                    
                
//          Document doc = Jsoup.connect("http://www.jsoup.org").get();
//            Elements anchors = doc.select("a");
//            for(Element anchor : anchors){
//            System.out.println(anchor.attr("href"));
        
            
        
    
        
         catch (IOException ex) {
            Logger.getLogger(webcrawler.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}