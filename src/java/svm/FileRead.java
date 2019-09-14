import java.util.Scanner;
import java.io.*;
import java.util.Arrays;
import java.util.*;


class FileRead
{
	
	public static void main(String[] rr) throws FileNotFoundException, IOException
	{
	

        int k=1;
 
        BufferedReader kbr=new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Enter Your File with path");
        String file=kbr.readLine();
        BufferedReader br=new BufferedReader(new FileReader(new File(file)));
        while(br.ready())
   {
        	System.out.println(br.readLine());
                


	}

        String str;

        List<String> list = new ArrayList<String>();
        while((str = br.readLine()) != null){
            list.add(str);
        }

        String[] stringArr = list.toArray(new String[0]);
       // System.out.println(stringArr[2]);
    
}

}