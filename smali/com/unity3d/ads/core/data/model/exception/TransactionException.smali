###### Class com.unity3d.ads.core.data.model.exception.TransactionException (com.unity3d.ads.core.data.model.exception.TransactionException)
.class public final Lcom/unity3d/ads/core/data/model/exception/TransactionException;
.super Ljava/lang/Exception;
.source "TransactionException.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
