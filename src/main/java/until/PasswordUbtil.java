package until;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class PasswordUbtil {
    public static String hashPasword(String password)throws NoSuchAlgorithmException{
        // ShA 256
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        // chuyen password to byte
        md.update(password.getBytes());
        byte[] mdArray = md.digest();
        StringBuilder sb = new StringBuilder(mdArray.length*2);
        for(byte b:mdArray){
            int v = b & 0xff;
            if(v<16){
                sb.append('0');
            }
            sb.append(Integer.toHexString(v));
        }
        return sb.toString();
    }
}
