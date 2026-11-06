###### Class ads_mobile_sdk.wy3 (ads_mobile_sdk.wy3)
.class public final Lads_mobile_sdk/wy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/webkit/OutcomeReceiverCompat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 160
    check-cast p1, Landroidx/webkit/PrefetchException;

    .line 161
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic onResult(Ljava/lang/Object;)V
    .registers 2

    .line 160
    check-cast p1, Ljava/lang/Void;

    return-void
.end method
