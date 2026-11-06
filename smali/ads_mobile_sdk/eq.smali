###### Class ads_mobile_sdk.eq (ads_mobile_sdk.eq)
.class public abstract Lads_mobile_sdk/eq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;


# instance fields
.field public final a:Lads_mobile_sdk/zh1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zh1;)V
    .registers 3

    .line 1
    const-string v0, "internalAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/eq;->a:Lads_mobile_sdk/zh1;

    return-void
.end method


# virtual methods
.method public a()Lads_mobile_sdk/zh1;
    .registers 2

    .line 11
    iget-object v0, p0, Lads_mobile_sdk/eq;->a:Lads_mobile_sdk/zh1;

    return-object v0
.end method

.method public destroy()V
    .registers 2

    .line 23
    invoke-virtual {p0}, Lads_mobile_sdk/eq;->a()Lads_mobile_sdk/zh1;

    move-result-object v0

    invoke-interface {v0}, Lads_mobile_sdk/zh1;->destroy()V

    return-void
.end method

.method public final getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;
    .registers 2

    .line 21
    invoke-virtual {p0}, Lads_mobile_sdk/eq;->a()Lads_mobile_sdk/zh1;

    move-result-object v0

    invoke-interface {v0}, Lads_mobile_sdk/zh1;->getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object v0

    return-object v0
.end method
