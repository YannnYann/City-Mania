###### Class io.bidmachine.analytics.internal.z.b (io.bidmachine.analytics.internal.z.b)
.class public final Lio/bidmachine/analytics/internal/z/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/z/b$b;,
        Lio/bidmachine/analytics/internal/z/b$a;
    }
.end annotation


# static fields
.field public static final g:Lio/bidmachine/analytics/internal/z/b$a;


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/z/b$b;

.field private final b:Lio/bidmachine/analytics/internal/H/c;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlinx/coroutines/CoroutineScope;

.field private e:Lkotlinx/coroutines/Job;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/z/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/z/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/z/b;->g:Lio/bidmachine/analytics/internal/z/b$a;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/analytics/internal/I/f;Lio/bidmachine/analytics/internal/z/b$b;Lio/bidmachine/analytics/internal/H/c;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/b;->a:Lio/bidmachine/analytics/internal/z/b$b;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/z/b;->b:Lio/bidmachine/analytics/internal/H/c;

    .line 7
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/z/b$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object p3

    invoke-virtual {p3}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/bidmachine/analytics/internal/z/b;->c:Ljava/lang/String;

    .line 10
    new-instance p3, Lkotlinx/coroutines/CoroutineName;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnalyticsMonitor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/z/b$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p2, v0, p2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-virtual {p3, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/I/f;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/z/b;)Lio/bidmachine/analytics/internal/z/b$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/z/b;->a:Lio/bidmachine/analytics/internal/z/b$b;

    return-object p0
.end method

.method private final a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    instance-of v0, p2, Lio/bidmachine/analytics/internal/z/b$g;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/analytics/internal/z/b$g;

    iget v1, v0, Lio/bidmachine/analytics/internal/z/b$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/z/b$g;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/analytics/internal/z/b$g;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/analytics/internal/z/b$g;-><init>(Lio/bidmachine/analytics/internal/z/b;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/analytics/internal/z/b$g;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 18
    iget v2, v0, Lio/bidmachine/analytics/internal/z/b$g;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3b

    if-ne v2, v5, :cond_33

    iget-object p1, v0, Lio/bidmachine/analytics/internal/z/b$g;->b:Ljava/lang/Object;

    iget-object v0, v0, Lio/bidmachine/analytics/internal/z/b$g;->a:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/analytics/internal/z/b;

    :try_start_2d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_87

    :catchall_31
    move-exception p1

    goto :goto_99

    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_3e
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 19
    iget-object p2, p0, Lio/bidmachine/analytics/internal/z/b;->b:Lio/bidmachine/analytics/internal/H/c;

    .line 20
    iget-object v2, p0, Lio/bidmachine/analytics/internal/z/b;->a:Lio/bidmachine/analytics/internal/z/b$b;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/z/b$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object v2

    .line 21
    iget-object v6, p0, Lio/bidmachine/analytics/internal/z/b;->a:Lio/bidmachine/analytics/internal/z/b$b;

    invoke-virtual {v6}, Lio/bidmachine/analytics/internal/z/b$b;->c()Ljava/lang/String;

    move-result-object v6

    .line 22
    iget-object v7, p0, Lio/bidmachine/analytics/internal/z/b;->a:Lio/bidmachine/analytics/internal/z/b$b;

    invoke-virtual {v7}, Lio/bidmachine/analytics/internal/z/b$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object v7

    invoke-virtual {v7}, Lio/bidmachine/analytics/MonitorConfig;->getBatchSize()I

    move-result v7

    .line 23
    invoke-interface {p2, v2, v6, v7}, Lio/bidmachine/analytics/internal/H/c;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p2

    .line 27
    invoke-static {p2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    move-object v2, p2

    check-cast v2, Ljava/util/List;

    .line 28
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_82

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, p1, :cond_82

    .line 29
    iput-object p0, v0, Lio/bidmachine/analytics/internal/z/b$g;->a:Ljava/lang/Object;

    iput-object p2, v0, Lio/bidmachine/analytics/internal/z/b$g;->b:Ljava/lang/Object;

    iput v5, v0, Lio/bidmachine/analytics/internal/z/b$g;->e:I

    invoke-direct {p0, v2, v0}, Lio/bidmachine/analytics/internal/z/b;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_85

    return-object v1

    .line 31
    :cond_82
    invoke-static {p0, v4, v5, v3}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;ZILjava/lang/Object;)V

    :cond_85
    move-object v0, p0

    move-object p1, p2

    .line 33
    :goto_87
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_90

    .line 34
    invoke-static {v0, v4, v5, v3}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;ZILjava/lang/Object;)V

    .line 35
    :cond_90
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 36
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_98
    .catchall {:try_start_3e .. :try_end_98} :catchall_31

    return-object p1

    :goto_99
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lio/bidmachine/analytics/internal/g/d;)Ljava/lang/Object;
    .registers 3

    .line 16
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 17
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b;->b:Lio/bidmachine/analytics/internal/H/c;

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/H/c;->a(Lio/bidmachine/analytics/internal/g/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object p1

    :catchall_9
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/z/b;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/b;->a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/z/b;Lio/bidmachine/analytics/internal/g/d;)Ljava/lang/Object;
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/g/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/z/b;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/b;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14

    instance-of v0, p2, Lio/bidmachine/analytics/internal/z/b$e;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/analytics/internal/z/b$e;

    iget v1, v0, Lio/bidmachine/analytics/internal/z/b$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/z/b$e;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/analytics/internal/z/b$e;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/analytics/internal/z/b$e;-><init>(Lio/bidmachine/analytics/internal/z/b;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/analytics/internal/z/b$e;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 37
    iget v2, v0, Lio/bidmachine/analytics/internal/z/b$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p1, v0, Lio/bidmachine/analytics/internal/z/b$e;->b:Ljava/lang/Object;

    iget-object v0, v0, Lio/bidmachine/analytics/internal/z/b$e;->a:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/analytics/internal/z/b;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_94

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p2, p0, Lio/bidmachine/analytics/internal/z/b;->b:Lio/bidmachine/analytics/internal/H/c;

    invoke-interface {p2, p1}, Lio/bidmachine/analytics/internal/H/c;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    move-object v2, p2

    check-cast v2, Lkotlin/Unit;

    .line 39
    iget-object v2, p0, Lio/bidmachine/analytics/internal/z/b;->a:Lio/bidmachine/analytics/internal/z/b$b;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/z/b$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/analytics/MonitorConfig;->getBatchSize()I

    move-result v2

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 93
    check-cast v4, Ljava/util/List;

    .line 94
    iget-object v5, p0, Lio/bidmachine/analytics/internal/z/b;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lio/bidmachine/analytics/internal/z/b$f;

    const/4 v6, 0x0

    invoke-direct {v8, p0, v4, v6}, Lio/bidmachine/analytics/internal/z/b$f;-><init>(Lio/bidmachine/analytics/internal/z/b;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v4

    .line 147
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 148
    :cond_85
    iput-object p0, v0, Lio/bidmachine/analytics/internal/z/b$e;->a:Ljava/lang/Object;

    iput-object p2, v0, Lio/bidmachine/analytics/internal/z/b$e;->b:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/analytics/internal/z/b$e;->e:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_92

    return-object v1

    :cond_92
    move-object v0, p0

    move-object p1, p2

    .line 149
    :goto_94
    invoke-direct {v0, v3}, Lio/bidmachine/analytics/internal/z/b;->a(Z)V

    move-object p2, p1

    goto :goto_9a

    :cond_99
    move-object v0, p0

    .line 150
    :goto_9a
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_a3

    .line 151
    invoke-direct {v0, v3}, Lio/bidmachine/analytics/internal/z/b;->a(Z)V

    .line 153
    :cond_a3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public static synthetic a(Lio/bidmachine/analytics/internal/z/b;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 154
    :cond_5
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/z/b;->a(Z)V

    return-void
.end method

.method private final a(Z)V
    .registers 10

    .line 155
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    :cond_9
    const/4 v0, 0x1

    if-nez p1, :cond_17

    .line 158
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b;->e:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_17

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p1

    if-ne p1, v0, :cond_17

    :goto_16
    return-void

    .line 161
    :cond_17
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b;->e:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 162
    :cond_1f
    iget-object v2, p0, Lio/bidmachine/analytics/internal/z/b;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lio/bidmachine/analytics/internal/z/b$d;

    invoke-direct {v5, p0, v1}, Lio/bidmachine/analytics/internal/z/b$d;-><init>(Lio/bidmachine/analytics/internal/z/b;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b;->e:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/analytics/internal/z/b;)Lio/bidmachine/analytics/internal/H/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/z/b;->b:Lio/bidmachine/analytics/internal/H/c;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 5
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_37

    .line 8
    :cond_b
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b;->b:Lio/bidmachine/analytics/internal/H/c;

    .line 9
    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b;->a:Lio/bidmachine/analytics/internal/z/b$b;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/z/b$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lio/bidmachine/analytics/internal/z/b;->a:Lio/bidmachine/analytics/internal/z/b$b;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/z/b$b;->c()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-interface {v0, v1, v2}, Lio/bidmachine/analytics/internal/H/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    check-cast v0, Ljava/util/List;

    .line 15
    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lio/bidmachine/analytics/internal/z/b$c;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v0, v2}, Lio/bidmachine/analytics/internal/z/b$c;-><init>(Lio/bidmachine/analytics/internal/z/b;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_37
    :goto_37
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lio/bidmachine/analytics/internal/g/d;)V
    .registers 9

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 6
    :cond_9
    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lio/bidmachine/analytics/internal/z/b$h;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lio/bidmachine/analytics/internal/z/b$h;-><init>(Lio/bidmachine/analytics/internal/z/b;Lio/bidmachine/analytics/internal/g/d;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class io.bidmachine.analytics.internal.z.b.a (io.bidmachine.analytics.internal.z.b$a)
.class public final Lio/bidmachine/analytics/internal/z/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/z/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/z/b$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.analytics.internal.z.b.C1159b (io.bidmachine.analytics.internal.z.b$b)
.class public final Lio/bidmachine/analytics/internal/z/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/z/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/MonitorConfig;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/explorestack/protobuf/Struct;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/MonitorConfig;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b$b;->a:Lio/bidmachine/analytics/MonitorConfig;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/b$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/z/b$b;->c:Lcom/explorestack/protobuf/Struct;

    return-void
.end method


# virtual methods
.method public final a()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b$b;->c:Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final b()Lio/bidmachine/analytics/MonitorConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b$b;->a:Lio/bidmachine/analytics/MonitorConfig;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b$b;->b:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.z.b.c (io.bidmachine.analytics.internal.z.b$c)
.class final Lio/bidmachine/analytics/internal/z/b$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/z/b;

.field final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/z/b;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b$c;->b:Lio/bidmachine/analytics/internal/z/b;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/b$c;->c:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/b$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/z/b$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/z/b$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/z/b$c;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b$c;->b:Lio/bidmachine/analytics/internal/z/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b$c;->c:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/analytics/internal/z/b$c;-><init>(Lio/bidmachine/analytics/internal/z/b;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/b$c;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/analytics/internal/z/b$c;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$c;->b:Lio/bidmachine/analytics/internal/z/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b$c;->c:Ljava/util/List;

    iput v2, p0, Lio/bidmachine/analytics/internal/z/b$c;->a:I

    invoke-static {p1, v1, p0}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    .line 3
    :cond_27
    :goto_27
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.z.b.d (io.bidmachine.analytics.internal.z.b$d)
.class final Lio/bidmachine/analytics/internal/z/b$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/z/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/z/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b$d;->b:Lio/bidmachine/analytics/internal/z/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/b$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/z/b$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/z/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/z/b$d;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b$d;->b:Lio/bidmachine/analytics/internal/z/b;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/analytics/internal/z/b$d;-><init>(Lio/bidmachine/analytics/internal/z/b;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/b$d;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/analytics/internal/z/b$d;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_23

    if-eq v1, v3, :cond_1f

    if-ne v1, v2, :cond_17

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_49

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$d;->b:Lio/bidmachine/analytics/internal/z/b;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;)Lio/bidmachine/analytics/internal/z/b$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/z/b$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/MonitorConfig;->getInterval()J

    move-result-wide v4

    iput v3, p0, Lio/bidmachine/analytics/internal/z/b$d;->a:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3d

    goto :goto_48

    .line 3
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$d;->b:Lio/bidmachine/analytics/internal/z/b;

    .line 4
    iput v2, p0, Lio/bidmachine/analytics/internal/z/b$d;->a:I

    const/4 v1, 0x0

    invoke-static {p1, v1, p0}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_49

    :goto_48
    return-object v0

    .line 5
    :cond_49
    :goto_49
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.z.b.e (io.bidmachine.analytics.internal.z.b$e)
.class final Lio/bidmachine/analytics/internal/z/b$e;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/b;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lio/bidmachine/analytics/internal/z/b;

.field e:I


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/z/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b$e;->d:Lio/bidmachine/analytics/internal/z/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b$e;->c:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/analytics/internal/z/b$e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/analytics/internal/z/b$e;->e:I

    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$e;->d:Lio/bidmachine/analytics/internal/z/b;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.z.b.f (io.bidmachine.analytics.internal.z.b$f)
.class final Lio/bidmachine/analytics/internal/z/b$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/b;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/z/b;

.field final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/z/b;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b$f;->b:Lio/bidmachine/analytics/internal/z/b;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/b$f;->c:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/b$f;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/z/b$f;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/z/b$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/z/b$f;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b$f;->b:Lio/bidmachine/analytics/internal/z/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b$f;->c:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/analytics/internal/z/b$f;-><init>(Lio/bidmachine/analytics/internal/z/b;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/b$f;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/analytics/internal/z/b$f;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_5a

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    new-instance v3, Lio/bidmachine/analytics/internal/B/a;

    .line 3
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$f;->b:Lio/bidmachine/analytics/internal/z/b;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;)Lio/bidmachine/analytics/internal/z/b$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/z/b$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/MonitorConfig;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$f;->b:Lio/bidmachine/analytics/internal/z/b;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;)Lio/bidmachine/analytics/internal/z/b$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/z/b$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$f;->b:Lio/bidmachine/analytics/internal/z/b;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;)Lio/bidmachine/analytics/internal/z/b$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/z/b$b;->a()Lcom/explorestack/protobuf/Struct;

    move-result-object v6

    .line 6
    iget-object v7, p0, Lio/bidmachine/analytics/internal/z/b$f;->c:Ljava/util/List;

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 7
    invoke-direct/range {v3 .. v10}, Lio/bidmachine/analytics/internal/B/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/I/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    iput v2, p0, Lio/bidmachine/analytics/internal/z/b$f;->a:I

    invoke-virtual {v3, p0}, Lio/bidmachine/analytics/internal/A/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5a

    return-object v0

    :cond_5a
    :goto_5a
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b$f;->b:Lio/bidmachine/analytics/internal/z/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b$f;->c:Ljava/util/List;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    move-object v2, p1

    check-cast v2, Lio/bidmachine/analytics/internal/B/a;

    .line 14
    invoke-static {v0}, Lio/bidmachine/analytics/internal/z/b;->b(Lio/bidmachine/analytics/internal/z/b;)Lio/bidmachine/analytics/internal/H/c;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/bidmachine/analytics/internal/H/c;->b(Ljava/util/List;)Ljava/lang/Object;

    .line 15
    :cond_6e
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b$f;->b:Lio/bidmachine/analytics/internal/z/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b$f;->c:Ljava/util/List;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7f

    .line 17
    invoke-static {v0}, Lio/bidmachine/analytics/internal/z/b;->b(Lio/bidmachine/analytics/internal/z/b;)Lio/bidmachine/analytics/internal/H/c;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/bidmachine/analytics/internal/H/c;->c(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    :cond_7f
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.z.b.g (io.bidmachine.analytics.internal.z.b$g)
.class final Lio/bidmachine/analytics/internal/z/b$g;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/b;->a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lio/bidmachine/analytics/internal/z/b;

.field e:I


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/z/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b$g;->d:Lio/bidmachine/analytics/internal/z/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b$g;->c:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/analytics/internal/z/b$g;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/analytics/internal/z/b$g;->e:I

    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$g;->d:Lio/bidmachine/analytics/internal/z/b;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    return-object p1

    :cond_17
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.z.b.h (io.bidmachine.analytics.internal.z.b$h)
.class final Lio/bidmachine/analytics/internal/z/b$h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/b;->b(Lio/bidmachine/analytics/internal/g/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/z/b;

.field final synthetic c:Lio/bidmachine/analytics/internal/g/d;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/z/b;Lio/bidmachine/analytics/internal/g/d;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/b$h;->b:Lio/bidmachine/analytics/internal/z/b;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/b$h;->c:Lio/bidmachine/analytics/internal/g/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/b$h;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/z/b$h;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/z/b$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/z/b$h;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/b$h;->b:Lio/bidmachine/analytics/internal/z/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b$h;->c:Lio/bidmachine/analytics/internal/g/d;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/analytics/internal/z/b$h;-><init>(Lio/bidmachine/analytics/internal/z/b;Lio/bidmachine/analytics/internal/g/d;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/b$h;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/analytics/internal/z/b$h;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_23

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5c

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_5c

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$h;->b:Lio/bidmachine/analytics/internal/z/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b$h;->c:Lio/bidmachine/analytics/internal/g/d;

    invoke-static {p1, v1}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;Lio/bidmachine/analytics/internal/g/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 3
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$h;->b:Lio/bidmachine/analytics/internal/z/b;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;)Lio/bidmachine/analytics/internal/z/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/z/b$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/MonitorConfig;->getBatchSize()I

    move-result v1

    iput v3, p0, Lio/bidmachine/analytics/internal/z/b$h;->a:I

    invoke-static {p1, v1, p0}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5c

    goto :goto_5b

    .line 5
    :cond_4b
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/b$h;->b:Lio/bidmachine/analytics/internal/z/b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/b$h;->c:Lio/bidmachine/analytics/internal/g/d;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput v2, p0, Lio/bidmachine/analytics/internal/z/b$h;->a:I

    invoke-static {p1, v1, p0}, Lio/bidmachine/analytics/internal/z/b;->a(Lio/bidmachine/analytics/internal/z/b;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5c

    :goto_5b
    return-object v0

    .line 7
    :cond_5c
    :goto_5c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
