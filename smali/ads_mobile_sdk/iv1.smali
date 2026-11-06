###### Class ads_mobile_sdk.iv1 (ads_mobile_sdk.iv1)
.class public abstract Lads_mobile_sdk/iv1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IILjava/lang/String;ZZI)Lcom/google/android/gms/ads/AdSize;
    .registers 14

    .line 1
    const-string v0, "formatString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/AdSize;-><init>(IILjava/lang/String;ZZI)V

    return-object v1
.end method
