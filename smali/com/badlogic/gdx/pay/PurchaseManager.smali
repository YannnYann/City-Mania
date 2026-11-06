###### Class com.badlogic.gdx.pay.PurchaseManager (com.badlogic.gdx.pay.PurchaseManager)
.class public interface abstract Lcom/badlogic/gdx/pay/PurchaseManager;
.super Ljava/lang/Object;
.source "PurchaseManager.java"

# interfaces
.implements Lcom/badlogic/gdx/pay/InformationFinder;


# virtual methods
.method public abstract install(Lcom/badlogic/gdx/pay/PurchaseObserver;Lcom/badlogic/gdx/pay/PurchaseManagerConfig;Z)V
.end method

.method public abstract installed()Z
.end method

.method public abstract purchase(Ljava/lang/String;)V
.end method

.method public abstract purchaseRestore()V
.end method
