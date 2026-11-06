###### Class ads_mobile_sdk.k12 (ads_mobile_sdk.k12)
.class public final Lads_mobile_sdk/k12;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/l12;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/l12;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/k12;->a:Lads_mobile_sdk/l12;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 28
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;

    .line 29
    iget-object v0, p0, Lads_mobile_sdk/k12;->a:Lads_mobile_sdk/l12;

    .line 30
    iget-object v0, v0, Lads_mobile_sdk/l12;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 31
    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->j()Lads_mobile_sdk/fm0;

    move-result-object v0

    .line 32
    monitor-enter v0

    .line 33
    :try_start_b
    iput-object p1, v0, Lads_mobile_sdk/fm0;->l:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;

    .line 34
    invoke-virtual {v0, p1}, Lads_mobile_sdk/fm0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;)V

    .line 35
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    .line 36
    monitor-exit v0

    return-object p1

    :catchall_14
    move-exception p1

    monitor-exit v0

    throw p1
.end method
