###### Class io.bidmachine.rendering.internal.controller.b (io.bidmachine.rendering.internal.controller.b)
.class public final Lio/bidmachine/rendering/internal/controller/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/controller/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/controller/b$a;,
        Lio/bidmachine/rendering/internal/controller/b$b;,
        Lio/bidmachine/rendering/internal/controller/b$c;,
        Lio/bidmachine/rendering/internal/controller/b$d;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/model/AdParams;

.field public final b:Lio/bidmachine/rendering/internal/controller/c;

.field public final c:Lio/bidmachine/util/Tag;

.field public final d:Landroid/content/Context;

.field public final e:Lio/bidmachine/rendering/internal/state/a;

.field public final f:Ljava/util/Queue;

.field public final g:Ljava/util/Set;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Lio/bidmachine/rendering/internal/e;

.field public l:Lio/bidmachine/rendering/internal/view/f;

.field public volatile m:Lio/bidmachine/rendering/internal/controller/e;

.field public volatile n:Lio/bidmachine/rendering/internal/controller/e;

.field public final o:Lio/bidmachine/rendering/model/Orientation;


# direct methods
.method public static synthetic $r8$lambda$AR6kIGpShMIl-OqSucSAzCO4Az8(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/AdPhaseParams;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/AdPhaseParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/rendering/model/AdParams;Lio/bidmachine/rendering/internal/controller/c;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adControllerListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/b;->a:Lio/bidmachine/rendering/model/AdParams;

    .line 3
    iput-object p3, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    .line 6
    new-instance p3, Lio/bidmachine/util/Tag;

    const-string v0, "AdController"

    invoke-direct {p3, v0}, Lio/bidmachine/util/Tag;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->d:Landroid/content/Context;

    .line 8
    new-instance p1, Lio/bidmachine/rendering/internal/state/c;

    invoke-virtual {p3}, Lio/bidmachine/util/Tag;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lio/bidmachine/rendering/internal/state/c;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    .line 10
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->g:Ljava/util/Set;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance p1, Lio/bidmachine/rendering/internal/e;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p3, v0, p3}, Lio/bidmachine/rendering/internal/e;-><init>(Lio/bidmachine/rendering/internal/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->k:Lio/bidmachine/rendering/internal/e;

    .line 15
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/AdParams;->getOrientation()Lio/bidmachine/rendering/model/Orientation;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->o:Lio/bidmachine/rendering/model/Orientation;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/rendering/internal/controller/c;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/controller/b;->d(Lio/bidmachine/rendering/internal/controller/e;)V

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/AdPhaseParams;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->l:Lio/bidmachine/rendering/internal/view/f;

    if-eqz v0, :cond_a

    return-void

    .line 656
    :cond_a
    new-instance v0, Lio/bidmachine/rendering/internal/view/f;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lio/bidmachine/rendering/internal/view/f;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/model/AdPhaseParams;)V

    .line 657
    new-instance p1, Lio/bidmachine/rendering/internal/controller/b$c;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/controller/b$c;-><init>(Lio/bidmachine/rendering/internal/controller/b;)V

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/view/f;->setListener(Lio/bidmachine/rendering/internal/view/f$c;)V

    .line 658
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/f;->b()V

    .line 659
    iput-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->l:Lio/bidmachine/rendering/internal/view/f;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 660
    :cond_5
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/rendering/model/animation/AnimationParams;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 672
    :cond_b
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/rendering/internal/state/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->e(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic b(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    move-object p2, v0

    .line 49
    :cond_b
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->e(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/util/Tag;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 10

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->h()Lio/bidmachine/rendering/model/CacheType;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "load (cacheType - %s)"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->a:Lio/bidmachine/rendering/model/AdParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AdParams;->getAdPhaseParamsQueue()Ljava/util/Queue;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 8
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    new-instance v1, Lio/bidmachine/util/Error;

    const-string v2, "Ad phase queue is empty"

    invoke-direct {v1, v2}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lio/bidmachine/rendering/internal/controller/c;->b(Lio/bidmachine/rendering/internal/controller/a;Lio/bidmachine/util/Error;)V

    return-void

    .line 11
    :cond_28
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->l()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 12
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/controller/c;->b(Lio/bidmachine/rendering/internal/controller/a;)V

    return-void

    .line 15
    :cond_34
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v1}, Lio/bidmachine/rendering/internal/state/a;->a()Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_92

    .line 590
    :cond_3d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lio/bidmachine/rendering/model/AdPhaseParams;

    .line 591
    new-instance v6, Lio/bidmachine/util/Tag;

    const-string v1, "AdPhaseController"

    invoke-direct {v6, v1}, Lio/bidmachine/util/Tag;-><init>(Ljava/lang/String;)V

    .line 592
    new-instance v7, Lio/bidmachine/rendering/internal/state/d;

    .line 593
    invoke-virtual {v6}, Lio/bidmachine/util/Tag;->toString()Ljava/lang/String;

    move-result-object v1

    .line 594
    sget-object v2, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object v2

    .line 595
    invoke-direct {v7, v1, v2}, Lio/bidmachine/rendering/internal/state/d;-><init>(Ljava/lang/String;Lio/bidmachine/rendering/internal/j;)V

    .line 600
    new-instance v2, Lio/bidmachine/rendering/internal/controller/f;

    .line 601
    iget-object v3, p0, Lio/bidmachine/rendering/internal/controller/b;->d:Landroid/content/Context;

    .line 603
    iget-object v5, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    .line 606
    new-instance v8, Lio/bidmachine/rendering/internal/controller/b$a;

    invoke-direct {v8, p0}, Lio/bidmachine/rendering/internal/controller/b$a;-><init>(Lio/bidmachine/rendering/internal/controller/b;)V

    .line 607
    invoke-direct/range {v2 .. v8}, Lio/bidmachine/rendering/internal/controller/f;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/model/AdPhaseParams;Ljava/lang/Object;Lio/bidmachine/util/Tag;Lio/bidmachine/rendering/internal/state/d;Lio/bidmachine/rendering/internal/controller/g;)V

    .line 608
    invoke-virtual {p0, v2}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/e;)Z

    goto :goto_41

    .line 619
    :cond_76
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->g:Ljava/util/Set;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 620
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->h()Lio/bidmachine/rendering/model/CacheType;

    move-result-object v0

    sget-object v1, Lio/bidmachine/rendering/internal/controller/b$d;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_97

    const/4 v1, 0x3

    if-eq v0, v1, :cond_93

    :goto_92
    return-void

    .line 635
    :cond_93
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->n()V

    return-void

    .line 636
    :cond_97
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->n()V

    .line 637
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->m()V

    return-void

    .line 638
    :cond_9e
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->m()V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/rendering/model/animation/AnimationParams;)V
    .registers 6

    .line 667
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->k:Lio/bidmachine/rendering/internal/e;

    .line 668
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/controller/b;->c(Lio/bidmachine/rendering/internal/controller/e;)Landroid/view/View;

    move-result-object v1

    .line 670
    new-instance v2, Lio/bidmachine/rendering/internal/controller/b$f;

    invoke-direct {v2, p1, p0}, Lio/bidmachine/rendering/internal/controller/b$f;-><init>(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/rendering/internal/controller/b;)V

    invoke-static {v2}, Lio/bidmachine/rendering/internal/p;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    .line 671
    invoke-virtual {v0, v1, p2, p1}, Lio/bidmachine/rendering/internal/e;->a(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 7

    .line 661
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->n:Lio/bidmachine/rendering/internal/controller/e;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0, p2}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/rendering/model/animation/AnimationParams;)V

    .line 662
    :cond_7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->k:Lio/bidmachine/rendering/internal/e;

    .line 663
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/controller/b;->c(Lio/bidmachine/rendering/internal/controller/e;)Landroid/view/View;

    move-result-object v1

    .line 665
    new-instance v2, Lio/bidmachine/rendering/internal/controller/b$i;

    invoke-direct {v2, p0, p1, p3}, Lio/bidmachine/rendering/internal/controller/b$i;-><init>(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/internal/controller/e;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2}, Lio/bidmachine/rendering/internal/p;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    .line 666
    invoke-virtual {v0, v1, p2, p1}, Lio/bidmachine/rendering/internal/e;->c(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/util/Error;)V
    .registers 4

    if-eqz p2, :cond_7

    .line 689
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/rendering/internal/controller/c;->a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/util/Error;)V

    :cond_7
    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 694
    invoke-static {p0, p2, p2, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 3

    const-string v0, "brokenCreativeEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 711
    :cond_e
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p1}, Lio/bidmachine/rendering/internal/controller/c;->a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/animation/AnimationParams;)V
    .registers 6

    .line 701
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->l:Lio/bidmachine/rendering/internal/view/f;

    if-nez v0, :cond_5

    goto :goto_f

    .line 702
    :cond_5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return-void

    .line 706
    :cond_10
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->k:Lio/bidmachine/rendering/internal/e;

    new-instance v2, Lio/bidmachine/rendering/internal/controller/b$h;

    invoke-direct {v2, v0, p0}, Lio/bidmachine/rendering/internal/controller/b$h;-><init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/internal/controller/b;)V

    invoke-virtual {v1, v0, p1, v2}, Lio/bidmachine/rendering/internal/e;->b(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 5

    .line 673
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    .line 674
    new-instance v1, Lio/bidmachine/rendering/internal/controller/b$e;

    invoke-direct {v1, v0, p0, p2}, Lio/bidmachine/rendering/internal/controller/b$e;-><init>(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/rendering/internal/controller/b;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1}, Lio/bidmachine/rendering/internal/p;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;

    move-result-object p2

    if-nez v0, :cond_11

    .line 683
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 686
    :cond_11
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->k:Lio/bidmachine/rendering/internal/e;

    .line 687
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/b;->c(Lio/bidmachine/rendering/internal/controller/e;)Landroid/view/View;

    move-result-object v0

    .line 688
    invoke-virtual {v1, v0, p1, p2}, Lio/bidmachine/rendering/internal/e;->b(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    .line 639
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onShown (isViewability - %s)"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    if-nez v0, :cond_14

    goto :goto_3b

    :cond_14
    if-eqz p1, :cond_2b

    .line 642
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v1}, Lio/bidmachine/rendering/internal/state/a;->g()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 645
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/b;->f(Lio/bidmachine/rendering/internal/controller/e;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 646
    invoke-static {p0, v2, v2, v1, v2}, Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 648
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v1, p0}, Lio/bidmachine/rendering/internal/controller/c;->c(Lio/bidmachine/rendering/internal/controller/a;)V

    :cond_2b
    if-nez p1, :cond_3b

    .line 650
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {p1}, Lio/bidmachine/rendering/internal/state/a;->m()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 651
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/b;->f(Lio/bidmachine/rendering/internal/controller/e;)V

    .line 652
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/b;->i(Lio/bidmachine/rendering/internal/controller/e;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public final a(Lio/bidmachine/rendering/internal/controller/e;)Z
    .registers 3

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lio/bidmachine/util/Error;)Z
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 700
    :cond_f
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/rendering/internal/controller/c;->b(Lio/bidmachine/rendering/internal/controller/a;Lio/bidmachine/util/Error;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "destroyAdPhaseController (%s)"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/controller/e;->destroy()V

    .line 54
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/controller/b;->e(Lio/bidmachine/rendering/internal/controller/e;)V

    .line 55
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1d

    .line 56
    iput-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    .line 58
    :cond_1d
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->n:Lio/bidmachine/rendering/internal/controller/e;

    if-ne v0, p1, :cond_23

    .line 59
    iput-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->n:Lio/bidmachine/rendering/internal/controller/e;

    :cond_23
    return-void
.end method

.method public final b(Lio/bidmachine/rendering/model/animation/AnimationParams;)V
    .registers 6

    .line 18
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 22
    :cond_b
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/c;->f()V

    .line 23
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    iput-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->n:Lio/bidmachine/rendering/internal/controller/e;

    .line 24
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->i()Lio/bidmachine/rendering/internal/controller/e;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 27
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->n:Lio/bidmachine/rendering/internal/controller/e;

    .line 28
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->n:Lio/bidmachine/rendering/internal/controller/e;

    if-nez v0, :cond_28

    .line 29
    new-instance v0, Lio/bidmachine/util/Error;

    const-string v1, "No ad phase to show"

    invoke-direct {v0, v1}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 30
    :goto_29
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/util/Error;)V

    goto :goto_48

    .line 39
    :cond_2d
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->n:Lio/bidmachine/rendering/internal/controller/e;

    if-eq v1, v0, :cond_40

    .line 40
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/b;->g(Lio/bidmachine/rendering/internal/controller/e;)Z

    .line 41
    new-instance v1, Lio/bidmachine/rendering/internal/controller/b$b;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-direct {v1, p0, v3}, Lio/bidmachine/rendering/internal/controller/b$b;-><init>(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/internal/controller/c;)V

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/controller/e;->a(Lio/bidmachine/rendering/internal/controller/h;)V

    .line 42
    iput-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    .line 44
    :cond_40
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v1, v0}, Lio/bidmachine/rendering/internal/controller/c;->a(Lio/bidmachine/rendering/internal/controller/e;)V

    .line 45
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/model/animation/AnimationParams;)V

    .line 48
    :goto_48
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final b(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 6

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->k:Lio/bidmachine/rendering/internal/e;

    .line 67
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->l:Lio/bidmachine/rendering/internal/view/f;

    .line 68
    new-instance v2, Lio/bidmachine/rendering/internal/controller/b$g;

    invoke-direct {v2, p0, p2}, Lio/bidmachine/rendering/internal/controller/b$g;-><init>(Lio/bidmachine/rendering/internal/controller/b;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1, p1, v2}, Lio/bidmachine/rendering/internal/e;->b(Landroid/view/View;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final b(Lio/bidmachine/util/Error;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->h()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 64
    :cond_e
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/rendering/internal/controller/c;->a(Lio/bidmachine/rendering/internal/controller/a;Lio/bidmachine/util/Error;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, v0, v0, p1, v0}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .registers 5

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "performShow"

    invoke-static {v0, v3, v2}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->s()V

    .line 7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    if-eqz v0, :cond_20

    .line 9
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v1}, Lio/bidmachine/rendering/internal/state/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 10
    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/b;->d(Lio/bidmachine/rendering/internal/controller/e;)V

    :cond_1e
    const/4 v0, 0x1

    return v0

    .line 15
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->t()V

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->m()V

    return v1
.end method

.method public final c(Lio/bidmachine/rendering/internal/controller/e;)Landroid/view/View;
    .registers 2

    .line 9
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/controller/e;->g()Lio/bidmachine/rendering/internal/c;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/c;->d()Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public final c(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->q()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 8
    :cond_11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/rendering/internal/controller/c;->b(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCollapsed"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->q()Z

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/e;->d()V

    :cond_16
    return-void
.end method

.method public final d(Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 2

    .line 5
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/controller/e;->b()V

    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/controller/b;->i(Lio/bidmachine/rendering/internal/controller/e;)V

    return-void
.end method

.method public final d(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->r()Z

    move-result v0

    if-nez v0, :cond_11

    .line 8
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 12
    :cond_11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/rendering/internal/controller/c;->a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public destroy()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "destroy"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->k:Lio/bidmachine/rendering/internal/e;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/e;->a()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    if-eqz v0, :cond_16

    invoke-virtual {p0, v0}, Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/rendering/internal/controller/e;)V

    .line 5
    :cond_16
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    .line 471
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/internal/controller/e;

    .line 472
    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/rendering/internal/controller/e;)V

    goto :goto_1c

    .line 474
    :cond_31
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->c()V

    .line 475
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->l:Lio/bidmachine/rendering/internal/view/f;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/f;->a()V

    :cond_3b
    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->l:Lio/bidmachine/rendering/internal/view/f;

    .line 477
    invoke-static {}, Lio/bidmachine/rendering/Rendering;->getMediaFileCacheManagerProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 478
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/cache/MediaFileCacheManager;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    invoke-virtual {v0, v1}, Lio/bidmachine/util/cache/MediaFileCacheManager;->unholdMediaFiles(Ljava/lang/Object;)V

    .line 480
    :cond_4f
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->destroy()V

    return-void
.end method

.method public e()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "performHide"

    invoke-static {v0, v3, v2}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    if-eqz v0, :cond_11

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/controller/e;->b(Z)V

    .line 4
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->r()V

    return-void
.end method

.method public final e(Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 3

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    .line 14
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->o()V

    return-void
.end method

.method public final e(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_8
    if-eqz p2, :cond_d

    .line 8
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public f()V
    .registers 4

    .line 492
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onExpanded"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->r()Z

    .line 495
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/e;->f()V

    :cond_16
    return-void
.end method

.method public final f(Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 3

    .line 1
    invoke-interface {p1}, Lio/bidmachine/rendering/internal/controller/e;->h()V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    .line 490
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/controller/e;

    .line 491
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/e;->h()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public g()Lio/bidmachine/rendering/model/Orientation;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->o:Lio/bidmachine/rendering/model/Orientation;

    return-object v0
.end method

.method public final g(Lio/bidmachine/rendering/internal/controller/e;)Z
    .registers 3

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h()Lio/bidmachine/rendering/model/CacheType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->a:Lio/bidmachine/rendering/model/AdParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AdParams;->getCacheType()Lio/bidmachine/rendering/model/CacheType;

    move-result-object v0

    return-object v0
.end method

.method public final h(Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "removeAndDestroyAdPhaseController (%s)"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/controller/b;->g(Lio/bidmachine/rendering/internal/controller/e;)Z

    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/rendering/internal/controller/e;)V

    return-void
.end method

.method public final i()Lio/bidmachine/rendering/internal/controller/e;
    .registers 2

    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/controller/e;

    return-object v0
.end method

.method public final i(Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Lio/bidmachine/rendering/internal/controller/e;->a(Z)V

    .line 4
    :cond_c
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->t()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Lio/bidmachine/rendering/internal/controller/e;->a(Z)V

    :cond_18
    return-void
.end method

.method public final j()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->i()Lio/bidmachine/rendering/internal/controller/e;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    if-eqz v0, :cond_b

    .line 140
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_23

    .line 141
    :cond_b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/internal/controller/e;

    .line 142
    invoke-interface {v1}, Lio/bidmachine/rendering/internal/controller/e;->c()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->c()Z

    move-result v0

    return v0
.end method

.method public final m()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2c

    .line 5
    :cond_b
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/internal/controller/e;

    .line 6
    iget-object v2, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "loadAdPhase (%s)"

    invoke-static {v2, v4, v3}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-interface {v1}, Lio/bidmachine/rendering/internal/controller/e;->a()V

    goto :goto_11

    :cond_2c
    :goto_2c
    return-void
.end method

.method public final n()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->a:Lio/bidmachine/rendering/model/AdParams;

    invoke-virtual {v0}, Lio/bidmachine/rendering/model/AdParams;->getPlaceholderParams()Lio/bidmachine/rendering/model/AdPhaseParams;

    move-result-object v0

    .line 2
    new-instance v1, Lio/bidmachine/rendering/internal/controller/b$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/rendering/internal/controller/b$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/AdPhaseParams;)V

    invoke-static {v1}, Lio/bidmachine/rendering/utils/UiUtils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->h()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 5
    :cond_9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->m:Lio/bidmachine/rendering/internal/controller/e;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/e;->e()V

    .line 6
    :cond_10
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->f:Ljava/util/Queue;

    .line 237
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/internal/controller/e;

    .line 238
    invoke-interface {v1}, Lio/bidmachine/rendering/internal/controller/e;->e()V

    goto :goto_16

    .line 240
    :cond_26
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/controller/c;->d(Lio/bidmachine/rendering/internal/controller/a;)V

    return-void
.end method

.method public final p()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->p()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 5
    :cond_9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/controller/c;->a(Lio/bidmachine/rendering/internal/controller/a;)V

    return-void
.end method

.method public final q()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->e:Lio/bidmachine/rendering/internal/state/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/state/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_b
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p0}, Lio/bidmachine/rendering/internal/controller/c;->b(Lio/bidmachine/rendering/internal/controller/a;)V

    return v1
.end method

.method public final r()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->l:Lio/bidmachine/rendering/internal/view/f;

    if-nez v0, :cond_5

    goto :goto_f

    .line 2
    :cond_5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return-void

    .line 6
    :cond_10
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/f;->e()V

    .line 7
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v1, v0}, Lio/bidmachine/rendering/internal/controller/c;->b(Lio/bidmachine/rendering/internal/view/f;)V

    return-void
.end method

.method public final s()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b;->q()Z

    return-void
.end method

.method public final t()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->l:Lio/bidmachine/rendering/internal/view/f;

    if-nez v0, :cond_5

    goto :goto_f

    .line 2
    :cond_5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_f
    return-void

    .line 6
    :cond_10
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b;->b:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v1, v0}, Lio/bidmachine/rendering/internal/controller/c;->a(Lio/bidmachine/rendering/internal/view/f;)V

    .line 7
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/f;->f()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b;->c:Lio/bidmachine/util/Tag;

    invoke-virtual {v0}, Lio/bidmachine/util/Tag;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.controller.b.a (io.bidmachine.rendering.internal.controller.b$a)
.class public final Lio/bidmachine/rendering/internal/controller/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/controller/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/controller/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 5

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/controller/b;->c(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/util/Tag;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onAdPhaseCommitVisible (%s)"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/controller/b;->e(Lio/bidmachine/rendering/internal/controller/e;)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/util/Error;)V
    .registers 7

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/controller/b;->c(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/util/Tag;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onAdPhaseFailToLoad (%s) - %s"

    invoke-static {v0, v2, v1}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/controller/b;->h(Lio/bidmachine/rendering/internal/controller/e;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/controller/b;->l()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/rendering/internal/state/a;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 10
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    .line 12
    new-instance v1, Lio/bidmachine/util/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to load after show (CacheType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v3}, Lio/bidmachine/rendering/internal/controller/b;->h()Lio/bidmachine/rendering/model/CacheType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lio/bidmachine/util/Error;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/util/Error;)V

    return-void

    .line 18
    :cond_5c
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/controller/b;->p()V

    return-void

    .line 21
    :cond_62
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/util/Error;)Z

    return-void
.end method

.method public b(Lio/bidmachine/rendering/internal/controller/e;)V
    .registers 4

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/controller/b;->c(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/util/Tag;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "onAdPhaseLoaded (%s)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/controller/b;->k()Z

    move-result p1

    if-nez p1, :cond_1d

    return-void

    .line 7
    :cond_1d
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/controller/b;->q()Z

    return-void
.end method

.method public b(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/util/Error;)V
    .registers 5

    const-string v0, "adPhaseController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/controller/b;->c(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/util/Tag;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "onAdPhaseCommitVisibleFailed (%s) - %s"

    invoke-static {v0, v1, p1}, Lio/bidmachine/rendering/internal/t;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$a;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/util/Error;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.controller.b.C1176b (io.bidmachine.rendering.internal.controller.b$b)
.class public final Lio/bidmachine/rendering/internal/controller/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/controller/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/controller/c;

.field public final synthetic b:Lio/bidmachine/rendering/internal/controller/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/internal/controller/c;)V
    .registers 4

    const-string v0, "adControllerListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$b;->b:Lio/bidmachine/rendering/internal/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/b$b;->a:Lio/bidmachine/rendering/internal/controller/c;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->a:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/c;->a()V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 3

    const-string v0, "brokenCreativeEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->b:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 3

    const-string v0, "privacySheetParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->a:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p1}, Lio/bidmachine/rendering/internal/controller/c;->a(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->b:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->d(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public a(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->a:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/rendering/internal/controller/c;->a(Lio/bidmachine/util/SystemComponent;Lio/bidmachine/rendering/model/ClickData;)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->a:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/c;->b()V

    return-void
.end method

.method public b(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->b:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->c(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public c(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->b:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/controller/b;->j()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->b:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/rendering/model/animation/AnimationParams;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->b:Lio/bidmachine/rendering/internal/controller/b;

    invoke-static {v0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 5
    :cond_18
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b$b;->d(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->a:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/c;->d()V

    return-void
.end method

.method public d(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->b:Lio/bidmachine/rendering/internal/controller/b;

    invoke-static {v0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$b;->a:Lio/bidmachine/rendering/internal/controller/c;

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/c;->e()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.controller.b.c (io.bidmachine.rendering.internal.controller.b$c)
.class public final Lio/bidmachine/rendering/internal/controller/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/view/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/controller/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$c;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V
    .registers 3

    const-string v0, "brokenCreativeEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$c;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/model/BrokenCreativeEvent;)V

    return-void
.end method

.method public a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$c;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onLoaded()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$c;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/controller/b;->s()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.controller.b.d (io.bidmachine.rendering.internal.controller.b$d)
.class public abstract synthetic Lio/bidmachine/rendering/internal/controller/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "d"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/model/CacheType;->values()[Lio/bidmachine/rendering/model/CacheType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/CacheType;->FullLoad:Lio/bidmachine/rendering/model/CacheType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/CacheType;->PartialLoad:Lio/bidmachine/rendering/model/CacheType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/rendering/model/CacheType;->StreamLoad:Lio/bidmachine/rendering/model/CacheType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/bidmachine/rendering/internal/controller/b$d;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.rendering.internal.controller.b.e (io.bidmachine.rendering.internal.controller.b$e)
.class public final Lio/bidmachine/rendering/internal/controller/b$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/controller/e;

.field public final synthetic b:Lio/bidmachine/rendering/internal/controller/b;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/rendering/internal/controller/b;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$e;->a:Lio/bidmachine/rendering/internal/controller/e;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/b$e;->b:Lio/bidmachine/rendering/internal/controller/b;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/controller/b$e;->c:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$e;->a:Lio/bidmachine/rendering/internal/controller/e;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/controller/e;->b(Z)V

    goto :goto_b

    :catchall_9
    move-exception v0

    goto :goto_1c

    .line 2
    :cond_b
    :goto_b
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$e;->b:Lio/bidmachine/rendering/internal/controller/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/rendering/internal/controller/c;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/c;->c()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_9

    .line 4
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$e;->c:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1b
    return-void

    .line 5
    :goto_1c
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b$e;->c:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_23

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_23
    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b$e;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.controller.b.f (io.bidmachine.rendering.internal.controller.b$f)
.class public final Lio/bidmachine/rendering/internal/controller/b$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/rendering/model/animation/AnimationParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/controller/e;

.field public final synthetic b:Lio/bidmachine/rendering/internal/controller/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/rendering/internal/controller/b;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$f;->a:Lio/bidmachine/rendering/internal/controller/e;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/b$f;->b:Lio/bidmachine/rendering/internal/controller/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$f;->a:Lio/bidmachine/rendering/internal/controller/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/controller/e;->b(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$f;->b:Lio/bidmachine/rendering/internal/controller/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b$f;->a:Lio/bidmachine/rendering/internal/controller/e;

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/controller/b;->h(Lio/bidmachine/rendering/internal/controller/e;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b$f;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.controller.b.g (io.bidmachine.rendering.internal.controller.b$g)
.class public final Lio/bidmachine/rendering/internal/controller/b$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/b;->b(Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/controller/b;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/b;Lkotlin/jvm/functions/Function0;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$g;->a:Lio/bidmachine/rendering/internal/controller/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/b$g;->b:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$g;->a:Lio/bidmachine/rendering/internal/controller/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/rendering/internal/controller/c;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/rendering/internal/controller/c;->g()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$g;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b$g;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.controller.b.h (io.bidmachine.rendering.internal.controller.b$h)
.class public final Lio/bidmachine/rendering/internal/controller/b$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/model/animation/AnimationParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/f;

.field public final synthetic b:Lio/bidmachine/rendering/internal/controller/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/f;Lio/bidmachine/rendering/internal/controller/b;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$h;->a:Lio/bidmachine/rendering/internal/view/f;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/b$h;->b:Lio/bidmachine/rendering/internal/controller/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$h;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/f;->e()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$h;->b:Lio/bidmachine/rendering/internal/controller/b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/b;)Lio/bidmachine/rendering/internal/controller/c;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b$h;->a:Lio/bidmachine/rendering/internal/view/f;

    invoke-interface {v0, v1}, Lio/bidmachine/rendering/internal/controller/c;->c(Lio/bidmachine/rendering/internal/view/f;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b$h;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.controller.b.i (io.bidmachine.rendering.internal.controller.b$i)
.class public final Lio/bidmachine/rendering/internal/controller/b$i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/e;Lio/bidmachine/rendering/model/animation/AnimationParams;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/controller/b;

.field public final synthetic b:Lio/bidmachine/rendering/internal/controller/e;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/internal/controller/e;Lkotlin/jvm/functions/Function0;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$i;->a:Lio/bidmachine/rendering/internal/controller/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/b$i;->b:Lio/bidmachine/rendering/internal/controller/e;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/controller/b$i;->c:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$i;->a:Lio/bidmachine/rendering/internal/controller/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b$i;->b:Lio/bidmachine/rendering/internal/controller/e;

    invoke-static {v0, v1}, Lio/bidmachine/rendering/internal/controller/b;->a(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/internal/controller/e;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$i;->c:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_e
    return-void

    :catchall_f
    move-exception v0

    .line 4
    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b$i;->c:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_17
    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/controller/b$i;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.controller.b$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.controller.b$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/controller/b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/rendering/internal/s;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/controller/b;

.field public final synthetic f$1:Lio/bidmachine/rendering/model/AdPhaseParams;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/AdPhaseParams;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/controller/b;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/controller/b$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/rendering/model/AdPhaseParams;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/controller/b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/controller/b$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/rendering/model/AdPhaseParams;

    invoke-static {v0, v1}, Lio/bidmachine/rendering/internal/controller/b;->$r8$lambda$AR6kIGpShMIl-OqSucSAzCO4Az8(Lio/bidmachine/rendering/internal/controller/b;Lio/bidmachine/rendering/model/AdPhaseParams;)V

    return-void
.end method
