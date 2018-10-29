package com.bit.lib.system.model;

public class MybookList {
    private String book_name;
    private String borrowDate;
    private String returnDate;

    public MybookList() {
    }

    public MybookList(String book_name, String borrowDate, String returnDate) {
        this.book_name = book_name;
        this.borrowDate = borrowDate;
        this.returnDate = returnDate;
    }

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public String getBorrowDate() {
        return borrowDate;
    }

    public void setBorrowDate(String borrowDate) {
        this.borrowDate = borrowDate;
    }

    public String getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }

    @Override
    public String toString() {
        return "MybookList{" +
                "book_name='" + book_name + '\'' +
                ", borrowDate='" + borrowDate + '\'' +
                ", returnDate='" + returnDate + '\'' +
                '}';
    }
}
