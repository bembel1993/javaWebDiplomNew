package by.application.javaWeb.servlet.AddDelUpEditProduct;

import by.application.javaWeb.model.product.ListService;
import by.application.javaWeb.model.product.Product;
import by.application.javaWeb.service.ProductService;
import by.application.javaWeb.service.serviceImpl.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.List;


@WebServlet("/")
public class newAddProductInCatalog extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ProductService productService = new ProductServiceImpl();
    List<Product> productList = productService.showProduct();

   // private newProductDAO productDAO;

   /* public void init() {
        productDAO = new newProductDAO();
    }*/

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertProduct(request, response);
                    break;
                case "/delete":
                    deleteProduct(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateProduct(request, response);
                    break;
                default:
                    listProduct(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        /*List<newProduct> productList = productDAO.selectAllProduct();*/
        List<Product> productList = productService.showProduct();
        System.out.println("");
        System.out.println("AddProductInCatalog - doGet");
        ///
        request.setAttribute("productList", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/product-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/product-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        System.out.println("");
        System.out.println("Find chose product");
        System.out.println(productService.findProductById(id));
        productService.findProductById(id);

        //newProduct existingProduct = productDAO.selectProduct(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/product-form.jsp");
        request.setAttribute("product", productList);
        //request.setAttribute("product", existingProduct);
        dispatcher.forward(request, response);

    }

    private void insertProduct(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
       /* String name = request.getParameter("name");
        String price = request.getParameter("price");
        String manufacturer = request.getParameter("manufacturer");
        String releaseDate = request.getParameter("releaseDate");
        newProduct product = new newProduct(name, price, manufacturer, releaseDate);
        productDAO.insertProduct(product);*/
        String nameprod = request.getParameter("nameprod");
        String price = request.getParameter("price");
        String manufacturer = request.getParameter("manufacturer");
        String releaseDate = request.getParameter("releaseDate");
        String photo = request.getParameter("photo");
        byte[] ph = "photo".getBytes(StandardCharsets.UTF_8);

        Product product = new Product(nameprod, price, manufacturer, releaseDate, ph);
        List<Product> productList = productService.showProduct();

        if (("".equals(nameprod)) || ("".equals(price)) || ("".equals(manufacturer))
                || "".equals(releaseDate)) {
            request.setAttribute("errorMessage", "Fill in all the fields");
            response.sendRedirect("list");
        } else {
            try {
                //productService.addProduct(product);
                System.out.format("%10s%20s%20s%20s%20s", "ID |", "Name Prod |", "Price |", "Manufacturer |", "Release Date ");
                for (Product p : productList) {
                    System.out.println(" ");
                    System.out.format("%10s%20s%20s%20s%20s", p.getId() + " |", p.getNameprod() +
                                    " |", p.getPrice() + " |", p.getManufacturer() + " |",
                            p.getReleaseDate());
                }
                ListService.addProduct(new Product(nameprod, price, manufacturer, releaseDate, ph));
                request.getSession().setAttribute("group", productList);
                if (productService.addProduct(product)) {
                    request.setAttribute("productIsAdd", "Product is Add in Catalog");
                    System.out.println("AddProductInCatalog - doPost (doGet(request, response))");
                    //метод doPost переопределяет после добавления значений на метод doGet
                    doGet(request, response);
                }

                // getServletContext().getRequestDispatcher("/WEB-INF/views/catalogAdd.jsp").forward(request, response);
            } catch (Exception ex) {
                System.out.println("");
                System.out.println("catch-Error Insert");
                response.sendRedirect("list");
            }
        }
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String manufacturer = request.getParameter("manufacturer");
        String releaseDate = request.getParameter("releaseDate");

        //newProduct book = new newProduct(id, name, price, manufacturer, releaseDate);
        Product product = new Product(id, name, price, manufacturer, releaseDate);
        productService.updateProduct(product);
        //productDAO.updateProduct(book);
        response.sendRedirect("list");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        //productDAO.deleteProduct(id);

        if (productService.deleteProduct(id)) {
            request.setAttribute("productIsDelete", "Product Delete from Catalog");
            // doGet(request, response);
        }
        System.out.println("---Delete is performed!---");
        //request.getSession().setAttribute("id", id);
        //request.getSession().setAttribute("group", productList);

        response.sendRedirect("list");

    }
}