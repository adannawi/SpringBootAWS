package com.myaws.helpers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Base64;

public class AWSUserDataEncoder {
    public static void main (String[] args) {
        String content = "";

        try {
            content = new String(Files.readAllBytes(Paths.get("src/main/resources/ec2-startup.sh")));
        }
        catch (IOException e) {
            e.printStackTrace();
        }

        String encoded = new String(Base64.getEncoder().encode(content.getBytes()));
        System.out.println(encoded);
    }
}
