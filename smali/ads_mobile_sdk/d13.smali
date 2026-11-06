###### Class ads_mobile_sdk.d13 (ads_mobile_sdk.d13)
.class public final Lads_mobile_sdk/d13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Lads_mobile_sdk/pc;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final c:Lads_mobile_sdk/qn;

.field public final d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pc;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/qn;Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;)V
    .registers 6

    .line 1
    const-string v0, "adUnitStatsTracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appStats"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lads_mobile_sdk/d13;->a:Lads_mobile_sdk/pc;

    .line 27
    iput-object p2, p0, Lads_mobile_sdk/d13;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 28
    iput-object p3, p0, Lads_mobile_sdk/d13;->c:Lads_mobile_sdk/qn;

    .line 29
    iput-object p4, p0, Lads_mobile_sdk/d13;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .registers 2

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->P:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 33
    iget-object p1, p0, Lads_mobile_sdk/d13;->a:Lads_mobile_sdk/pc;

    iget-object v0, p0, Lads_mobile_sdk/d13;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 34
    iget-object p1, p1, Lads_mobile_sdk/pc;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1d

    goto :goto_18

    .line 36
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_18
    const/4 p1, 0x0

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 38
    iget-object v0, p0, Lads_mobile_sdk/d13;->a:Lads_mobile_sdk/pc;

    iget-object v1, p0, Lads_mobile_sdk/d13;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 39
    iget-object v0, v0, Lads_mobile_sdk/pc;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/time/Duration;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v0

    goto :goto_3f

    .line 41
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    :cond_3d
    sget-wide v0, Lads_mobile_sdk/pc;->e:J

    .line 43
    :goto_3f
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;-><init>(Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 44
    new-instance p1, Lads_mobile_sdk/q01;

    .line 45
    new-instance v0, Lads_mobile_sdk/c13;

    iget-object v1, p0, Lads_mobile_sdk/d13;->d:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    iget-object v3, p0, Lads_mobile_sdk/d13;->c:Lads_mobile_sdk/qn;

    .line 46
    iget-object v3, v3, Lads_mobile_sdk/qn;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 48
    invoke-direct {v0, v1, v3, v2}, Lads_mobile_sdk/c13;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;ILcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;)V

    .line 49
    invoke-direct {p1, v0}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
