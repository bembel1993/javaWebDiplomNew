package by.application.javaWeb.servlet.message;

import by.application.javaWeb.model.message.ListMessage;
import by.application.javaWeb.model.message.Message;
import by.application.javaWeb.model.person.Person;
import by.application.javaWeb.service.MessageService;
import by.application.javaWeb.service.PersonService;
import by.application.javaWeb.service.serviceImpl.MessageServiceImpl;
import by.application.javaWeb.service.serviceImpl.PersonServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "SendMessage", urlPatterns = "/SendMessage")
public class SendMessage extends HttpServlet {
    MessageService messageService = new MessageServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Message> messageList = messageService.showMessage();

        System.out.println("");
        System.out.format("%10s%20s%20s", "ID |", "person |", "message |");
        for (Message mess : messageList) {
            System.out.println(" ");
            System.out.format("%10s%20s%20s", mess.getId() + " |", mess.getPerson() +
                    " |", mess.getMessage());

        }

        System.out.println("");
        request.getSession().setAttribute("mess", messageList);
        getServletContext().getRequestDispatcher("/WEB-INF/views/privateOfficeUser.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String mess = request.getParameter("messag");

        Message message = new Message(name, mess);
        List<Message> messageList = messageService.showMessage();

        try {
            //productService.addProduct(product);
            System.out.format("%10s%20s", "person |", "message |");
            for (Message m : messageList) {
                System.out.println(" ");
                System.out.format("%10s%20s", m.getPerson() + " |", m.getMessage());
            }

            ListMessage.addMessage(message);
            System.out.println("Message is send - successful ");
            //request.setAttribute("messag", mess);
            request.getSession().setAttribute("mess", messageList);
            if (messageService.addMessage(message)) {
                request.setAttribute("messageIsSend", "Message is Send to Administrator");
                System.out.println("SendMessage - doPost (doGet(request, response))");
                //метод doPost переопределяет после добавления значений на метод doGet
                doGet(request, response);
            }
            // getServletContext().getRequestDispatcher("/WEB-INF/views/catalogAdd.jsp").forward(request, response);
        } catch (Exception ex) {
            System.out.println("");
            System.out.println("catch-Error Insert");
            getServletContext().getRequestDispatcher("/WEB-INF/views/privateOfficeUser.jsp").forward(request, response);
        }
    }
}
