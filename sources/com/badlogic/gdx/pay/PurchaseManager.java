package com.badlogic.gdx.pay;

/* JADX INFO: loaded from: classes.dex */
public interface PurchaseManager extends InformationFinder {
    void install(PurchaseObserver purchaseObserver, PurchaseManagerConfig purchaseManagerConfig, boolean z);

    boolean installed();

    void purchase(String str);

    void purchaseRestore();
}
