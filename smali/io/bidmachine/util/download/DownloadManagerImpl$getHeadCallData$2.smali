###### Class io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$2 (io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$2)
.class public final Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/util/download/DownloadManagerImpl;->getHeadCallData-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "io.bidmachine.util.download.DownloadManagerImpl$getHeadCallData$2"
    f = "DownloadManagerImpl.kt"
    l = {
        0x4d,
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $timeout:Lkotlin/time/Duration;

.field public final synthetic $url:Ljava/lang/String;

.field public label:I

.field public final synthetic this$0:Lio/bidmachine/util/download/DownloadManagerImpl;


# direct methods
.method public constructor <init>(Lio/bidmachine/util/download/DownloadManagerImpl;Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/download/DownloadManagerImpl;",
            "Ljava/lang/String;",
            "Lkotlin/time/Duration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    iput-object p2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->$url:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->$timeout:Lkotlin/time/Duration;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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
    new-instance p1, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;

    iget-object v0, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->$url:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->$timeout:Lkotlin/time/Duration;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;-><init>(Lio/bidmachine/util/download/DownloadManagerImpl;Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 76
    iget v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    if-eq v1, v3, :cond_20

    if-ne v1, v2, :cond_18

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_45

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

    .line 77
    iget-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    iput v3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->label:I

    invoke-virtual {p1, p0}, Lio/bidmachine/util/download/DownloadManagerImpl;->ensureCleanupCompleted$bidmachine_android_sdk_bd_3_8_0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_32

    goto :goto_44

    .line 78
    :cond_32
    :goto_32
    iget-object p1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->this$0:Lio/bidmachine/util/download/DownloadManagerImpl;

    invoke-static {p1}, Lio/bidmachine/util/download/DownloadManagerImpl;->access$getContentFetcher(Lio/bidmachine/util/download/DownloadManagerImpl;)Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->$url:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->$timeout:Lkotlin/time/Duration;

    iput v2, p0, Lio/bidmachine/util/download/DownloadManagerImpl$getHeadCallData$2;->label:I

    invoke-interface {p1, v1, v3, p0}, Lio/bidmachine/util/download/DownloadManagerImpl$ContentFetcher;->head-2Ivn440(Ljava/lang/String;Lkotlin/time/Duration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_45

    :goto_44
    return-object v0

    :cond_45
    :goto_45
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method
