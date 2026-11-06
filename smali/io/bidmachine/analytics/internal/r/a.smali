###### Class io.bidmachine.analytics.internal.r.a (io.bidmachine.analytics.internal.r.a)
.class public abstract Lio/bidmachine/analytics/internal/r/a;
.super Lio/bidmachine/analytics/internal/h/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/r/a$a;
    }
.end annotation


# instance fields
.field private final d:Lkotlin/Lazy;

.field private e:Lkotlinx/coroutines/Job;

.field private f:Lio/bidmachine/analytics/internal/r/a$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/h/d;-><init>()V

    .line 4
    sget-object v0, Lio/bidmachine/analytics/internal/r/a$d;->a:Lio/bidmachine/analytics/internal/r/a$d;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/analytics/internal/r/a;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/r/a;Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/r/a;->b(Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11

    instance-of v0, p2, Lio/bidmachine/analytics/internal/r/a$c;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/bidmachine/analytics/internal/r/a$c;

    iget v1, v0, Lio/bidmachine/analytics/internal/r/a$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/r/a$c;->e:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/bidmachine/analytics/internal/r/a$c;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/analytics/internal/r/a$c;-><init>(Lio/bidmachine/analytics/internal/r/a;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p2, v0, Lio/bidmachine/analytics/internal/r/a$c;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget v2, v0, Lio/bidmachine/analytics/internal/r/a$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3d

    if-ne v2, v3, :cond_35

    iget-object p1, v0, Lio/bidmachine/analytics/internal/r/a$c;->b:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/analytics/ReaderConfig$Rule;

    iget-object v0, v0, Lio/bidmachine/analytics/internal/r/a$c;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lio/bidmachine/analytics/internal/r/a;

    :try_start_2e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_50

    :catchall_32
    move-exception v0

    move-object p2, v0

    goto :goto_5b

    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_40
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    iput-object p0, v0, Lio/bidmachine/analytics/internal/r/a$c;->a:Ljava/lang/Object;

    iput-object p1, v0, Lio/bidmachine/analytics/internal/r/a$c;->b:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/analytics/internal/r/a$c;->e:I

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/analytics/internal/r/a;->a(Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_58

    if-ne p2, v1, :cond_4f

    return-object v1

    :cond_4f
    move-object v1, p0

    :goto_50
    :try_start_50
    check-cast p2, Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_32

    :goto_56
    move-object v3, p1

    goto :goto_66

    :catchall_58
    move-exception v0

    move-object p2, v0

    move-object v1, p0

    :goto_5b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_56

    .line 8
    :goto_66
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    const/4 p1, 0x0

    goto :goto_6f

    :cond_6e
    move-object p1, p2

    :goto_6f
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_81

    .line 10
    new-instance v2, Lio/bidmachine/analytics/internal/h/c$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/analytics/internal/h/c$a;-><init>(Lio/bidmachine/analytics/ReaderConfig$Rule;Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_bf

    .line 12
    :cond_81
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 15
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_c0

    .line 16
    instance-of p2, p1, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_90

    sget-object p2, Lio/bidmachine/analytics/internal/g/h$a;->f:Lio/bidmachine/analytics/internal/g/h$a;

    goto :goto_a0

    .line 17
    :cond_90
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-eqz p2, :cond_97

    sget-object p2, Lio/bidmachine/analytics/internal/g/h$a;->h:Lio/bidmachine/analytics/internal/g/h$a;

    goto :goto_a0

    .line 18
    :cond_97
    instance-of p2, p1, Ljava/lang/IllegalStateException;

    if-eqz p2, :cond_9e

    sget-object p2, Lio/bidmachine/analytics/internal/g/h$a;->g:Lio/bidmachine/analytics/internal/g/h$a;

    goto :goto_a0

    .line 19
    :cond_9e
    sget-object p2, Lio/bidmachine/analytics/internal/g/h$a;->e:Lio/bidmachine/analytics/internal/g/h$a;

    :goto_a0
    if-eqz p1, :cond_a8

    .line 21
    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_aa

    :cond_a8
    const-string p1, ""

    .line 22
    :cond_aa
    new-instance v2, Lio/bidmachine/analytics/internal/h/c$a;

    new-instance v5, Lio/bidmachine/analytics/internal/g/h;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, p2, p1}, Lio/bidmachine/analytics/internal/g/h;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/analytics/internal/h/c$a;-><init>(Lio/bidmachine/analytics/ReaderConfig$Rule;Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_bf
    return-object p1

    .line 23
    :cond_c0
    throw p1
.end method


# virtual methods
.method public abstract a(Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public a(Lio/bidmachine/analytics/internal/r/a$a;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/r/a;->f:Lio/bidmachine/analytics/internal/r/a$a;

    return-void
.end method

.method public final b()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/r/a;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/analytics/internal/r/a$a;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/r/a;->a(Lio/bidmachine/analytics/internal/r/a$a;)V

    return-void
.end method

.method public c()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public e(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/r/a;->e:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .registers 9

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/r/a;->e:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_9
    iget-object p1, p0, Lio/bidmachine/analytics/internal/r/a;->f:Lio/bidmachine/analytics/internal/r/a$a;

    if-nez p1, :cond_e

    return-void

    .line 3
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/r/a;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lio/bidmachine/analytics/internal/r/a$b;

    invoke-direct {v4, p1, p0, v0}, Lio/bidmachine/analytics/internal/r/a$b;-><init>(Lio/bidmachine/analytics/internal/r/a$a;Lio/bidmachine/analytics/internal/r/a;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/r/a;->e:Lkotlinx/coroutines/Job;

    return-void
.end method

###### Class io.bidmachine.analytics.internal.r.a.C1144a (io.bidmachine.analytics.internal.r.a$a)
.class public final Lio/bidmachine/analytics/internal/r/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/List;

.field private final c:Lio/bidmachine/analytics/internal/h/c;


# direct methods
.method public constructor <init>(JLjava/util/List;Lio/bidmachine/analytics/internal/h/c;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/bidmachine/analytics/internal/r/a$a;->a:J

    .line 3
    iput-object p3, p0, Lio/bidmachine/analytics/internal/r/a$a;->b:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lio/bidmachine/analytics/internal/r/a$a;->c:Lio/bidmachine/analytics/internal/h/c;

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/h/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/r/a$a;->c:Lio/bidmachine/analytics/internal/h/c;

    return-object v0
.end method

.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lio/bidmachine/analytics/internal/r/a$a;->a:J

    return-wide v0
.end method

.method public final c()Ljava/util/List;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/r/a$a;->b:Ljava/util/List;

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.r.a.b (io.bidmachine.analytics.internal.r.a$b)
.class final Lio/bidmachine/analytics/internal/r/a$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/r/a;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:I

.field private synthetic e:Ljava/lang/Object;

.field final synthetic f:Lio/bidmachine/analytics/internal/r/a$a;

.field final synthetic g:Lio/bidmachine/analytics/internal/r/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/r/a$a;Lio/bidmachine/analytics/internal/r/a;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/r/a$b;->f:Lio/bidmachine/analytics/internal/r/a$a;

    iput-object p2, p0, Lio/bidmachine/analytics/internal/r/a$b;->g:Lio/bidmachine/analytics/internal/r/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/r/a$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/r/a$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/r/a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/r/a$b;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/r/a$b;->f:Lio/bidmachine/analytics/internal/r/a$a;

    iget-object v2, p0, Lio/bidmachine/analytics/internal/r/a$b;->g:Lio/bidmachine/analytics/internal/r/a;

    invoke-direct {v0, v1, v2, p2}, Lio/bidmachine/analytics/internal/r/a$b;-><init>(Lio/bidmachine/analytics/internal/r/a$a;Lio/bidmachine/analytics/internal/r/a;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/analytics/internal/r/a$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/r/a$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/analytics/internal/r/a$b;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_39

    if-eq v1, v3, :cond_1f

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lio/bidmachine/analytics/internal/r/a$b;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_41

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    iget-object v1, p0, Lio/bidmachine/analytics/internal/r/a$b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, p0, Lio/bidmachine/analytics/internal/r/a$b;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, p0, Lio/bidmachine/analytics/internal/r/a$b;->a:Ljava/lang/Object;

    check-cast v6, Lio/bidmachine/analytics/internal/r/a;

    iget-object v7, p0, Lio/bidmachine/analytics/internal/r/a$b;->e:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_7e

    :cond_39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/bidmachine/analytics/internal/r/a$b;->e:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    :goto_41
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 3
    iget-object p1, p0, Lio/bidmachine/analytics/internal/r/a$b;->f:Lio/bidmachine/analytics/internal/r/a$a;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/r/a$a;->c()Ljava/util/List;

    move-result-object p1

    iget-object v5, p0, Lio/bidmachine/analytics/internal/r/a$b;->g:Lio/bidmachine/analytics/internal/r/a;

    .line 50
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 60
    check-cast v7, Lio/bidmachine/analytics/ReaderConfig$Rule;

    .line 61
    iput-object p1, p0, Lio/bidmachine/analytics/internal/r/a$b;->e:Ljava/lang/Object;

    iput-object v6, p0, Lio/bidmachine/analytics/internal/r/a$b;->a:Ljava/lang/Object;

    iput-object v5, p0, Lio/bidmachine/analytics/internal/r/a$b;->b:Ljava/lang/Object;

    iput-object v1, p0, Lio/bidmachine/analytics/internal/r/a$b;->c:Ljava/lang/Object;

    iput v3, p0, Lio/bidmachine/analytics/internal/r/a$b;->d:I

    invoke-static {v6, v7, p0}, Lio/bidmachine/analytics/internal/r/a;->a(Lio/bidmachine/analytics/internal/r/a;Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_7b

    goto :goto_b7

    :cond_7b
    move-object v9, v7

    move-object v7, p1

    move-object p1, v9

    :goto_7e
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    move-object p1, v4

    :cond_85
    check-cast p1, Lio/bidmachine/analytics/internal/h/c$a;

    if-eqz p1, :cond_8c

    .line 115
    invoke-interface {v5, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8c
    move-object p1, v7

    goto :goto_5e

    .line 119
    :cond_8e
    check-cast v5, Ljava/util/List;

    .line 120
    iget-object v1, p0, Lio/bidmachine/analytics/internal/r/a$b;->g:Lio/bidmachine/analytics/internal/r/a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/r/a;->c()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 121
    iget-object v1, p0, Lio/bidmachine/analytics/internal/r/a$b;->f:Lio/bidmachine/analytics/internal/r/a$a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/r/a$a;->a()Lio/bidmachine/analytics/internal/h/c;

    move-result-object v1

    invoke-interface {v1, v5}, Lio/bidmachine/analytics/internal/h/c;->a(Ljava/util/List;)V

    .line 123
    :cond_a1
    iget-object v1, p0, Lio/bidmachine/analytics/internal/r/a$b;->f:Lio/bidmachine/analytics/internal/r/a$a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/r/a$a;->b()J

    move-result-wide v5

    iput-object p1, p0, Lio/bidmachine/analytics/internal/r/a$b;->e:Ljava/lang/Object;

    iput-object v4, p0, Lio/bidmachine/analytics/internal/r/a$b;->a:Ljava/lang/Object;

    iput-object v4, p0, Lio/bidmachine/analytics/internal/r/a$b;->b:Ljava/lang/Object;

    iput-object v4, p0, Lio/bidmachine/analytics/internal/r/a$b;->c:Ljava/lang/Object;

    iput v2, p0, Lio/bidmachine/analytics/internal/r/a$b;->d:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_b8

    :goto_b7
    return-object v0

    :cond_b8
    move-object v1, p1

    goto :goto_41

    .line 125
    :cond_ba
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.r.a.c (io.bidmachine.analytics.internal.r.a$c)
.class final Lio/bidmachine/analytics/internal/r/a$c;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/r/a;->b(Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lio/bidmachine/analytics/internal/r/a;

.field e:I


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/r/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/r/a$c;->d:Lio/bidmachine/analytics/internal/r/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/r/a$c;->c:Ljava/lang/Object;

    iget p1, p0, Lio/bidmachine/analytics/internal/r/a$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/analytics/internal/r/a$c;->e:I

    iget-object p1, p0, Lio/bidmachine/analytics/internal/r/a$c;->d:Lio/bidmachine/analytics/internal/r/a;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lio/bidmachine/analytics/internal/r/a;->a(Lio/bidmachine/analytics/internal/r/a;Lio/bidmachine/analytics/ReaderConfig$Rule;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

###### Class io.bidmachine.analytics.internal.r.a.d (io.bidmachine.analytics.internal.r.a$d)
.class final Lio/bidmachine/analytics/internal/r/a$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/r/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/r/a$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/r/a$d;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/r/a$d;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/r/a$d;->a:Lio/bidmachine/analytics/internal/r/a$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/CoroutineScope;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    sget-object v1, Lio/bidmachine/analytics/internal/I/f;->g:Lio/bidmachine/analytics/internal/I/f$d;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/I/f$d;->a()Lio/bidmachine/analytics/internal/I/f;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/I/f;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/r/a$d;->a()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
