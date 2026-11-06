###### Class com.vungle.ads.internal.presenter.r (com.vungle.ads.internal.presenter.r)
.class public final Lcom/vungle/ads/internal/presenter/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/n;
.implements Lcom/vungle/ads/internal/ui/view/o;


# static fields
.field public static final A:Ljava/util/Map;

.field public static final z:Ljava/util/Set;


# instance fields
.field public final a:Lcom/vungle/ads/internal/ui/view/j;

.field public final b:Lcom/vungle/ads/internal/model/i0;

.field public final c:Lcom/vungle/ads/internal/model/j3;

.field public final d:Lcom/vungle/ads/internal/ui/x;

.field public e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/vungle/ads/internal/omsdk/e;

.field public final g:Lcom/vungle/ads/internal/platform/f;

.field public h:J

.field public i:Lcom/vungle/ads/internal/presenter/a;

.field public j:Z

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m:Ljava/lang/Long;

.field public n:Ljava/lang/String;

.field public final o:Lkotlin/Lazy;

.field public final p:Lkotlin/Lazy;

.field public final q:Lkotlin/Lazy;

.field public final r:Lkotlin/Lazy;

.field public s:Lcom/vungle/ads/internal/presenter/z;

.field public t:Lcom/vungle/ads/internal/presenter/y;

.field public final u:Lkotlin/Lazy;

.field public final v:Lkotlin/Lazy;

.field public w:Z

.field public final x:Lkotlin/Lazy;

.field public y:J


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    const-string v0, "openAppStore"

    const-string v1, "openPrivacy"

    const-string v2, "open"

    const-string v3, "openNonMraid"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/presenter/r;->z:Ljava/util/Set;

    .line 23
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_START_EVENT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    const-string v1, "checkpoint.0"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_CLICK_EVENT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    const-string v2, "clickUrl"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/presenter/r;->A:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/ui/view/j;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/ui/x;Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/omsdk/e;Lcom/vungle/ads/internal/platform/f;)V
    .registers 9

    const-string v0, "adWidget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vungleWebClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    .line 4
    iput-object p3, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    .line 5
    iput-object p4, p0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    .line 6
    iput-object p5, p0, Lcom/vungle/ads/internal/presenter/r;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lcom/vungle/ads/internal/presenter/r;->f:Lcom/vungle/ads/internal/omsdk/e;

    .line 8
    iput-object p7, p0, Lcom/vungle/ads/internal/presenter/r;->g:Lcom/vungle/ads/internal/platform/f;

    .line 9
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/r;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/r;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "adWidget.context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object p4, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p5, Lcom/vungle/ads/internal/presenter/n;

    invoke-direct {p5, p2}, Lcom/vungle/ads/internal/presenter/n;-><init>(Landroid/content/Context;)V

    invoke-static {p4, p5}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/r;->o:Lkotlin/Lazy;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance p5, Lcom/vungle/ads/internal/presenter/o;

    invoke-direct {p5, p2}, Lcom/vungle/ads/internal/presenter/o;-><init>(Landroid/content/Context;)V

    invoke-static {p4, p5}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 16
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/r;->p:Lkotlin/Lazy;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p5, Lcom/vungle/ads/internal/presenter/p;

    invoke-direct {p5, p2}, Lcom/vungle/ads/internal/presenter/p;-><init>(Landroid/content/Context;)V

    invoke-static {p4, p5}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 19
    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/r;->q:Lkotlin/Lazy;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p2, Lcom/vungle/ads/internal/presenter/q;

    invoke-direct {p2, p1}, Lcom/vungle/ads/internal/presenter/q;-><init>(Landroid/content/Context;)V

    invoke-static {p4, p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->r:Lkotlin/Lazy;

    .line 23
    sget-object p1, Lcom/vungle/ads/internal/presenter/m;->a:Lcom/vungle/ads/internal/presenter/m;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->u:Lkotlin/Lazy;

    .line 24
    new-instance p1, Lcom/vungle/ads/internal/presenter/j;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/presenter/j;-><init>(Lcom/vungle/ads/internal/presenter/r;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->v:Lkotlin/Lazy;

    .line 25
    new-instance p1, Lcom/vungle/ads/internal/presenter/d;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/presenter/d;-><init>(Lcom/vungle/ads/internal/presenter/r;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->x:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/presenter/r;)Lcom/vungle/ads/internal/ui/view/j;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    return-object p0
.end method

.method public static final synthetic b(Lcom/vungle/ads/internal/presenter/r;)Lcom/vungle/ads/internal/model/i0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    return-object p0
.end method

.method public static final c(Lcom/vungle/ads/internal/presenter/r;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->i()V

    return-void
.end method

.method public static final d(Lcom/vungle/ads/internal/presenter/r;)V
    .registers 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v6

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->e()Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v4, p0, Lcom/vungle/ads/internal/presenter/r;->m:Ljava/lang/Long;

    .line 7
    iget-object v7, p0, Lcom/vungle/ads/internal/presenter/r;->n:Ljava/lang/String;

    .line 8
    new-instance v1, Lcom/vungle/ads/internal/model/q1;

    const/4 v8, 0x0

    const/16 v9, 0x87

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/vungle/ads/internal/model/q1;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/d1;I)V

    .line 9
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 10
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Lcom/vungle/ads/internal/model/q1;)Lcom/vungle/ads/internal/network/m;

    move-result-object v0

    if-nez v0, :cond_5a

    .line 12
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "MRAIDPresenter"

    const-string v1, "Invalid ri call."

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/vungle/ads/NetworkUnreachable;

    .line 14
    const-string v1, "Error RI API for placement: "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 653
    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void

    .line 657
    :cond_5a
    new-instance v1, Lcom/vungle/ads/internal/presenter/h;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/presenter/h;-><init>(Lcom/vungle/ads/internal/presenter/r;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/network/m;->a(Lcom/vungle/ads/internal/network/a;)V

    return-void
.end method

.method public static final e(Lcom/vungle/ads/internal/presenter/r;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/vungle/ads/internal/presenter/r;->w:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 32
    invoke-static {}, Lcom/vungle/ads/internal/util/z;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 33
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/presenter/r;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 34
    :cond_11
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->i()V

    .line 37
    :goto_14
    new-instance v0, Lcom/vungle/ads/internal/presenter/e;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/presenter/e;-><init>(Lcom/vungle/ads/internal/presenter/r;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(I)V
    .registers 7

    .line 5
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "MRAIDPresenter"

    const-string v1, "detach()"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    move v1, v0

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_18

    move p1, v0

    goto :goto_19

    :cond_18
    move p1, v2

    .line 10
    :goto_19
    iget-object v3, p0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    const/4 v4, 0x0

    .line 11
    iput-object v4, v3, Lcom/vungle/ads/internal/ui/x;->q:Lcom/vungle/ads/internal/omsdk/f;

    .line 12
    iput-object v4, v3, Lcom/vungle/ads/internal/ui/x;->o:Lcom/vungle/ads/internal/ui/view/n;

    if-nez v1, :cond_39

    if-eqz p1, :cond_39

    .line 13
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_39

    .line 14
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz p1, :cond_39

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    .line 15
    iget-object v0, v0, Lcom/vungle/ads/internal/model/j3;->a:Ljava/lang/String;

    .line 16
    const-string v1, "end"

    invoke-virtual {p1, v1, v4, v0}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_39
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->f:Lcom/vungle/ads/internal/omsdk/e;

    .line 20
    iget-boolean v0, p1, Lcom/vungle/ads/internal/omsdk/e;->b:Z

    if-eqz v0, :cond_49

    .line 21
    iget-object v0, p1, Lcom/vungle/ads/internal/omsdk/e;->c:Lcom/iab/omid/library/vungle/adsession/AdSession;

    if-eqz v0, :cond_49

    .line 22
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/AdSession;->finish()V

    .line 23
    sget-wide v0, Lcom/vungle/ads/internal/omsdk/e;->d:J

    goto :goto_4b

    :cond_49
    const-wide/16 v0, 0x0

    .line 25
    :goto_4b
    iput-boolean v2, p1, Lcom/vungle/ads/internal/omsdk/e;->b:Z

    .line 26
    iput-object v4, p1, Lcom/vungle/ads/internal/omsdk/e;->c:Lcom/iab/omid/library/vungle/adsession/AdSession;

    .line 27
    iget-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/ui/view/j;->a(J)V

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .registers 4

    if-eqz p1, :cond_1c

    .line 28
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "MRAIDPresenter"

    const-string v1, "user interaction"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/ads/internal/presenter/r;->h:J

    .line 30
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->x:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/o0;

    .line 31
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/o0;->a(Landroid/view/MotionEvent;)V

    :cond_1c
    return-void
.end method

.method public final a(Lcom/vungle/ads/VungleError;ZLjava/lang/String;)V
    .registers 6

    .line 1823
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 1824
    const-string v0, "handleWebViewException: "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2599
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fatal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2600
    const-string v0, "MRAIDPresenter"

    invoke-static {v0, p3}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p3

    invoke-virtual {p3}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    if-eqz p2, :cond_43

    .line 2606
    iget-object p2, p0, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz p2, :cond_40

    iget-object p3, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    .line 2607
    iget-object p3, p3, Lcom/vungle/ads/internal/model/j3;->a:Ljava/lang/String;

    .line 2608
    invoke-virtual {p2, p1, p3}, Lcom/vungle/ads/internal/presenter/a;->a(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 2609
    :cond_40
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->a()V

    :cond_43
    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/presenter/a;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/presenter/z;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->s:Lcom/vungle/ads/internal/presenter/z;

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/ui/k;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r;->t:Lcom/vungle/ads/internal/presenter/y;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .line 38
    sget-object v0, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance v0, Lcom/vungle/ads/internal/presenter/k;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/presenter/k;-><init>(Lcom/vungle/ads/internal/presenter/r;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 41
    new-instance v0, Lcom/vungle/ads/internal/j2;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->INLINE_INSTALL_STATUS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    const-wide/16 v1, 0x2

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 43
    iput-object v1, v0, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    .line 44
    sget-object v1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INLINE_INSTALL_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1803
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Lcom/vungle/ads/internal/presenter/l;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/internal/presenter/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MRAIDPresenter"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 1804
    sget-object v0, Lcom/vungle/ads/internal/presenter/r;->z:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 1805
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/ads/internal/presenter/r;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_22
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 1806
    new-instance v0, Lcom/vungle/ads/internal/j2;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->BANNER_AUTO_REDIRECT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 1807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1808
    const-string v2, "command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    const-string p1, ", mainFrame: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_26

    .line 1810
    const-string p1, ", url: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/e1;->a(Ljava/lang/String;)V

    .line 1816
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object p2

    const/4 p3, 0x4

    invoke-static {p1, v0, p2, p3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-class v3, Ljava/lang/String;

    const-string v4, "command"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "arguments"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "adClick"

    const/16 v6, 0x29

    const/4 v7, 0x6

    const-string v8, "MRAIDPresenter"

    const-string v9, "adLeftApplication"

    const-string v10, "adWidget.context"

    const/4 v11, 0x4

    const-string v12, "event"

    const-string v14, "url"

    const/4 v15, 0x1

    move-object/from16 v17, v14

    const-string v13, "open"

    const/4 v14, 0x0

    sparse-switch v4, :sswitch_data_6ca

    goto/16 :goto_672

    :sswitch_31
    const-string v2, "useCustomClose"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65c

    goto/16 :goto_672

    :sswitch_3b
    const-string v2, "getAvailableDiskSpace"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto/16 :goto_672

    .line 49
    :cond_45
    :try_start_45
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    .line 52
    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/r;->p:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/util/PathProvider;

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "dir.path"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vungle/ads/internal/util/PathProvider;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 55
    const-string v4, "context"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/a0;->a(Landroid/content/Context;)J

    move-result-wide v4

    .line 58
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vungle/ads/internal/ui/x;->a(JJ)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_75} :catch_76

    return-void

    :catch_76
    move-exception v0

    .line 60
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 61
    const-string v2, "Failed to get available disk space: "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_65c

    .line 63
    :sswitch_8f
    const-string v3, "updateSignals"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    goto/16 :goto_672

    .line 64
    :cond_99
    const-string v0, "signals"

    invoke-static {v0, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b3

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a8

    goto :goto_b3

    .line 66
    :cond_a8
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->q:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/signals/j;

    .line 67
    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/signals/j;->b(Ljava/lang/String;)V

    :cond_b3
    :goto_b3
    return-void

    .line 68
    :sswitch_b4
    const-string v3, "setOrientationProperties"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_be

    goto/16 :goto_672

    .line 69
    :cond_be
    const-string v0, "forceOrientation"

    invoke-static {v0, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f9

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_cd

    goto :goto_f9

    .line 71
    :cond_cd
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "ENGLISH"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const-string v2, "landscape"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 73
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v0, v7}, Lcom/vungle/ads/internal/ui/view/j;->setOrientation(I)V

    return-void

    .line 76
    :cond_eb
    const-string v2, "portrait"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65c

    .line 77
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/ui/view/j;->setOrientation(I)V

    :cond_f9
    :goto_f9
    return-void

    .line 78
    :sswitch_fa
    const-string v3, "error"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_104

    goto/16 :goto_672

    .line 79
    :cond_104
    const-string v0, "code"

    invoke-static {v0, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v3, "fatal"

    invoke-static {v3, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 82
    const-string v4, "errorMessage"

    invoke-static {v4, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_11f

    .line 84
    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->AD_CLOSED_TEMPLATE_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    goto :goto_121

    .line 85
    :cond_11f
    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 86
    :goto_121
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v2, Lcom/vungle/ads/MraidTemplateError;

    invoke-direct {v2, v4, v0}, Lcom/vungle/ads/MraidTemplateError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 89
    sget-object v4, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance v4, Lcom/vungle/ads/internal/presenter/g;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/vungle/ads/internal/presenter/g;-><init>(Lcom/vungle/ads/internal/presenter/r;Lcom/vungle/ads/MraidTemplateError;ZLjava/lang/String;)V

    invoke-static {v4}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 90
    :sswitch_145
    const-string v2, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14f

    goto/16 :goto_672

    .line 91
    :cond_14f
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->a()V

    return-void

    .line 92
    :sswitch_153
    const-string v3, "tpat"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15d

    goto/16 :goto_672

    .line 93
    :cond_15d
    invoke-static {v12, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_216

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16b

    goto/16 :goto_216

    .line 102
    :cond_16b
    sget-object v2, Lcom/vungle/ads/internal/presenter/r;->A:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    if-eqz v2, :cond_183

    .line 104
    sget-object v3, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    new-instance v4, Lcom/vungle/ads/internal/j2;

    invoke-direct {v4, v2}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    invoke-static {v3, v4, v2, v11}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 105
    :cond_183
    const-string v2, "checkpoint.0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a6

    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    .line 107
    iget-object v4, v1, Lcom/vungle/ads/internal/presenter/r;->g:Lcom/vungle/ads/internal/platform/f;

    check-cast v4, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {v4}, Lcom/vungle/ads/internal/platform/c;->e()Ljava/lang/String;

    move-result-object v4

    .line 108
    iget-object v5, v1, Lcom/vungle/ads/internal/presenter/r;->g:Lcom/vungle/ads/internal/platform/f;

    check-cast v5, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/platform/c;->k()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v3, v0, v4, v5}, Lcom/vungle/ads/internal/model/i0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_1c1

    .line 115
    :cond_1a6
    const-string v3, "video.length"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bb

    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    .line 117
    iget-wide v4, v1, Lcom/vungle/ads/internal/presenter/r;->y:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-static {v3, v0, v4, v11}, Lcom/vungle/ads/internal/model/i0;->a(Lcom/vungle/ads/internal/model/i0;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    goto :goto_1c1

    .line 123
    :cond_1bb
    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-static {v3, v0, v14, v7}, Lcom/vungle/ads/internal/model/i0;->a(Lcom/vungle/ads/internal/model/i0;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    :goto_1c1
    if-eqz v3, :cond_1f0

    .line 570
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 571
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->c()Lcom/vungle/ads/internal/network/r;

    move-result-object v5

    .line 572
    new-instance v6, Lcom/vungle/ads/internal/network/p;

    invoke-direct {v6, v4}, Lcom/vungle/ads/internal/network/p;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/network/p;->b(Ljava/lang/String;)Lcom/vungle/ads/internal/network/p;

    move-result-object v4

    .line 574
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/vungle/ads/internal/network/p;->a(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/internal/network/p;

    move-result-object v4

    .line 575
    invoke-virtual {v4}, Lcom/vungle/ads/internal/network/p;->a()Lcom/vungle/ads/internal/network/q;

    move-result-object v4

    .line 576
    invoke-static {v5, v4}, Lcom/vungle/ads/internal/network/r;->a(Lcom/vungle/ads/internal/network/r;Lcom/vungle/ads/internal/network/q;)V

    goto :goto_1c7

    .line 584
    :cond_1f0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65c

    iget-boolean v0, v1, Lcom/vungle/ads/internal/presenter/r;->j:Z

    if-nez v0, :cond_65c

    .line 585
    iput-boolean v15, v1, Lcom/vungle/ads/internal/presenter/r;->j:Z

    .line 586
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v0, :cond_20b

    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adViewed"

    invoke-virtual {v0, v3, v14, v2}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_20b
    sget-object v0, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance v0, Lcom/vungle/ads/internal/presenter/i;

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/presenter/i;-><init>(Lcom/vungle/ads/internal/presenter/r;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 96
    :cond_216
    :goto_216
    new-instance v0, Lcom/vungle/ads/TpatError;

    .line 97
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->EMPTY_TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 98
    const-string v3, "Empty tpat key"

    invoke-direct {v0, v2, v3}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void

    .line 588
    :sswitch_22b
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    goto/16 :goto_672

    :sswitch_233
    const-string v2, "useCustomPrivacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65c

    goto/16 :goto_672

    :sswitch_23d
    const-string v3, "openNonMraid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_247

    goto/16 :goto_672

    .line 589
    :cond_247
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_253

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->a()Ljava/lang/String;

    move-result-object v14

    :cond_253
    move-object/from16 v4, v17

    .line 590
    invoke-static {v4, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {v0}, Lcom/vungle/ads/internal/util/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_283

    .line 593
    new-instance v2, Lcom/vungle/ads/InvalidCTAUrl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid CTA Url ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vungle/ads/InvalidCTAUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v2

    .line 594
    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 598
    :cond_283
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->j()Z

    move-result v2

    if-eqz v2, :cond_291

    const-wide/16 v2, 0x0

    .line 599
    iput-wide v2, v1, Lcom/vungle/ads/internal/presenter/r;->h:J

    .line 600
    invoke-virtual {v1, v13, v0, v15}, Lcom/vungle/ads/internal/presenter/r;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_291
    const-wide/16 v2, 0x0

    .line 603
    iput-wide v2, v1, Lcom/vungle/ads/internal/presenter/r;->h:J

    .line 604
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    .line 605
    new-instance v4, Lcom/vungle/ads/internal/presenter/f;

    invoke-direct {v4, v14, v1}, Lcom/vungle/ads/internal/presenter/f;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/presenter/r;)V

    .line 606
    invoke-static {v14, v0, v2, v3, v4}, Lcom/vungle/ads/internal/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/internal/util/t;Lcom/vungle/ads/internal/ui/m;)Z

    move-result v0

    .line 610
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v2, :cond_2b8

    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v13, v5, v3}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b8
    if-eqz v0, :cond_65c

    .line 613
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v0, :cond_65c

    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v9, v2}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_2c8
    move-object/from16 v4, v17

    .line 614
    const-string v3, "openPrivacy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d4

    goto/16 :goto_672

    .line 615
    :cond_2d4
    invoke-static {v4, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->j()Z

    move-result v2

    if-eqz v2, :cond_2e6

    const-wide/16 v4, 0x0

    .line 619
    iput-wide v4, v1, Lcom/vungle/ads/internal/presenter/r;->h:J

    .line 620
    invoke-virtual {v1, v3, v0, v15}, Lcom/vungle/ads/internal/presenter/r;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2e6
    const-wide/16 v4, 0x0

    if-eqz v0, :cond_343

    .line 623
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2f1

    goto :goto_343

    :cond_2f1
    invoke-static {v0}, Lcom/vungle/ads/internal/util/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f9

    move-wide v2, v4

    goto :goto_345

    .line 629
    :cond_2f9
    iput-wide v4, v1, Lcom/vungle/ads/internal/presenter/r;->h:J

    .line 632
    sget-object v2, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 633
    new-instance v3, Lcom/vungle/ads/internal/j2;

    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->PRIVACY_URL_OPENED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v3, v4}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 634
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v4

    .line 635
    invoke-static {v2, v3, v4, v11}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 639
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/vungle/ads/internal/util/m;->a(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/internal/util/t;)Z

    move-result v2

    if-eqz v2, :cond_32c

    .line 641
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v0, :cond_65c

    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v9, v2}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 643
    :cond_32c
    new-instance v2, Lcom/vungle/ads/PrivacyUrlError;

    .line 644
    const-string v3, "Failed to launch privacy url: "

    invoke-static {v3, v0}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-direct {v2, v0}, Lcom/vungle/ads/PrivacyUrlError;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void

    :cond_343
    :goto_343
    const-wide/16 v2, 0x0

    .line 647
    :goto_345
    iput-wide v2, v1, Lcom/vungle/ads/internal/presenter/r;->h:J

    .line 648
    new-instance v2, Lcom/vungle/ads/PrivacyUrlError;

    .line 649
    const-string v3, "Invalid privacy url: "

    invoke-static {v3}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_353

    .line 650
    const-string v0, "nonePrivacyUrl"

    :cond_353
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vungle/ads/PrivacyUrlError;-><init>(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void

    :sswitch_369
    move-object/from16 v4, v17

    .line 652
    const-string v5, "pingUrl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_375

    goto/16 :goto_672

    .line 653
    :cond_375
    const-string v0, "requestType"

    invoke-static {v0, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_389

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_38a

    :cond_389
    move-object v0, v14

    .line 654
    :goto_38a
    const-string v6, "POST"

    const-string v7, "GET"

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c5

    .line 655
    new-instance v2, Lcom/vungle/ads/TpatError;

    .line 656
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid request type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Only \'GET\' and \'POST\' are supported"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-direct {v2, v3, v0}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void

    .line 665
    :cond_3c5
    invoke-static {v4, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v4

    .line 666
    const-string v6, "requestData"

    invoke-static {v6, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v6

    .line 667
    const-string v8, "retry"

    invoke-static {v8, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 670
    const-string v9, "headers"

    invoke-static {v9, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42a

    .line 673
    :try_start_3e1
    sget-object v9, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 1084
    invoke-interface {v9}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v10

    .line 1085
    const-class v11, Ljava/util/Map;

    sget-object v12, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v13

    invoke-virtual {v12, v13}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v13

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-virtual {v12, v3}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v3

    invoke-static {v11, v13, v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v10, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 1086
    const-string v10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    invoke-interface {v9, v3, v2}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/util/Map;
    :try_end_40f
    .catch Ljava/lang/Exception; {:try_start_3e1 .. :try_end_40f} :catch_410

    goto :goto_42a

    .line 1088
    :catch_410
    new-instance v0, Lcom/vungle/ads/TpatError;

    .line 1089
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 1090
    const-string v4, "Failed to decode header: "

    invoke-static {v4, v2}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1091
    invoke-direct {v0, v3, v2}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    goto/16 :goto_65c

    .line 1098
    :cond_42a
    :goto_42a
    invoke-static {v4}, Lcom/vungle/ads/internal/util/a0;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_445

    .line 1099
    new-instance v0, Lcom/vungle/ads/TpatError;

    .line 1100
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->EMPTY_TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 1101
    const-string v3, "URL is missing in params from a template for generic tpat"

    invoke-direct {v0, v2, v3}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void

    :cond_445
    if-eqz v4, :cond_65c

    .line 1109
    new-instance v2, Lcom/vungle/ads/internal/network/p;

    invoke-direct {v2, v4}, Lcom/vungle/ads/internal/network/p;-><init>(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v2, v14}, Lcom/vungle/ads/internal/network/p;->a(Ljava/util/Map;)Lcom/vungle/ads/internal/network/p;

    move-result-object v2

    .line 1111
    invoke-virtual {v2, v6}, Lcom/vungle/ads/internal/network/p;->a(Ljava/lang/String;)Lcom/vungle/ads/internal/network/p;

    move-result-object v2

    .line 1112
    invoke-virtual {v2, v8}, Lcom/vungle/ads/internal/network/p;->a(Z)Lcom/vungle/ads/internal/network/p;

    move-result-object v2

    .line 1113
    invoke-virtual {v2, v5}, Lcom/vungle/ads/internal/network/p;->b(Ljava/lang/String;)Lcom/vungle/ads/internal/network/p;

    move-result-object v2

    .line 1114
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/network/p;->a(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/internal/network/p;

    move-result-object v2

    .line 1116
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46e

    invoke-virtual {v2}, Lcom/vungle/ads/internal/network/p;->b()V

    goto :goto_471

    :cond_46e
    invoke-virtual {v2}, Lcom/vungle/ads/internal/network/p;->c()V

    .line 1118
    :goto_471
    invoke-virtual {v2}, Lcom/vungle/ads/internal/network/p;->a()Lcom/vungle/ads/internal/network/q;

    move-result-object v0

    .line 1119
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->c()Lcom/vungle/ads/internal/network/r;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/vungle/ads/internal/network/r;->a(Lcom/vungle/ads/internal/network/r;Lcom/vungle/ads/internal/network/q;)V

    return-void

    :sswitch_47d
    move-object/from16 v4, v17

    .line 1120
    const-string v3, "openAppStore"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_489

    goto/16 :goto_672

    .line 1121
    :cond_489
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_496

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_497

    :cond_496
    move-object v0, v14

    .line 1122
    :goto_497
    invoke-static {v4, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v2

    .line 1124
    invoke-static {v2}, Lcom/vungle/ads/internal/util/o;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4c5

    .line 1125
    new-instance v3, Lcom/vungle/ads/InvalidCTAUrl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid InlineInstall Url ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vungle/ads/InvalidCTAUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v3

    .line 1126
    invoke-virtual {v3}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1130
    :cond_4c5
    iget-object v3, v1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v4

    .line 1131
    new-instance v6, Lcom/vungle/ads/internal/presenter/f;

    invoke-direct {v6, v0, v1}, Lcom/vungle/ads/internal/presenter/f;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/presenter/r;)V

    .line 1132
    invoke-static {v0, v14, v3, v4, v6}, Lcom/vungle/ads/internal/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/internal/util/t;Lcom/vungle/ads/internal/ui/m;)Z

    move-result v0

    if-nez v0, :cond_5ae

    const-string v0, "url: "

    if-eqz v2, :cond_596

    .line 1133
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4e9

    goto/16 :goto_596

    .line 1142
    :cond_4e9
    new-instance v3, Landroid/content/Intent;

    .line 1715
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v6, "parse(this)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1716
    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1717
    const-string v4, "com.android.vending"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    iget-object v4, v1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Activity;

    if-nez v4, :cond_50d

    const/high16 v4, 0x10000000

    .line 1719
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1727
    :cond_50d
    iget-object v4, v1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_538

    .line 1728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", message: play store not installed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/presenter/r;->a(Ljava/lang/String;)V

    :goto_534
    const/16 v16, 0x0

    goto/16 :goto_5b0

    .line 1732
    :cond_538
    iget-object v4, v1, Lcom/vungle/ads/internal/presenter/r;->t:Lcom/vungle/ads/internal/presenter/y;

    if-eqz v4, :cond_543

    check-cast v4, Lcom/vungle/ads/internal/ui/k;

    invoke-virtual {v4, v3}, Lcom/vungle/ads/internal/ui/k;->a(Landroid/content/Intent;)Lkotlin/Pair;

    move-result-object v3

    goto :goto_54a

    :cond_543
    new-instance v3, Lkotlin/Pair;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_54a
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v4, :cond_577

    .line 1734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", message: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/presenter/r;->a(Ljava/lang/String;)V

    goto :goto_534

    .line 1735
    :cond_577
    invoke-static {v0, v2}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1736
    new-instance v2, Lcom/vungle/ads/internal/j2;

    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->INLINE_INSTALL_STATUS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v2, v3}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    const-wide/16 v3, 0x1

    .line 1737
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1738
    iput-object v3, v2, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    .line 1739
    sget-object v3, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    move/from16 v16, v15

    goto :goto_5b0

    .line 1134
    :cond_596
    :goto_596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", message: url is null/empty"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/presenter/r;->a(Ljava/lang/String;)V

    goto :goto_534

    :cond_5ae
    move/from16 v16, v0

    :goto_5b0
    if-eqz v16, :cond_65c

    const-wide/16 v3, 0x0

    .line 1740
    iput-wide v3, v1, Lcom/vungle/ads/internal/presenter/r;->h:J

    .line 1741
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v0, :cond_5c3

    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v5, v2}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    :cond_5c3
    iget-object v0, v1, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v0, :cond_65c

    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v9, v2}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1743
    :sswitch_5d1
    const-string v3, "consentAction"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5db

    goto/16 :goto_672

    .line 1744
    :cond_5db
    invoke-static {v12, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 1746
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_OUT:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f0

    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_5f6

    :cond_5f0
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1747
    :goto_5f6
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "vungle_modal"

    invoke-static {v0, v2, v14}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_601
    const-wide/16 v3, 0x0

    .line 1748
    const-string v5, "actionWithValue"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60d

    goto/16 :goto_672

    .line 1749
    :cond_60d
    invoke-static {v12, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 1750
    const-string v5, "value"

    invoke-static {v5, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v2

    .line 1752
    const-string v5, "videoLength"

    invoke-static {v5, v0, v15}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_65c

    .line 1753
    :try_start_61f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v2, :cond_62e

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_62f

    :catchall_62c
    move-exception v0

    goto :goto_634

    :cond_62e
    move-object v0, v14

    :goto_62f
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_633
    .catchall {:try_start_61f .. :try_end_633} :catchall_62c

    goto :goto_63e

    :goto_634
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_63e
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_645

    goto :goto_646

    :cond_645
    move-object v14, v0

    :goto_646
    check-cast v14, Ljava/lang/Long;

    if-eqz v14, :cond_64f

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_650

    :cond_64f
    move-wide v13, v3

    :goto_650
    iput-wide v13, v1, Lcom/vungle/ads/internal/presenter/r;->y:J

    goto :goto_65c

    .line 1754
    :sswitch_653
    const-string v2, "action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65c

    goto :goto_672

    :cond_65c
    :goto_65c
    return-void

    :sswitch_65d
    const-string v2, "successfulView"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_666

    goto :goto_672

    .line 1764
    :cond_666
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->e()V

    return-void

    .line 1765
    :sswitch_66a
    const-string v3, "detectBlackScreen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a1

    .line 1769
    :goto_672
    new-instance v2, Lcom/vungle/ads/MraidTemplateError;

    .line 1770
    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_JS_CALL_EMPTY:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 1771
    const-string v4, "Unknown MRAID Command: "

    invoke-static {v4, v0}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1772
    invoke-direct {v2, v3, v4}, Lcom/vungle/ads/MraidTemplateError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v1}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1776
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCommand# Unknown MRAID Command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1766
    :cond_6a1
    const-string v0, "samplingFactor"

    invoke-static {v0, v2}, Lcom/vungle/ads/internal/util/s;->a(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c2

    .line 1767
    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6c2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_6b7

    move v13, v15

    goto :goto_6b8

    :cond_6b7
    const/4 v13, 0x0

    :goto_6b8
    if-eqz v13, :cond_6bb

    move-object v14, v0

    :cond_6bb
    if-eqz v14, :cond_6c2

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6c4

    :cond_6c2
    const/16 v0, 0x64

    .line 1768
    :goto_6c4
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/ui/x;->a(I)V

    return-void

    :sswitch_data_6ca
    .sparse-switch
        -0x7687f158 -> :sswitch_66a
        -0x71fc83a1 -> :sswitch_65d
        -0x54d081ca -> :sswitch_653
        -0x2bd2454b -> :sswitch_601
        -0x2762d110 -> :sswitch_5d1
        -0x26bca456 -> :sswitch_47d
        -0x21db0163 -> :sswitch_369
        -0x1e7a3222 -> :sswitch_2c8
        -0x18f2f4ec -> :sswitch_23d
        -0x14bf8370 -> :sswitch_233
        0x34264a -> :sswitch_22b
        0x366baf -> :sswitch_153
        0x5a5ddf8 -> :sswitch_145
        0x5c4d208 -> :sswitch_fa
        0x7f3dfe1 -> :sswitch_b4
        0x234e01c2 -> :sswitch_8f
        0x5931f696 -> :sswitch_3b
        0x6037d900 -> :sswitch_31
    .end sparse-switch
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 4

    const-string v0, "errorDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_25

    .line 1817
    new-instance p1, Lcom/vungle/ads/WebViewError;

    invoke-direct {p1, p2}, Lcom/vungle/ads/WebViewError;-><init>(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1819
    iget-object p2, p0, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz p2, :cond_22

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    .line 1820
    iget-object v0, v0, Lcom/vungle/ads/internal/model/j3;->a:Ljava/lang/String;

    .line 1821
    invoke-virtual {p2, p1, v0}, Lcom/vungle/ads/internal/presenter/a;->a(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 1822
    :cond_22
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->a()V

    :cond_25
    return-void
.end method

.method public final b()Lcom/vungle/ads/internal/util/t;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->v:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/t;

    return-object v0
.end method

.method public final c()Lcom/vungle/ads/internal/network/r;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->r:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/network/r;

    return-object v0
.end method

.method public final d()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/presenter/r;->w:Z

    if-eqz v0, :cond_b

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    const-string v1, "javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()"

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ui/view/j;->a(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final e()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    .line 2
    iget-object v1, v1, Lcom/vungle/ads/internal/model/j3;->a:Ljava/lang/String;

    .line 3
    const-string v2, "successfulView"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_e
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/j3;->j()Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_28

    .line 6
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_28

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-eqz v0, :cond_3e

    .line 8
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 10
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda2;-><init>(Lcom/vungle/ads/internal/presenter/r;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3e
    return-void
.end method

.method public final f()V
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/ads/WebViewRenderProcessUnresponsive;

    const-string v1, "fatal=true"

    invoke-direct {v0, v1}, Lcom/vungle/ads/WebViewRenderProcessUnresponsive;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/VungleError;ZLjava/lang/String;)V

    return-void
.end method

.method public final g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/x;->a()V

    return-void
.end method

.method public final h()V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->j()Lcom/vungle/ads/AdConfig;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/vungle/ads/AdConfig;->getSettings()I

    move-result v0

    if-lez v0, :cond_1e

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v1

    .line 6
    :goto_1c
    iput-boolean v0, p0, Lcom/vungle/ads/internal/presenter/r;->w:Z

    .line 11
    :cond_1e
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->j()Lcom/vungle/ads/AdConfig;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/vungle/ads/AdConfig;->getAdOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_31

    :cond_30
    move-object v0, v3

    :goto_31
    if-nez v0, :cond_34

    goto :goto_3c

    .line 12
    :cond_34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3c

    const/4 v0, 0x7

    goto :goto_48

    :cond_3c
    :goto_3c
    if-nez v0, :cond_3f

    goto :goto_47

    .line 16
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_47

    const/4 v0, 0x6

    goto :goto_48

    :cond_47
    :goto_47
    const/4 v0, 0x4

    .line 24
    :goto_48
    iget-object v4, p0, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v4, v0}, Lcom/vungle/ads/internal/ui/view/j;->setOrientation(I)V

    .line 26
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->f:Lcom/vungle/ads/internal/omsdk/e;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/omsdk/e;->a()V

    .line 28
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/internal/ui/x;->a(Lcom/vungle/ads/internal/ui/view/n;)V

    .line 29
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/internal/ui/x;->a(Lcom/vungle/ads/internal/ui/view/o;)V

    .line 30
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ui/x;->b(Z)V

    .line 32
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->E()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 33
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    .line 34
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i0;->i:Ljava/lang/String;

    if-eqz v0, :cond_75

    .line 35
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_76

    :cond_75
    move-object v4, v3

    :goto_76
    if-eqz v4, :cond_a4

    .line 36
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7f

    goto :goto_a4

    .line 42
    :cond_7f
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    iget-object v5, p0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    iget-object v6, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/model/i0;->u()Lcom/vungle/ads/internal/model/f0;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/vungle/ads/internal/ui/view/j;->a(Lcom/vungle/ads/internal/ui/x;Lcom/vungle/ads/internal/model/f0;)V

    .line 43
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    .line 44
    const-string v5, "file://"

    invoke-static {v5}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 45
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/vungle/ads/internal/ui/view/j;->a(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_c0

    .line 46
    :cond_a4
    :goto_a4
    new-instance v0, Lcom/vungle/ads/IndexHtmlError;

    .line 47
    sget-object v5, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->AD_HTML_FAILED_TO_LOAD:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 48
    const-string v6, "Fail to load html "

    invoke-static {v6}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_b5

    .line 49
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_b6

    :cond_b5
    move-object v4, v3

    :goto_b6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-direct {v0, v5, v4}, Lcom/vungle/ads/IndexHtmlError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    :goto_c0
    if-eqz v0, :cond_dc

    .line 51
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 52
    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v1, :cond_d8

    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    .line 53
    iget-object v2, v2, Lcom/vungle/ads/internal/model/j3;->a:Ljava/lang/String;

    .line 54
    invoke-virtual {v1, v0, v2}, Lcom/vungle/ads/internal/presenter/a;->a(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 55
    :cond_d8
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->a()V

    return-void

    .line 56
    :cond_dc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->m:Ljava/lang/Long;

    .line 58
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->s:Lcom/vungle/ads/internal/presenter/z;

    if-eqz v0, :cond_f1

    check-cast v0, Lcom/vungle/ads/internal/q1;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/q1;->p()Ljava/lang/String;

    move-result-object v0

    goto :goto_f2

    :cond_f1
    move-object v0, v3

    :goto_f2
    iput-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->n:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->s:Lcom/vungle/ads/internal/presenter/z;

    const-string v4, ""

    if-eqz v0, :cond_102

    check-cast v0, Lcom/vungle/ads/internal/q1;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/q1;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_103

    :cond_102
    move-object v0, v4

    .line 61
    :cond_103
    iget-object v5, p0, Lcom/vungle/ads/internal/presenter/r;->s:Lcom/vungle/ads/internal/presenter/z;

    if-eqz v5, :cond_10f

    check-cast v5, Lcom/vungle/ads/internal/q1;

    invoke-virtual {v5}, Lcom/vungle/ads/internal/q1;->l()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_110

    :cond_10f
    move-object v5, v4

    .line 62
    :cond_110
    iget-object v6, p0, Lcom/vungle/ads/internal/presenter/r;->s:Lcom/vungle/ads/internal/presenter/z;

    if-eqz v6, :cond_11c

    check-cast v6, Lcom/vungle/ads/internal/q1;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/q1;->n()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11d

    :cond_11c
    move-object v6, v4

    .line 63
    :cond_11d
    iget-object v7, p0, Lcom/vungle/ads/internal/presenter/r;->s:Lcom/vungle/ads/internal/presenter/z;

    if-eqz v7, :cond_129

    check-cast v7, Lcom/vungle/ads/internal/q1;

    invoke-virtual {v7}, Lcom/vungle/ads/internal/q1;->m()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_12a

    :cond_129
    move-object v7, v4

    .line 64
    :cond_12a
    iget-object v8, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v8, v0, v5, v6, v7}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->m()Z

    move-result v0

    if-eqz v0, :cond_14d

    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, "unknown"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    move v6, v2

    goto :goto_14e

    :cond_14d
    move v6, v1

    .line 68
    :goto_14e
    iget-object v5, p0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    .line 70
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->l()Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->k()Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->i()Ljava/lang/String;

    move-result-object v9

    .line 73
    invoke-static {}, Lcom/vungle/ads/internal/ConfigManager;->j()Ljava/lang/String;

    move-result-object v10

    .line 74
    invoke-virtual/range {v5 .. v10}, Lcom/vungle/ads/internal/ui/x;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_171

    .line 83
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "opted_out_by_timeout"

    const-string v1, "vungle_modal"

    invoke-static {v0, v1, v4}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_171
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/j3;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/lang/Boolean;)I

    move-result v0

    if-lez v0, :cond_195

    .line 88
    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/r;->u:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/util/p;

    .line 89
    new-instance v2, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda1;-><init>(Lcom/vungle/ads/internal/presenter/r;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/vungle/ads/internal/util/p;->a(Ljava/lang/Runnable;J)V

    goto :goto_197

    .line 90
    :cond_195
    iput-boolean v2, p0, Lcom/vungle/ads/internal/presenter/r;->w:Z

    .line 93
    :goto_197
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->i:Lcom/vungle/ads/internal/presenter/a;

    if-eqz v0, :cond_1a6

    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/r;->c:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/ads/internal/presenter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a6
    return-void
.end method

.method public final i()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->m:Ljava/lang/Long;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r;->b:Lcom/vungle/ads/internal/model/i0;

    .line 5
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/vungle/ads/internal/presenter/r;->g:Lcom/vungle/ads/internal/platform/f;

    check-cast v2, Lcom/vungle/ads/internal/platform/c;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/platform/c;->k()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 7
    const-string v3, "ad.close"

    invoke-virtual {v0, v3, v1, v2}, Lcom/vungle/ads/internal/model/i0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 646
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 647
    new-instance v2, Lcom/vungle/ads/internal/network/p;

    invoke-direct {v2, v1}, Lcom/vungle/ads/internal/network/p;-><init>(Ljava/lang/String;)V

    .line 649
    iput-object v3, v2, Lcom/vungle/ads/internal/network/p;->i:Ljava/lang/String;

    .line 650
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->b()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 651
    iput-object v1, v2, Lcom/vungle/ads/internal/network/p;->j:Lcom/vungle/ads/internal/util/t;

    .line 652
    invoke-virtual {v2}, Lcom/vungle/ads/internal/network/p;->a()Lcom/vungle/ads/internal/network/q;

    move-result-object v1

    .line 653
    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/r;->c()Lcom/vungle/ads/internal/network/r;

    move-result-object v2

    const/4 v4, 0x0

    .line 654
    invoke-virtual {v2, v1, v4}, Lcom/vungle/ads/internal/network/r;->a(Lcom/vungle/ads/internal/network/q;Z)V

    goto :goto_2b

    :cond_51
    return-void
.end method

.method public final j()Z
    .registers 8

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->q:Lcom/vungle/ads/internal/model/y1;

    if-eqz v0, :cond_17

    .line 4
    iget-object v0, v0, Lcom/vungle/ads/internal/model/y1;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    if-eqz v0, :cond_1b

    return v1

    .line 6
    :cond_1b
    iget-wide v2, p0, Lcom/vungle/ads/internal/presenter/r;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-nez v0, :cond_25

    return v2

    .line 9
    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vungle/ads/internal/presenter/r;->h:J

    sub-long/2addr v3, v5

    .line 11
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->a:Lcom/vungle/ads/internal/model/w2;

    if-eqz v0, :cond_3d

    .line 12
    iget-object v0, v0, Lcom/vungle/ads/internal/model/w2;->q:Lcom/vungle/ads/internal/model/y1;

    if-eqz v0, :cond_3d

    .line 13
    iget-object v0, v0, Lcom/vungle/ads/internal/model/y1;->b:Ljava/lang/Long;

    if-eqz v0, :cond_3d

    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_42

    :cond_3d
    const-wide v5, 0x7fffffffffffffffL

    :goto_42
    cmp-long v0, v3, v5

    if-lez v0, :cond_47

    return v2

    :cond_47
    return v1
.end method

###### Class com.vungle.ads.internal.presenter.r$$ExternalSyntheticLambda0 (com.vungle.ads.internal.presenter.r$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/presenter/r;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/presenter/r;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/presenter/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/presenter/r;

    invoke-static {v0}, Lcom/vungle/ads/internal/presenter/r;->c(Lcom/vungle/ads/internal/presenter/r;)V

    return-void
.end method

###### Class com.vungle.ads.internal.presenter.r$$ExternalSyntheticLambda1 (com.vungle.ads.internal.presenter.r$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/presenter/r;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/presenter/r;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/presenter/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda1;->f$0:Lcom/vungle/ads/internal/presenter/r;

    invoke-static {v0}, Lcom/vungle/ads/internal/presenter/r;->e(Lcom/vungle/ads/internal/presenter/r;)V

    return-void
.end method

###### Class com.vungle.ads.internal.presenter.r$$ExternalSyntheticLambda2 (com.vungle.ads.internal.presenter.r$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/presenter/r;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/presenter/r;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/presenter/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/r$$ExternalSyntheticLambda2;->f$0:Lcom/vungle/ads/internal/presenter/r;

    invoke-static {v0}, Lcom/vungle/ads/internal/presenter/r;->d(Lcom/vungle/ads/internal/presenter/r;)V

    return-void
.end method
