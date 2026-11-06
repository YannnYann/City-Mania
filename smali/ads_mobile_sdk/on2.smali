###### Class ads_mobile_sdk.on2 (ads_mobile_sdk.on2)
.class public final Lads_mobile_sdk/on2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V
    .registers 3

    .line 1
    const-string v0, "baseRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lads_mobile_sdk/on2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->Z:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 18
    iget-object p1, p0, Lads_mobile_sdk/on2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    instance-of p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;

    .line 19
    new-instance v0, Lads_mobile_sdk/q01;

    new-instance v1, Lads_mobile_sdk/nn2;

    invoke-direct {v1, p1}, Lads_mobile_sdk/nn2;-><init>(Z)V

    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
