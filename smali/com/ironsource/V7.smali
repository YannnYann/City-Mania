###### Class com.ironsource.V7 (com.ironsource.V7)
.class public final Lcom/ironsource/V7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/hg;


# static fields
.field public static final a:Lcom/ironsource/V7;

.field private static final b:Landroid/os/Handler;

.field private static c:Z = false

.field public static final d:Ljava/lang/String; = "deviceStatus"

.field public static final e:Ljava/lang/String; = "iabTokenAPI"

.field public static final f:Ljava/lang/String; = "dsSharedSignalsAPI"

.field public static final g:Ljava/lang/String; = "deleteFolder"

.field public static final h:Ljava/lang/String; = "deleteFile"

.field public static final i:Ljava/lang/String; = "getCachedFilesMap"

.field public static final j:Ljava/lang/String; = "permissionsAPI"

.field public static final k:Ljava/lang/String; = "deviceDataAPI"

.field public static final l:Ljava/lang/String; = "adViewAPI"

.field private static final m:Lkotlin/Lazy;

.field private static final n:Lkotlin/Lazy;

.field private static final o:Lcom/ironsource/Z9;

.field private static final p:Lcom/ironsource/Z9;

.field private static final q:Lcom/ironsource/Z9;


# direct methods
.method public static synthetic $r8$lambda$XkQNZKeMFFDNA6oX8-VI4hwsUHc()Lcom/ironsource/oe;
    .registers 1

    .line 0
    invoke-static {}, Lcom/ironsource/V7;->a()Lcom/ironsource/oe;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$e9DapT2q57Lg2gxopqCG-FXUouE()Ljava/util/Map;
    .registers 1

    .line 0
    invoke-static {}, Lcom/ironsource/V7;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/V7;

    invoke-direct {v0}, Lcom/ironsource/V7;-><init>()V

    sput-object v0, Lcom/ironsource/V7;->a:Lcom/ironsource/V7;

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ironsource/V7;->b:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/ironsource/V7$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/ironsource/V7$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/V7;->m:Lkotlin/Lazy;

    .line 18
    new-instance v0, Lcom/ironsource/V7$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/ironsource/V7$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/ironsource/V7;->n:Lkotlin/Lazy;

    .line 33
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "isadplayer-background"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    .line 36
    sput-object v0, Lcom/ironsource/V7;->o:Lcom/ironsource/Z9;

    .line 42
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "isadplayer-publisher-callbacks"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    .line 45
    sput-object v0, Lcom/ironsource/V7;->p:Lcom/ironsource/Z9;

    .line 51
    new-instance v0, Lcom/ironsource/Z9;

    const-string v1, "isadplayer-release"

    invoke-direct {v0, v1}, Lcom/ironsource/Z9;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    invoke-virtual {v0}, Lcom/ironsource/Z9;->a()V

    .line 54
    sput-object v0, Lcom/ironsource/V7;->q:Lcom/ironsource/Z9;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Lcom/ironsource/oe;
    .registers 4

    .line 2
    new-instance v0, Lcom/ironsource/oe;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/ironsource/oe;-><init>(ILjava/util/concurrent/ThreadFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    const-wide/16 p2, 0x0

    .line 4
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/V7;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic b(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    const-wide/16 p2, 0x0

    .line 3
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/V7;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final c()Lcom/ironsource/oe;
    .registers 2

    .line 2
    sget-object v0, Lcom/ironsource/V7;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/oe;

    return-object v0
.end method

.method public static synthetic c(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    const-wide/16 p2, 0x0

    .line 3
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/V7;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/ironsource/V7;->n:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final f(Ljava/lang/Runnable;)Z
    .registers 3

    .line 2
    sget-boolean v0, Lcom/ironsource/V7;->c:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/ironsource/V7;->c()Lcom/ironsource/oe;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private static final g()Ljava/util/Map;
    .registers 12

    .line 1
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ironsource/V7$a;

    invoke-direct {v1, v0}, Lcom/ironsource/V7$a;-><init>(Ljava/lang/Object;)V

    const-string v2, "deviceStatus"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 4
    new-instance v1, Lcom/ironsource/V7$b;

    invoke-direct {v1, v0}, Lcom/ironsource/V7$b;-><init>(Ljava/lang/Object;)V

    const-string v2, "iabTokenAPI"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 5
    new-instance v1, Lcom/ironsource/V7$c;

    invoke-direct {v1, v0}, Lcom/ironsource/V7$c;-><init>(Ljava/lang/Object;)V

    const-string v2, "dsSharedSignalsAPI"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 6
    new-instance v1, Lcom/ironsource/V7$d;

    invoke-direct {v1, v0}, Lcom/ironsource/V7$d;-><init>(Ljava/lang/Object;)V

    const-string v2, "deleteFolder"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 7
    new-instance v1, Lcom/ironsource/V7$e;

    invoke-direct {v1, v0}, Lcom/ironsource/V7$e;-><init>(Ljava/lang/Object;)V

    const-string v2, "deleteFile"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 8
    new-instance v1, Lcom/ironsource/V7$f;

    invoke-direct {v1, v0}, Lcom/ironsource/V7$f;-><init>(Ljava/lang/Object;)V

    const-string v2, "getCachedFilesMap"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 9
    new-instance v1, Lcom/ironsource/V7$g;

    invoke-direct {v1, v0}, Lcom/ironsource/V7$g;-><init>(Ljava/lang/Object;)V

    const-string v2, "permissionsAPI"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 10
    new-instance v1, Lcom/ironsource/V7$h;

    invoke-direct {v1, v0}, Lcom/ironsource/V7$h;-><init>(Ljava/lang/Object;)V

    const-string v2, "deviceDataAPI"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 11
    new-instance v1, Lcom/ironsource/V7$i;

    invoke-direct {v1, v0}, Lcom/ironsource/V7$i;-><init>(Ljava/lang/Object;)V

    const-string v0, "adViewAPI"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    filled-new-array/range {v3 .. v11}, [Lkotlin/Pair;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 9

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v6}, Lcom/ironsource/V7;->c(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .registers 6

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-boolean v0, Lcom/ironsource/V7;->c:Z

    if-eqz v0, :cond_13

    .line 6
    invoke-direct {p0}, Lcom/ironsource/V7;->c()Lcom/ironsource/oe;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 9
    :cond_13
    sget-object v0, Lcom/ironsource/V7;->q:Lcom/ironsource/Z9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/Z9;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 9

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/ironsource/V7;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function0;

    if-eqz p2, :cond_21

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_22

    :cond_21
    const/4 p2, 0x0

    :goto_22
    if-eqz p2, :cond_2e

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/ironsource/V7;->a(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void

    :cond_2e
    move-object v1, p1

    .line 14
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 1
    sput-boolean p1, Lcom/ironsource/V7;->c:Z

    return-void
.end method

.method public final b()Landroid/os/Looper;
    .registers 2

    .line 4
    sget-object v0, Lcom/ironsource/V7;->o:Lcom/ironsource/Z9;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Runnable;)V
    .registers 9

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/V7;->a(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Runnable;J)V
    .registers 5

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/ironsource/V7;->o:Lcom/ironsource/Z9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/Z9;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .registers 9

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/V7;->b(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Runnable;J)V
    .registers 5

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/ironsource/V7;->p:Lcom/ironsource/Z9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/Z9;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final d(Ljava/lang/Runnable;)V
    .registers 9

    .line 1
    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/ironsource/V7;->c(Lcom/ironsource/V7;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Runnable;J)V
    .registers 5

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/V7;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final e()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/V7;->c()Lcom/ironsource/oe;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ironsource/V7;->f(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3
    invoke-direct {p0}, Lcom/ironsource/V7;->c()Lcom/ironsource/oe;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_13
    sget-object v0, Lcom/ironsource/V7;->q:Lcom/ironsource/Z9;

    invoke-virtual {v0, p1}, Lcom/ironsource/Z9;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()Z
    .registers 2

    .line 1
    sget-boolean v0, Lcom/ironsource/V7;->c:Z

    return v0
.end method

###### Class com.ironsource.V7.a (com.ironsource.V7$a)
.class final synthetic Lcom/ironsource/V7$a;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "shouldRunOnBackgroundThreadDeviceStatus()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ironsource/D7;

    const-string v4, "shouldRunOnBackgroundThreadDeviceStatus"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/V7$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.V7.b (com.ironsource.V7$b)
.class final synthetic Lcom/ironsource/V7$b;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "shouldRunOnBackgroundThreadIabToken()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ironsource/D7;

    const-string v4, "shouldRunOnBackgroundThreadIabToken"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->u()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/V7$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.V7.c (com.ironsource.V7$c)
.class final synthetic Lcom/ironsource/V7$c;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "shouldRunOnBackgroundThreadSharedSignals()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ironsource/D7;

    const-string v4, "shouldRunOnBackgroundThreadSharedSignals"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/V7$c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.V7.d (com.ironsource.V7$d)
.class final synthetic Lcom/ironsource/V7$d;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "shouldRunOnBackgroundThreadDeleteFolder()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ironsource/D7;

    const-string v4, "shouldRunOnBackgroundThreadDeleteFolder"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/V7$d;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.V7.e (com.ironsource.V7$e)
.class final synthetic Lcom/ironsource/V7$e;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "shouldRunOnBackgroundThreadDeleteFile()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ironsource/D7;

    const-string v4, "shouldRunOnBackgroundThreadDeleteFile"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/V7$e;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.V7.f (com.ironsource.V7$f)
.class final synthetic Lcom/ironsource/V7$f;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "shouldRunOnBackgroundThreadCachedFiles()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ironsource/D7;

    const-string v4, "shouldRunOnBackgroundThreadCachedFiles"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/V7$f;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.V7.g (com.ironsource.V7$g)
.class final synthetic Lcom/ironsource/V7$g;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "shouldRunOnBackgroundThreadPermissions()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ironsource/D7;

    const-string v4, "shouldRunOnBackgroundThreadPermissions"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->J()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/V7$g;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.V7.h (com.ironsource.V7$h)
.class final synthetic Lcom/ironsource/V7$h;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "shouldRunOnBackgroundThreadDeviceData()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ironsource/D7;

    const-string v4, "shouldRunOnBackgroundThreadDeviceData"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->I()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/V7$h;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.V7.i (com.ironsource.V7$i)
.class final synthetic Lcom/ironsource/V7$i;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/V7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 1
    const-string v5, "shouldRunOnBackgroundThreadAdView()Z"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/ironsource/D7;

    const-string v4, "shouldRunOnBackgroundThreadAdView"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->L()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/V7$i;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.V7$$ExternalSyntheticLambda0 (com.ironsource.V7$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/V7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/ironsource/V7;->$r8$lambda$XkQNZKeMFFDNA6oX8-VI4hwsUHc()Lcom/ironsource/oe;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.V7$$ExternalSyntheticLambda1 (com.ironsource.V7$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/V7$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lcom/ironsource/V7;->$r8$lambda$e9DapT2q57Lg2gxopqCG-FXUouE()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
