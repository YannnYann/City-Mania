###### Class ads_mobile_sdk.vz1 (ads_mobile_sdk.vz1)
.class public final Lads_mobile_sdk/vz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/xz1;
.implements Lads_mobile_sdk/zh1;


# instance fields
.field public final a:Lads_mobile_sdk/ck1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ck1;)V
    .registers 3

    .line 1
    const-string v0, "internalBannerAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/ks3;
    .registers 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->a()Lads_mobile_sdk/ks3;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {v0, p1}, Lads_mobile_sdk/ci1;->a(Lads_mobile_sdk/ci1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;
    .registers 3

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ci1;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V
    .registers 4

    .line 6
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, v1, Lads_mobile_sdk/ci1;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    return-void
.end method

.method public final b()Lads_mobile_sdk/i2;
    .registers 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object v0

    return-object v0
.end method

.method public final destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->destroy()V

    return-void
.end method

.method public final g()Lcom/google/gson/JsonObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object v0

    return-object v0
.end method
