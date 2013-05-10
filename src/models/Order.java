package models;

/**
 * Created with IntelliJ IDEA.
 * User: OMMatte
 * Date: 2013-05-08
 * Time: 13:28
 */
public class Order {
    private int amount;
    private double price;
    private String buyOrSell;
    private String security;
    private String customer;

    public Order(int amount, double price, String buyOrSell, String security, String customer) {
        this.amount = amount;
        this.price = price;
        this.buyOrSell = buyOrSell;
        this.security = security;
        this.customer = customer;
    }

    public String getSecurity() {
        return security;
    }

    public String getBuyOrSell() {
        return buyOrSell;
    }

    public double getPrice() {
        return price;
    }

    public int getAmount() {
        return amount;
    }

    public String getCustomer() {
        return customer;
    }
}
