public class Main {

    public static void main(String[] args) {

        Inventory inventory = new Inventory();

        inventory.addProduct(new Product(101, "Laptop", 10, 55000));

        inventory.addProduct(new Product(102, "Mouse", 50, 600));

        inventory.addProduct(new Product(103, "Keyboard", 30, 1200));

        System.out.println("\nInventory:");

        inventory.displayProducts();

        System.out.println("\nUpdating Product...");

        inventory.updateProduct(102, 80, 650);

        inventory.displayProducts();

        System.out.println("\nDeleting Product...");

        inventory.deleteProduct(101);

        inventory.displayProducts();

    }
}