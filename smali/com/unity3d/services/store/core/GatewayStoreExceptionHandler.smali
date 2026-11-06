###### Class com.unity3d.services.store.core.GatewayStoreExceptionHandler (com.unity3d.services.store.core.GatewayStoreExceptionHandler)
.class public final Lcom/unity3d/services/store/core/GatewayStoreExceptionHandler;
.super Ljava/lang/Object;
.source "GatewayStoreExceptionHandler.kt"

# interfaces
.implements Lcom/unity3d/services/store/core/StoreExceptionHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleStoreException(Lcom/unity3d/services/store/StoreEvent;ILjava/lang/Exception;)V
    .registers 4

    const-string p2, "storeEvent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    throw p3
.end method
