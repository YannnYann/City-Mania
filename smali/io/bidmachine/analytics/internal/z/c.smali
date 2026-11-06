###### Class io.bidmachine.analytics.internal.z.c (io.bidmachine.analytics.internal.z.c)
.class public final Lio/bidmachine/analytics/internal/z/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/z/c$a;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/z/c$a;

.field private final b:Lio/bidmachine/analytics/internal/H/e;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/I/f;Lio/bidmachine/analytics/internal/z/c$a;Lio/bidmachine/analytics/internal/H/e;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/c;->a:Lio/bidmachine/analytics/internal/z/c$a;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/z/c;->b:Lio/bidmachine/analytics/internal/H/e;

    .line 7
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/z/c$a;->c()Lio/bidmachine/analytics/ReaderConfig;

    move-result-object p3

    invoke-virtual {p3}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/bidmachine/analytics/internal/z/c;->c:Ljava/lang/String;

    .line 10
    new-instance p3, Lkotlinx/coroutines/CoroutineName;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnalyticsMonitor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/z/c$a;->c()Lio/bidmachine/analytics/ReaderConfig;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

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

    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/c;->d:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/z/c;)Lio/bidmachine/analytics/internal/z/c$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/z/c;->a:Lio/bidmachine/analytics/internal/z/c$a;

    return-object p0
.end method

.method private final a(Lio/bidmachine/analytics/internal/g/e;)Ljava/lang/Object;
    .registers 15

    .line 158
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 159
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e;->b()Lio/bidmachine/analytics/internal/g/h;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 160
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c;->b:Lio/bidmachine/analytics/internal/H/e;

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/H/e;->a(Lio/bidmachine/analytics/internal/g/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_f
    move-exception v0

    move-object p1, v0

    goto :goto_6b

    .line 163
    :cond_12
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c;->b:Lio/bidmachine/analytics/internal/H/e;

    .line 164
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e;->e()Lio/bidmachine/analytics/internal/g/e$a;

    move-result-object v2

    .line 165
    invoke-interface {v0, v1, v2}, Lio/bidmachine/analytics/internal/H/e;->a(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/e$a;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v0, 0x0

    :cond_27
    check-cast v0, Lio/bidmachine/analytics/internal/g/e;

    if-nez v0, :cond_32

    .line 169
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c;->b:Lio/bidmachine/analytics/internal/H/e;

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/H/e;->a(Lio/bidmachine/analytics/internal/g/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 171
    :cond_32
    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/c;->a:Lio/bidmachine/analytics/internal/z/c$a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/z/c$a;->c()Lio/bidmachine/analytics/ReaderConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/ReaderConfig;->getUniqueOnly()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/g/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/g/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_50

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    move v10, v1

    goto :goto_52

    :cond_50
    :goto_50
    const/4 v1, 0x1

    goto :goto_4e

    .line 173
    :goto_52
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/g/e;->c()Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 174
    invoke-static/range {v2 .. v12}, Lio/bidmachine/analytics/internal/g/e;->a(Lio/bidmachine/analytics/internal/g/e;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lio/bidmachine/analytics/internal/g/e$a;Lio/bidmachine/analytics/internal/g/h;ZILjava/lang/Object;)Lio/bidmachine/analytics/internal/g/e;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c;->b:Lio/bidmachine/analytics/internal/H/e;

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/H/e;->b(Lio/bidmachine/analytics/internal/g/e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6a
    .catchall {:try_start_0 .. :try_end_6a} :catchall_f

    return-object p1

    .line 179
    :goto_6b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/z/c;Lio/bidmachine/analytics/internal/g/e;)Ljava/lang/Object;
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/g/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/z/c;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/c;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/z/c;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/c;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/z/c;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/c;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .registers 6

    .line 7
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 8
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c;->b:Lio/bidmachine/analytics/internal/H/e;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 78
    check-cast v2, Lio/bidmachine/analytics/internal/g/e;

    .line 79
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/g/e;->e()Lio/bidmachine/analytics/internal/g/e$a;

    move-result-object v2

    .line 149
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :catchall_27
    move-exception p1

    goto :goto_36

    .line 150
    :cond_29
    invoke-interface {v0, p1, v1}, Lio/bidmachine/analytics/internal/H/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_27

    return-object p1

    :goto_36
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    instance-of v0, p2, Lio/bidmachine/analytics/internal/z/c$b;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/analytics/internal/z/c$b;

    iget v1, v0, Lio/bidmachine/analytics/internal/z/c$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/z/c$b;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/analytics/internal/z/c$b;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/analytics/internal/z/c$b;-><init>(Lio/bidmachine/analytics/internal/z/c;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/analytics/internal/z/c$b;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 152
    iget v2, v0, Lio/bidmachine/analytics/internal/z/c$b;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v3, :cond_2d

    iget-object p1, v0, Lio/bidmachine/analytics/internal/z/c$b;->a:Ljava/lang/Object;

    :try_start_27
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_5a

    :catchall_2b
    move-exception p1

    goto :goto_63

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_38
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 153
    iget-object p2, p0, Lio/bidmachine/analytics/internal/z/c;->b:Lio/bidmachine/analytics/internal/H/e;

    invoke-interface {p2, p1}, Lio/bidmachine/analytics/internal/H/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5a

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    .line 154
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 155
    iput-object p1, v0, Lio/bidmachine/analytics/internal/z/c$b;->a:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/analytics/internal/z/c$b;->d:I

    invoke-direct {p0, p2, v0}, Lio/bidmachine/analytics/internal/z/c;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5a

    return-object v1

    .line 156
    :cond_5a
    :goto_5a
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 157
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_2b

    return-object p1

    :goto_63
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13

    instance-of v0, p2, Lio/bidmachine/analytics/internal/z/c$c;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/analytics/internal/z/c$c;

    iget v1, v0, Lio/bidmachine/analytics/internal/z/c$c;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/z/c$c;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/analytics/internal/z/c$c;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/analytics/internal/z/c$c;-><init>(Lio/bidmachine/analytics/internal/z/c;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/analytics/internal/z/c$c;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 180
    iget v2, v0, Lio/bidmachine/analytics/internal/z/c$c;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5e

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    iget-object p2, p0, Lio/bidmachine/analytics/internal/z/c;->b:Lio/bidmachine/analytics/internal/H/e;

    invoke-interface {p2, p1}, Lio/bidmachine/analytics/internal/H/e;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    move-object v2, p2

    check-cast v2, Lkotlin/Unit;

    .line 182
    iget-object v4, p0, Lio/bidmachine/analytics/internal/z/c;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lio/bidmachine/analytics/internal/z/c$d;

    const/4 v2, 0x0

    invoke-direct {v7, p0, p1, v2}, Lio/bidmachine/analytics/internal/z/c$d;-><init>(Lio/bidmachine/analytics/internal/z/c;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    .line 200
    iput-object p2, v0, Lio/bidmachine/analytics/internal/z/c$c;->a:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/analytics/internal/z/c$c;->d:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5e

    return-object v1

    .line 202
    :cond_5e
    :goto_5e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public static final synthetic b(Lio/bidmachine/analytics/internal/z/c;)Lio/bidmachine/analytics/internal/H/e;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/z/c;->b:Lio/bidmachine/analytics/internal/H/e;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .registers 9

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lio/bidmachine/analytics/internal/z/c$e;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, p2, v1}, Lio/bidmachine/analytics/internal/z/c$e;-><init>(Lio/bidmachine/analytics/internal/z/c;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class io.bidmachine.analytics.internal.z.c.a (io.bidmachine.analytics.internal.z.c$a)
.class public final Lio/bidmachine/analytics/internal/z/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/z/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/ReaderConfig;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/explorestack/protobuf/Struct;

.field private final d:Lio/bidmachine/analytics/internal/C/a$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/ReaderConfig;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Lio/bidmachine/analytics/internal/C/a$a;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/c$a;->a:Lio/bidmachine/analytics/ReaderConfig;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/c$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lio/bidmachine/analytics/internal/z/c$a;->c:Lcom/explorestack/protobuf/Struct;

    .line 5
    iput-object p4, p0, Lio/bidmachine/analytics/internal/z/c$a;->d:Lio/bidmachine/analytics/internal/C/a$a;

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/C/a$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c$a;->d:Lio/bidmachine/analytics/internal/C/a$a;

    return-object v0
.end method

.method public final b()Lcom/explorestack/protobuf/Struct;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c$a;->c:Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final c()Lio/bidmachine/analytics/ReaderConfig;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c$a;->a:Lio/bidmachine/analytics/ReaderConfig;

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.z.c.b (io.bidmachine.analytics.internal.z.c$b)
.class final Lio/bidmachine/analytics/internal/z/c$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/c;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lio/bidmachine/analytics/internal/z/c;

.field d:I


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/z/c;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/c$b;->c:Lio/bidmachine/analytics/internal/z/c;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/c$b;->b:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/analytics/internal/z/c$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/analytics/internal/z/c$b;->d:I

    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/c$b;->c:Lio/bidmachine/analytics/internal/z/c;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

###### Class io.bidmachine.analytics.internal.z.c.C1160c (io.bidmachine.analytics.internal.z.c$c)
.class final Lio/bidmachine/analytics/internal/z/c$c;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/c;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field synthetic b:Ljava/lang/Object;

.field final synthetic c:Lio/bidmachine/analytics/internal/z/c;

.field d:I


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/z/c;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/c$c;->c:Lio/bidmachine/analytics/internal/z/c;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/c$c;->b:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/analytics/internal/z/c$c;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/analytics/internal/z/c$c;->d:I

    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/c$c;->c:Lio/bidmachine/analytics/internal/z/c;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.z.c.d (io.bidmachine.analytics.internal.z.c$d)
.class final Lio/bidmachine/analytics/internal/z/c$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/c;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/z/c;

.field final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/z/c;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/c$d;->b:Lio/bidmachine/analytics/internal/z/c;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/c$d;->c:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/c$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/z/c$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/z/c$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/z/c$d;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c$d;->b:Lio/bidmachine/analytics/internal/z/c;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/c$d;->c:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/analytics/internal/z/c$d;-><init>(Lio/bidmachine/analytics/internal/z/c;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/c$d;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/analytics/internal/z/c$d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_64

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    new-instance v3, Lio/bidmachine/analytics/internal/C/a;

    .line 3
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/c$d;->b:Lio/bidmachine/analytics/internal/z/c;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;)Lio/bidmachine/analytics/internal/z/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/z/c$a;->c()Lio/bidmachine/analytics/ReaderConfig;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/ReaderConfig;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/c$d;->b:Lio/bidmachine/analytics/internal/z/c;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;)Lio/bidmachine/analytics/internal/z/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/z/c$a;->c()Lio/bidmachine/analytics/ReaderConfig;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/c$d;->b:Lio/bidmachine/analytics/internal/z/c;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;)Lio/bidmachine/analytics/internal/z/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/z/c$a;->b()Lcom/explorestack/protobuf/Struct;

    move-result-object v6

    .line 6
    iget-object v7, p0, Lio/bidmachine/analytics/internal/z/c$d;->c:Ljava/util/List;

    .line 7
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/c$d;->b:Lio/bidmachine/analytics/internal/z/c;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;)Lio/bidmachine/analytics/internal/z/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/z/c$a;->a()Lio/bidmachine/analytics/internal/C/a$a;

    move-result-object v8

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 8
    invoke-direct/range {v3 .. v11}, Lio/bidmachine/analytics/internal/C/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/C/a$a;Lio/bidmachine/analytics/internal/I/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput v2, p0, Lio/bidmachine/analytics/internal/z/c$d;->a:I

    invoke-virtual {v3, p0}, Lio/bidmachine/analytics/internal/A/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_64

    return-object v0

    :cond_64
    :goto_64
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c$d;->b:Lio/bidmachine/analytics/internal/z/c;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/c$d;->c:Ljava/util/List;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    move-object v2, p1

    check-cast v2, Lio/bidmachine/analytics/internal/C/a;

    .line 16
    invoke-static {v0}, Lio/bidmachine/analytics/internal/z/c;->b(Lio/bidmachine/analytics/internal/z/c;)Lio/bidmachine/analytics/internal/H/e;

    move-result-object v2

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7e
    :goto_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lio/bidmachine/analytics/internal/g/e;

    .line 43
    invoke-virtual {v6}, Lio/bidmachine/analytics/internal/g/e;->b()Lio/bidmachine/analytics/internal/g/h;

    move-result-object v6

    if-eqz v6, :cond_7e

    .line 69
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 70
    :cond_95
    invoke-interface {v2, v3}, Lio/bidmachine/analytics/internal/H/e;->b(Ljava/util/List;)Ljava/lang/Object;

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a1
    :goto_a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lio/bidmachine/analytics/internal/g/e;

    .line 100
    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/g/e;->b()Lio/bidmachine/analytics/internal/g/h;

    move-result-object v4

    if-nez v4, :cond_a1

    .line 128
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 129
    :cond_b8
    invoke-static {v0}, Lio/bidmachine/analytics/internal/z/c;->b(Lio/bidmachine/analytics/internal/z/c;)Lio/bidmachine/analytics/internal/H/e;

    move-result-object v1

    invoke-interface {v1, v2}, Lio/bidmachine/analytics/internal/H/e;->c(Ljava/util/List;)Ljava/lang/Object;

    .line 158
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/analytics/internal/g/e;

    .line 159
    invoke-static {v0, v2}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;Lio/bidmachine/analytics/internal/g/e;)Ljava/lang/Object;

    goto :goto_c3

    .line 160
    :cond_d3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c$d;->b:Lio/bidmachine/analytics/internal/z/c;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/c$d;->c:Ljava/util/List;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_e4

    .line 162
    invoke-static {v0}, Lio/bidmachine/analytics/internal/z/c;->b(Lio/bidmachine/analytics/internal/z/c;)Lio/bidmachine/analytics/internal/H/e;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/bidmachine/analytics/internal/H/e;->c(Ljava/util/List;)Ljava/lang/Object;

    .line 163
    :cond_e4
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.z.c.e (io.bidmachine.analytics.internal.z.c$e)
.class final Lio/bidmachine/analytics/internal/z/c$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/z/c;->b(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lio/bidmachine/analytics/internal/z/c;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/z/c;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/z/c$e;->c:Lio/bidmachine/analytics/internal/z/c;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/z/c$e;->d:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/analytics/internal/z/c$e;->e:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/c$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/z/c$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/z/c$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/z/c$e;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/z/c$e;->c:Lio/bidmachine/analytics/internal/z/c;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/c$e;->d:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/analytics/internal/z/c$e;->e:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/analytics/internal/z/c$e;-><init>(Lio/bidmachine/analytics/internal/z/c;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/z/c$e;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/analytics/internal/z/c$e;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_28

    if-eq v1, v3, :cond_1b

    if-ne v1, v2, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9e

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-object v1, p0, Lio/bidmachine/analytics/internal/z/c$e;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    goto :goto_8a

    :cond_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/c$e;->c:Lio/bidmachine/analytics/internal/z/c;

    iget-object v4, p0, Lio/bidmachine/analytics/internal/z/c$e;->d:Ljava/lang/String;

    iget-object v5, p0, Lio/bidmachine/analytics/internal/z/c$e;->e:Ljava/util/List;

    .line 85
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3f
    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_56

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lio/bidmachine/analytics/internal/g/e;

    .line 87
    invoke-virtual {v8}, Lio/bidmachine/analytics/internal/g/e;->b()Lio/bidmachine/analytics/internal/g/h;

    move-result-object v8

    if-eqz v8, :cond_3f

    .line 170
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 171
    :cond_56
    invoke-static {p1, v4, v6}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 172
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/c$e;->e:Ljava/util/List;

    iget-object v4, p0, Lio/bidmachine/analytics/internal/z/c$e;->c:Lio/bidmachine/analytics/internal/z/c;

    .line 256
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_61
    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/analytics/internal/g/e;

    .line 257
    invoke-static {v4, v5}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;Lio/bidmachine/analytics/internal/g/e;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 258
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 261
    :cond_7b
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/c$e;->c:Lio/bidmachine/analytics/internal/z/c;

    iget-object v4, p0, Lio/bidmachine/analytics/internal/z/c$e;->d:Ljava/lang/String;

    iput-object v1, p0, Lio/bidmachine/analytics/internal/z/c$e;->a:Ljava/lang/Object;

    iput v3, p0, Lio/bidmachine/analytics/internal/z/c$e;->b:I

    invoke-static {p1, v4, p0}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8a

    goto :goto_9d

    .line 262
    :cond_8a
    :goto_8a
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9e

    .line 263
    iget-object p1, p0, Lio/bidmachine/analytics/internal/z/c$e;->c:Lio/bidmachine/analytics/internal/z/c;

    const/4 v3, 0x0

    iput-object v3, p0, Lio/bidmachine/analytics/internal/z/c$e;->a:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/analytics/internal/z/c$e;->b:I

    invoke-static {p1, v1, p0}, Lio/bidmachine/analytics/internal/z/c;->a(Lio/bidmachine/analytics/internal/z/c;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9e

    :goto_9d
    return-object v0

    .line 265
    :cond_9e
    :goto_9e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
