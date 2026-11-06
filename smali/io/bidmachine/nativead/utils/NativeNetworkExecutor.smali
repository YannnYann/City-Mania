###### Class io.bidmachine.nativead.utils.NativeNetworkExecutor (io.bidmachine.nativead.utils.NativeNetworkExecutor)
.class public Lio/bidmachine/nativead/utils/NativeNetworkExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static executor:Lio/bidmachine/nativead/utils/NativeNetworkExecutor;


# instance fields
.field public final loaderExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v2, v0, 0x2

    .line 3
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 4
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->loaderExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Lio/bidmachine/nativead/utils/NativeNetworkExecutor;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->executor:Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    invoke-direct {v0}, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;-><init>()V

    sput-object v0, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->executor:Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    .line 4
    :cond_b
    sget-object v0, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->executor:Lio/bidmachine/nativead/utils/NativeNetworkExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/utils/NativeNetworkExecutor;->loaderExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
