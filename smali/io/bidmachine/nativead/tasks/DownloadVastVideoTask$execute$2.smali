###### Class io.bidmachine.nativead.tasks.DownloadVastVideoTask$execute$2 (io.bidmachine.nativead.tasks.DownloadVastVideoTask$execute$2)
.class public final Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->c:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 0
    new-instance p1, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->c:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;-><init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->b:I

    const-string v2, "Unknown error"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_24

    if-ne v1, v4, :cond_1c

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->a:Ljava/lang/Object;

    check-cast v0, Lkotlin/Pair;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_7d

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->c:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$getVideoUrl-d1pmJ48(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    move-object v1, v3

    goto :goto_36

    :cond_35
    move-object v1, p1

    :goto_36
    check-cast v1, Lkotlin/Pair;

    if-nez v1, :cond_4e

    .line 5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_45

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_45
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_aa

    .line 7
    :cond_4e
    new-instance v8, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2$emptyListener$1;

    invoke-direct {v8}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2$emptyListener$1;-><init>()V

    .line 8
    new-instance v5, Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    .line 9
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->c:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$getAssetsHolder$p(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Ljava/lang/Object;

    move-result-object v6

    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->c:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$getRepository$p(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/rendering/Repository;

    move-result-object v7

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->c:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$getDispatchers$p(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/util/SdkDispatchers;

    move-result-object v10

    .line 10
    invoke-direct/range {v5 .. v10}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;-><init>(Ljava/lang/Object;Lio/bidmachine/rendering/Repository;Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;Ljava/lang/String;Lio/bidmachine/util/SdkDispatchers;)V

    .line 12
    iput-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->a:Ljava/lang/Object;

    iput v4, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->b:I

    invoke-virtual {v5, p0}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->execute-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7c

    return-object v0

    :cond_7c
    move-object v0, v1

    .line 13
    :goto_7d
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    goto :goto_85

    :cond_84
    move-object v3, p1

    :goto_85
    check-cast v3, Landroid/net/Uri;

    if-eqz v3, :cond_97

    .line 15
    new-instance p1, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_aa

    .line 17
    :cond_97
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_a2

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_a2
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_aa
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.nativead.tasks.DownloadVastVideoTask$execute$2$emptyListener$1 (io.bidmachine.nativead.tasks.DownloadVastVideoTask$execute$2$emptyListener$1)
.class public final Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2$emptyListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
