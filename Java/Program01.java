import java.util.*;
class Program01
{
   public static void main(String[] args)
   {
      //System.out.println("Hello World");
      String fName="Andy",lName="Knoblock",fullName;
      fullName=fName+" "+lName;
      System.out.println("Hello "+fullName+"!");
      Scanner input=new Scanner (System.in);
      System.out.println("Enter a value for your current happieness with 10 as the happiest and 1 as totally depressed");
      int hRating;
      hRating=input.nextInt();
      if (hRating<1 || hRating >10)
      {
         System.out.println("Can you even read?? Go run this program again and don't lie about happieness.");
         System.exit(-1);
      }     
      if(hRating>=5)
      {
         System.out.println(fName + " appears to be happy");
      }
      else
      {
         System.out.println(fName + " appears to be sad");
      }
   }  
}