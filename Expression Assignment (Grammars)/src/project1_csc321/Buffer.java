import java.io.*;

class Buffer {
    private String line = "";
    private int column = 0;
    private int lineNo = 0;
    private DataInputStream  in;

    public Buffer (DataInputStream in) {
        this.in = in;
    } // Buffer


    public char get ( ) {
        column++;
        if (column >= line.length()) {
            try {
                line = in.readLine( );
            } catch (Exception e) {
                System.err.println("Invalid read operation");
                System.exit(1);
            } // try
            if (line == null)
                System.exit(0);
            column = 0;
            lineNo++;
            System.out.println(line);
            line = line + "\n";
        } // if column
        return line.charAt(column);
    } // get

} // class Buffer
