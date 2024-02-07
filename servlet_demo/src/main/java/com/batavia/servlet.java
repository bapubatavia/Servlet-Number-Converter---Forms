package com.batavia;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class servlet extends HttpServlet{
    public void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException{

        String first_name = request.getParameter("fName");
        request.setAttribute("fname", first_name);
        String last_name = request.getParameter("lName");
        request.setAttribute("lname", last_name);
        String email = request.getParameter("email");
        request.setAttribute("email", email);
        String date_of_birth = request.getParameter("dob");
        request.setAttribute("dob", date_of_birth);
        String faculty = request.getParameter("fac");
        request.setAttribute("fac", faculty);
        String department = request.getParameter("dep");
        request.setAttribute("dep", department);
        String address_one = request.getParameter("address_one");
        request.setAttribute("address_one", address_one);
        String semester = request.getParameter("semester");
        request.setAttribute("sem", semester);
        String studentId = request.getParameter("studentId");
        request.setAttribute("stuId", studentId);
        try {
            request.getRequestDispatcher("/WEB-INF/registration_reply.jsp").forward(request, response);
        } catch (ServletException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        };

    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }    
}
