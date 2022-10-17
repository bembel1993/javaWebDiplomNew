package by.application.javaWeb.servlet.AddDelUpEditProduct;

import by.application.javaWeb.model.product.Product;
import by.application.javaWeb.service.ProductService;
import by.application.javaWeb.service.serviceImpl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;

@WebServlet(name = "SearchProduct", urlPatterns = "/SearchProduct")
public class SearchProduct extends HttpServlet {
    ProductService productService = new ProductServiceImpl();
    List<Product> productList = productService.showProduct();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // List<Product> productList = productService.showProduct();
        String nameProduct = request.getParameter("nameProduct");
        productService.findProductName(nameProduct);
        for (Product p : productList) {
            System.out.println(p.getNameprod() + " " + p.getManufacturer());
            nameProduct = p.getNameprod();
           // manufacturer = p.getManufacturer();
        }
        //request.setAttribute("nameprod", nameprod);
        //request.setAttribute("manufacturer", manufacturer);
        request.getRequestDispatcher("WEB-INF/views/searchProduct.jsp").forward(request, response);
    }

}

