package model;

import java.util.Date;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email {
    //password: ufmf vevq qxzp yhot
    
    static final String from = "leminhnguyet22072003@gmail.com";
    static final String password = "ufmfvevqqxzpyhot";
    
    public static boolean sendEmail(String to, String title, String content) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        };
        
        // Tao session
        Session session = Session.getInstance(props, auth);
        
        // Gui mail
        MimeMessage msg = new MimeMessage(session);
        try {
            // kieu noi dung
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
            // Nguoi gui
            msg.setFrom(from);
            // nguoi nhan
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));
            // -------------------
            msg.setSubject(title);
            //--------------------
            msg.setSentDate(new Date());
            // NOI DUNG
            msg.setContent(content, "text/html");
            // Gui mail
            Transport.send(msg);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public static String generateRandomOTP(int length){
        String numbers = "0123456789";
        Random random = new Random();
        char[] pin = new char[length];
        for(int i = 0; i < length; i++){
            pin[i] = numbers.charAt(random.nextInt(numbers.length()));
        }
        return new String(pin);
    }
    
    public static void main(String[] args) {
        Email m = new Email();
        String numberRandom = generateRandomOTP(6);
        m.sendEmail("nguyetltmhe171230@fpt.edu.vn", "YOUR OTP", "123456");
        
    }
    
}