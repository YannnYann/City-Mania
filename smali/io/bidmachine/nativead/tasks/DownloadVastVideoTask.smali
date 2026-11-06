###### Class io.bidmachine.nativead.tasks.DownloadVastVideoTask (io.bidmachine.nativead.tasks.DownloadVastVideoTask)
.class public final Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;
    }
.end annotation


# instance fields
.field public final assetsHolder:Ljava/lang/Object;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final dispatchers:Lio/bidmachine/util/SdkDispatchers;

.field public final listener:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

.field public final repository:Lio/bidmachine/rendering/Repository;

.field public final videoTag:Ljava/lang/String;

.field public final weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTag"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->assetsHolder:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->repository:Lio/bidmachine/rendering/Repository;

    .line 4
    iput-object p4, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->listener:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

    .line 5
    iput-object p5, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->videoTag:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 7
    invoke-static {p2, p3, p2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-virtual {p6}, Lio/bidmachine/util/SdkDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    invoke-interface {p2, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->weakContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_a

    .line 9
    sget-object p6, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {p6}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object p6

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;-><init>(Landroid/content/Context;Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;)V

    return-void
.end method

.method public static final synthetic access$getAssetsHolder$p(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->assetsHolder:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getDispatchers$p(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/util/SdkDispatchers;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->listener:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/rendering/Repository;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->repository:Lio/bidmachine/rendering/Repository;

    return-object p0
.end method

.method public static final synthetic access$getVideoUrl-d1pmJ48(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->getVideoUrl-d1pmJ48()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendFail(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->sendFail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendSuccess(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->sendSuccess(Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Landroid/net/Uri;",
            "+",
            "Lio/bidmachine/iab/vast/VastRequest;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;

    iget v1, v0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {p1}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v2, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;->c:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_49

    return-object v1

    :cond_49
    :goto_49
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getVideoUrl-d1pmJ48()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1c

    .line 3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Context is detached"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1c
    :try_start_1c
    invoke-static {}, Lio/bidmachine/iab/vast/VastRequest;->newBuilder()Lio/bidmachine/iab/vast/VastRequest$Builder;

    move-result-object v1

    .line 7
    sget-object v2, Lio/bidmachine/iab/CacheControl;->Stream:Lio/bidmachine/iab/CacheControl;

    invoke-virtual {v1, v2}, Lio/bidmachine/iab/vast/VastRequest$Builder;->setCacheControl(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/vast/VastRequest$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/VastRequest$Builder;->build()Lio/bidmachine/iab/vast/VastRequest;

    move-result-object v1

    const-string v2, "newBuilder()\n           \u2026\n                .build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->videoTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lio/bidmachine/iab/vast/VastRequest;->loadVideoWithDataSync(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/iab/vast/VastRequestListener;)V

    .line 10
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/VastRequest;->getVastAd()Lio/bidmachine/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lio/bidmachine/iab/vast/tags/MediaFileTag;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_48

    :catch_46
    move-exception v0

    goto :goto_6c

    .line 11
    :cond_48
    :goto_48
    invoke-static {v3}, Lio/bidmachine/util/UtilsKt;->notEmptyOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 13
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 15
    :cond_5a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Vast video url is empty"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_6b} :catch_46

    return-object v0

    .line 18
    :goto_6c
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    .line 19
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 9

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 11
    new-instance v2, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$c;

    invoke-direct {v2, v0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$c;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 14
    :try_start_1e
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_23

    :catchall_23
    return-void
.end method

.method public final sendFail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final sendSuccess(Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lio/bidmachine/iab/vast/VastRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_17

    return-object p1

    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.nativead.tasks.DownloadVastVideoTask.OnLoadedListener (io.bidmachine.nativead.tasks.DownloadVastVideoTask$OnLoadedListener)
.class public interface abstract Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadedListener"
.end annotation


# virtual methods
.method public abstract onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;)V
.end method

.method public abstract onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)V
.end method

###### Class io.bidmachine.nativead.tasks.DownloadVastVideoTask.a (io.bidmachine.nativead.tasks.DownloadVastVideoTask$a)
.class public final Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;->c:I

    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$a;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-virtual {p1, p0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_16

    return-object p1

    :cond_16
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.nativead.tasks.DownloadVastVideoTask.b (io.bidmachine.nativead.tasks.DownloadVastVideoTask$b)
.class public final Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 0
    new-instance p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_22

    if-eq v1, v4, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    goto :goto_1a

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_66

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_40

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$getDispatchers$p(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/util/SdkDispatchers;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;

    iget-object v5, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_40

    goto :goto_65

    .line 3
    :cond_40
    :goto_40
    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_5b

    .line 8
    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/iab/vast/VastRequest;

    iput v3, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->a:I

    invoke-static {v1, v2, p1, p0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$sendSuccess(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_66

    goto :goto_65

    .line 10
    :cond_5b
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    iput v2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->a:I

    invoke-static {p1, p0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$sendFail(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_66

    :goto_65
    return-object v0

    .line 12
    :cond_66
    :goto_66
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.nativead.tasks.DownloadVastVideoTask.b.a (io.bidmachine.nativead.tasks.DownloadVastVideoTask$b$a)
.class public final Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 0
    new-instance p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2b

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    iput v2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$b$a;->a:I

    invoke-virtual {p1, p0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    .line 3
    :cond_2b
    :goto_2b
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 p1, 0x0

    :cond_32
    return-object p1
.end method

###### Class io.bidmachine.nativead.tasks.DownloadVastVideoTask.c (io.bidmachine.nativead.tasks.DownloadVastVideoTask$c)
.class public final Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$c;->a:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$c;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$c;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.nativead.tasks.DownloadVastVideoTask.d (io.bidmachine.nativead.tasks.DownloadVastVideoTask$d)
.class public final Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->sendFail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 0
    new-instance p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;->a:I

    if-nez v0, :cond_18

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$getListener$p(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$d;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-interface {p1, v0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;->onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.nativead.tasks.DownloadVastVideoTask.e (io.bidmachine.nativead.tasks.DownloadVastVideoTask$e)
.class public final Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->sendSuccess(Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Lio/bidmachine/iab/vast/VastRequest;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    iput-object p2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->c:Landroid/net/Uri;

    iput-object p3, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->d:Lio/bidmachine/iab/vast/VastRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->c:Landroid/net/Uri;

    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->d:Lio/bidmachine/iab/vast/VastRequest;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->a:I

    if-nez v0, :cond_1c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$getListener$p(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->b:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    .line 4
    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->c:Landroid/net/Uri;

    .line 5
    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$e;->d:Lio/bidmachine/iab/vast/VastRequest;

    .line 6
    invoke-interface {p1, v0, v1, v2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;->onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lio/bidmachine/iab/vast/VastRequest;)V

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 12
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
