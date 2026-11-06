###### Class io.bidmachine.rendering.internal.state.b (io.bidmachine.rendering.internal.state.b)
.class public final Lio/bidmachine/rendering/internal/state/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Lio/bidmachine/rendering/internal/state/a$b;


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/state/a;

.field public final b:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/state/a;Lio/bidmachine/rendering/internal/j;)V
    .registers 6

    const-string v0, "adState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatchers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/b;->a:Lio/bidmachine/rendering/internal/state/a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/j;->e()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    invoke-interface {v2, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/rendering/internal/state/b;->b:Lkotlin/coroutines/CoroutineContext;

    .line 9
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/state/a;->l()Z

    move-result p2

    if-eqz p2, :cond_29

    .line 10
    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void

    .line 12
    :cond_29
    invoke-interface {p1, p0}, Lio/bidmachine/rendering/internal/state/a;->a(Lio/bidmachine/rendering/internal/state/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/rendering/internal/state/a;Lio/bidmachine/rendering/internal/state/a$a;)V
    .registers 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/rendering/internal/state/a$a;->p:Lio/bidmachine/rendering/internal/state/a$a;

    if-ne p2, v0, :cond_1e

    iget-object p2, p0, Lio/bidmachine/rendering/internal/state/b;->a:Lio/bidmachine/rendering/internal/state/a;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    invoke-interface {p1, p0}, Lio/bidmachine/rendering/internal/state/a;->b(Lio/bidmachine/rendering/internal/state/a$b;)V

    :cond_1e
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/b;->b:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method
