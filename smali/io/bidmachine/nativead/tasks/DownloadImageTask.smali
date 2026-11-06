###### Class io.bidmachine.nativead.tasks.DownloadImageTask (io.bidmachine.nativead.tasks.DownloadImageTask)
.class public final Lio/bidmachine/nativead/tasks/DownloadImageTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;
    }
.end annotation


# instance fields
.field public final assetsHolder:Ljava/lang/Object;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final dispatchers:Lio/bidmachine/util/SdkDispatchers;

.field public final listener:Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

.field public final repository:Lio/bidmachine/rendering/Repository;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;)V
    .registers 7

    const-string v0, "assetsHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->assetsHolder:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->repository:Lio/bidmachine/rendering/Repository;

    .line 4
    iput-object p3, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->listener:Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    .line 5
    iput-object p4, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->url:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 7
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-virtual {p5}, Lio/bidmachine/util/SdkDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_a

    .line 8
    sget-object p5, Lio/bidmachine/util/SdkDispatchers;->Companion:Lio/bidmachine/util/SdkDispatchers$Companion;

    invoke-virtual {p5}, Lio/bidmachine/util/SdkDispatchers$Companion;->getDefault()Lio/bidmachine/util/SdkDispatchers;

    move-result-object p5

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/nativead/tasks/DownloadImageTask;-><init>(Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;)V

    return-void
.end method

.method public static final synthetic access$getDispatchers$p(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/util/SdkDispatchers;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->listener:Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    return-object p0
.end method

.method public static final synthetic access$sendFail(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendFail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sendPathSuccess(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendPathSuccess(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;

    iget v1, v0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->url:Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/core/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_65

    .line 3
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid http url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_65
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->repository:Lio/bidmachine/rendering/Repository;

    .line 6
    new-instance v2, Lio/bidmachine/rendering/model/UrlMediaSource;

    iget-object v4, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->url:Ljava/lang/String;

    sget-object v5, Lio/bidmachine/rendering/model/MediaSource$DeliveryType;->PRELOAD:Lio/bidmachine/rendering/model/MediaSource$DeliveryType;

    invoke-direct {v2, v4, v5}, Lio/bidmachine/rendering/model/UrlMediaSource;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/model/MediaSource$DeliveryType;)V

    .line 7
    iget-object v4, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->assetsHolder:Ljava/lang/Object;

    .line 8
    iput v3, v0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;->c:I

    invoke-interface {p1, v2, v4, v0}, Lio/bidmachine/rendering/Repository;->getImageUri-0E7RQCE(Lio/bidmachine/rendering/model/UrlMediaSource;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7b

    return-object v1

    :cond_7b
    return-object p1
.end method

.method public run()V
    .registers 9

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 11
    new-instance v2, Lio/bidmachine/nativead/tasks/DownloadImageTask$c;

    invoke-direct {v2, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask$c;-><init>(Ljava/util/concurrent/CountDownLatch;)V

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
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V

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

.method public final sendPathSuccess(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask;->dispatchers:Lio/bidmachine/util/SdkDispatchers;

    invoke-virtual {v0}, Lio/bidmachine/util/SdkDispatchers;->getMain()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_17

    return-object p1

    :cond_17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.nativead.tasks.DownloadImageTask.OnCacheImageListener (io.bidmachine.nativead.tasks.DownloadImageTask$OnCacheImageListener)
.class public interface abstract Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/tasks/DownloadImageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCacheImageListener"
.end annotation


# virtual methods
.method public abstract onFail(Lio/bidmachine/nativead/tasks/DownloadImageTask;)V
.end method

.method public abstract onPathSuccess(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/net/Uri;)V
.end method

###### Class io.bidmachine.nativead.tasks.DownloadImageTask.a (io.bidmachine.nativead.tasks.DownloadImageTask$a)
.class public final Lio/bidmachine/nativead/tasks/DownloadImageTask$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadImageTask;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

.field public c:I


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;->a:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;->c:I

    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$a;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-virtual {p1, p0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

###### Class io.bidmachine.nativead.tasks.DownloadImageTask.b (io.bidmachine.nativead.tasks.DownloadImageTask$b)
.class public final Lio/bidmachine/nativead/tasks/DownloadImageTask$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadImageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/nativead/tasks/DownloadImageTask;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 0
    new-instance p1, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->a:I

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

    goto :goto_5a

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_40

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$getDispatchers$p(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/util/SdkDispatchers;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/util/SdkDispatchers;->getIo()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;

    iget-object v5, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_40

    goto :goto_59

    .line 3
    :cond_40
    :goto_40
    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_4f

    .line 8
    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    iput v3, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->a:I

    invoke-static {v1, p1, p0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$sendPathSuccess(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5a

    goto :goto_59

    .line 10
    :cond_4f
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    iput v2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->a:I

    invoke-static {p1, p0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$sendFail(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5a

    :goto_59
    return-object v0

    .line 12
    :cond_5a
    :goto_5a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.nativead.tasks.DownloadImageTask.b.a (io.bidmachine.nativead.tasks.DownloadImageTask$b$a)
.class public final Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadImageTask$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/nativead/tasks/DownloadImageTask;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 0
    new-instance p1, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;->a:I

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
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    iput v2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$b$a;->a:I

    invoke-virtual {p1, p0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

###### Class io.bidmachine.nativead.tasks.DownloadImageTask.c (io.bidmachine.nativead.tasks.DownloadImageTask$c)
.class public final Lio/bidmachine/nativead/tasks/DownloadImageTask$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadImageTask;->run()V
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
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$c;->a:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$c;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$c;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.nativead.tasks.DownloadImageTask.d (io.bidmachine.nativead.tasks.DownloadImageTask$d)
.class public final Lio/bidmachine/nativead/tasks/DownloadImageTask$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendFail(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/nativead/tasks/DownloadImageTask;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 0
    new-instance p1, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;->a:I

    if-nez v0, :cond_18

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$getListener$p(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$d;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-interface {p1, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;->onFail(Lio/bidmachine/nativead/tasks/DownloadImageTask;)V

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

###### Class io.bidmachine.nativead.tasks.DownloadImageTask.e (io.bidmachine.nativead.tasks.DownloadImageTask$e)
.class public final Lio/bidmachine/nativead/tasks/DownloadImageTask$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadImageTask;->sendPathSuccess(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    iput-object p2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->c:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->c:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;-><init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->a:I

    if-nez v0, :cond_1a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$getListener$p(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->b:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$e;->c:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;->onPathSuccess(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/net/Uri;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
