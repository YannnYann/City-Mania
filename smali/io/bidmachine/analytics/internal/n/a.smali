###### Class io.bidmachine.analytics.internal.n.a (io.bidmachine.analytics.internal.n.a)
.class public final Lio/bidmachine/analytics/internal/n/a;
.super Lio/bidmachine/analytics/internal/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/n/a$j;,
        Lio/bidmachine/analytics/internal/n/a$i;
    }
.end annotation


# static fields
.field public static final q:Lio/bidmachine/analytics/internal/n/a$i;

.field private static final r:Lkotlin/Lazy;

.field private static final s:Lkotlin/Lazy;

.field private static final t:Lkotlin/Lazy;

.field private static final u:Lkotlin/Lazy;

.field private static final v:Lkotlin/Lazy;

.field private static final w:Lkotlin/Lazy;

.field private static final x:Lkotlin/Lazy;

.field private static final y:Lkotlin/Lazy;


# instance fields
.field private final k:Lio/bidmachine/analytics/internal/a/a;

.field private final l:Lio/bidmachine/analytics/internal/n/a$j;

.field private final m:Ljava/lang/String;

.field private final n:Lkotlin/Lazy;

.field private o:Ljava/util/List;

.field private volatile p:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/analytics/internal/n/a$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/n/a$i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/analytics/internal/n/a;->q:Lio/bidmachine/analytics/internal/n/a$i;

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/n/a$d;->a:Lio/bidmachine/analytics/internal/n/a$d;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/n/a;->r:Lkotlin/Lazy;

    .line 9
    sget-object v0, Lio/bidmachine/analytics/internal/n/a$c;->a:Lio/bidmachine/analytics/internal/n/a$c;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/n/a;->s:Lkotlin/Lazy;

    .line 15
    sget-object v0, Lio/bidmachine/analytics/internal/n/a$b;->a:Lio/bidmachine/analytics/internal/n/a$b;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/n/a;->t:Lkotlin/Lazy;

    .line 21
    sget-object v0, Lio/bidmachine/analytics/internal/n/a$a;->a:Lio/bidmachine/analytics/internal/n/a$a;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/n/a;->u:Lkotlin/Lazy;

    .line 27
    sget-object v0, Lio/bidmachine/analytics/internal/n/a$h;->a:Lio/bidmachine/analytics/internal/n/a$h;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/n/a;->v:Lkotlin/Lazy;

    .line 33
    sget-object v0, Lio/bidmachine/analytics/internal/n/a$f;->a:Lio/bidmachine/analytics/internal/n/a$f;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/n/a;->w:Lkotlin/Lazy;

    .line 39
    sget-object v0, Lio/bidmachine/analytics/internal/n/a$g;->a:Lio/bidmachine/analytics/internal/n/a$g;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/n/a;->x:Lkotlin/Lazy;

    .line 45
    sget-object v0, Lio/bidmachine/analytics/internal/n/a$e;->a:Lio/bidmachine/analytics/internal/n/a$e;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/bidmachine/analytics/internal/n/a;->y:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/internal/n/a$j;Lio/bidmachine/analytics/internal/I/f;)V
    .registers 4

    .line 4
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/m/a;-><init>(Lio/bidmachine/analytics/internal/a/a;)V

    .line 5
    iput-object p1, p0, Lio/bidmachine/analytics/internal/n/a;->k:Lio/bidmachine/analytics/internal/a/a;

    .line 6
    iput-object p2, p0, Lio/bidmachine/analytics/internal/n/a;->l:Lio/bidmachine/analytics/internal/n/a$j;

    .line 10
    const-string p1, "bic"

    iput-object p1, p0, Lio/bidmachine/analytics/internal/n/a;->m:Ljava/lang/String;

    .line 13
    new-instance p1, Lio/bidmachine/analytics/internal/n/a$l;

    invoke-direct {p1, p3}, Lio/bidmachine/analytics/internal/n/a$l;-><init>(Lio/bidmachine/analytics/internal/I/f;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/n/a;->n:Lkotlin/Lazy;

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/n/a;->o:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/internal/n/a$j;Lio/bidmachine/analytics/internal/I/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_a

    .line 1
    sget-object p2, Lio/bidmachine/analytics/internal/n/a;->q:Lio/bidmachine/analytics/internal/n/a$i;

    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/n/a$i;->d()Lio/bidmachine/analytics/internal/n/a$j;

    move-result-object p2

    :cond_a
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_14

    .line 2
    sget-object p3, Lio/bidmachine/analytics/internal/I/f;->g:Lio/bidmachine/analytics/internal/I/f$d;

    invoke-virtual {p3}, Lio/bidmachine/analytics/internal/I/f$d;->a()Lio/bidmachine/analytics/internal/I/f;

    move-result-object p3

    .line 3
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/n/a;-><init>(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/internal/n/a$j;Lio/bidmachine/analytics/internal/I/f;)V

    return-void
.end method

.method private final a(Landroid/os/Bundle;)V
    .registers 5

    .line 5
    sget-object v0, Lio/bidmachine/analytics/internal/n/a;->q:Lio/bidmachine/analytics/internal/n/a$i;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/n/a$i;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/n/a$i;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n/a;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    return-void

    .line 11
    :cond_32
    iput-object p1, p0, Lio/bidmachine/analytics/internal/n/a;->p:Landroid/os/Bundle;

    .line 12
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n/a;->o:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-le v0, v2, :cond_48

    .line 15
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeFirstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    :cond_48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 18
    iput-object v0, p0, Lio/bidmachine/analytics/internal/n/a;->o:Ljava/util/List;

    .line 25
    invoke-static {p1}, Lio/bidmachine/analytics/internal/I/g;->a(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/m/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lio/bidmachine/analytics/internal/n/a;->p:Landroid/os/Bundle;

    .line 27
    new-instance v0, Lio/bidmachine/analytics/internal/g/h;

    const-string v1, "bic"

    invoke-direct {v0, v1, p1, p2}, Lio/bidmachine/analytics/internal/g/h;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/bidmachine/analytics/internal/m/a;->a(Lio/bidmachine/analytics/internal/g/h;)V

    return-void
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/n/a;->u:Lkotlin/Lazy;

    return-object v0
.end method

.method private final d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x1

    .line 3
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 4
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n/a;->l:Lio/bidmachine/analytics/internal/n/a$j;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n/a$j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_17
    const/4 v5, 0x0

    if-ge v4, v3, :cond_35

    aget-object v6, v2, v4

    .line 7
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_33

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_33

    goto :goto_36

    :catchall_31
    move-exception p1

    goto :goto_4b

    :cond_33
    add-int/2addr v4, v0

    goto :goto_17

    :cond_35
    move-object v6, v5

    :goto_36
    if-nez v6, :cond_3d

    .line 13
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3d
    invoke-virtual {v6, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 16
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_31

    return-object p1

    :goto_4b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/n/a;->t:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic e()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/n/a;->s:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic f()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/n/a;->r:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic g()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/n/a;->y:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic h()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/n/a;->w:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic i()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/n/a;->x:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic j()Lkotlin/Lazy;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/n/a;->v:Lkotlin/Lazy;

    return-object v0
.end method

.method private final l()Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x1

    .line 1
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n/a;->l:Lio/bidmachine/analytics/internal/n/a$j;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n/a$j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_13
    const/4 v5, 0x0

    if-ge v4, v3, :cond_3a

    aget-object v6, v2, v4

    .line 4
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_38

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    if-ne v7, v1, :cond_38

    .line 5
    invoke-virtual {v6, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catchall_36
    move-exception v0

    goto :goto_3f

    :cond_38
    add-int/2addr v4, v0

    goto :goto_13

    .line 9
    :cond_3a
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_36

    return-object v0

    :goto_3f
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lio/bidmachine/analytics/internal/i/a$b;)V
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lio/bidmachine/analytics/internal/m/a;->a(Lio/bidmachine/analytics/internal/i/a$b;)V

    .line 4
    iget-object p1, p0, Lio/bidmachine/analytics/internal/n/a;->l:Lio/bidmachine/analytics/internal/n/a$j;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/n/a$j;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method public b(Ljava/util/Map;)Lio/bidmachine/analytics/internal/m/a$b;
    .registers 14

    .line 2
    new-instance v0, Lio/bidmachine/analytics/internal/m/a$b;

    .line 3
    sget-object v1, Lio/bidmachine/analytics/internal/n/a;->q:Lio/bidmachine/analytics/internal/n/a$i;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n/a$i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1c

    :cond_14
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    :cond_1c
    iget-object v3, p0, Lio/bidmachine/analytics/internal/n/a;->k:Lio/bidmachine/analytics/internal/a/a;

    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/a/a;->e()Lio/bidmachine/util/time/TimeManagerInstance;

    move-result-object v3

    invoke-interface {v3}, Lio/bidmachine/util/time/TimeManagerInstance;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n/a$i;->f()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_37

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_38

    :cond_37
    move-object v8, v6

    .line 6
    :goto_38
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n/a$i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4f

    const/4 v1, 0x1

    invoke-static {p1, v6, v1, v6}, Lio/bidmachine/util/UtilsKt;->toBooleanOrDefault$default(Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_4d
    move v9, p1

    goto :goto_51

    :cond_4f
    const/4 p1, 0x0

    goto :goto_4d

    :goto_51
    const/16 v10, 0x3c

    const/4 v11, 0x0

    move-object v1, v2

    move-wide v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    invoke-direct/range {v0 .. v11}, Lio/bidmachine/analytics/internal/m/a$b;-><init>(Ljava/lang/String;JILjava/lang/Float;Lio/bidmachine/analytics/internal/g/g;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/analytics/internal/i/a$b;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/n/a;->a(Lio/bidmachine/analytics/internal/i/a$b;)V

    return-void
.end method

.method public c(Ljava/util/Map;)Lio/bidmachine/analytics/internal/g/a;
    .registers 6

    .line 2
    sget-object v0, Lio/bidmachine/analytics/internal/n/a;->q:Lio/bidmachine/analytics/internal/n/a$i;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/n/a$i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8f

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8f

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1d

    goto/16 :goto_8f

    .line 5
    :cond_1d
    sget-object v1, Lio/bidmachine/analytics/internal/p/a;->p:Lio/bidmachine/analytics/internal/p/a$K;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p/a$K;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2c

    move v2, v3

    goto :goto_34

    :cond_2c
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p/a$K;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_34
    if-eqz v2, :cond_38

    move v2, v3

    goto :goto_40

    :cond_38
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p/a$K;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_40
    if-eqz v2, :cond_45

    sget-object p1, Lio/bidmachine/analytics/internal/g/a;->a:Lio/bidmachine/analytics/internal/g/a;

    return-object p1

    .line 6
    :cond_45
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p/a$K;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    move v2, v3

    goto :goto_59

    :cond_51
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p/a$K;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_59
    if-eqz v2, :cond_5e

    sget-object p1, Lio/bidmachine/analytics/internal/g/a;->b:Lio/bidmachine/analytics/internal/g/a;

    return-object p1

    .line 7
    :cond_5e
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p/a$K;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    move v2, v3

    goto :goto_72

    :cond_6a
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p/a$K;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_72
    if-eqz v2, :cond_75

    goto :goto_7d

    :cond_75
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p/a$K;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_7d
    if-eqz v3, :cond_82

    sget-object p1, Lio/bidmachine/analytics/internal/g/a;->c:Lio/bidmachine/analytics/internal/g/a;

    return-object p1

    .line 8
    :cond_82
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p/a$K;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8f

    sget-object p1, Lio/bidmachine/analytics/internal/g/a;->d:Lio/bidmachine/analytics/internal/g/a;

    return-object p1

    :cond_8f
    :goto_8f
    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x1

    .line 9
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 11
    sget-object v2, Lio/bidmachine/analytics/internal/n/a;->q:Lio/bidmachine/analytics/internal/n/a$i;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/n/a$i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_18
    const/4 v7, 0x0

    if-ge v6, v4, :cond_32

    aget-object v8, v3, v6

    .line 15
    invoke-static {v8}, Lcom/ironsource/o4$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v9

    if-nez v9, :cond_30

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_30

    goto :goto_33

    :catchall_2e
    move-exception p1

    goto :goto_69

    :cond_30
    add-int/2addr v6, v0

    goto :goto_18

    :cond_32
    move-object v8, v7

    :goto_33
    if-nez v8, :cond_52

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v3, v1

    :goto_3a
    if-ge v5, v3, :cond_52

    aget-object v4, v1, v5

    .line 23
    invoke-static {v4}, Lcom/ironsource/o4$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v6

    if-nez v6, :cond_50

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_50

    move-object v8, v4

    goto :goto_52

    :cond_50
    add-int/2addr v5, v0

    goto :goto_3a

    :cond_52
    :goto_52
    if-nez v8, :cond_59

    .line 31
    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_59
    invoke-virtual {v8, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 35
    invoke-virtual {v8, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_68
    .catchall {:try_start_1 .. :try_end_68} :catchall_2e

    return-object p1

    :goto_69
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;)V
    .registers 2

    .line 0
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a;->k()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public f(Landroid/content/Context;)V
    .registers 8

    .line 2
    invoke-super {p0, p1}, Lio/bidmachine/analytics/internal/m/a;->f(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a;->k()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v3, Lio/bidmachine/analytics/internal/n/a$k;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lio/bidmachine/analytics/internal/n/a$k;-><init>(Lio/bidmachine/analytics/internal/n/a;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final k()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n/a;->n:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final m()Ljava/lang/Object;
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/n/a;->l()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    move-object v1, v2

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    if-nez v1, :cond_45

    .line 6
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 7
    sget-object v0, Lio/bidmachine/analytics/internal/g/h$a;->b:Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "Collector not found"

    invoke-direct {p0, v0, v1}, Lio/bidmachine/analytics/internal/n/a;->a(Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catchall_2d
    move-exception v0

    goto/16 :goto_ae

    .line 10
    :cond_30
    sget-object v0, Lio/bidmachine/analytics/internal/g/h$a;->c:Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "Collector disabled"

    invoke-direct {p0, v0, v1}, Lio/bidmachine/analytics/internal/n/a;->a(Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 16
    :cond_45
    invoke-direct {p0, v1}, Lio/bidmachine/analytics/internal/n/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    move-object v1, v2

    goto :goto_52

    :cond_51
    move-object v1, v0

    :goto_52
    if-nez v1, :cond_76

    .line 19
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 20
    sget-object v0, Lio/bidmachine/analytics/internal/g/h$a;->b:Lio/bidmachine/analytics/internal/g/h$a;

    const-string v1, "List not found"

    invoke-direct {p0, v0, v1}, Lio/bidmachine/analytics/internal/n/a;->a(Lio/bidmachine/analytics/internal/g/h$a;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 24
    :cond_6f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 29
    :cond_76
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_84
    :goto_84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 32
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_84

    .line 34
    invoke-virtual {p0, v3}, Lio/bidmachine/analytics/internal/n/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    move-object v3, v2

    :cond_9f
    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_84

    invoke-direct {p0, v3}, Lio/bidmachine/analytics/internal/n/a;->a(Landroid/os/Bundle;)V

    goto :goto_84

    .line 37
    :cond_a7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 38
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ad
    .catchall {:try_start_0 .. :try_end_ad} :catchall_2d

    return-object v0

    :goto_ae
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.C1128a (io.bidmachine.analytics.internal.n.a$a)
.class final Lio/bidmachine/analytics/internal/n/a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/n/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/n/a$a;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/n/a$a;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/n/a$a;->a:Lio/bidmachine/analytics/internal/n/a$a;

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
    const-string v0, "YW5kcm9pZC5vcy5CdW5kbGU="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.b (io.bidmachine.analytics.internal.n.a$b)
.class final Lio/bidmachine/analytics/internal/n/a$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/n/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/n/a$b;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/n/a$b;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/n/a$b;->a:Lio/bidmachine/analytics/internal/n/a$b;

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
    const-string v0, "Y29tLnNhZmVkay5hbmRyb2lkLnV0aWxzLlBlcnNpc3RlbnRDb25jdXJyZW50SGFzaE1hcA=="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.c (io.bidmachine.analytics.internal.n.a$c)
.class final Lio/bidmachine/analytics/internal/n/a$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/n/a$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/n/a$c;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/n/a$c;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/n/a$c;->a:Lio/bidmachine/analytics/internal/n/a$c;

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
    const-string v0, "Y29tLnNhZmVkay5hbmRyb2lkLmFuYWx5dGljcy5TdGF0c0NvbGxlY3Rvcg=="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.d (io.bidmachine.analytics.internal.n.a$d)
.class final Lio/bidmachine/analytics/internal/n/a$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/n/a$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/n/a$d;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/n/a$d;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/n/a$d;->a:Lio/bidmachine/analytics/internal/n/a$d;

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
.method public final a()Lio/bidmachine/analytics/internal/n/a$j;
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/n/a$j;

    .line 2
    sget-object v1, Lio/bidmachine/analytics/internal/n/a;->q:Lio/bidmachine/analytics/internal/n/a$i;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n/a$i;->c()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n/a$i;->b()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v2, v1}, Lio/bidmachine/analytics/internal/n/a$j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a$d;->a()Lio/bidmachine/analytics/internal/n/a$j;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.e (io.bidmachine.analytics.internal.n.a$e)
.class final Lio/bidmachine/analytics/internal/n/a$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/n/a$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/n/a$e;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/n/a$e;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/n/a$e;->a:Lio/bidmachine/analytics/internal/n/a$e;

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
    const-string v0, "YWRfZm9ybWF0X3R5cGU="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a$e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.f (io.bidmachine.analytics.internal.n.a$f)
.class final Lio/bidmachine/analytics/internal/n/a$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/n/a$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/n/a$f;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/n/a$f;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/n/a$f;->a:Lio/bidmachine/analytics/internal/n/a$f;

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
    const-string v0, "Y2xpY2tfdXJs"

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a$f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.g (io.bidmachine.analytics.internal.n.a$g)
.class final Lio/bidmachine/analytics/internal/n/a$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/n/a$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/n/a$g;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/n/a$g;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/n/a$g;->a:Lio/bidmachine/analytics/internal/n/a$g;

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
    const-string v0, "ZXZlbnRfaWQ="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a$g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.h (io.bidmachine.analytics.internal.n.a$h)
.class final Lio/bidmachine/analytics/internal/n/a$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/n/a$h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/n/a$h;

    invoke-direct {v0}, Lio/bidmachine/analytics/internal/n/a$h;-><init>()V

    sput-object v0, Lio/bidmachine/analytics/internal/n/a$h;->a:Lio/bidmachine/analytics/internal/n/a$h;

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
    const-string v0, "aXNfY2xpY2tlZA=="

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a$h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.i (io.bidmachine.analytics.internal.n.a$i)
.class public final Lio/bidmachine/analytics/internal/n/a$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n/a;
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
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/n/a$i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/n/a;->c()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/n/a;->d()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/n/a;->e()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lio/bidmachine/analytics/internal/n/a$j;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/n/a;->f()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/n/a$j;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/n/a;->g()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/n/a;->h()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/n/a;->i()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/analytics/internal/n/a;->j()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.j (io.bidmachine.analytics.internal.n.a$j)
.class public final Lio/bidmachine/analytics/internal/n/a$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/n/a$j;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/n/a$j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n/a$j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n/a$j;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.k (io.bidmachine.analytics.internal.n.a$k)
.class final Lio/bidmachine/analytics/internal/n/a$k;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/n/a;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/n/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/n/a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/n/a$k;->b:Lio/bidmachine/analytics/internal/n/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/n/a$k;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/n/a$k;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/n/a$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/n/a$k;

    iget-object v0, p0, Lio/bidmachine/analytics/internal/n/a$k;->b:Lio/bidmachine/analytics/internal/n/a;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/analytics/internal/n/a$k;-><init>(Lio/bidmachine/analytics/internal/n/a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/n/a$k;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/analytics/internal/n/a$k;->a:I

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

    .line 4
    :cond_17
    iget-object p1, p0, Lio/bidmachine/analytics/internal/n/a$k;->b:Lio/bidmachine/analytics/internal/n/a;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/n/a;->m()Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 6
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v1, 0x2

    invoke-static {v1, p1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    goto :goto_42

    .line 7
    :cond_2d
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_38

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 10
    :cond_38
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v1, 0x1e

    invoke-static {v1, p1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    .line 12
    :goto_42
    iput v2, p0, Lio/bidmachine/analytics/internal/n/a$k;->a:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_17

    return-object v0
.end method

###### Class io.bidmachine.analytics.internal.n.a.l (io.bidmachine.analytics.internal.n.a$l)
.class final Lio/bidmachine/analytics/internal/n/a$l;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/n/a;-><init>(Lio/bidmachine/analytics/internal/a/a;Lio/bidmachine/analytics/internal/n/a$j;Lio/bidmachine/analytics/internal/I/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/I/f;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/I/f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/n/a$l;->a:Lio/bidmachine/analytics/internal/I/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

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

    iget-object v1, p0, Lio/bidmachine/analytics/internal/n/a$l;->a:Lio/bidmachine/analytics/internal/I/f;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/I/f;->b()Lkotlinx/coroutines/CoroutineDispatcher;

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
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n/a$l;->a()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
