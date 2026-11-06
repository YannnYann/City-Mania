###### Class io.bidmachine.CrashTracker (io.bidmachine.CrashTracker)
.class public final Lio/bidmachine/CrashTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/CrashTracker;

.field private static final crashTrackerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final dispatchers:Lio/bidmachine/util/SdkDispatchers;

.field private static final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/bidmachine/CrashTracker;

    invoke-direct {v0}, Lio/bidmachine/CrashTracker;-><init>()V

    sput-object v0, Lio/bidmachine/CrashTracker;->INSTANCE:Lio/bidmachine/CrashTracker;

    .line 1
    sget-object v0, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object v0

    sput-object v0, Lio/bidmachine/CrashTracker;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

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

    sput-object v0, Lio/bidmachine/CrashTracker;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/CrashTracker;->crashTrackerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final reportAndInit(Landroid/content/Context;Lio/bidmachine/protobuf/SdkCrashSignalConfig;)V
    .registers 9

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
    sget-object v1, Lio/bidmachine/CrashTracker;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lio/bidmachine/CrashTracker$a;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lio/bidmachine/CrashTracker$a;-><init>(Lio/bidmachine/protobuf/SdkCrashSignalConfig;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 11
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getCrashTrackingEnabled()Z

    move-result p1

    if-eqz p1, :cond_41

    sget-object p1, Lio/bidmachine/CrashTracker;->crashTrackerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_41

    .line 17
    :cond_33
    :try_start_33
    new-instance p1, Lio/bidmachine/BidMachineExceptionHandler;

    .line 19
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 20
    invoke-direct {p1, p0, v0}, Lio/bidmachine/BidMachineExceptionHandler;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 21
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_41

    :catchall_41
    :cond_41
    :goto_41
    return-void
.end method

.method private final trackCrash(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/BidMachineTrackingObject;

    invoke-direct {v0}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    .line 2
    sget-object v1, Lio/bidmachine/TrackEventType;->CrashReport:Lio/bidmachine/TrackEventType;

    .line 3
    const-string v2, "startMs"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_20

    invoke-static {v2, v6, v5, v6}, Lio/bidmachine/util/UtilsKt;->toLongOrDefault$default(Ljava/lang/Object;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_21

    :cond_20
    move-wide v7, v3

    .line 4
    :goto_21
    const-string v2, "finishMs"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_35

    invoke-static {v2, v6, v5, v6}, Lio/bidmachine/util/UtilsKt;->toLongOrDefault$default(Ljava/lang/Object;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_35
    move-wide v4, v3

    .line 8
    const-string v2, "message"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_42

    const-string v2, "Exception"

    .line 9
    :cond_42
    const-string v3, "extendedMessage"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4e

    const-string p1, "Unknown"

    .line 10
    :cond_4e
    invoke-static {v2, p1}, Lio/bidmachine/utils/BMError;->handledException(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    const/4 v6, 0x0

    move-wide v2, v7

    const/4 v7, 0x0

    move-object v8, p1

    .line 11
    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/tracking/SessionTrackingObject;->trackEvent(Lio/bidmachine/TrackEventType;JJLio/bidmachine/AdsType;Lio/bidmachine/tracking/EventData;Lio/bidmachine/utils/BMError;)V

    return-void
.end method


# virtual methods
.method public final reportPendingCrashes(Landroid/content/Context;)V
    .registers 7

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lio/bidmachine/CrashTrackerKt;->access$crashFiles(Landroid/content/Context;)[Ljava/io/File;

    move-result-object p1

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_2e

    aget-object v2, p1, v1

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_2b

    .line 108
    :cond_16
    sget-object v3, Lio/bidmachine/CrashTracker;->INSTANCE:Lio/bidmachine/CrashTracker;

    invoke-static {v2}, Lio/bidmachine/util/file/FileUtilsKt;->readSafely(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-static {v4}, Lio/bidmachine/CrashTrackerKt;->access$parseCrash(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_25

    goto :goto_2b

    :cond_25
    invoke-direct {v3, v4}, Lio/bidmachine/CrashTracker;->trackCrash(Ljava/util/Map;)V

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2e
    return-void
.end method

###### Class io.bidmachine.CrashTracker.a (io.bidmachine.CrashTracker$a)
.class public final Lio/bidmachine/CrashTracker$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/CrashTracker;->reportAndInit(Landroid/content/Context;Lio/bidmachine/protobuf/SdkCrashSignalConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lio/bidmachine/protobuf/SdkCrashSignalConfig;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/CrashTracker$a;->c:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    iput-object p2, p0, Lio/bidmachine/CrashTracker$a;->d:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/CrashTracker$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/CrashTracker$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/CrashTracker$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance v0, Lio/bidmachine/CrashTracker$a;

    iget-object v1, p0, Lio/bidmachine/CrashTracker$a;->c:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    iget-object v2, p0, Lio/bidmachine/CrashTracker$a;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lio/bidmachine/CrashTracker$a;-><init>(Lio/bidmachine/protobuf/SdkCrashSignalConfig;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/CrashTracker$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/CrashTracker$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/CrashTracker$a;->a:I

    if-nez v0, :cond_2e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/CrashTracker$a;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lio/bidmachine/CrashTracker$a;->c:Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    iget-object v0, p0, Lio/bidmachine/CrashTracker$a;->d:Landroid/content/Context;

    .line 3
    :try_start_12
    invoke-virtual {p1}, Lio/bidmachine/protobuf/SdkCrashSignalConfig;->getCrashTrackingEnabled()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 4
    sget-object p1, Lio/bidmachine/CrashTracker;->INSTANCE:Lio/bidmachine/CrashTracker;

    invoke-virtual {p1, v0}, Lio/bidmachine/CrashTracker;->reportPendingCrashes(Landroid/content/Context;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2b

    .line 6
    :cond_20
    invoke-static {v0}, Lio/bidmachine/CrashTrackerKt;->access$crashDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/util/file/FileUtilsKt;->deleteFile(Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_2b

    .line 9
    :catchall_2b
    :goto_2b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 10
    :cond_2e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
