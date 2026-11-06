###### Class ads_mobile_sdk.ic (ads_mobile_sdk.ic)
.class public abstract Lads_mobile_sdk/ic;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lads_mobile_sdk/gc;)Lads_mobile_sdk/jc;
    .registers 2

    .line 1
    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lads_mobile_sdk/jc;

    .line 3
    invoke-direct {v0, p0}, Lads_mobile_sdk/jc;-><init>(Lads_mobile_sdk/gc;)V

    return-object v0
.end method
