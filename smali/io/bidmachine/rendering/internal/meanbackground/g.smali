###### Class io.bidmachine.rendering.internal.meanbackground.g (io.bidmachine.rendering.internal.meanbackground.g)
.class public final Lio/bidmachine/rendering/internal/meanbackground/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/g$b;,
        Lio/bidmachine/rendering/internal/meanbackground/g$a;
    }
.end annotation


# static fields
.field public static final l:Lio/bidmachine/rendering/internal/meanbackground/g$a;


# instance fields
.field public final a:Lkotlin/coroutines/CoroutineContext;

.field public final b:Lio/bidmachine/rendering/internal/meanbackground/g$b;

.field public final c:Lkotlin/Lazy;

.field public final d:Lkotlin/Lazy;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlin/Lazy;

.field public final g:Lkotlin/Lazy;

.field public final h:Lkotlin/Lazy;

.field public final i:Lio/bidmachine/rendering/internal/meanbackground/m;

.field public final j:Lio/bidmachine/rendering/internal/meanbackground/b;

.field public final k:Lio/bidmachine/rendering/internal/meanbackground/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/meanbackground/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/g;->l:Lio/bidmachine/rendering/internal/meanbackground/g$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/g$b;)V
    .registers 8

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->a:Lkotlin/coroutines/CoroutineContext;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->b:Lio/bidmachine/rendering/internal/meanbackground/g$b;

    .line 6
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/g$h;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/meanbackground/g$h;-><init>(Lio/bidmachine/rendering/internal/meanbackground/g;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->c:Lkotlin/Lazy;

    .line 10
    sget-object p1, Lio/bidmachine/rendering/internal/meanbackground/g$c;->a:Lio/bidmachine/rendering/internal/meanbackground/g$c;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->d:Lkotlin/Lazy;

    .line 14
    sget-object p1, Lio/bidmachine/rendering/internal/meanbackground/g$d;->a:Lio/bidmachine/rendering/internal/meanbackground/g$d;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->e:Lkotlin/Lazy;

    .line 18
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/g$e;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/meanbackground/g$e;-><init>(Lio/bidmachine/rendering/internal/meanbackground/g;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->f:Lkotlin/Lazy;

    .line 22
    sget-object p1, Lio/bidmachine/rendering/internal/meanbackground/g$f;->a:Lio/bidmachine/rendering/internal/meanbackground/g$f;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->g:Lkotlin/Lazy;

    .line 26
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/g$g;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/meanbackground/g$g;-><init>(Lio/bidmachine/rendering/internal/meanbackground/g;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->h:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/e;

    invoke-direct {p1}, Lio/bidmachine/rendering/internal/meanbackground/e;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->i:Lio/bidmachine/rendering/internal/meanbackground/m;

    .line 40
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/b;

    .line 41
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/b$a;

    .line 42
    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->e()I

    move-result v1

    .line 43
    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->f()I

    move-result v2

    .line 44
    new-instance v3, Lio/bidmachine/rendering/internal/meanbackground/d$a;

    .line 45
    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d()Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v4

    .line 46
    invoke-direct {v3, v4}, Lio/bidmachine/rendering/internal/meanbackground/d$a;-><init>(I)V

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/rendering/internal/meanbackground/b$a;-><init>(IILio/bidmachine/rendering/internal/meanbackground/d;)V

    .line 48
    invoke-direct {p1, v0}, Lio/bidmachine/rendering/internal/meanbackground/b;-><init>(Lio/bidmachine/rendering/internal/meanbackground/b$a;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->j:Lio/bidmachine/rendering/internal/meanbackground/b;

    .line 58
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/a$a;

    .line 60
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/d$a;

    .line 61
    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d()Lkotlin/ranges/IntRange;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result p2

    .line 62
    invoke-direct {v0, p2}, Lio/bidmachine/rendering/internal/meanbackground/d$a;-><init>(I)V

    const/16 p2, 0x23

    .line 63
    invoke-direct {p1, p2, v0}, Lio/bidmachine/rendering/internal/meanbackground/a$a;-><init>(ILio/bidmachine/rendering/internal/meanbackground/d;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->k:Lio/bidmachine/rendering/internal/meanbackground/a$a;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/g$b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_18

    const/4 p1, 0x0

    const/4 p4, 0x1

    .line 64
    invoke-static {p1, p4, p1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    sget-object p4, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {p4}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object p4

    invoke-virtual {p4}, Lio/bidmachine/rendering/internal/j;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    invoke-interface {p1, p4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    :cond_18
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2c

    .line 65
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/g$b;

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/rendering/internal/meanbackground/g$b;-><init>(Lkotlin/ranges/IntRange;IILkotlin/ranges/IntRange;FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    .line 66
    :cond_2c
    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/g;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/g$b;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/meanbackground/g;)Lio/bidmachine/rendering/internal/meanbackground/g$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->b:Lio/bidmachine/rendering/internal/meanbackground/g$b;

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/meanbackground/g;)Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->a:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/meanbackground/g;)Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->a()Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lio/bidmachine/rendering/internal/meanbackground/g;)Lio/bidmachine/util/log/LoggerInstance;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->b()Lio/bidmachine/util/log/LoggerInstance;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Lio/bidmachine/rendering/internal/meanbackground/a;
    .registers 10

    .line 23
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/a;

    .line 24
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->a:Lkotlin/coroutines/CoroutineContext;

    .line 25
    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->k:Lio/bidmachine/rendering/internal/meanbackground/a$a;

    .line 26
    new-instance v3, Lio/bidmachine/rendering/internal/meanbackground/c;

    .line 27
    new-instance v4, Lio/bidmachine/rendering/internal/meanbackground/c$a;

    .line 29
    iget-object v5, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->b:Lio/bidmachine/rendering/internal/meanbackground/g$b;

    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->a()F

    move-result v5

    .line 30
    iget-object v6, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->b:Lio/bidmachine/rendering/internal/meanbackground/g$b;

    invoke-virtual {v6}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->c()F

    move-result v6

    .line 31
    iget-object v7, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->b:Lio/bidmachine/rendering/internal/meanbackground/g$b;

    invoke-virtual {v7}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->b()F

    move-result v7

    .line 32
    invoke-direct {v4, p1, v5, v6, v7}, Lio/bidmachine/rendering/internal/meanbackground/c$a;-><init>(Ljava/lang/Integer;FFF)V

    .line 33
    invoke-direct {v3, v4}, Lio/bidmachine/rendering/internal/meanbackground/c;-><init>(Lio/bidmachine/rendering/internal/meanbackground/c$a;)V

    .line 41
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->i:Lio/bidmachine/rendering/internal/meanbackground/m;

    .line 42
    invoke-direct {v0, v1, v2, v3, p1}, Lio/bidmachine/rendering/internal/meanbackground/a;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/a$a;Lio/bidmachine/rendering/internal/meanbackground/c;Lio/bidmachine/rendering/internal/meanbackground/m;)V

    return-object v0
.end method

.method public final a()Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 14

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinished"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->f()Lio/bidmachine/util/taskmanager/TaskManager;

    move-result-object v0

    .line 4
    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/h;

    .line 7
    new-instance v2, Lio/bidmachine/rendering/internal/meanbackground/j;

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->d()Lio/bidmachine/rendering/internal/meanbackground/n;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->e()Lio/bidmachine/rendering/internal/meanbackground/o;

    move-result-object v4

    .line 10
    invoke-virtual {p0, p2}, Lio/bidmachine/rendering/internal/meanbackground/g;->a(Ljava/lang/Integer;)Lio/bidmachine/rendering/internal/meanbackground/a;

    move-result-object v5

    .line 11
    invoke-virtual {p0, p2}, Lio/bidmachine/rendering/internal/meanbackground/g;->b(Ljava/lang/Integer;)Lio/bidmachine/rendering/internal/meanbackground/i;

    move-result-object v6

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->c()Lio/bidmachine/rendering/internal/meanbackground/l;

    move-result-object v7

    .line 13
    invoke-direct/range {v2 .. v7}, Lio/bidmachine/rendering/internal/meanbackground/j;-><init>(Lio/bidmachine/rendering/internal/meanbackground/n;Lio/bidmachine/rendering/internal/meanbackground/o;Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/i;Lio/bidmachine/rendering/internal/meanbackground/l;)V

    .line 20
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->c()Lio/bidmachine/rendering/internal/meanbackground/l;

    move-result-object v6

    const-wide/16 v3, 0x3e8

    move-object v7, p3

    move-object v8, p4

    move-object v5, v2

    move-object v2, p1

    .line 21
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/rendering/internal/meanbackground/h;-><init>(Landroid/view/View;JLio/bidmachine/rendering/internal/meanbackground/f;Lio/bidmachine/rendering/internal/meanbackground/l;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 22
    invoke-interface {v0, v1}, Lio/bidmachine/util/taskmanager/TaskManager;->executeSafely(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/Integer;)Lio/bidmachine/rendering/internal/meanbackground/i;
    .registers 9

    .line 25
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/i;

    .line 26
    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/i$a;

    if-eqz p1, :cond_c

    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_a
    move v2, p1

    goto :goto_f

    :cond_c
    const/high16 p1, -0x1000000

    goto :goto_a

    .line 28
    :goto_f
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->b:Lio/bidmachine/rendering/internal/meanbackground/g$b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d()Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v3

    .line 29
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->b:Lio/bidmachine/rendering/internal/meanbackground/g$b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->g()Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v4

    .line 30
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->b:Lio/bidmachine/rendering/internal/meanbackground/g$b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->g()Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v5

    .line 31
    sget-object v6, Lio/bidmachine/rendering/internal/meanbackground/i$a$a$a;->a:Lio/bidmachine/rendering/internal/meanbackground/i$a$a$a;

    .line 32
    invoke-direct/range {v1 .. v6}, Lio/bidmachine/rendering/internal/meanbackground/i$a;-><init>(IIIILio/bidmachine/rendering/internal/meanbackground/i$a$a;)V

    .line 39
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->i:Lio/bidmachine/rendering/internal/meanbackground/m;

    .line 40
    invoke-direct {v0, v1, p1}, Lio/bidmachine/rendering/internal/meanbackground/i;-><init>(Lio/bidmachine/rendering/internal/meanbackground/i$a;Lio/bidmachine/rendering/internal/meanbackground/m;)V

    return-object v0
.end method

.method public final b()Lio/bidmachine/util/log/LoggerInstance;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/log/LoggerInstance;

    return-object v0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .registers 14

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinished"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->f()Lio/bidmachine/util/taskmanager/TaskManager;

    move-result-object v0

    .line 4
    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/h;

    .line 7
    new-instance v2, Lio/bidmachine/rendering/internal/meanbackground/k;

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->d()Lio/bidmachine/rendering/internal/meanbackground/n;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->e()Lio/bidmachine/rendering/internal/meanbackground/o;

    move-result-object v4

    .line 10
    invoke-virtual {p0, p2}, Lio/bidmachine/rendering/internal/meanbackground/g;->a(Ljava/lang/Integer;)Lio/bidmachine/rendering/internal/meanbackground/a;

    move-result-object v5

    .line 11
    iget-object v6, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->j:Lio/bidmachine/rendering/internal/meanbackground/b;

    .line 12
    invoke-virtual {p0, p2}, Lio/bidmachine/rendering/internal/meanbackground/g;->b(Ljava/lang/Integer;)Lio/bidmachine/rendering/internal/meanbackground/i;

    move-result-object v7

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->c()Lio/bidmachine/rendering/internal/meanbackground/l;

    move-result-object v8

    .line 14
    invoke-direct/range {v2 .. v8}, Lio/bidmachine/rendering/internal/meanbackground/k;-><init>(Lio/bidmachine/rendering/internal/meanbackground/n;Lio/bidmachine/rendering/internal/meanbackground/o;Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/b;Lio/bidmachine/rendering/internal/meanbackground/i;Lio/bidmachine/rendering/internal/meanbackground/l;)V

    .line 22
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g;->c()Lio/bidmachine/rendering/internal/meanbackground/l;

    move-result-object v6

    const-wide/16 v3, 0x3e8

    move-object v7, p3

    move-object v8, p4

    move-object v5, v2

    move-object v2, p1

    .line 23
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/rendering/internal/meanbackground/h;-><init>(Landroid/view/View;JLio/bidmachine/rendering/internal/meanbackground/f;Lio/bidmachine/rendering/internal/meanbackground/l;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 24
    invoke-interface {v0, v1}, Lio/bidmachine/util/taskmanager/TaskManager;->executeSafely(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()Lio/bidmachine/rendering/internal/meanbackground/l;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/meanbackground/l;

    return-object v0
.end method

.method public final d()Lio/bidmachine/rendering/internal/meanbackground/n;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/meanbackground/n;

    return-object v0
.end method

.method public final e()Lio/bidmachine/rendering/internal/meanbackground/o;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/meanbackground/o;

    return-object v0
.end method

.method public final f()Lio/bidmachine/util/taskmanager/TaskManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/taskmanager/TaskManager;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.g.a (io.bidmachine.rendering.internal.meanbackground.g$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/meanbackground/g$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.g.b (io.bidmachine.rendering.internal.meanbackground.g$b)
.class public final Lio/bidmachine/rendering/internal/meanbackground/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lkotlin/ranges/IntRange;

.field public final b:I

.field public final c:I

.field public final d:Lkotlin/ranges/IntRange;

.field public final e:F

.field public final f:F

.field public final g:F


# direct methods
.method public constructor <init>(Lkotlin/ranges/IntRange;IILkotlin/ranges/IntRange;FFF)V
    .registers 9

    const-string v0, "dimensionsRangePx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sampleStepRangePx"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->a:Lkotlin/ranges/IntRange;

    .line 3
    iput p2, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->b:I

    .line 4
    iput p3, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->c:I

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d:Lkotlin/ranges/IntRange;

    .line 6
    iput p5, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->e:F

    .line 7
    iput p6, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->f:F

    .line 8
    iput p7, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->g:F

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/ranges/IntRange;IILkotlin/ranges/IntRange;FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_d

    .line 9
    new-instance p1, Lkotlin/ranges/IntRange;

    const/16 v0, 0xc8

    const/16 v1, 0x200

    invoke-direct {p1, v0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    :cond_d
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_12

    const/4 p2, 0x5

    :cond_12
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_18

    const/16 p3, 0x19

    :cond_18
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_24

    .line 12
    new-instance p4, Lkotlin/ranges/IntRange;

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-direct {p4, v0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    :cond_24
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2b

    const p5, 0x3c23d70a    # 0.01f

    :cond_2b
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_32

    const p6, 0x3ca3d70a    # 0.02f

    :cond_32
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_39

    const p7, 0x3d23d70a    # 0.04f

    :cond_39
    move p8, p6

    move p9, p7

    move-object p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 13
    invoke-direct/range {p2 .. p9}, Lio/bidmachine/rendering/internal/meanbackground/g$b;-><init>(Lkotlin/ranges/IntRange;IILkotlin/ranges/IntRange;FFF)V

    return-void
.end method


# virtual methods
.method public final a()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->e:F

    return v0
.end method

.method public final b()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->g:F

    return v0
.end method

.method public final c()F
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->f:F

    return v0
.end method

.method public final d()Lkotlin/ranges/IntRange;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->a:Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method public final e()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/internal/meanbackground/g$b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/g$b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->a:Lkotlin/ranges/IntRange;

    iget-object v3, p1, Lio/bidmachine/rendering/internal/meanbackground/g$b;->a:Lkotlin/ranges/IntRange;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->b:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/g$b;->b:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->c:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/g$b;->c:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d:Lkotlin/ranges/IntRange;

    iget-object v3, p1, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d:Lkotlin/ranges/IntRange;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->e:F

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/g$b;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3b

    return v2

    :cond_3b
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->f:F

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/g$b;->f:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_46

    return v2

    :cond_46
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->g:F

    iget p1, p1, Lio/bidmachine/rendering/internal/meanbackground/g$b;->g:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_51

    return v2

    :cond_51
    return v0
.end method

.method public final f()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->c:I

    return v0
.end method

.method public final g()Lkotlin/ranges/IntRange;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d:Lkotlin/ranges/IntRange;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->a:Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Lkotlin/ranges/IntRange;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d:Lkotlin/ranges/IntRange;

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->e:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->f:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->g:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config(dimensionsRangePx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->a:Lkotlin/ranges/IntRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxOffsetPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSampleSizePx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleStepRangePx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d:Lkotlin/ranges/IntRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detectorAlphaThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", detectorTolerance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", detectorBrightnessThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$b;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.g.c (io.bidmachine.rendering.internal.meanbackground.g$c)
.class public final Lio/bidmachine/rendering/internal/meanbackground/g$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/g;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/meanbackground/g$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/g$c;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/meanbackground/g$c;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/g$c;->a:Lio/bidmachine/rendering/internal/meanbackground/g$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/taskmanager/handler/BackgroundHandlerTaskManager;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/util/taskmanager/handler/BackgroundHandlerTaskManager;

    invoke-direct {v0}, Lio/bidmachine/util/taskmanager/handler/BackgroundHandlerTaskManager;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g$c;->a()Lio/bidmachine/util/taskmanager/handler/BackgroundHandlerTaskManager;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.g.d (io.bidmachine.rendering.internal.meanbackground.g$d)
.class public final Lio/bidmachine/rendering/internal/meanbackground/g$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/g;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/meanbackground/g$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/g$d;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/meanbackground/g$d;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/g$d;->a:Lio/bidmachine/rendering/internal/meanbackground/g$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/utils/RenderingLoggerInstance;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/utils/RenderingLoggerInstance;

    invoke-direct {v0}, Lio/bidmachine/rendering/utils/RenderingLoggerInstance;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g$d;->a()Lio/bidmachine/rendering/utils/RenderingLoggerInstance;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.g.e (io.bidmachine.rendering.internal.meanbackground.g$e)
.class public final Lio/bidmachine/rendering/internal/meanbackground/g$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/g;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/meanbackground/g;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/g;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$e;->a:Lio/bidmachine/rendering/internal/meanbackground/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/internal/meanbackground/l;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/l;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$e;->a:Lio/bidmachine/rendering/internal/meanbackground/g;

    invoke-static {v1}, Lio/bidmachine/rendering/internal/meanbackground/g;->d(Lio/bidmachine/rendering/internal/meanbackground/g;)Lio/bidmachine/util/log/LoggerInstance;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/meanbackground/l;-><init>(Lio/bidmachine/util/log/LoggerInstance;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g$e;->a()Lio/bidmachine/rendering/internal/meanbackground/l;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.g.f (io.bidmachine.rendering.internal.meanbackground.g$f)
.class public final Lio/bidmachine/rendering/internal/meanbackground/g$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/g;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/meanbackground/g$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/g$f;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/meanbackground/g$f;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/g$f;->a:Lio/bidmachine/rendering/internal/meanbackground/g$f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/internal/meanbackground/n;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/n;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/meanbackground/n;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g$f;->a()Lio/bidmachine/rendering/internal/meanbackground/n;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.g.C1196g (io.bidmachine.rendering.internal.meanbackground.g$g)
.class public final Lio/bidmachine/rendering/internal/meanbackground/g$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/g;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/meanbackground/g;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/g;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$g;->a:Lio/bidmachine/rendering/internal/meanbackground/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/internal/meanbackground/o;
    .registers 9

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/o;

    .line 2
    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/o$a;

    .line 3
    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/g$g;->a:Lio/bidmachine/rendering/internal/meanbackground/g;

    invoke-static {v2}, Lio/bidmachine/rendering/internal/meanbackground/g;->a(Lio/bidmachine/rendering/internal/meanbackground/g;)Lio/bidmachine/rendering/internal/meanbackground/g$b;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d()Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    .line 4
    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/g$g;->a:Lio/bidmachine/rendering/internal/meanbackground/g;

    invoke-static {v2}, Lio/bidmachine/rendering/internal/meanbackground/g;->a(Lio/bidmachine/rendering/internal/meanbackground/g;)Lio/bidmachine/rendering/internal/meanbackground/g$b;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/meanbackground/g$b;->d()Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v4

    .line 5
    sget-object v5, Lio/bidmachine/rendering/internal/meanbackground/o$a$a$b;->a:Lio/bidmachine/rendering/internal/meanbackground/o$a$a$b;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 6
    invoke-direct/range {v1 .. v7}, Lio/bidmachine/rendering/internal/meanbackground/o$a;-><init>(Landroid/graphics/Bitmap$Config;IILio/bidmachine/rendering/internal/meanbackground/o$a$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    sget-object v2, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/g$g;->a:Lio/bidmachine/rendering/internal/meanbackground/g;

    invoke-static {v3}, Lio/bidmachine/rendering/internal/meanbackground/g;->c(Lio/bidmachine/rendering/internal/meanbackground/g;)Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 13
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/rendering/internal/meanbackground/o;-><init>(Lio/bidmachine/rendering/internal/meanbackground/o$a;Lio/bidmachine/rendering/internal/j;Landroid/os/Handler;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g$g;->a()Lio/bidmachine/rendering/internal/meanbackground/o;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.g.h (io.bidmachine.rendering.internal.meanbackground.g$h)
.class public final Lio/bidmachine/rendering/internal/meanbackground/g$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/g;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/meanbackground/g;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/g;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$h;->a:Lio/bidmachine/rendering/internal/meanbackground/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/g$h;->a:Lio/bidmachine/rendering/internal/meanbackground/g;

    invoke-static {v1}, Lio/bidmachine/rendering/internal/meanbackground/g;->b(Lio/bidmachine/rendering/internal/meanbackground/g;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/meanbackground/g$h;->a()Lio/bidmachine/util/taskmanager/coroutine/CoroutineTaskManager;

    move-result-object v0

    return-object v0
.end method
