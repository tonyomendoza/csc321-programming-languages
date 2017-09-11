import java.io.*;

public class Test {

    public static void main(String args[]) {
        // command args ignored
        Parser parser = new Parser(new Scanner(
                     new DataInputStream(System.in)));

        System.out.println(" This program illustrates recursive descent parsing using a");
        System.out.println(" procedural approach.");
        System.out.println("The grammar:");
        System.out.println("\t statement = { expression  \";\" } \".\"");
        System.out.println("\t expression = term { ( \"+\" | \"-\" ) term }");
        System.out.println("\t term      = factor { ( \"*\" | \"/\" ) factor }\");\"");
        System.out.println("\t factor      = primary { ( \"^\" ) primary }\");\"");
        System.out.println("\t primary    = number | \"(\" expression \")\")\");\" ");
    
        parser.run( );
        System.out.println("done");
    } // main
        
} // class Test
