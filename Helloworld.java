
public class Helloworld {

     public static void main(String arg[]){
        while(true){
          System.out.println("Hello world");
          try{
               Thread.sleep(60000);
          }catch(Exception ex){
              System.out.println(ex);
          }
      }

   }
}
