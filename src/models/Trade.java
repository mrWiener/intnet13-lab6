package models;

import java.sql.Timestamp;

/**
 * Created with IntelliJ IDEA.
 * User: OMMatte
 * Date: 2013-05-08
 * Time: 13:28
 */
public class Trade {
    private String security;
    private Double price;
    private int amount;
    private Timestamp currentTime;
    private String buyer;
    private String seller;

    public Trade(String security, Double price, int amount, Timestamp currentTime, String buyer, String seller) {
        this.security = security;
        this.price = price;
        this.amount = amount;
        this.currentTime = currentTime;
        this.buyer = buyer;
        this.seller = seller;
    }

    public String getSecurity() {
        return security;
    }

    public Double getPrice() {
        return price;
    }

    public int getAmount() {
        return amount;
    }

    public Timestamp getCurrentTime() {
        return currentTime;
    }

    public String getBuyer() {
        return buyer;
    }

    public String getSeller() {
        return seller;
    }
}
