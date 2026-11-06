###### Class ads_mobile_sdk.m32 (ads_mobile_sdk.m32)
.class public final Lads_mobile_sdk/m32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/av1;


# instance fields
.field public final synthetic a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/m32;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView$ScaleType;)V
    .registers 4

    .line 1
    const-string v0, "scaleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lads_mobile_sdk/m32;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-static {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;)Lads_mobile_sdk/p32;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    const-string v1, "scaleType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    monitor-enter v0

    .line 198
    :try_start_14
    iget-object v1, v0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_24

    if-eqz v1, :cond_1e

    monitor-exit v0

    return-void

    .line 199
    :cond_1e
    :try_start_1e
    iput-object p1, v0, Lads_mobile_sdk/p32;->f:Landroid/widget/ImageView$ScaleType;

    .line 200
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_24

    .line 201
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit v0

    throw p1
.end method
