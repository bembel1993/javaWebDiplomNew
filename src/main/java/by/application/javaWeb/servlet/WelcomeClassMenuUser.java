package by.application.javaWeb.servlet;

import by.application.javaWeb.model.product.Product;
import by.application.javaWeb.service.ProductService;
import by.application.javaWeb.service.serviceImpl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "WelcomeClassMenuUser", urlPatterns = "/WelcomeClassMenuUser")
public class WelcomeClassMenuUser extends HttpServlet {
    ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");

        String nameprod = request.getParameter("nameprod");
        String manufacturer = request.getParameter("manufacturer");
        List<Product> productList = productService.showProduct();

        for (Product p : productList) {
            System.out.println(p.getNameprod() + " " + p.getManufacturer());
            nameprod = p.getNameprod();
            manufacturer = p.getManufacturer();
        }
        request.setAttribute("name", name);
        request.setAttribute("surname", surname);
        request.setAttribute("nameprod", nameprod);
        request.setAttribute("manufacturer", manufacturer);
        request.getRequestDispatcher("WEB-INF/views/marketUser.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/marketUser.jsp").forward(request, response);
    }
}