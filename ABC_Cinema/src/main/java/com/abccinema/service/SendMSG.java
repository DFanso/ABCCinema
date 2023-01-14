package com.abccinema.service;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class SendMSG {

    public static final String ACCOUNT_SID = System.getenv("AC83ac9dea7aeff175ca8bed7030ea9740");
    public static final String AUTH_TOKEN = System.getenv("2c0c675be0edb46f6c4f8011535a8735");

    public static void main(String[] args) {
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Message message = Message.creator(
                        new com.twilio.type.PhoneNumber("+15558675310"),
                        new com.twilio.type.PhoneNumber("+15017122661"),
                        "body")
                .create();

        System.out.println(message.getSid());
    }


}
