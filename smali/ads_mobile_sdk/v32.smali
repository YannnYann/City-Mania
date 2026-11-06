###### Class ads_mobile_sdk.v32 (ads_mobile_sdk.v32)
.class public final Lads_mobile_sdk/v32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/j12;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j12;)V
    .registers 3

    .line 1
    const-string v0, "nativeAdCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/v32;->a:Lads_mobile_sdk/j12;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 23
    const-string p2, "nativeAdViewSignalsReady"

    .line 24
    iget-object v0, p0, Lads_mobile_sdk/v32;->a:Lads_mobile_sdk/j12;

    .line 25
    iget-object v0, v0, Lads_mobile_sdk/j12;->c:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/o32;

    if-eqz v0, :cond_44

    check-cast v0, Lads_mobile_sdk/p32;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_11
    iget-object v1, v0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_20

    monitor-exit v0

    goto :goto_49

    :catchall_20
    move-exception p1

    goto :goto_42

    .line 29
    :cond_22
    :try_start_22
    iget-object v1, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v1, :cond_3b

    .line 30
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 32
    iget-object v2, v0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    .line 33
    iget-object v3, v0, Lads_mobile_sdk/p32;->h:Ljava/util/LinkedHashMap;

    .line 34
    iget-object v4, v0, Lads_mobile_sdk/p32;->f:Landroid/widget/ImageView$ScaleType;

    if-nez v4, :cond_36

    .line 35
    sget-object v4, Lads_mobile_sdk/t32;->i:Landroid/widget/ImageView$ScaleType;

    .line 36
    :cond_36
    invoke-virtual {v1, v2, v4, v3}, Lads_mobile_sdk/j12;->a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/LinkedHashMap;)Lcom/google/gson/JsonObject;

    move-result-object v1

    goto :goto_40

    .line 40
    :cond_3b
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V
    :try_end_40
    .catchall {:try_start_22 .. :try_end_40} :catchall_20

    .line 41
    :goto_40
    monitor-exit v0

    goto :goto_49

    :goto_42
    monitor-exit v0

    throw p1

    .line 42
    :cond_44
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 43
    :goto_49
    invoke-virtual {p1, v1, p2, p3}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_54

    return-object p1

    :cond_54
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->J:Lads_mobile_sdk/u11;

    return-object v0
.end method
