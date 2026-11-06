###### Class com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener (com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener)
.class public interface abstract Lcom/unity3d/services/store/gpbl/listeners/PurchasesResponseListener;
.super Ljava/lang/Object;
.source "PurchasesResponseListener.kt"


# virtual methods
.method public abstract onPurchaseResponse(Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/services/store/gpbl/bridges/BillingResultBridge;",
            "Ljava/util/List<",
            "+",
            "Lcom/unity3d/services/store/gpbl/bridges/PurchaseBridge;",
            ">;)V"
        }
    .end annotation
.end method
