###### Class io.bidmachine.analytics.internal.u.b (io.bidmachine.analytics.internal.u.b)
.class public final Lio/bidmachine/analytics/internal/u/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/u/b$i;
    }
.end annotation


# static fields
.field public static final l:Lio/bidmachine/analytics/internal/u/b$i;

.field private static final m:Lkotlin/Lazy;

.field private static final n:Lkotlin/Lazy;

.field private static final o:Lkotlin/Lazy;

.field private static final p:Lkotlin/Lazy;

.field private static final q:Lkotlin/Lazy;

.field private static final r:Lkotlin/Lazy;

.field private static final s:Lkotlin/Lazy;

.field private static final t:Lkotlin/Lazy;


# instance fields
.field private final a:Landroid/content/Context;

.field private volatile b:Lio/bidmachine/analytics/internal/u/c;

.field private volatile c:Z

.field private volatile d:Z

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/analytics/internal/u/b$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/u/b$i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/u/b;->l:Lio/bidmachine/analytics/internal/u/b$i;

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/u/b$d;->a:Lio/bidmachine/analytics/internal/u/b$d;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/u/b;->m:Lkotlin/Lazy;

    .line 6
    sget-object v0, Lio/bidmachine/analytics/internal/u/b$e;->a:Lio/bidmachine/analytics/internal/u/b$e;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/u/b;->n:Lkotlin/Lazy;

    .line 11
    sget-object v0, Lio/bidmachine/analytics/internal/u/b$f;->a:Lio/bidmachine/analytics/internal/u/b$f;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/u/b;->o:Lkotlin/Lazy;

    .line 16
    sget-object v0, Lio/bidmachine/analytics/internal/u/b$b;->a:Lio/bidmachine/analytics/internal/u/b$b;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/u/b;->p:Lkotlin/Lazy;

    .line 21
    sget-object v0, Lio/bidmachine/analytics/internal/u/b$h;->a:Lio/bidmachine/analytics/internal/u/b$h;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/u/b;->q:Lkotlin/Lazy;

    .line 26
    sget-object v0, Lio/bidmachine/analytics/internal/u/b$c;->a:Lio/bidmachine/analytics/internal/u/b$c;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/u/b;->r:Lkotlin/Lazy;

    .line 31
    sget-object v0, Lio/bidmachine/analytics/internal/u/b$g;->a:Lio/bidmachine/analytics/internal/u/b$g;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/u/b;->s:Lkotlin/Lazy;

    .line 36
    sget-object v0, Lio/bidmachine/analytics/internal/u/b$a;->a:Lio/bidmachine/analytics/internal/u/b$a;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/u/b;->t:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b;->a:Landroid/content/Context;

    .line 10
    sget-object p1, Lio/bidmachine/analytics/internal/u/b$o;->a:Lio/bidmachine/analytics/internal/u/b$o;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b;->e:Lkotlin/Lazy;

    .line 14
    new-instance p1, Lio/bidmachine/analytics/internal/u/b$l;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/u/b$l;-><init>(Lio/bidmachine/analytics/internal/u/b;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b;->f:Lkotlin/Lazy;

    .line 18
    new-instance p1, Lio/bidmachine/analytics/internal/u/b$m;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/u/b$m;-><init>(Lio/bidmachine/analytics/internal/u/b;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b;->g:Lkotlin/Lazy;

    .line 22
    new-instance p1, Lio/bidmachine/analytics/internal/u/b$n;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/u/b$n;-><init>(Lio/bidmachine/analytics/internal/u/b;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b;->h:Lkotlin/Lazy;

    .line 26
    new-instance p1, Lio/bidmachine/analytics/internal/u/b$p;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/u/b$p;-><init>(Lio/bidmachine/analytics/internal/u/b;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b;->i:Lkotlin/Lazy;

    .line 30
    new-instance p1, Lio/bidmachine/analytics/internal/u/b$j;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/u/b$j;-><init>(Lio/bidmachine/analytics/internal/u/b;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b;->j:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lio/bidmachine/analytics/internal/u/b$q;

    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/u/b$q;-><init>(Lio/bidmachine/analytics/internal/u/b;)V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b;->k:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/u/b;)Lio/bidmachine/analytics/internal/u/c;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/bidmachine/analytics/internal/u/b;->b:Lio/bidmachine/analytics/internal/u/c;

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/u/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/u/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 7
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Lio/bidmachine/analytics/internal/u/b;->l:Lio/bidmachine/analytics/internal/u/b$i;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/b$i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    return-object p1

    :catchall_1b
    return-object v0
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/u/b;->t:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/u/b;Lio/bidmachine/analytics/internal/u/c;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b;->b:Lio/bidmachine/analytics/internal/u/c;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/u/b;Z)V
    .registers 2

    .line 5
    iput-boolean p1, p0, Lio/bidmachine/analytics/internal/u/b;->c:Z

    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .registers 1

    .line 2
    sget-object v0, Lio/bidmachine/analytics/internal/u/b;->p:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic c(Lio/bidmachine/analytics/internal/u/b;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/u/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .registers 1

    .line 2
    sget-object v0, Lio/bidmachine/analytics/internal/u/b;->r:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic d(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;
    .registers 1

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/u/b;->m:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic e(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;
    .registers 1

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/u/b;->n:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic f(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;
    .registers 1

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/u/b;->o:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic g()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/u/b;->s:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic g(Lio/bidmachine/analytics/internal/u/b;)Lkotlin/random/Random;
    .registers 1

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->q()Lkotlin/random/Random;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;
    .registers 1

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/u/b;->q:Lkotlin/Lazy;

    return-object v0
.end method

.method private final k()Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lio/bidmachine/analytics/internal/u/b;->l:Lio/bidmachine/analytics/internal/u/b$i;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/b$i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/b$i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private final m()Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_21

    sget-object v1, Lio/bidmachine/analytics/internal/u/b;->l:Lio/bidmachine/analytics/internal/u/b$i;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/b$i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-object v0

    :catchall_21
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private final n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final o()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final p()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final q()Lkotlin/random/Random;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/random/Random;

    return-object v0
.end method

.method private final r()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final s()Landroid/content/ComponentName;
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->k()Landroid/content/Intent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    return-object v3

    .line 7
    :cond_17
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 8
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_3a

    .line 9
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 11
    sget-object v2, Lio/bidmachine/analytics/internal/u/b;->l:Lio/bidmachine/analytics/internal/u/b$i;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/u/b$i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    if-nez v0, :cond_34

    goto :goto_3a

    .line 14
    :cond_34
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3a
    :goto_3a
    return-object v3
.end method


# virtual methods
.method public final a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 6
    new-instance v0, Lio/bidmachine/analytics/internal/u/b$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/analytics/internal/u/b$k;-><init>(Lio/bidmachine/analytics/internal/u/b;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2, v0, p3}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->s()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 2
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 3
    iget-object v2, p0, Lio/bidmachine/analytics/internal/u/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->k()Landroid/content/Intent;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    sget-object v0, Lio/bidmachine/analytics/internal/u/b;->l:Lio/bidmachine/analytics/internal/u/b$i;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/u/b$i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b;->k:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 11
    iput-boolean v1, p0, Lio/bidmachine/analytics/internal/u/b;->d:Z

    return-void

    .line 12
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t connect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Library version not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Component name not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/analytics/internal/u/b;->d:Z

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/b;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_b
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/bidmachine/analytics/internal/u/b;->d:Z

    return-void
.end method

.method public final l()Lio/bidmachine/analytics/internal/a/f;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/a/f;

    return-object v0
.end method

.method public final t()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    sget-object v1, Lio/bidmachine/analytics/internal/u/b;->l:Lio/bidmachine/analytics/internal/u/b$i;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/b$i;->h()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/bidmachine/analytics/internal/u/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final u()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b;->s()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.a (io.bidmachine.analytics.internal.u.b$a)
.class final Lio/bidmachine/analytics/internal/u/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/u/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/b$a;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/u/b$a;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/u/b$a;->a:Lio/bidmachine/analytics/internal/u/b$a;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "cGxheUJpbGxpbmdMaWJyYXJ5VmVyc2lvbg=="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.C1150b (io.bidmachine.analytics.internal.u.b$b)
.class final Lio/bidmachine/analytics/internal/u/b$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/u/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/b$b;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/u/b$b;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/u/b$b;->a:Lio/bidmachine/analytics/internal/u/b$b;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "VkVSU0lPTl9OQU1F"

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.c (io.bidmachine.analytics.internal.u.b$c)
.class final Lio/bidmachine/analytics/internal/u/b$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/u/b$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/b$c;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/u/b$c;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/u/b$c;->a:Lio/bidmachine/analytics/internal/u/b$c;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Y29tLmFuZHJvaWQudmVuZGluZy5iaWxsaW5nLkluQXBwQmlsbGluZ1NlcnZpY2UuQklORA=="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.d (io.bidmachine.analytics.internal.u.b$d)
.class final Lio/bidmachine/analytics/internal/u/b$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/u/b$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/b$d;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/u/b$d;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/u/b$d;->a:Lio/bidmachine/analytics/internal/u/b$d;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Y29tLmFuZHJvaWQuYmlsbGluZ2NsaWVudC5CdWlsZENvbmZpZw=="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.e (io.bidmachine.analytics.internal.u.b$e)
.class final Lio/bidmachine/analytics/internal/u/b$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/u/b$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/b$e;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/u/b$e;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/u/b$e;->a:Lio/bidmachine/analytics/internal/u/b$e;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Y29tLmFuZHJvaWQuYmlsbGluZ2NsaWVudC5rdHguQnVpbGRDb25maWc="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.f (io.bidmachine.analytics.internal.u.b$f)
.class final Lio/bidmachine/analytics/internal/u/b$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/u/b$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/b$f;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/u/b$f;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/u/b$f;->a:Lio/bidmachine/analytics/internal/u/b$f;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Y29tLmdvb2dsZS5hbmRyb2lkLnBsYXkuYmlsbGluZ2NsaWVudC52ZXJzaW9u"

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.g (io.bidmachine.analytics.internal.u.b$g)
.class final Lio/bidmachine/analytics/internal/u/b$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/u/b$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/b$g;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/u/b$g;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/u/b$g;->a:Lio/bidmachine/analytics/internal/u/b$g;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.h (io.bidmachine.analytics.internal.u.b$h)
.class final Lio/bidmachine/analytics/internal/u/b$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/u/b$h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/b$h;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/u/b$h;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/u/b$h;->a:Lio/bidmachine/analytics/internal/u/b$h;

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
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "Y29tLmFuZHJvaWQudmVuZGluZy5CSUxMSU5H"

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.i (io.bidmachine.analytics.internal.u.b$i)
.class public final Lio/bidmachine/analytics/internal/u/b$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
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
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/u/b$i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/u/b;->a()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/u/b;->b()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/u/b;->c()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/u/b;->d()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/u/b;->e()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/u/b;->f()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/u/b;->g()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/u/b;->h()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.j (io.bidmachine.analytics.internal.u.b$j)
.class final Lio/bidmachine/analytics/internal/u/b$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/u/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b$j;->a:Lio/bidmachine/analytics/internal/u/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/a/f;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b$j;->a:Lio/bidmachine/analytics/internal/u/b;

    .line 2
    :try_start_2
    invoke-static {v0}, Lio/bidmachine/analytics/internal/u/b;->f(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    sget-object v2, Lio/bidmachine/analytics/internal/a/f;->d:Lio/bidmachine/analytics/internal/a/f$a;

    invoke-virtual {v2, v1}, Lio/bidmachine/analytics/internal/a/f$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/a/f;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_12

    :cond_11
    return-object v1

    .line 3
    :cond_12
    :goto_12
    invoke-static {v0}, Lio/bidmachine/analytics/internal/u/b;->d(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    sget-object v1, Lio/bidmachine/analytics/internal/a/f;->d:Lio/bidmachine/analytics/internal/a/f$a;

    invoke-virtual {v1, v0}, Lio/bidmachine/analytics/internal/a/f$a;->a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/a/f;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_1f

    return-object v0

    :catchall_1f
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$j;->a()Lio/bidmachine/analytics/internal/a/f;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.k (io.bidmachine.analytics.internal.u.b$k)
.class final Lio/bidmachine/analytics/internal/u/b$k;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/b;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/u/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/b;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b$k;->b:Lio/bidmachine/analytics/internal/u/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/u/b$k;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/u/b$k;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/u/b$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/u/b$k;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b$k;->b:Lio/bidmachine/analytics/internal/u/b;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/analytics/internal/u/b$k;-><init>(Lio/bidmachine/analytics/internal/u/b;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/u/b$k;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/analytics/internal/u/b$k;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    if-ne v1, v2, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    :cond_17
    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/b$k;->b:Lio/bidmachine/analytics/internal/u/b;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/u/b;->a(Lio/bidmachine/analytics/internal/u/b;)Lio/bidmachine/analytics/internal/u/c;

    move-result-object p1

    if-nez p1, :cond_2a

    .line 3
    iput v2, p0, Lio/bidmachine/analytics/internal/u/b$k;->a:I

    const-wide/16 v3, 0x64

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_17

    return-object v0

    .line 5
    :cond_2a
    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/b$k;->b:Lio/bidmachine/analytics/internal/u/b;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/u/b;->a(Lio/bidmachine/analytics/internal/u/b;)Lio/bidmachine/analytics/internal/u/c;

    move-result-object p1

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/u/c;->M()Lio/bidmachine/analytics/internal/u/a;

    move-result-object p1

    return-object p1

    :cond_37
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.bidmachine.analytics.internal.u.b.l (io.bidmachine.analytics.internal.u.b$l)
.class final Lio/bidmachine/analytics/internal/u/b$l;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/u/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b$l;->a:Lio/bidmachine/analytics/internal/u/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b$l;->a:Lio/bidmachine/analytics/internal/u/b;

    sget-object v1, Lio/bidmachine/analytics/internal/u/b;->l:Lio/bidmachine/analytics/internal/u/b$i;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/b$i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/analytics/internal/u/b;->a(Lio/bidmachine/analytics/internal/u/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.m (io.bidmachine.analytics.internal.u.b$m)
.class final Lio/bidmachine/analytics/internal/u/b$m;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/u/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b$m;->a:Lio/bidmachine/analytics/internal/u/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b$m;->a:Lio/bidmachine/analytics/internal/u/b;

    sget-object v1, Lio/bidmachine/analytics/internal/u/b;->l:Lio/bidmachine/analytics/internal/u/b$i;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/u/b$i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/analytics/internal/u/b;->a(Lio/bidmachine/analytics/internal/u/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.n (io.bidmachine.analytics.internal.u.b$n)
.class final Lio/bidmachine/analytics/internal/u/b$n;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/u/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b$n;->a:Lio/bidmachine/analytics/internal/u/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b$n;->a:Lio/bidmachine/analytics/internal/u/b;

    invoke-static {v0}, Lio/bidmachine/analytics/internal/u/b;->b(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$n;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.o (io.bidmachine.analytics.internal.u.b$o)
.class final Lio/bidmachine/analytics/internal/u/b$o;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/u/b$o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/u/b$o;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/u/b$o;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/u/b$o;->a:Lio/bidmachine/analytics/internal/u/b$o;

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
.method public final a()Lkotlin/random/Random;
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/random/RandomKt;->Random(J)Lkotlin/random/Random;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$o;->a()Lkotlin/random/Random;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.p (io.bidmachine.analytics.internal.u.b$p)
.class final Lio/bidmachine/analytics/internal/u/b$p;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/u/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b$p;->a:Lio/bidmachine/analytics/internal/u/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b$p;->a:Lio/bidmachine/analytics/internal/u/b;

    invoke-static {v0}, Lio/bidmachine/analytics/internal/u/b;->e(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b$p;->a:Lio/bidmachine/analytics/internal/u/b;

    invoke-static {v0}, Lio/bidmachine/analytics/internal/u/b;->d(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lio/bidmachine/analytics/internal/u/b$p;->a:Lio/bidmachine/analytics/internal/u/b;

    invoke-static {v0}, Lio/bidmachine/analytics/internal/u/b;->f(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/u/b$p;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.u.b.q (io.bidmachine.analytics.internal.u.b$q)
.class public final Lio/bidmachine/analytics/internal/u/b$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/u/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/u/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/u/b;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/analytics/internal/u/b$q;->a:Lio/bidmachine/analytics/internal/u/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/b$q;->a:Lio/bidmachine/analytics/internal/u/b;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/u/b;->l()Lio/bidmachine/analytics/internal/a/f;

    move-result-object v3

    if-nez v3, :cond_9

    return-void

    .line 6
    :cond_9
    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/b$q;->a:Lio/bidmachine/analytics/internal/u/b;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/u/b;->h(Lio/bidmachine/analytics/internal/u/b;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_32

    iget-object v1, p0, Lio/bidmachine/analytics/internal/u/b$q;->a:Lio/bidmachine/analytics/internal/u/b;

    move-object v2, v0

    .line 7
    new-instance v0, Lio/bidmachine/analytics/internal/u/c;

    move-object v5, v1

    .line 8
    new-instance v1, Lio/bidmachine/analytics/internal/u/d$a;

    const/4 v6, 0x2

    invoke-direct {v1, p2, v2, v6, v2}, Lio/bidmachine/analytics/internal/u/d$a;-><init>(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    invoke-static {v5}, Lio/bidmachine/analytics/internal/u/b;->c(Lio/bidmachine/analytics/internal/u/b;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v5}, Lio/bidmachine/analytics/internal/u/b;->g(Lio/bidmachine/analytics/internal/u/b;)Lkotlin/random/Random;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/random/Random;->nextLong()J

    move-result-wide v5

    .line 13
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/analytics/internal/u/c;-><init>(Lio/bidmachine/analytics/internal/u/d;Ljava/lang/String;Lio/bidmachine/analytics/internal/a/f;Ljava/lang/String;J)V

    goto :goto_33

    :cond_32
    move-object v2, v0

    .line 14
    :goto_33
    invoke-static {p1, v0}, Lio/bidmachine/analytics/internal/u/b;->a(Lio/bidmachine/analytics/internal/u/b;Lio/bidmachine/analytics/internal/u/c;)V

    .line 23
    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/b$q;->a:Lio/bidmachine/analytics/internal/u/b;

    invoke-static {p1}, Lio/bidmachine/analytics/internal/u/b;->a(Lio/bidmachine/analytics/internal/u/b;)Lio/bidmachine/analytics/internal/u/c;

    move-result-object p2

    if-eqz p2, :cond_40

    const/4 p2, 0x1

    goto :goto_41

    :cond_40
    const/4 p2, 0x0

    :goto_41
    invoke-static {p1, p2}, Lio/bidmachine/analytics/internal/u/b;->a(Lio/bidmachine/analytics/internal/u/b;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/b$q;->a:Lio/bidmachine/analytics/internal/u/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/analytics/internal/u/b;->a(Lio/bidmachine/analytics/internal/u/b;Z)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/analytics/internal/u/b$q;->a:Lio/bidmachine/analytics/internal/u/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/analytics/internal/u/b;->a(Lio/bidmachine/analytics/internal/u/b;Lio/bidmachine/analytics/internal/u/c;)V

    return-void
.end method
