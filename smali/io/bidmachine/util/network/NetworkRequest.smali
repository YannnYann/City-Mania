###### Class io.bidmachine.util.network.NetworkRequest (io.bidmachine.util.network.NetworkRequest)
.class public final Lio/bidmachine/util/network/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/network/NetworkRequest$Companion;,
        Lio/bidmachine/util/network/NetworkRequest$Listener;,
        Lio/bidmachine/util/network/NetworkRequest$MetadataListener;,
        Lio/bidmachine/util/network/NetworkRequest$Builder;,
        Lio/bidmachine/util/network/NetworkRequest$ProcessTask;,
        Lio/bidmachine/util/network/NetworkRequest$TimeoutTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkRequest.kt\nio/bidmachine/util/network/NetworkRequest\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,496:1\n90#1,19:497\n90#1,19:516\n325#1,14:539\n330#1,9:553\n846#2,4:535\n*S KotlinDebug\n*F\n+ 1 NetworkRequest.kt\nio/bidmachine/util/network/NetworkRequest\n*L\n62#1:497,19\n70#1:516,19\n291#1:539,14\n316#1:553,9\n247#1:535,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/network/NetworkRequest$Companion;

.field public static final TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

.field public static final TIME_OUT_TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;


# instance fields
.field public final connectTimeoutMs:Ljava/lang/Integer;

.field public connectionCount:I

.field public executionTime:Lkotlin/time/Duration;

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final isDataReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final isSend:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public lastTaskManager:Lio/bidmachine/util/taskmanager/TaskManager;

.field public final listener:Lio/bidmachine/util/network/NetworkRequest$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/util/network/NetworkRequest$Listener<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field public final metadataListener:Lio/bidmachine/util/network/NetworkRequest$MetadataListener;

.field public final method:Lio/bidmachine/util/network/Method;

.field public processTask:Lio/bidmachine/util/taskmanager/CancelableTask;

.field public final queryParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final readTimeoutMs:Ljava/lang/Integer;

.field public final redirect:Lio/bidmachine/util/network/Redirect;

.field public requestData:[B

.field public final requestProcessor:Lio/bidmachine/util/network/RequestProcessor;

.field public final responseProcessor:Lio/bidmachine/util/network/ResponseProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/util/network/ResponseProcessor<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field public final timeoutMs:Ljava/lang/Long;

.field public timeoutTask:Lio/bidmachine/util/taskmanager/CancelableTask;

.field public final url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$zA-YXrGuE-SRqx-FjkTFTQYFEo8(Lio/bidmachine/util/network/NetworkRequest;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/util/network/NetworkRequest;->processTimeout$lambda$9(Lio/bidmachine/util/network/NetworkRequest;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/bidmachine/util/network/NetworkRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/network/NetworkRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/network/NetworkRequest;->Companion:Lio/bidmachine/util/network/NetworkRequest$Companion;

    .line 343
    new-instance v0, Lio/bidmachine/util/taskmanager/coroutine/NetworkTaskManager;

    invoke-direct {v0}, Lio/bidmachine/util/taskmanager/coroutine/NetworkTaskManager;-><init>()V

    sput-object v0, Lio/bidmachine/util/network/NetworkRequest;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    .line 345
    new-instance v0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    new-instance v2, Lkotlinx/coroutines/CoroutineName;

    const-string v3, "NetworkTimeOutTaskManager"

    invoke-direct {v2, v3}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v1, v3, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    sput-object v0, Lio/bidmachine/util/network/NetworkRequest;->TIME_OUT_TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/util/network/Method;Ljava/util/Map;Ljava/util/Map;Lio/bidmachine/util/network/Redirect;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lio/bidmachine/util/network/RequestProcessor;Lio/bidmachine/util/network/ResponseProcessor;Lio/bidmachine/util/network/NetworkRequest$Listener;Lio/bidmachine/util/network/NetworkRequest$MetadataListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/util/network/Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/util/network/Redirect;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/util/network/RequestProcessor;",
            "Lio/bidmachine/util/network/ResponseProcessor<",
            "TResponseType;>;",
            "Lio/bidmachine/util/network/NetworkRequest$Listener<",
            "TResponseType;>;",
            "Lio/bidmachine/util/network/NetworkRequest$MetadataListener;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirect"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest;->url:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lio/bidmachine/util/network/NetworkRequest;->method:Lio/bidmachine/util/network/Method;

    .line 30
    iput-object p3, p0, Lio/bidmachine/util/network/NetworkRequest;->headers:Ljava/util/Map;

    .line 31
    iput-object p4, p0, Lio/bidmachine/util/network/NetworkRequest;->queryParameters:Ljava/util/Map;

    .line 32
    iput-object p5, p0, Lio/bidmachine/util/network/NetworkRequest;->redirect:Lio/bidmachine/util/network/Redirect;

    .line 33
    iput-object p6, p0, Lio/bidmachine/util/network/NetworkRequest;->timeoutMs:Ljava/lang/Long;

    .line 34
    iput-object p7, p0, Lio/bidmachine/util/network/NetworkRequest;->connectTimeoutMs:Ljava/lang/Integer;

    .line 35
    iput-object p8, p0, Lio/bidmachine/util/network/NetworkRequest;->readTimeoutMs:Ljava/lang/Integer;

    .line 36
    iput-object p9, p0, Lio/bidmachine/util/network/NetworkRequest;->requestProcessor:Lio/bidmachine/util/network/RequestProcessor;

    .line 37
    iput-object p10, p0, Lio/bidmachine/util/network/NetworkRequest;->responseProcessor:Lio/bidmachine/util/network/ResponseProcessor;

    .line 38
    iput-object p11, p0, Lio/bidmachine/util/network/NetworkRequest;->listener:Lio/bidmachine/util/network/NetworkRequest$Listener;

    .line 39
    iput-object p12, p0, Lio/bidmachine/util/network/NetworkRequest;->metadataListener:Lio/bidmachine/util/network/NetworkRequest$MetadataListener;

    .line 45
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest;->isSend:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest;->isNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest;->isDataReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getTASK_MANAGER$cp()Lio/bidmachine/util/taskmanager/TaskManager;
    .registers 1

    .line 27
    sget-object v0, Lio/bidmachine/util/network/NetworkRequest;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    return-object v0
.end method

.method public static final synthetic access$isNotified$p(Lio/bidmachine/util/network/NetworkRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 27
    iget-object p0, p0, Lio/bidmachine/util/network/NetworkRequest;->isNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$processTimeout(Lio/bidmachine/util/network/NetworkRequest;)V
    .registers 1

    .line 27
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->processTimeout()V

    return-void
.end method

.method public static final synthetic access$sendInternal(Lio/bidmachine/util/network/NetworkRequest;)V
    .registers 1

    .line 27
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->sendInternal()V

    return-void
.end method

.method public static final synthetic access$setExecutionTime$p(Lio/bidmachine/util/network/NetworkRequest;Lkotlin/time/Duration;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest;->executionTime:Lkotlin/time/Duration;

    return-void
.end method

.method public static synthetic notifyError$default(Lio/bidmachine/util/network/NetworkRequest;ZLio/bidmachine/util/network/ResponseMetadata;Lio/bidmachine/util/network/NetworkError;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_a

    const/4 p2, 0x0

    .line 311
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/util/network/NetworkRequest;->notifyError(ZLio/bidmachine/util/network/ResponseMetadata;Lio/bidmachine/util/network/NetworkError;)V

    return-void
.end method

.method public static synthetic notifyError$default(Lio/bidmachine/util/network/NetworkRequest;ZLio/bidmachine/util/network/ResponseMetadata;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_a

    const/4 p2, 0x0

    .line 299
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/util/network/NetworkRequest;->notifyError(ZLio/bidmachine/util/network/ResponseMetadata;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final processTimeout$lambda$9(Lio/bidmachine/util/network/NetworkRequest;)V
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    new-instance v4, Lio/bidmachine/util/network/NetworkError;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "NetworkRequest timeout reached"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lio/bidmachine/util/network/NetworkError;-><init>(Ljava/lang/Throwable;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    .line 268
    invoke-static/range {v1 .. v6}, Lio/bidmachine/util/network/NetworkRequest;->notifyError$default(Lio/bidmachine/util/network/NetworkRequest;ZLio/bidmachine/util/network/ResponseMetadata;Lio/bidmachine/util/network/NetworkError;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic send$default(Lio/bidmachine/util/network/NetworkRequest;Lio/bidmachine/util/taskmanager/TaskManager;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 61
    sget-object p1, Lio/bidmachine/util/network/NetworkRequest;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    :cond_6
    invoke-virtual {p0, p1}, Lio/bidmachine/util/network/NetworkRequest;->send(Lio/bidmachine/util/taskmanager/TaskManager;)V

    return-void
.end method


# virtual methods
.method public final createResponseMetadataOrNull(Ljava/net/HttpURLConnection;I)Lio/bidmachine/util/network/ResponseMetadata;
    .registers 6

    .line 279
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->metadataListener:Lio/bidmachine/util/network/NetworkRequest$MetadataListener;

    if-eqz v0, :cond_17

    .line 280
    new-instance v0, Lio/bidmachine/util/network/ResponseMetadata;

    .line 281
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    const-string v2, "httpURLConnection.url"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    .line 280
    invoke-direct {v0, v1, p2, p1}, Lio/bidmachine/util/network/ResponseMetadata;-><init>(Ljava/net/URL;ILjava/util/Map;)V

    return-object v0

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public final destroy()V
    .registers 3

    .line 78
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->stopTimeout()V

    .line 80
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->processTask:Lio/bidmachine/util/taskmanager/CancelableTask;

    if-eqz v0, :cond_14

    .line 82
    iget-object v1, p0, Lio/bidmachine/util/network/NetworkRequest;->lastTaskManager:Lio/bidmachine/util/taskmanager/TaskManager;

    if-eqz v1, :cond_14

    invoke-interface {v1, v0}, Lio/bidmachine/util/taskmanager/TaskManager;->cancel(Ljava/lang/Runnable;)V

    :cond_14
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->lastTaskManager:Lio/bidmachine/util/taskmanager/TaskManager;

    .line 85
    iput-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->processTask:Lio/bidmachine/util/taskmanager/CancelableTask;

    .line 86
    iput-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->requestData:[B

    return-void
.end method

.method public final getExecutionTime-FghU774()Lkotlin/time/Duration;
    .registers 2

    .line 42
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->executionTime:Lkotlin/time/Duration;

    return-object v0
.end method

.method public final getListener()Lio/bidmachine/util/network/NetworkRequest$Listener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/util/network/NetworkRequest$Listener<",
            "TResponseType;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->listener:Lio/bidmachine/util/network/NetworkRequest$Listener;

    return-object v0
.end method

.method public final getMetadataListener()Lio/bidmachine/util/network/NetworkRequest$MetadataListener;
    .registers 2

    .line 39
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->metadataListener:Lio/bidmachine/util/network/NetworkRequest$MetadataListener;

    return-object v0
.end method

.method public final isDestroyed()Z
    .registers 2

    .line 75
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final notifyError(ZLio/bidmachine/util/network/ResponseMetadata;Lio/bidmachine/util/network/NetworkError;)V
    .registers 7

    .line 330
    invoke-static {p0}, Lio/bidmachine/util/network/NetworkRequest;->access$isNotified$p(Lio/bidmachine/util/network/NetworkRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    goto :goto_2a

    .line 333
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_18

    if-nez p1, :cond_18

    goto :goto_2a

    .line 336
    :cond_18
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->getMetadataListener()Lio/bidmachine/util/network/NetworkRequest$MetadataListener;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-interface {p1, p2}, Lio/bidmachine/util/network/NetworkRequest$MetadataListener;->onReceived(Lio/bidmachine/util/network/ResponseMetadata;)V

    .line 337
    :cond_21
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->getListener()Lio/bidmachine/util/network/NetworkRequest$Listener;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 320
    invoke-interface {p1, p3}, Lio/bidmachine/util/network/NetworkRequest$Listener;->onError(Lio/bidmachine/util/network/NetworkError;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final notifyError(ZLio/bidmachine/util/network/ResponseMetadata;Ljava/lang/Throwable;)V
    .registers 5

    .line 307
    new-instance v0, Lio/bidmachine/util/network/NetworkError;

    invoke-direct {v0, p3}, Lio/bidmachine/util/network/NetworkError;-><init>(Ljava/lang/Throwable;)V

    .line 304
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/util/network/NetworkRequest;->notifyError(ZLio/bidmachine/util/network/ResponseMetadata;Lio/bidmachine/util/network/NetworkError;)V

    return-void
.end method

.method public final notifySuccess(Lio/bidmachine/util/network/ResponseMetadata;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/ResponseMetadata;",
            "TResponseType;)V"
        }
    .end annotation

    .line 330
    invoke-static {p0}, Lio/bidmachine/util/network/NetworkRequest;->access$isNotified$p(Lio/bidmachine/util/network/NetworkRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_26

    .line 333
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_26

    .line 336
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->getMetadataListener()Lio/bidmachine/util/network/NetworkRequest$MetadataListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1}, Lio/bidmachine/util/network/NetworkRequest$MetadataListener;->onReceived(Lio/bidmachine/util/network/ResponseMetadata;)V

    .line 337
    :cond_1d
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->getListener()Lio/bidmachine/util/network/NetworkRequest$Listener;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 294
    invoke-interface {p1, p2}, Lio/bidmachine/util/network/NetworkRequest$Listener;->onSuccess(Ljava/lang/Object;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public final openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 170
    iget v0, p0, Lio/bidmachine/util/network/NetworkRequest;->connectionCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/bidmachine/util/network/NetworkRequest;->connectionCount:I

    const/16 v2, 0x14

    if-gt v0, v2, :cond_159

    .line 174
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_153

    const/4 v0, 0x0

    .line 179
    :try_start_11
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 180
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->redirect:Lio/bidmachine/util/network/Redirect;

    sget-object v4, Lio/bidmachine/util/network/Redirect;->Native:Lio/bidmachine/util/network/Redirect;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_25

    move v3, v1

    goto :goto_26

    :cond_25
    move v3, v5

    :goto_26
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 181
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 182
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 183
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_14e

    .line 186
    :try_start_32
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->requestProcessor:Lio/bidmachine/util/network/RequestProcessor;

    if-eqz v3, :cond_3e

    invoke-interface {v3, v2}, Lio/bidmachine/util/network/RequestProcessor;->setupConnection(Ljava/net/URLConnection;)V

    goto :goto_3e

    :catchall_3a
    move-exception p1

    move-object v0, v2

    goto/16 :goto_14f

    .line 189
    :cond_3e
    :goto_3e
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->method:Lio/bidmachine/util/network/Method;

    invoke-virtual {v3}, Lio/bidmachine/util/network/Method;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 191
    invoke-virtual {v2, v6, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 193
    :cond_6d
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->connectTimeoutMs:Ljava/lang/Integer;

    if-eqz v3, :cond_80

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_80

    .line 194
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->connectTimeoutMs:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 196
    :cond_80
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->readTimeoutMs:Ljava/lang/Integer;

    if-eqz v3, :cond_93

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_93

    .line 197
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->readTimeoutMs:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 200
    :cond_93
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->isDataReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 201
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->requestProcessor:Lio/bidmachine/util/network/RequestProcessor;

    if-eqz v3, :cond_a4

    invoke-interface {v3}, Lio/bidmachine/util/network/RequestProcessor;->getBody()[B

    move-result-object v3

    goto :goto_a5

    :cond_a4
    move-object v3, v0

    :goto_a5
    iput-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->requestData:[B

    .line 203
    :cond_a7
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->requestData:[B

    if-eqz v3, :cond_d6

    .line 204
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 205
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v4, "httpURLConnection.outputStream"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v4, v1, Ljava/io/BufferedOutputStream;

    if-eqz v4, :cond_be

    check-cast v1, Ljava/io/BufferedOutputStream;

    goto :goto_c6

    :cond_be
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x2000

    invoke-direct {v4, v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c5
    .catchall {:try_start_32 .. :try_end_c5} :catchall_3a

    move-object v1, v4

    .line 206
    :goto_c6
    :try_start_c6
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 207
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_cb
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_cf

    .line 205
    :try_start_cb
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_3a

    goto :goto_d6

    :catchall_cf
    move-exception p1

    :try_start_d0
    throw p1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_d1

    :catchall_d1
    move-exception v0

    :try_start_d2
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 209
    :cond_d6
    :goto_d6
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_148

    .line 213
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->redirect:Lio/bidmachine/util/network/Redirect;

    sget-object v1, Lio/bidmachine/util/network/Redirect;->Manual:Lio/bidmachine/util/network/Redirect;

    if-ne v0, v1, :cond_147

    .line 214
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    packed-switch v0, :pswitch_data_162

    :pswitch_e9
    goto :goto_147

    .line 222
    :pswitch_ea
    const-string v1, "Location"

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v2}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    if-eqz v1, :cond_12b

    .line 224
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_12b

    .line 227
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 228
    invoke-static {v0}, Lio/bidmachine/util/network/NetworkUtilsKt;->isHttp(Ljava/net/URL;)Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 231
    invoke-virtual {p0, v0}, Lio/bidmachine/util/network/NetworkRequest;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1

    .line 229
    :cond_10b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location header url is not http or https, but has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " protocol"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_12b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location header url could not be null or empty when server responds with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " code"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_147
    :goto_147
    return-object v2

    .line 210
    :cond_148
    new-instance p1, Lio/bidmachine/util/network/RequestInDestroyedStateException;

    invoke-direct {p1}, Lio/bidmachine/util/network/RequestInDestroyedStateException;-><init>()V

    throw p1
    :try_end_14e
    .catchall {:try_start_d2 .. :try_end_14e} :catchall_3a

    :catchall_14e
    move-exception p1

    .line 237
    :goto_14f
    invoke-static {v0}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    .line 238
    throw p1

    .line 175
    :cond_153
    new-instance p1, Lio/bidmachine/util/network/RequestInDestroyedStateException;

    invoke-direct {p1}, Lio/bidmachine/util/network/RequestInDestroyedStateException;-><init>()V

    throw p1

    .line 172
    :cond_159
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The maximum number of connections for one request has been reached"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_162
    .packed-switch 0x12d
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_e9
        :pswitch_ea
        :pswitch_e9
        :pswitch_ea
        :pswitch_ea
    .end packed-switch
.end method

.method public final processTimeout()V
    .registers 3

    .line 262
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 266
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->destroy()V

    .line 267
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->lastTaskManager:Lio/bidmachine/util/taskmanager/TaskManager;

    if-nez v0, :cond_10

    sget-object v0, Lio/bidmachine/util/network/NetworkRequest;->TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    :cond_10
    new-instance v1, Lio/bidmachine/util/network/NetworkRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/util/network/NetworkRequest$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/util/network/NetworkRequest;)V

    invoke-interface {v0, v1}, Lio/bidmachine/util/taskmanager/TaskManager;->executeSafely(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final send(Lio/bidmachine/util/taskmanager/TaskManager;)V
    .registers 15

    const-string v0, "taskManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 93
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string p1, "The Send method was called, but NetworkRequest has already been destroyed"

    invoke-direct {v4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    .line 91
    invoke-static/range {v1 .. v6}, Lio/bidmachine/util/network/NetworkRequest;->notifyError$default(Lio/bidmachine/util/network/NetworkRequest;ZLio/bidmachine/util/network/ResponseMetadata;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_1b
    move-object v1, p0

    .line 97
    iget-object v0, v1, Lio/bidmachine/util/network/NetworkRequest;->isSend:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_42

    .line 100
    :cond_27
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->startTimeout()V

    .line 102
    :try_start_2a
    new-instance v0, Lio/bidmachine/util/network/NetworkRequest$ProcessTask;

    invoke-direct {v0, p0}, Lio/bidmachine/util/network/NetworkRequest$ProcessTask;-><init>(Lio/bidmachine/util/network/NetworkRequest;)V

    .line 63
    invoke-interface {p1, v0}, Lio/bidmachine/util/taskmanager/TaskManager;->execute(Ljava/lang/Runnable;)V

    .line 64
    iput-object p1, v1, Lio/bidmachine/util/network/NetworkRequest;->lastTaskManager:Lio/bidmachine/util/taskmanager/TaskManager;

    .line 102
    iput-object v0, v1, Lio/bidmachine/util/network/NetworkRequest;->processTask:Lio/bidmachine/util/taskmanager/CancelableTask;
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_37

    goto :goto_42

    :catchall_37
    move-exception v0

    move-object p1, v0

    move-object v10, p1

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    .line 106
    invoke-static/range {v7 .. v12}, Lio/bidmachine/util/network/NetworkRequest;->notifyError$default(Lio/bidmachine/util/network/NetworkRequest;ZLio/bidmachine/util/network/ResponseMetadata;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_42
    return-void
.end method

.method public final sendInternal()V
    .registers 10

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 113
    new-instance v7, Lio/bidmachine/util/network/NetworkRequest$sendInternal$finishAction$1;

    invoke-direct {v7, p0, v2, v3}, Lio/bidmachine/util/network/NetworkRequest$sendInternal$finishAction$1;-><init>(Lio/bidmachine/util/network/NetworkRequest;J)V

    const/4 v2, 0x0

    .line 119
    :try_start_a
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest;->url:Ljava/lang/String;

    iget-object v4, p0, Lio/bidmachine/util/network/NetworkRequest;->queryParameters:Ljava/util/Map;

    invoke-static {v3, v4}, Lio/bidmachine/util/network/NetworkUtils;->appendQueryParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/util/network/NetworkRequest;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v8
    :try_end_1b
    .catch Lio/bidmachine/util/network/RequestInDestroyedStateException; {:try_start_a .. :try_end_1b} :catch_84
    .catchall {:try_start_a .. :try_end_1b} :catchall_6a

    .line 120
    :try_start_1b
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed()Z

    move-result v0
    :try_end_1f
    .catch Lio/bidmachine/util/network/RequestInDestroyedStateException; {:try_start_1b .. :try_end_1f} :catch_52
    .catchall {:try_start_1b .. :try_end_1f} :catchall_4f

    if-eqz v0, :cond_28

    .line 163
    :goto_21
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 164
    invoke-static {v8}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-void

    .line 123
    :cond_28
    :try_start_28
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 124
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_21

    .line 128
    :cond_33
    invoke-virtual {p0, v8, v0}, Lio/bidmachine/util/network/NetworkRequest;->createResponseMetadataOrNull(Ljava/net/HttpURLConnection;I)Lio/bidmachine/util/network/ResponseMetadata;

    move-result-object v3

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_5b

    const/16 v4, 0xcc

    if-eq v0, v4, :cond_54

    .line 151
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 154
    new-instance v4, Lio/bidmachine/util/network/IllegalResponseException;

    invoke-direct {v4, v0}, Lio/bidmachine/util/network/IllegalResponseException;-><init>(I)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    .line 152
    invoke-static/range {v1 .. v6}, Lio/bidmachine/util/network/NetworkRequest;->notifyError$default(Lio/bidmachine/util/network/NetworkRequest;ZLio/bidmachine/util/network/ResponseMetadata;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_21

    :catchall_4f
    move-exception v0

    move-object v4, v0

    goto :goto_6d

    :catch_52
    move-object v2, v8

    goto :goto_84

    .line 143
    :cond_54
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 144
    invoke-virtual {p0, v3, v2}, Lio/bidmachine/util/network/NetworkRequest;->notifySuccess(Lio/bidmachine/util/network/ResponseMetadata;Ljava/lang/Object;)V

    goto :goto_21

    .line 134
    :cond_5b
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->responseProcessor:Lio/bidmachine/util/network/ResponseProcessor;

    if-eqz v0, :cond_63

    invoke-interface {v0, v8}, Lio/bidmachine/util/network/ResponseProcessor;->process(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v2

    .line 135
    :cond_63
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 136
    invoke-virtual {p0, v3, v2}, Lio/bidmachine/util/network/NetworkRequest;->notifySuccess(Lio/bidmachine/util/network/ResponseMetadata;Ljava/lang/Object;)V
    :try_end_69
    .catch Lio/bidmachine/util/network/RequestInDestroyedStateException; {:try_start_28 .. :try_end_69} :catch_52
    .catchall {:try_start_28 .. :try_end_69} :catchall_4f

    goto :goto_21

    :catchall_6a
    move-exception v0

    move-object v4, v0

    move-object v8, v2

    :goto_6d
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    .line 161
    :try_start_72
    invoke-static/range {v1 .. v6}, Lio/bidmachine/util/network/NetworkRequest;->notifyError$default(Lio/bidmachine/util/network/NetworkRequest;ZLio/bidmachine/util/network/ResponseMetadata;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_7c

    .line 163
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 164
    invoke-static {v8}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    goto :goto_8a

    :catchall_7c
    move-exception v0

    .line 163
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 164
    invoke-static {v8}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    throw v0

    .line 163
    :catch_84
    :goto_84
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 164
    invoke-static {v2}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    :goto_8a
    return-void
.end method

.method public final startTimeout()V
    .registers 5

    .line 243
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest;->stopTimeout()V

    .line 244
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->timeoutMs:Ljava/lang/Long;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    goto :goto_26

    .line 248
    :cond_12
    :try_start_12
    new-instance v0, Lio/bidmachine/util/network/NetworkRequest$TimeoutTask;

    invoke-direct {v0, p0}, Lio/bidmachine/util/network/NetworkRequest$TimeoutTask;-><init>(Lio/bidmachine/util/network/NetworkRequest;)V

    .line 249
    sget-object v1, Lio/bidmachine/util/network/NetworkRequest;->TIME_OUT_TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    iget-object v2, p0, Lio/bidmachine/util/network/NetworkRequest;->timeoutMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lio/bidmachine/util/taskmanager/TaskManager;->scheduleSafely(Ljava/lang/Runnable;J)Z

    .line 248
    iput-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->timeoutTask:Lio/bidmachine/util/taskmanager/CancelableTask;

    .line 251
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_26

    :catchall_26
    :cond_26
    :goto_26
    return-void
.end method

.method public final stopTimeout()V
    .registers 3

    .line 255
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->timeoutTask:Lio/bidmachine/util/taskmanager/CancelableTask;

    if-eqz v0, :cond_9

    .line 256
    sget-object v1, Lio/bidmachine/util/network/NetworkRequest;->TIME_OUT_TASK_MANAGER:Lio/bidmachine/util/taskmanager/TaskManager;

    invoke-interface {v1, v0}, Lio/bidmachine/util/taskmanager/TaskManager;->cancel(Ljava/lang/Runnable;)V

    :cond_9
    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lio/bidmachine/util/network/NetworkRequest;->timeoutTask:Lio/bidmachine/util/taskmanager/CancelableTask;

    return-void
.end method

###### Class io.bidmachine.util.network.NetworkRequest.Builder (io.bidmachine.util.network.NetworkRequest$Builder)
.class public final Lio/bidmachine/util/network/NetworkRequest$Builder;
.super Ljava/lang/Object;
.source "NetworkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/network/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public connectTimeoutMs:Ljava/lang/Integer;

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public listener:Lio/bidmachine/util/network/NetworkRequest$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/util/network/NetworkRequest$Listener<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field public metadataListener:Lio/bidmachine/util/network/NetworkRequest$MetadataListener;

.field public final method:Lio/bidmachine/util/network/Method;

.field public final queryParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public readTimeoutMs:Ljava/lang/Integer;

.field public redirect:Lio/bidmachine/util/network/Redirect;

.field public requestProcessor:Lio/bidmachine/util/network/RequestProcessor;

.field public responseProcessor:Lio/bidmachine/util/network/ResponseProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/util/network/ResponseProcessor<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field public timeoutMs:Ljava/lang/Long;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lio/bidmachine/util/network/Method;)V
    .registers 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "uri.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-direct {p0, p1, p2}, Lio/bidmachine/util/network/NetworkRequest$Builder;-><init>(Ljava/lang/String;Lio/bidmachine/util/network/Method;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/util/network/Method;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    sget-object v0, Lio/bidmachine/util/network/Redirect;->Manual:Lio/bidmachine/util/network/Redirect;

    iput-object v0, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->redirect:Lio/bidmachine/util/network/Redirect;

    .line 388
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->url:Ljava/lang/String;

    .line 389
    iput-object p2, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->method:Lio/bidmachine/util/network/Method;

    .line 390
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->headers:Ljava/util/Map;

    .line 391
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->queryParameters:Ljava/util/Map;

    return-void
.end method

.method public static synthetic send$default(Lio/bidmachine/util/network/NetworkRequest$Builder;Lio/bidmachine/util/taskmanager/TaskManager;ILjava/lang/Object;)Lio/bidmachine/util/network/NetworkRequest;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 466
    invoke-static {}, Lio/bidmachine/util/network/NetworkRequest;->access$getTASK_MANAGER$cp()Lio/bidmachine/util/taskmanager/TaskManager;

    move-result-object p1

    :cond_8
    invoke-virtual {p0, p1}, Lio/bidmachine/util/network/NetworkRequest$Builder;->send(Lio/bidmachine/util/taskmanager/TaskManager;)Lio/bidmachine/util/network/NetworkRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final build()Lio/bidmachine/util/network/NetworkRequest;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TResponseType;>;"
        }
    .end annotation

    .line 449
    new-instance v0, Lio/bidmachine/util/network/NetworkRequest;

    .line 450
    iget-object v1, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->url:Ljava/lang/String;

    .line 451
    iget-object v2, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->method:Lio/bidmachine/util/network/Method;

    .line 452
    iget-object v3, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->headers:Ljava/util/Map;

    .line 453
    iget-object v4, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->queryParameters:Ljava/util/Map;

    .line 454
    iget-object v5, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->redirect:Lio/bidmachine/util/network/Redirect;

    .line 455
    iget-object v6, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->timeoutMs:Ljava/lang/Long;

    .line 456
    iget-object v7, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->connectTimeoutMs:Ljava/lang/Integer;

    .line 457
    iget-object v8, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->readTimeoutMs:Ljava/lang/Integer;

    .line 458
    iget-object v9, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->requestProcessor:Lio/bidmachine/util/network/RequestProcessor;

    .line 459
    iget-object v10, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->responseProcessor:Lio/bidmachine/util/network/ResponseProcessor;

    .line 460
    iget-object v11, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->listener:Lio/bidmachine/util/network/NetworkRequest$Listener;

    .line 461
    iget-object v12, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->metadataListener:Lio/bidmachine/util/network/NetworkRequest$MetadataListener;

    .line 449
    invoke-direct/range {v0 .. v12}, Lio/bidmachine/util/network/NetworkRequest;-><init>(Ljava/lang/String;Lio/bidmachine/util/network/Method;Ljava/util/Map;Ljava/util/Map;Lio/bidmachine/util/network/Redirect;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lio/bidmachine/util/network/RequestProcessor;Lio/bidmachine/util/network/ResponseProcessor;Lio/bidmachine/util/network/NetworkRequest$Listener;Lio/bidmachine/util/network/NetworkRequest$MetadataListener;)V

    return-object v0
.end method

.method public final send(Lio/bidmachine/util/taskmanager/TaskManager;)Lio/bidmachine/util/network/NetworkRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/taskmanager/TaskManager;",
            ")",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TResponseType;>;"
        }
    .end annotation

    const-string v0, "taskManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest$Builder;->build()Lio/bidmachine/util/network/NetworkRequest;

    move-result-object v0

    .line 468
    invoke-virtual {v0, p1}, Lio/bidmachine/util/network/NetworkRequest;->send(Lio/bidmachine/util/taskmanager/TaskManager;)V

    return-object v0
.end method

.method public final setListener(Lio/bidmachine/util/network/NetworkRequest$Listener;)Lio/bidmachine/util/network/NetworkRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/NetworkRequest$Listener<",
            "TResponseType;>;)",
            "Lio/bidmachine/util/network/NetworkRequest$Builder<",
            "TResponseType;>;"
        }
    .end annotation

    .line 441
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->listener:Lio/bidmachine/util/network/NetworkRequest$Listener;

    return-object p0
.end method

.method public final setMetadataListener(Lio/bidmachine/util/network/NetworkRequest$MetadataListener;)Lio/bidmachine/util/network/NetworkRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/NetworkRequest$MetadataListener;",
            ")",
            "Lio/bidmachine/util/network/NetworkRequest$Builder<",
            "TResponseType;>;"
        }
    .end annotation

    .line 445
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->metadataListener:Lio/bidmachine/util/network/NetworkRequest$MetadataListener;

    return-object p0
.end method

.method public final setRedirect(Lio/bidmachine/util/network/Redirect;)Lio/bidmachine/util/network/NetworkRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/Redirect;",
            ")",
            "Lio/bidmachine/util/network/NetworkRequest$Builder<",
            "TResponseType;>;"
        }
    .end annotation

    const-string v0, "redirect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->redirect:Lio/bidmachine/util/network/Redirect;

    return-object p0
.end method

.method public final setRequestProcessor(Lio/bidmachine/util/network/RequestProcessor;)Lio/bidmachine/util/network/NetworkRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/RequestProcessor;",
            ")",
            "Lio/bidmachine/util/network/NetworkRequest$Builder<",
            "TResponseType;>;"
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->requestProcessor:Lio/bidmachine/util/network/RequestProcessor;

    return-object p0
.end method

.method public final setResponseProcessor(Lio/bidmachine/util/network/ResponseProcessor;)Lio/bidmachine/util/network/NetworkRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/ResponseProcessor<",
            "TResponseType;>;)",
            "Lio/bidmachine/util/network/NetworkRequest$Builder<",
            "TResponseType;>;"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->responseProcessor:Lio/bidmachine/util/network/ResponseProcessor;

    return-object p0
.end method

.method public final setTimeoutMs(Ljava/lang/Long;)Lio/bidmachine/util/network/NetworkRequest$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lio/bidmachine/util/network/NetworkRequest$Builder<",
            "TResponseType;>;"
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$Builder;->timeoutMs:Ljava/lang/Long;

    return-object p0
.end method

###### Class io.bidmachine.util.network.NetworkRequest.Companion (io.bidmachine.util.network.NetworkRequest$Companion)
.class public final Lio/bidmachine/util/network/NetworkRequest$Companion;
.super Ljava/lang/Object;
.source "NetworkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/network/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/network/NetworkRequest$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.util.network.NetworkRequest.Listener (io.bidmachine.util.network.NetworkRequest$Listener)
.class public interface abstract Lio/bidmachine/util/network/NetworkRequest$Listener;
.super Ljava/lang/Object;
.source "NetworkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/network/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lio/bidmachine/util/network/NetworkError;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;)V"
        }
    .end annotation
.end method

###### Class io.bidmachine.util.network.NetworkRequest.MetadataListener (io.bidmachine.util.network.NetworkRequest$MetadataListener)
.class public interface abstract Lio/bidmachine/util/network/NetworkRequest$MetadataListener;
.super Ljava/lang/Object;
.source "NetworkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/network/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetadataListener"
.end annotation


# virtual methods
.method public abstract onReceived(Lio/bidmachine/util/network/ResponseMetadata;)V
.end method

###### Class io.bidmachine.util.network.NetworkRequest.ProcessTask (io.bidmachine.util.network.NetworkRequest$ProcessTask)
.class public final Lio/bidmachine/util/network/NetworkRequest$ProcessTask;
.super Lio/bidmachine/util/taskmanager/CancelableTask;
.source "NetworkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/network/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProcessTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/network/NetworkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/util/network/NetworkRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 480
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$ProcessTask;->this$0:Lio/bidmachine/util/network/NetworkRequest;

    invoke-direct {p0}, Lio/bidmachine/util/taskmanager/CancelableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .registers 2

    .line 483
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest$ProcessTask;->this$0:Lio/bidmachine/util/network/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/util/network/NetworkRequest;->access$sendInternal(Lio/bidmachine/util/network/NetworkRequest;)V

    return-void
.end method

###### Class io.bidmachine.util.network.NetworkRequest.TimeoutTask (io.bidmachine.util.network.NetworkRequest$TimeoutTask)
.class public final Lio/bidmachine/util/network/NetworkRequest$TimeoutTask;
.super Lio/bidmachine/util/taskmanager/CancelableTask;
.source "NetworkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/network/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimeoutTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/util/network/NetworkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/util/network/NetworkRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$TimeoutTask;->this$0:Lio/bidmachine/util/network/NetworkRequest;

    invoke-direct {p0}, Lio/bidmachine/util/taskmanager/CancelableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .registers 2

    .line 491
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest$TimeoutTask;->this$0:Lio/bidmachine/util/network/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/util/network/NetworkRequest;->access$processTimeout(Lio/bidmachine/util/network/NetworkRequest;)V

    return-void
.end method

###### Class io.bidmachine.util.network.NetworkRequest$$ExternalSyntheticLambda0 (io.bidmachine.util.network.NetworkRequest$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/util/network/NetworkRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/util/network/NetworkRequest;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/util/network/NetworkRequest;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/util/network/NetworkRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/util/network/NetworkRequest;

    invoke-static {v0}, Lio/bidmachine/util/network/NetworkRequest;->$r8$lambda$zA-YXrGuE-SRqx-FjkTFTQYFEo8(Lio/bidmachine/util/network/NetworkRequest;)V

    return-void
.end method

###### Class io.bidmachine.util.network.NetworkRequest$sendInternal$finishAction$1 (io.bidmachine.util.network.NetworkRequest$sendInternal$finishAction$1)
.class public final Lio/bidmachine/util/network/NetworkRequest$sendInternal$finishAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NetworkRequest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/network/NetworkRequest;->sendInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $startTime:J

.field public final synthetic this$0:Lio/bidmachine/util/network/NetworkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/util/network/NetworkRequest;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/network/NetworkRequest<",
            "TResponseType;>;J)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/network/NetworkRequest$sendInternal$finishAction$1;->this$0:Lio/bidmachine/util/network/NetworkRequest;

    iput-wide p2, p0, Lio/bidmachine/util/network/NetworkRequest$sendInternal$finishAction$1;->$startTime:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 113
    invoke-virtual {p0}, Lio/bidmachine/util/network/NetworkRequest$sendInternal$finishAction$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 6

    .line 114
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest$sendInternal$finishAction$1;->this$0:Lio/bidmachine/util/network/NetworkRequest;

    invoke-virtual {v0}, Lio/bidmachine/util/network/NetworkRequest;->getExecutionTime-FghU774()Lkotlin/time/Duration;

    move-result-object v0

    if-nez v0, :cond_20

    .line 115
    iget-object v0, p0, Lio/bidmachine/util/network/NetworkRequest$sendInternal$finishAction$1;->this$0:Lio/bidmachine/util/network/NetworkRequest;

    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lio/bidmachine/util/network/NetworkRequest$sendInternal$finishAction$1;->$startTime:J

    sub-long/2addr v1, v3

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/util/network/NetworkRequest;->access$setExecutionTime$p(Lio/bidmachine/util/network/NetworkRequest;Lkotlin/time/Duration;)V

    :cond_20
    return-void
.end method
