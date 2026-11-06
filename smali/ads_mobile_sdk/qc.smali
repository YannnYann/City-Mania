###### Class ads_mobile_sdk.qc (ads_mobile_sdk.qc)
.class public final Lads_mobile_sdk/qc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/li1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

.field public final c:Lads_mobile_sdk/pc;

.field public final d:Lads_mobile_sdk/tx;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/pc;Lads_mobile_sdk/tx;)V
    .registers 6

    .line 1
    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitStatsTracker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lads_mobile_sdk/qc;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lads_mobile_sdk/qc;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 21
    iput-object p3, p0, Lads_mobile_sdk/qc;->c:Lads_mobile_sdk/pc;

    .line 22
    iput-object p4, p0, Lads_mobile_sdk/qc;->d:Lads_mobile_sdk/tx;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ec3;Lads_mobile_sdk/i2;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 30
    iget-object p1, p0, Lads_mobile_sdk/qc;->c:Lads_mobile_sdk/pc;

    iget-object p2, p0, Lads_mobile_sdk/qc;->a:Ljava/lang/String;

    iget-object p3, p0, Lads_mobile_sdk/qc;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-virtual {p3}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lads_mobile_sdk/qc;->d:Lads_mobile_sdk/tx;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-string p4, "requestId"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p4, p1, Lads_mobile_sdk/pc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/time/Duration;

    if-eqz p2, :cond_43

    .line 73
    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    if-eqz p3, :cond_43

    .line 74
    iget-object p1, p1, Lads_mobile_sdk/pc;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p4, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-virtual {p2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_43
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
