import java.util.Scanner;
import java.io.*;
import java.util.Arrays;
import java.util.*;


class allFile
{
	
	public static void main(String[] rr) throws FileNotFoundException, IOException
	{
	
         String arr;

        List<String> list = new ArrayList<String>();
        
        String[] str={"env.txt","endocrine.txt","autoimmune.txt","cancer.txt","brainAndNervous.txt","infectious.txt","pregnancyAndChildbirth.txt","inherited.txt"};
        //String[] str={"env.txt","endocrine.txt","autoimmune.txt"};
        for(int i=0;i<str.length;i++)
        {         
        BufferedReader br=new BufferedReader(new FileReader(new File(str[i])));
          while((arr = br.readLine()) != null)
          {
            list.add(arr);
          }             
            
            //System.out.println("NEXT FILE STARTS HERE ZZZZZZZZZZZZZZZZ");
        }
 

       
        

        String[] stringArr = list.toArray(new String[0]);
       
       System.out.println("Length of symptom array is "+(stringArr.length));
       for(int k=0;k<stringArr.length;k++)
        {
          System.out.println(stringArr[k]);
        } 
        System.out.println("Length of symptom array is "+(stringArr.length));
}

}