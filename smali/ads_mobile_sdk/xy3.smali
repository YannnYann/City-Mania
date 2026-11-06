###### Class ads_mobile_sdk.xy3 (ads_mobile_sdk.xy3)
.class public final Lads_mobile_sdk/xy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/webkit/PrerenderOperationCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/webkit/PrerenderException;)V
    .registers 3

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onPrerenderActivated()V
    .registers 1

    .line 0
    return-void
.end method
