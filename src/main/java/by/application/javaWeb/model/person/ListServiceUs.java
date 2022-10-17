package by.application.javaWeb.model.person;

import by.application.javaWeb.model.product.Product;

import java.util.ArrayList;
import java.util.List;

public class ListServiceUs {
    private static List<Person> groupList = new ArrayList();

    static {
     //   groupList.add(new Product("galaxy s21 ultra", "350$", "Samsung", "2022"));
    }

    static public List<Person> retrieveList() {
        System.out.println(groupList);
        return groupList;
    }

    static public void addProduct(Person person) {
        groupList.add(new Person(person));
    }
}
