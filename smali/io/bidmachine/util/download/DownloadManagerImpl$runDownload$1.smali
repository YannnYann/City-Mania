###### Class io.bidmachine.util.download.DownloadManagerImpl$runDownload$1 (io.bidmachine.util.download.DownloadManagerImpl$runDownload$1)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;->runDownload-Q2Q30fc(Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.download.DownloadManagerImpl$runDownload$1"
    f = "DownloadManagerImpl.kt"
    l = {
        0x76,
        0x78
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $downloadKey:Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;

.field public final synthetic $outputFile:Ljava/io/File;

.field public final synthetic $timeout:Lkotlin/time/Duration;

.field public final synthetic $url:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/download/DownloadManagerImpl;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/download/DownloadManagerImpl;Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/download/DownloadManagerImpl;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/time/Duration;",
            "Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    iput-object p2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$url:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$outputFile:Ljava/io/File;

    iput-object p4, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$timeout:Lkotlin/time/Duration;

    iput-object p5, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$downloadKey:Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    new-instance v0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    iget-object v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$url:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$outputFile:Ljava/io/File;

    iget-object v4, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$timeout:Lkotlin/time/Duration;

    iget-object v5, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$downloadKey:Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl;Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lio/bidmachine/util/download/DownloadManager$DownloadData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 117
    iget v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    if-eq v1, v3, :cond_20

    if-ne v1, v2, :cond_18

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_47

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_32

    :cond_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    iget-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    iput v3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->label:I

    invoke-virtual {p1, p0}, Lio/bidmachine/util/download/DownloadManagerImpl;->ensureCleanupCompleted$bidmachine_android_sdk_bd_3_8_0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    goto :goto_46

    .line 120
    :cond_32
    :goto_32
    iget-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-static {p1}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getContentFetcher(Lio/bidmachine/util/download/DownloadManagerImpl;)Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$url:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$outputFile:Ljava/io/File;

    iget-object v4, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$timeout:Lkotlin/time/Duration;

    iput v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->label:I

    invoke-interface {p1, v1, v3, v4, p0}, Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;->get-WS52aQU(Ljava/lang/String;Ljava/io/File;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_47

    :goto_46
    return-object v0

    .line 122
    :cond_47
    :goto_47
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x0

    goto :goto_50

    :cond_4f
    move-object v0, p1

    :goto_50
    check-cast v0, Lio/bidmachine/util/download/DownloadManager$DownloadData;

    .line 123
    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-static {v1}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getActiveDownloadsLock$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    iget-object v3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$downloadKey:Lio/bidmachine/util/download/DownloadManagerImpl$DownloadKey;

    monitor-enter v1

    .line 124
    :try_start_5d
    invoke-static {v2}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getActiveDownloads$p(Lio/bidmachine/util/download/DownloadManagerImpl;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/util/download/DownloadManager$DownloadTask;
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_9d

    .line 123
    monitor-exit v1

    if-eqz v0, :cond_6f

    .line 127
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_98

    .line 129
    :cond_6f
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to download content from url ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$runDownload$1;->$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_98
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    :catchall_9d
    move-exception p1

    .line 123
    monitor-exit v1

    throw p1
.end method
