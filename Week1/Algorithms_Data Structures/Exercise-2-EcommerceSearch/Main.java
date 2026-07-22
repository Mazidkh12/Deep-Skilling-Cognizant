import java.util.Arrays;
import java.util.Comparator;

public class Main {

    // Linear Search
    public static Product linearSearch(Product[] products, int id) {

        for (Product product : products) {
            if (product.productId == id) {
                return product;
            }
        }
        return null;
    }

    // Binary Search
    public static Product binarySearch(Product[] products, int id) {

        int low = 0;
        int high = products.length - 1;

        while (low <= high) {

            int mid = (low + high) / 2;

            if (products[mid].productId == id)
                return products[mid];

            else if (products[mid].productId < id)
                low = mid + 1;

            else
                high = mid - 1;
        }

        return null;
    }

    public static void main(String[] args) {

        Product[] products = {

                new Product(103, "Keyboard", "Electronics"),
                new Product(101, "Laptop", "Electronics"),
                new Product(105, "Shoes", "Fashion"),
                new Product(102, "Mouse", "Electronics"),
                new Product(104, "Book", "Education")
        };

        int searchId = 102;

        // Linear Search
        Product result1 = linearSearch(products, searchId);

        System.out.println("Linear Search:");

        if (result1 != null)
            System.out.println(result1);
        else
            System.out.println("Product not found");

        // Sort for Binary Search
        Arrays.sort(products, Comparator.comparingInt(p -> p.productId));

        Product result2 = binarySearch(products, searchId);

        System.out.println("\nBinary Search:");

        if (result2 != null)
            System.out.println(result2);
        else
            System.out.println("Product not found");
    }
}