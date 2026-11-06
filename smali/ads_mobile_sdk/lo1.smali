###### Class ads_mobile_sdk.lo1 (ads_mobile_sdk.lo1)
.class public final Lads_mobile_sdk/lo1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/mo1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/mo1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/lo1;->a:Lads_mobile_sdk/mo1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 22
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAdEventCallback;

    .line 23
    iget-object v0, p0, Lads_mobile_sdk/lo1;->a:Lads_mobile_sdk/mo1;

    .line 24
    iget-object v0, v0, Lads_mobile_sdk/mo1;->b:Lads_mobile_sdk/pk1;

    .line 25
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    .line 26
    monitor-enter v0

    .line 27
    :try_start_b
    iput-object p1, v0, Lads_mobile_sdk/fm0;->h:Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAdEventCallback;

    .line 28
    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;)V

    .line 30
    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/OnAppEventListener;)V

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_17

    .line 32
    monitor-exit v0

    return-object p1

    :catchall_17
    move-exception p1

    monitor-exit v0

    throw p1
.end method
