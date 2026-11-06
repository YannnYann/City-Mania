###### Class ads_mobile_sdk.fq3 (ads_mobile_sdk.fq3)
.class public abstract Lads_mobile_sdk/fq3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lads_mobile_sdk/st;)Lads_mobile_sdk/gq3;
    .registers 2

    .line 1
    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lads_mobile_sdk/gq3;

    .line 3
    invoke-direct {v0, p0}, Lads_mobile_sdk/gq3;-><init>(Lads_mobile_sdk/st;)V

    return-object v0
.end method
