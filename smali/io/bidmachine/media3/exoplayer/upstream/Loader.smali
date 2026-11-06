###### Class io.bidmachine.media3.exoplayer.upstream.Loader (io.bidmachine.media3.exoplayer.upstream.Loader)
.class public final Lio/bidmachine/media3/exoplayer/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseTask;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field public static final DONT_RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

.field public static final DONT_RETRY_FATAL:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

.field public static final RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

.field public static final RETRY_RESET_ERROR_COUNT:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;


# instance fields
.field public currentTask:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask<",
            "+",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;",
            ">;"
        }
    .end annotation
.end field

.field public final downloadExecutor:Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;

.field public fatalError:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 187
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->createRetryAction(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    const/4 v0, 0x1

    .line 191
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->createRetryAction(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->RETRY_RESET_ERROR_COUNT:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 194
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJLio/bidmachine/media3/exoplayer/upstream/Loader$1;)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 201
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJLio/bidmachine/media3/exoplayer/upstream/Loader$1;)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;)V
    .registers 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->downloadExecutor:Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayer:Loader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader$$ExternalSyntheticLambda0;-><init>()V

    .line 237
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;->from(Ljava/util/concurrent/Executor;Lio/bidmachine/media3/common/util/Consumer;)Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;

    move-result-object p1

    .line 236
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;)V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/upstream/Loader;)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;
    .registers 1

    .line 45
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->currentTask:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    return-object p0
.end method

.method public static synthetic access$102(Lio/bidmachine/media3/exoplayer/upstream/Loader;Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;
    .registers 2

    .line 45
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->currentTask:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    return-object p1
.end method

.method public static synthetic access$202(Lio/bidmachine/media3/exoplayer/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 2

    .line 45
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    return-object p1
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/upstream/Loader;)Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;
    .registers 1

    .line 45
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->downloadExecutor:Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;

    return-object p0
.end method

.method public static createRetryAction(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 5

    .line 261
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    const/4 v1, 0x0

    .line 262
    invoke-direct {v0, p0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJLio/bidmachine/media3/exoplayer/upstream/Loader$1;)V

    return-object v0
.end method


# virtual methods
.method public cancelLoading()V
    .registers 3

    .line 313
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->currentTask:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->cancel(Z)V

    return-void
.end method

.method public clearFatalError()V
    .registers 2

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public hasFatalError()Z
    .registers 2

    .line 271
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 304
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->currentTask:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 341
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->maybeThrowError(I)V

    return-void
.end method

.method public maybeThrowError(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_12

    .line 348
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->currentTask:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz v0, :cond_11

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_e

    .line 350
    iget p1, v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 349
    :cond_e
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->maybeThrowError(I)V

    :cond_11
    return-void

    .line 347
    :cond_12
    throw v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->release(Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    return-void
.end method

.method public release(Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;)V
    .registers 4

    .line 328
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->currentTask:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 329
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->cancel(Z)V

    :cond_8
    if-eqz p1, :cond_14

    .line 332
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->downloadExecutor:Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;

    new-instance v1, Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseTask;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseTask;-><init>(Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 334
    :cond_14
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->downloadExecutor:Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;->release()V

    return-void
.end method

.method public startLoading(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)J
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;",
            ">(TT;",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
            "TT;>;I)J"
        }
    .end annotation

    .line 295
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Looper;

    const/4 v0, 0x0

    .line 296
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->fatalError:Ljava/io/IOException;

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 298
    new-instance v1, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v8}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;-><init>(Lio/bidmachine/media3/exoplayer/upstream/Loader;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->start(J)V

    return-wide v7
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.Loader.AnonymousClass1 (io.bidmachine.media3.exoplayer.upstream.Loader$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/upstream/Loader$1;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.upstream.Loader.Callback (io.bidmachine.media3.exoplayer.upstream.Loader$Callback)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJZ)V"
        }
    .end annotation
.end method

.method public abstract onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)V"
        }
    .end annotation
.end method

.method public abstract onLoadError(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;"
        }
    .end annotation
.end method

.method public onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJI)V"
        }
    .end annotation

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.Loader.LoadErrorAction (io.bidmachine.media3.exoplayer.upstream.Loader$LoadErrorAction)
.class public final Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorAction"
.end annotation


# instance fields
.field public final retryDelayMillis:J

.field public final type:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    .line 215
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-void
.end method

.method public synthetic constructor <init>(IJLio/bidmachine/media3/exoplayer/upstream/Loader$1;)V
    .registers 5

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    return-void
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;)I
    .registers 1

    .line 208
    iget p0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    return p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;)J
    .registers 3

    .line 208
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-wide v0
.end method


# virtual methods
.method public isRetry()Z
    .registers 3

    .line 220
    iget v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    if-ne v0, v1, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    return v0

    :cond_a
    :goto_a
    return v1
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.Loader.LoadTask (io.bidmachine.media3.exoplayer.upstream.Loader$LoadTask)
.class public final Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public callback:Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field public canceled:Z

.field public currentError:Ljava/io/IOException;

.field public final defaultMinRetryCount:I

.field public errorCount:I

.field public executorThread:Ljava/lang/Thread;

.field public final loadable:Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile released:Z

.field public final startTimeMs:J

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/upstream/Loader;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/Loader;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 385
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 386
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;

    .line 387
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->callback:Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;

    .line 388
    iput p5, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 389
    iput-wide p6, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .registers 10

    .line 409
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    const/4 v1, 0x1

    .line 411
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 413
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    .line 414
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_2c

    const/4 v1, 0x2

    .line 416
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2c

    .line 420
    :cond_18
    monitor-enter p0

    .line 421
    :try_start_19
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    .line 422
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;->cancelLoad()V

    .line 423
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2b

    .line 425
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object p1, v0

    goto :goto_4b

    .line 427
    :cond_2b
    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_28

    :cond_2c
    :goto_2c
    if-eqz p1, :cond_4a

    .line 430
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->finish()V

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 432
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->callback:Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;

    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    .line 433
    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V

    .line 438
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->callback:Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;

    :cond_4a
    return-void

    .line 427
    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_28

    throw p1
.end method

.method public final execute()V
    .registers 8

    .line 550
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 551
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v4, v2, v0

    .line 552
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->callback:Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;

    iget v6, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;->onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJI)V

    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 554
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->access$500(Lio/bidmachine/media3/exoplayer/upstream/Loader;)Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->access$100(Lio/bidmachine/media3/exoplayer/upstream/Loader;)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final finish()V
    .registers 3

    .line 558
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->access$102(Lio/bidmachine/media3/exoplayer/upstream/Loader;Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    return-void
.end method

.method public final getRetryDelayMillis()J
    .registers 3

    .line 562
    iget v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 498
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-eqz v0, :cond_6

    goto/16 :goto_9c

    .line 501
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 502
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->execute()V

    return-void

    :cond_f
    const/4 v2, 0x4

    if-eq v0, v2, :cond_9d

    .line 508
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->finish()V

    .line 509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 510
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->startTimeMs:J

    sub-long v7, v5, v2

    .line 511
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->callback:Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;

    .line 512
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    if-eqz v0, :cond_31

    .line 513
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V

    return-void

    .line 516
    :cond_31
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_83

    const/4 v11, 0x3

    if-eq v0, v11, :cond_3a

    goto :goto_9c

    .line 527
    :cond_3a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Ljava/io/IOException;

    iput-object v9, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    .line 528
    iget p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    add-int/lit8 v10, p1, 0x1

    iput v10, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    .line 529
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;

    .line 530
    invoke-interface/range {v3 .. v10}, Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;->onLoadError(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    .line 531
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$300(Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-ne v0, v11, :cond_5b

    .line 532
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->access$202(Lio/bidmachine/media3/exoplayer/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    .line 533
    :cond_5b
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$300(Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-eq v0, v2, :cond_9c

    .line 534
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$300(Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;)I

    move-result v0

    if-ne v0, v1, :cond_69

    .line 535
    iput v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    .line 538
    :cond_69
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$400(Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7b

    .line 539
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->access$400(Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;)J

    move-result-wide v0

    goto :goto_7f

    .line 540
    :cond_7b
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->getRetryDelayMillis()J

    move-result-wide v0

    .line 537
    :goto_7f
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->start(J)V

    return-void

    .line 519
    :cond_83
    :try_start_83
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;

    invoke-interface/range {v3 .. v8}, Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;->onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    :try_end_88
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_88} :catch_89

    return-void

    :catch_89
    move-exception v0

    move-object p1, v0

    .line 522
    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    new-instance v1, Lio/bidmachine/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->access$202(Lio/bidmachine/media3/exoplayer/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    :cond_9c
    :goto_9c
    return-void

    .line 506
    :cond_9d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public maybeThrowError(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->currentError:Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->errorCount:I

    if-gt v1, p1, :cond_9

    goto :goto_a

    .line 394
    :cond_9
    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public run()V
    .registers 5

    const/4 v0, 0x3

    .line 446
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_2} :catch_36
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_2} :catch_34

    .line 447
    :try_start_2
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->canceled:Z

    .line 448
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 449
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_55

    if-nez v1, :cond_41

    .line 451
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2b} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_2b} :catch_36
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_2b} :catch_34

    .line 453
    :try_start_2b
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->loadable:Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;->load()V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_3c

    .line 455
    :try_start_30
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    goto :goto_41

    :catch_34
    move-exception v0

    goto :goto_58

    :catch_36
    move-exception v1

    goto :goto_6c

    :catch_38
    move-exception v1

    goto :goto_84

    :catch_3a
    move-exception v1

    goto :goto_9c

    :catchall_3c
    move-exception v1

    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    .line 456
    throw v1

    .line 458
    :cond_41
    :goto_41
    monitor-enter p0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_42} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_42} :catch_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_30 .. :try_end_42} :catch_36
    .catch Ljava/lang/Error; {:try_start_30 .. :try_end_42} :catch_34

    const/4 v1, 0x0

    .line 459
    :try_start_43
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->executorThread:Ljava/lang/Thread;

    .line 461
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 462
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_52

    .line 463
    :try_start_49
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_a7

    const/4 v1, 0x2

    .line 464
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_51} :catch_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_49 .. :try_end_51} :catch_36
    .catch Ljava/lang/Error; {:try_start_49 .. :try_end_51} :catch_34

    return-void

    :catchall_52
    move-exception v1

    .line 462
    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v1
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_54 .. :try_end_55} :catch_36
    .catch Ljava/lang/Error; {:try_start_54 .. :try_end_55} :catch_34

    :catchall_55
    move-exception v1

    .line 449
    :try_start_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw v1
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_58} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_58} :catch_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_57 .. :try_end_58} :catch_36
    .catch Ljava/lang/Error; {:try_start_57 .. :try_end_58} :catch_34

    .line 488
    :goto_58
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v1, :cond_6b

    .line 489
    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x4

    .line 490
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 492
    :cond_6b
    throw v0

    .line 480
    :goto_6c
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_a7

    .line 481
    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v2, v3, v1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    new-instance v2, Lio/bidmachine/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a7

    .line 472
    :goto_84
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_a7

    .line 473
    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v2, v3, v1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    new-instance v2, Lio/bidmachine/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a7

    .line 467
    :goto_9c
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->released:Z

    if-nez v2, :cond_a7

    .line 468
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_a7
    :goto_a7
    return-void
.end method

.method public start(J)V
    .registers 7

    .line 399
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->access$100(Lio/bidmachine/media3/exoplayer/upstream/Loader;)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 400
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->this$0:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-static {v0, p0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->access$102(Lio/bidmachine/media3/exoplayer/upstream/Loader;Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1e

    .line 402
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 404
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadTask;->execute()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.Loader.Loadable (io.bidmachine.media3.exoplayer.upstream.Loader$Loadable)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Loadable"
.end annotation


# virtual methods
.method public abstract cancelLoad()V
.end method

.method public abstract load()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.Loader.ReleaseCallback (io.bidmachine.media3.exoplayer.upstream.Loader$ReleaseCallback)
.class public interface abstract Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReleaseCallback"
.end annotation


# virtual methods
.method public abstract onLoaderReleased()V
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.Loader.ReleaseTask (io.bidmachine.media3.exoplayer.upstream.Loader$ReleaseTask)
.class public final Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseTask;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReleaseTask"
.end annotation


# instance fields
.field public final callback:Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;)V
    .registers 2

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseTask;->callback:Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 576
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseTask;->callback:Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader$ReleaseCallback;->onLoaderReleased()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.Loader.UnexpectedLoaderException (io.bidmachine.media3.exoplayer.upstream.Loader$UnexpectedLoaderException)
.class public final Lio/bidmachine/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;
.super Ljava/io/IOException;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnexpectedLoaderException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 5

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    :cond_31
    const-string v1, ""

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.upstream.Loader$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.upstream.Loader$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/upstream/Loader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
