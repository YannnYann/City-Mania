package com.badlogic.gdx.pay;

import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class Transaction {
    public String identifier;
    public String orderId;
    public int purchaseCost;
    public String purchaseCostCurrency;
    public String purchaseText;
    public Date purchaseTime;
    public String reversalText;
    public Date reversalTime;
    public String storeName;
    public String transactionData;
    public String transactionDataSignature;
    public String requestId = null;
    public String userId = null;

    public String getIdentifier() {
        return this.identifier;
    }

    public void setIdentifier(String str) {
        this.identifier = str;
    }

    public String getStoreName() {
        return this.storeName;
    }

    public void setStoreName(String str) {
        this.storeName = str;
    }

    public String getOrderId() {
        return this.orderId;
    }

    public void setOrderId(String str) {
        this.orderId = str;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public String getUserId() {
        return this.userId;
    }

    public boolean isPurchased() {
        return this.reversalTime == null;
    }

    public Date getPurchaseTime() {
        return this.purchaseTime;
    }

    public void setPurchaseTime(Date date) {
        this.purchaseTime = date;
    }

    public String getPurchaseText() {
        return this.purchaseText;
    }

    public void setPurchaseText(String str) {
        this.purchaseText = str;
    }

    public int getPurchaseCost() {
        return this.purchaseCost;
    }

    public String getPurchaseCostCurrency() {
        return this.purchaseCostCurrency;
    }

    public void setReversalTime(Date date) {
        this.reversalTime = date;
    }

    public void setReversalText(String str) {
        this.reversalText = str;
    }

    public String getTransactionData() {
        return this.transactionData;
    }

    public void setTransactionData(String str) {
        this.transactionData = str;
    }

    public String getTransactionDataSignature() {
        return this.transactionDataSignature;
    }

    public void setTransactionDataSignature(String str) {
        this.transactionDataSignature = str;
    }

    public String toString() {
        return "Transaction{identifier='" + this.identifier + "', storeName='" + this.storeName + "', orderId='" + this.orderId + "', requestId='" + this.requestId + "', userId='" + this.userId + "', purchaseTime=" + this.purchaseTime + ", purchaseText='" + this.purchaseText + "', purchaseCost=" + this.purchaseCost + ", purchaseCostCurrency='" + this.purchaseCostCurrency + "', reversalTime=" + this.reversalTime + ", reversalText='" + this.reversalText + "', transactionData='" + this.transactionData + "', transactionDataSignature='" + this.transactionDataSignature + "'}";
    }
}
