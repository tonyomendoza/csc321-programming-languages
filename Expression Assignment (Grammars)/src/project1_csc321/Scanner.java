
import java.io.*;

public class Scanner {
    private char ch = ' ';
    private char ident = ' ';
    private int intValue = 0;
    private Buffer buffer;
    public int token;

    public Scanner (DataInputStream in) {
        buffer = new Buffer(in);
        token = Token.semicolon;
    } // Scanner

    public int getToken ( ) {
        while (Character.isWhitespace(ch))
            ch = buffer.get( );
        if (Character.isLetter(ch)) {
            ident = Character.toLowerCase(ch);
            ch = buffer.get( );
            token = Token.letter;
        }
        else if (Character.isDigit(ch)) {
            intValue = getNumber( );
            token = Token.number;
        } 
        else {
        switch (ch) {
            case ';' : ch = buffer.get( );
                token = Token.semicolon;
                break;

            case '.' : ch = buffer.get( );
                token = Token.period;
                break;

            case '+' : ch = buffer.get( );
                token = Token.plusop;
                break;

            case '-' : ch = buffer.get( );
                token = Token.minusop;
                break;

            case '*' : ch = buffer.get( );
                token = Token.timesop;
                break;

            case '/' : ch = buffer.get( );
                token = Token.divideop;
                break;

            case '=' : ch = buffer.get( );
                token = Token.assignop;
                break;

            case '(' : ch = buffer.get( );
                token = Token.lparen;
                break;

            case ')' : ch = buffer.get( );
                token = Token.rparen;
                break;
                
            case '^' : ch = buffer.get( );
                token = Token.expop; // Exponent
                break;

            default : error ("Illegal character " + ch );
                break;
        } // switch
        } // if
        return token;
    } // getToken


    public int number ( ) {
        return intValue;
    } // number


    public char letter ( ) {
        return ident;
    } // letter


    public void match (int which) {
        token = getToken( );
        if (token != which) {
        error("Invalid token " + Token.toString(token) +
              "-- expecting " + Token.toString(which));
        System.exit(1);
        } // if
    } // match


    public void error (String msg) {
        System.err.println(msg);
        System.exit(1);
    } // error


    private int getNumber ( ) {
        int rslt = 0;
        do {
            rslt = rslt * 10 + Character.digit(ch, 10);
            ch = buffer.get( );
        } while (Character.isDigit(ch));
        return rslt;
    } // getNumber

} // Scanner
