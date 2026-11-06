###### Class io.bidmachine.util.cache.MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1 (io.bidmachine.util.cache.MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1)
.class public final Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaFileCacheManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lio/bidmachine/util/download/DownloadManager$CallData;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.bidmachine.util.cache.MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1"
    f = "MediaFileCacheManager.kt"
    l = {
        0x12e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $headRequestTimeout:J

.field public final synthetic $mediaUrl:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/cache/MediaFileCacheManager;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iput-object p2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->$mediaUrl:Ljava/lang/String;

    iput-wide p3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->$headRequestTimeout:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 9
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
    new-instance v0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->$mediaUrl:Ljava/lang/String;

    iget-wide v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->$headRequestTimeout:J

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;-><init>(Lio/bidmachine/util/cache/MediaFileCacheManager;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lio/bidmachine/util/download/DownloadManager$CallData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 302
    iget v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_37

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->this$0:Lio/bidmachine/util/cache/MediaFileCacheManager;

    invoke-static {p1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->access$getDownloadManager$p(Lio/bidmachine/util/cache/MediaFileCacheManager;)Lio/bidmachine/util/download/DownloadManager;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->$mediaUrl:Ljava/lang/String;

    iget-wide v3, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->$headRequestTimeout:J

    invoke-static {v3, v4}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v3

    iput v2, p0, Lio/bidmachine/util/cache/MediaFileCacheManager$pickRemoteMediaFile$2$remoteMediaFileInfoList$1$1;->label:I

    invoke-interface {p1, v1, v3, p0}, Lio/bidmachine/util/download/DownloadManager;->getHeadCallData-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_37

    return-object v0

    :cond_37
    :goto_37
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
