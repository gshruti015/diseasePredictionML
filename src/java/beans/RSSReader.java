package beans;

import java.net.URL; 
import java.util.*;
import java.util.StringTokenizer;
import javax.servlet.http.HttpSession;
//import javax.servlet.ServletContext;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.CharacterData; 
import org.w3c.dom.Document; 
import org.w3c.dom.Element; 
import org.w3c.dom.Node; 
import org.w3c.dom.NodeList; 

public class RSSReader { 
private static RSSReader instance = null; 
private RSSReader() { 
} 
public static RSSReader getInstance() { 
if(instance == null) 
instance = new RSSReader(); 
return instance; 
} 
//    ServletContext context=getServletConfig().getServletContext();
//         context.setAttribute("disname",finaloutput);
//         response.sendRedirect("input.jsp");
public List<String> writeNews() { 
    ArrayList<String> mylist=null;
try { 
    mylist = new ArrayList<String>();

DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder(); 
URL u = new URL("http://timesofindia.feedsportal.com/c/33039/f/533972/index.rss"); 
Document doc = builder.parse(u.openStream()); 
NodeList nodes = doc.getElementsByTagName("item"); 
//String s="";
 
for(int i=0;i<nodes.getLength();i++) { 
Element element = (Element)nodes.item(i); 

//System.out.println("Title: " + getElementValue(element,"title")); 
mylist.add(getElementValue(element,"title"));

//System.out.println(mylist.add(getElementValue(element,"title")));

//System.out.println("Link: " + getElementValue(element,"link")); 
mylist.add(getElementValue(element,"link"));
//s+=" "+getElementValue(element,"title");
//System.out.println(mylist.add(getElementValue(element,"title")));

//System.out.println("Publish Date: " + getElementValue(element,"pubDate"));
mylist.add(getElementValue(element,"pubDate"));
//s+=" "+getElementValue(element,"pubDate");
//System.out.println(mylist.add(getElementValue(element,"pubDate")));

//System.out.println("Author: " + getElementValue(element,"dc:creator")); 
//mylist.add(getElementValue(element,"dc:creator"));
//s+=" "+getElementValue(element,"Author");
//System.out.println(mylist.add(getElementValue(element,"dc:creator")));

//System.out.println("Description: " + getElementValue(element,"description")); 
mylist.add(getElementValue(element,"description"));
//s+=" "+getElementValue(element,"description");
//System.out.println(mylist.add(getElementValue(element,"description")));

//System.out.println(); 


}//for
Iterator<String> it = mylist.iterator();
while(it.hasNext())
{
	System.out.println("Title: "+it.next()); 
	System.out.println("Link: "+it.next()); 
	System.out.println("Pub Date: "+it.next()); 
	//System.out.println("Author: "+it.next()); 
	System.out.println("Disc: "+it.next()); 
}


	//Session session=request.getSession(false);
	//session.setAttribute("mylist",mylist);
}//try 
/*on JSP Page
	HttpSession session=request.getSession(false);
	List<String> list=(List)session.getAttribute("mylist");	
*/

catch(Exception ex) { 
ex.printStackTrace(); 
} 
return mylist;
} 

private String getCharacterDataFromElement(Element e) { 
try { 
Node child = e.getFirstChild(); 
if(child instanceof CharacterData) { 
CharacterData cd = (CharacterData) child; 
return cd.getData(); 
} 
}catch(Exception ex) { 

} 
return ""; 
} //private String getCharacterDataFromElement 
protected float getFloat(String value) { 
if(value != null && !value.equals("")) 
return Float.parseFloat(value); 
else 
return 0; 
} 
protected String getElementValue(Element parent,String label) { 
return getCharacterDataFromElement((Element)parent.getElementsByTagName(label).item(0));
} 
public static void main(String[] args) { 
RSSReader reader = RSSReader.getInstance(); 
reader.writeNews(); 
} 
} 