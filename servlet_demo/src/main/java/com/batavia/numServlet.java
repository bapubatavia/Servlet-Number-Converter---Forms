package com.batavia;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class numServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        String num = request.getParameter("num");
        request.setAttribute("number", num);
        boolean binaryPressed = request.getParameter("binary") != null;
        boolean hexaPressed = request.getParameter("hexa") != null;
        boolean octaPressed = request.getParameter("octa") != null;
        // boolean clearPressed = request.getParameter("clear") != null;

        if(num != null && binaryPressed){
            int number = Integer.parseInt(num);
            String binary = Integer.toBinaryString(number);
            request.setAttribute("converted", binary);
            String message = "Decimal number converted to binary";
            request.setAttribute("message", message);
        } else if(num != null && hexaPressed){
            int number = Integer.parseInt(num);
            String hex = Integer.toHexString(number);
            request.setAttribute("converted", hex);
            String message = "Decimal number converted to hexadecimal";
            request.setAttribute("message", message);
        } else if(num != null && octaPressed){
            int number = Integer.parseInt(num);
            String octa = Integer.toOctalString(number);
            request.setAttribute("converted", octa);
            String message = "Decimal number converted to octadecimal";
            request.setAttribute("message", message);
        } else{
            request.setAttribute("number", "");
            request.setAttribute("converted", "");
            String message = "";
            request.setAttribute("message", message);
        }
        try {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (ServletException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        };
    }
}
