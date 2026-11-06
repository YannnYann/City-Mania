###### Class ads_mobile_sdk.su1 (ads_mobile_sdk.su1)
.class public final Lads_mobile_sdk/su1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V
    .registers 3

    .line 1
    const-string v0, "internalNativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;
    .registers 2

    .line 10
    iget-object v0, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    return-object v0
.end method

.method public final getHasVideoContent()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/su1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->p()Lads_mobile_sdk/hl1;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lads_mobile_sdk/hl1;->e:Z

    return v0
.end method
