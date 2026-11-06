###### Class io.bidmachine.AnrTracker (io.bidmachine.AnrTracker)
.class public final Lio/bidmachine/AnrTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/AnrTracker;

.field private static final dispatchers:Lio/bidmachine/util/SdkDispatchers;

.field private static final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/bidmachine/AnrTracker;

    invoke-direct {v0}, Lio/bidmachine/AnrTracker;-><init>()V

    sput-object v0, Lio/bidmachine/AnrTracker;->INSTANCE:Lio/bidmachine/AnrTracker;

    .line 1
    sget-object v0, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AnrTracker;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lio/bidmachine/AnrTracker;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$trackAnr(Lio/bidmachine/AnrTracker;Ljava/lang/String;JJ)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/AnrTracker;->trackAnr(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static final initAndReport(Landroid/content/Context;Lio/bidmachine/protobuf/SdkCrashSignalConfig;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crashSignalConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context.applicationContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getAnrTrackingEnabled()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 3
    invoke-static {p0}, Lio/bidmachine/n;->d(Landroid/content/Context;)J

    move-result-wide v0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lio/bidmachine/n;->d(Landroid/content/Context;J)V

    .line 6
    sget-object p1, Lio/bidmachine/AnrTracker;->INSTANCE:Lio/bidmachine/AnrTracker;

    invoke-virtual {p1, p0, v0, v1}, Lio/bidmachine/AnrTracker;->reportHistoricalAnrs(Landroid/content/Context;J)V

    return-void

    :cond_2a
    const-wide/16 v0, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Lio/bidmachine/n;->d(Landroid/content/Context;J)V

    return-void
.end method

.method private final trackAnr(Ljava/lang/String;JJ)V
    .registers 15

    .line 1
    new-instance v0, Lio/bidmachine/BidMachineTrackingObject;

    invoke-direct {v0}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    .line 2
    sget-object v1, Lio/bidmachine/TrackEventType;->AnrReport:Lio/bidmachine/TrackEventType;

    if-nez p1, :cond_b

    .line 7
    const-string p1, "ANR"

    :cond_b
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lio/bidmachine/utils/BMError;->handledException(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p2

    move-wide v4, p4

    .line 8
    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/tracking/SessionTrackingObject;->trackEvent(Lio/bidmachine/TrackEventType;JJLio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-void
.end method


# virtual methods
.method public final reportHistoricalAnrs(Landroid/content/Context;J)V
    .registers 13

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2c

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_12

    goto :goto_2c

    .line 5
    :cond_12
    invoke-static {p1}, Lio/bidmachine/util/UtilsKt;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_2c

    .line 7
    :cond_19
    sget-object v0, Lio/bidmachine/AnrTracker;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;

    const/4 v6, 0x0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;-><init>(Landroid/app/ActivityManager;Landroid/content/Context;JLkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    move-object v6, v1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2c
    :goto_2c
    return-void
.end method

###### Class io.bidmachine.AnrTracker.AnonymousClass1 (io.bidmachine.AnrTracker$reportHistoricalAnrs$1)
.class public final Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AnrTracker;->reportHistoricalAnrs(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/app/ActivityManager;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;Landroid/content/Context;JLkotlin/coroutines/Continuation;)V
    .registers 6

    .line 0
    iput-object p1, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->c:Landroid/app/ActivityManager;

    iput-object p2, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->d:Landroid/content/Context;

    iput-wide p3, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9

    .line 0
    new-instance v0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;

    iget-object v1, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->c:Landroid/app/ActivityManager;

    iget-object v2, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->d:Landroid/content/Context;

    iget-wide v3, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->e:J

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;-><init>(Landroid/app/ActivityManager;Landroid/content/Context;JLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->a:I

    if-nez v0, :cond_64

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->c:Landroid/app/ActivityManager;

    iget-object v0, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->d:Landroid/content/Context;

    iget-wide v3, p0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->e:J

    .line 4
    :try_start_14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1, v1}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    const-string v0, "activityManager.getHisto\u2026      0\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1$invokeSuspend$lambda$3$$inlined$sortedBy$1;

    invoke-direct {v0}, Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1$invokeSuspend$lambda$3$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/ApplicationExitInfo;)I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_2f

    invoke-static {v1}, Lcom/ironsource/vd$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_2f

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    .line 41
    :goto_4e
    invoke-static {v0}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 44
    sget-object v1, Lio/bidmachine/AnrTracker;->INSTANCE:Lio/bidmachine/AnrTracker;

    .line 45
    invoke-static {p1}, Lcom/ironsource/vd$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {p1}, Lcom/ironsource/vd$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v5

    .line 48
    invoke-static/range {v1 .. v6}, Lio/bidmachine/AnrTracker;->access$trackAnr(Lio/bidmachine/AnrTracker;Ljava/lang/String;JJ)V
    :try_end_61
    .catchall {:try_start_14 .. :try_end_61} :catchall_61

    .line 55
    :catchall_61
    :cond_61
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 56
    :cond_64
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.AnrTracker$reportHistoricalAnrs$1$invokeSuspend$lambda$3$$inlined$sortedBy$1 (io.bidmachine.AnrTracker$reportHistoricalAnrs$1$invokeSuspend$lambda$3$$inlined$sortedBy$1)
.class public final Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1$invokeSuspend$lambda$3$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AnrTracker$reportHistoricalAnrs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object p1

    .line 220
    invoke-static {p1}, Lcom/ironsource/vd$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 221
    invoke-static {p2}, Lads_mobile_sdk/hr$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object p2

    .line 440
    invoke-static {p2}, Lcom/ironsource/vd$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 441
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
