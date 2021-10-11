package com.example.java.Controler;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.example.java.Model.User;

@WebServlet(urlPatterns = {"/emailList"})

public class EmailListServlet extends HttpServlet  {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/home.jsp";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }
        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/home.jsp";    // the "join" page
        }
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String heardFrom = request.getParameter("heardFrom");
            String updates= request.getParameter("updates");
            String contactVia=request.getParameter("contactVia");
            String mess="";



            if(firstName==null || lastName==null || email==null|| firstName.isEmpty()|| lastName.isEmpty()|| email.isEmpty()||
               heardFrom==null || contactVia==null||heardFrom.isEmpty()||contactVia.isEmpty())
            {
                url="/home.jsp";
                mess="Please fill all blank!";

            }else{
                url = "/thanks.jsp";
            }
            if (heardFrom == null) {
                heardFrom = "NA";
            }
            if (updates == null) {
                updates = "No";
            }
            else {
                updates = "Yes";
            }
            // store data in User object and save User object in db
            User user = new User(firstName, lastName, email,heardFrom, updates, contactVia);
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setEmail(email);
            user.setHeardFrom(heardFrom);
            user.setUpdates(updates);
            user.setContactVia(contactVia);

//            UserDB.insert(user);

            // set User object in request object and set URL
            request.setAttribute("user", user);
            request.setAttribute("message",mess);

        }

        // forward request and response objects to specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
