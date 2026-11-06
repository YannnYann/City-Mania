###### Class ads_mobile_sdk.sc (ads_mobile_sdk.sc)
.class public final Lads_mobile_sdk/sc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ai1;


# instance fields
.field public final a:Lads_mobile_sdk/pc;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pc;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)V
    .registers 4

    .line 1
    const-string v0, "adUnitStatsTracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lads_mobile_sdk/sc;->a:Lads_mobile_sdk/pc;

    .line 15
    iput-object p2, p0, Lads_mobile_sdk/sc;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    return-void
.end method


# virtual methods
.method public final o(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5

    .line 19
    iget-object p1, p0, Lads_mobile_sdk/sc;->a:Lads_mobile_sdk/pc;

    iget-object v0, p0, Lads_mobile_sdk/sc;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 20
    iget-object v1, p1, Lads_mobile_sdk/pc;->a:Ljava/lang/Object;

    .line 21
    monitor-enter v1

    .line 22
    :try_start_d
    iget-object v2, p1, Lads_mobile_sdk/pc;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1f

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_35

    :cond_1f
    :goto_1f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 23
    iget-object p1, p1, Lads_mobile_sdk/pc;->b:Ljava/util/concurrent/ConcurrentHashMap;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_1d

    .line 25
    monitor-exit v1

    goto :goto_3a

    :goto_35
    monitor-exit v1

    throw p1

    .line 26
    :cond_37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    :goto_3a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
