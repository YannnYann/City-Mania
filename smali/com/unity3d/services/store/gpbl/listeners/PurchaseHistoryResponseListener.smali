###### Class com.unity3d.services.store.gpbl.listeners.PurchaseHistoryResponseListener (com.unity3d.services.store.gpbl.listeners.PurchaseHistoryResponseListener)
.class public interface abstract Lcom/unity3d/services/store/gpbl/listeners/PurchaseHistoryResponseListener;
.super Ljava/lang/Object;
.source "PurchaseHistoryResponseListener.kt"


# virtual methods
.method public abstract onPurchaseHistoryUpdated(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/services/store/gpbl/bridges/PurchaseHistoryRecordBridge;",
            ">;)V"
        }
    .end annotation
.end method
