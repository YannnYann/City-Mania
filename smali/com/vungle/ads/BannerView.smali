###### Class com.vungle.ads.BannerView (com.vungle.ads.BannerView)
.class public final Lcom/vungle/ads/BannerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/BannerView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/BannerView$Companion;


# instance fields
.field public final a:Lcom/vungle/ads/internal/model/j3;

.field public final b:Lcom/vungle/ads/internal/model/i0;

.field public c:I

.field public d:I

.field public e:Lcom/vungle/ads/internal/ui/view/j;

.field public f:Lcom/vungle/ads/internal/presenter/r;

.field public g:Lcom/vungle/ads/internal/ui/y;

.field public h:Z

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/vungle/ads/BannerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/BannerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/BannerView;->Companion:Lcom/vungle/ads/BannerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/AdConfig;Lcom/vungle/ads/internal/presenter/b;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adPlayCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/vungle/ads/BannerView;->a:Lcom/vungle/ads/internal/model/j3;

    .line 3
    iput-object p3, p0, Lcom/vungle/ads/BannerView;->b:Lcom/vungle/ads/internal/model/i0;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/ads/BannerView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/ads/BannerView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/ads/BannerView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    sget-object v0, Lcom/vungle/ads/BannerView$impressionTracker$2;->INSTANCE:Lcom/vungle/ads/BannerView$impressionTracker$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/BannerView;->l:Lkotlin/Lazy;

    .line 9
    invoke-virtual {p4}, Lcom/vungle/ads/VungleAdSize;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/vungle/ads/BannerView;->d:I

    .line 10
    invoke-virtual {p4}, Lcom/vungle/ads/VungleAdSize;->getWidth()I

    move-result p4

    invoke-static {p1, p4}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;I)I

    move-result p4

    iput p4, p0, Lcom/vungle/ads/BannerView;->c:I

    .line 11
    new-instance p4, Lcom/vungle/ads/internal/presenter/a;

    invoke-direct {p4, p6, p2}, Lcom/vungle/ads/internal/presenter/a;-><init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/model/j3;)V

    .line 15
    :try_start_5c
    new-instance v1, Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/i0;->h()Ljava/lang/String;

    move-result-object p6

    invoke-direct {v1, p1, p6}, Lcom/vungle/ads/internal/ui/view/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/InstantiationException; {:try_start_5c .. :try_end_65} :catch_e2

    .line 23
    iput-object v1, p0, Lcom/vungle/ads/BannerView;->e:Lcom/vungle/ads/internal/ui/view/j;

    .line 25
    new-instance p6, Lcom/vungle/ads/BannerView$1;

    invoke-direct {p6, p0}, Lcom/vungle/ads/BannerView$1;-><init>(Lcom/vungle/ads/BannerView;)V

    invoke-virtual {v1, p6}, Lcom/vungle/ads/internal/ui/view/j;->setCloseDelegate(Lcom/vungle/ads/internal/ui/view/f;)V

    .line 31
    new-instance p6, Lcom/vungle/ads/BannerView$2;

    invoke-direct {p6, p0}, Lcom/vungle/ads/BannerView$2;-><init>(Lcom/vungle/ads/BannerView;)V

    invoke-virtual {v1, p6}, Lcom/vungle/ads/internal/ui/view/j;->setOnViewTouchListener(Lcom/vungle/ads/internal/ui/view/h;)V

    .line 32
    sget-object p6, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/vungle/ads/BannerView$special$$inlined$inject$1;

    invoke-direct {v0, p1}, Lcom/vungle/ads/BannerView$special$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {p6, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 33
    new-instance v2, Lcom/vungle/ads/BannerView$special$$inlined$inject$2;

    invoke-direct {v2, p1}, Lcom/vungle/ads/BannerView$special$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    invoke-static {p6, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/vungle/ads/BannerView;->b(Lkotlin/Lazy;)Lcom/vungle/ads/internal/omsdk/d;

    move-result-object v2

    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/i0;->z()Z

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vungle/ads/internal/omsdk/d;->a(Z)Lcom/vungle/ads/internal/omsdk/e;

    move-result-object v6

    .line 35
    new-instance v2, Lcom/vungle/ads/BannerView$special$$inlined$inject$3;

    invoke-direct {v2, p1}, Lcom/vungle/ads/BannerView$special$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    invoke-static {p6, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p6

    .line 36
    new-instance v4, Lcom/vungle/ads/internal/ui/x;

    .line 39
    invoke-static {v0}, Lcom/vungle/ads/BannerView;->a(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/executor/d;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/executor/d;->f()Lcom/vungle/ads/internal/executor/j;

    move-result-object v2

    .line 40
    invoke-static {p6}, Lcom/vungle/ads/BannerView;->c(Lkotlin/Lazy;)Lcom/vungle/ads/internal/platform/f;

    move-result-object v3

    .line 41
    invoke-direct {v4, p3, p2, v2, v3}, Lcom/vungle/ads/internal/ui/x;-><init>(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Ljava/util/concurrent/ExecutorService;Lcom/vungle/ads/internal/platform/f;)V

    .line 47
    invoke-virtual {v4, v6}, Lcom/vungle/ads/internal/ui/x;->a(Lcom/vungle/ads/internal/omsdk/e;)V

    move-object v2, v0

    .line 49
    new-instance v0, Lcom/vungle/ads/internal/presenter/r;

    .line 54
    invoke-static {v2}, Lcom/vungle/ads/BannerView;->a(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/executor/d;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/executor/d;->d()Lcom/vungle/ads/internal/executor/j;

    move-result-object v5

    .line 56
    invoke-static {p6}, Lcom/vungle/ads/BannerView;->c(Lkotlin/Lazy;)Lcom/vungle/ads/internal/platform/f;

    move-result-object v7

    move-object v3, p2

    move-object v2, p3

    .line 57
    invoke-direct/range {v0 .. v7}, Lcom/vungle/ads/internal/presenter/r;-><init>(Lcom/vungle/ads/internal/ui/view/j;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/ui/x;Lcom/vungle/ads/internal/executor/j;Lcom/vungle/ads/internal/omsdk/e;Lcom/vungle/ads/internal/platform/f;)V

    .line 66
    invoke-virtual {v0, p4}, Lcom/vungle/ads/internal/presenter/r;->a(Lcom/vungle/ads/internal/presenter/a;)V

    .line 67
    iput-object v0, p0, Lcom/vungle/ads/BannerView;->f:Lcom/vungle/ads/internal/presenter/r;

    .line 80
    invoke-virtual {p5}, Lcom/vungle/ads/AdConfig;->getWatermark$vungle_ads_release()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e1

    .line 81
    new-instance p3, Lcom/vungle/ads/internal/ui/y;

    invoke-direct {p3, p1, p2}, Lcom/vungle/ads/internal/ui/y;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/vungle/ads/BannerView;->g:Lcom/vungle/ads/internal/ui/y;

    :cond_e1
    return-void

    :catch_e2
    move-exception v0

    move-object p1, v0

    .line 82
    new-instance p2, Lcom/vungle/ads/AdCantPlayWithoutWebView;

    const/4 p3, 0x1

    const/4 p5, 0x0

    invoke-direct {p2, p5, p3, p5}, Lcom/vungle/ads/AdCantPlayWithoutWebView;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p3, p0, Lcom/vungle/ads/BannerView;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/i0;->q()Lcom/vungle/ads/internal/util/t;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p2

    .line 83
    iget-object p3, p0, Lcom/vungle/ads/BannerView;->a:Lcom/vungle/ads/internal/model/j3;

    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object p3

    .line 84
    invoke-virtual {p4, p2, p3}, Lcom/vungle/ads/internal/presenter/a;->a(Lcom/vungle/ads/VungleError;Ljava/lang/String;)V

    .line 88
    throw p1
.end method

.method public static final a(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;
    .registers 1

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/a;

    return-object p0
.end method

.method public static final access$checkHardwareAcceleration(Lcom/vungle/ads/BannerView;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 3
    const-string v0, "hardwareAccelerated = "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerView"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_31

    .line 6
    sget-object v1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 7
    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->HARDWARE_ACCELERATE_DISABLED:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 8
    iget-object p0, p0, Lcom/vungle/ads/BannerView;->b:Lcom/vungle/ads/internal/model/i0;

    .line 9
    iget-object v5, p0, Lcom/vungle/ads/internal/model/i0;->h:Lcom/vungle/ads/internal/util/t;

    const/4 v6, 0x0

    const/16 v7, 0xa

    const-wide/16 v3, 0x0

    .line 10
    invoke-static/range {v1 .. v7}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;I)V

    :cond_31
    return-void
.end method

.method public static final synthetic access$getPresenter$p(Lcom/vungle/ads/BannerView;)Lcom/vungle/ads/internal/presenter/r;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/BannerView;->f:Lcom/vungle/ads/internal/presenter/r;

    return-object p0
.end method

.method public static final synthetic access$isInvisibleLogged$p(Lcom/vungle/ads/BannerView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/BannerView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final access$logViewVisibleOnPlay(Lcom/vungle/ads/BannerView;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x3

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x2

    .line 3
    :goto_d
    sget-object v2, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 4
    new-instance v3, Lcom/vungle/ads/internal/j2;

    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v3, v4}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 5
    iput-object v4, v3, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    .line 6
    iget-object p0, p0, Lcom/vungle/ads/BannerView;->b:Lcom/vungle/ads/internal/model/i0;

    .line 7
    iget-object p0, p0, Lcom/vungle/ads/internal/model/i0;->h:Lcom/vungle/ads/internal/util/t;

    const/4 v4, 0x4

    .line 8
    invoke-static {v2, v3, p0, v4}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 12
    sget-boolean p0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log metric AD_VISIBILITY: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BannerView"

    invoke-static {v0, p0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final synthetic access$setOnImpressionCalled$p(Lcom/vungle/ads/BannerView;Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/BannerView;->h:Z

    return-void
.end method

.method public static final b(Lkotlin/Lazy;)Lcom/vungle/ads/internal/omsdk/d;
    .registers 1

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/omsdk/d;

    return-object p0
.end method

.method public static final c(Lkotlin/Lazy;)Lcom/vungle/ads/internal/platform/f;
    .registers 1

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/platform/f;

    return-object p0
.end method

.method private final getImpressionTracker()Lcom/vungle/ads/internal/c1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/c1;

    return-object v0
.end method

.method private final setAdVisibility(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/BannerView;->h:Z

    if-nez v0, :cond_5

    goto :goto_16

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    .line 7
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->f:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_16

    .line 8
    iget-object v0, v0, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ui/x;->b(Z)V

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public final finishAdInternal(Z)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6a

    .line 4
    :cond_9
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x4

    goto :goto_15

    :cond_14
    move p1, v0

    :goto_15
    or-int/lit8 p1, p1, 0x2

    .line 7
    iget-object v1, p0, Lcom/vungle/ads/BannerView;->f:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v1, :cond_2e

    .line 8
    sget-boolean v2, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v2, "MRAIDPresenter"

    const-string v3, "stop()"

    invoke-static {v2, v3}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v2, v1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/ui/view/j;->b()V

    .line 10
    iget-object v1, v1, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/ui/x;->b(Z)V

    .line 11
    :cond_2e
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->f:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/presenter/r;->a(I)V

    .line 12
    :cond_35
    invoke-direct {p0}, Lcom/vungle/ads/BannerView;->getImpressionTracker()Lcom/vungle/ads/internal/c1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/c1;->a()V

    .line 14
    :try_start_3c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 15
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4e

    .line 16
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4e

    :catch_4c
    move-exception p1

    goto :goto_52

    .line 19
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_51} :catch_4c

    return-void

    .line 21
    :goto_52
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing webView error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BannerView"

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    return-void
.end method

.method public final getAdvertisement()Lcom/vungle/ads/internal/model/i0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->b:Lcom/vungle/ads/internal/model/i0;

    return-object v0
.end method

.method public final getPlacement()Lcom/vungle/ads/internal/model/j3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->a:Lcom/vungle/ads/internal/model/j3;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "BannerView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_28

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->f:Lcom/vungle/ads/internal/presenter/r;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/vungle/ads/internal/presenter/r;->h()V

    .line 6
    :cond_1c
    invoke-direct {p0}, Lcom/vungle/ads/BannerView;->getImpressionTracker()Lcom/vungle/ads/internal/c1;

    move-result-object v0

    new-instance v1, Lcom/vungle/ads/BannerView$onAttachedToWindow$1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/BannerView$onAttachedToWindow$1;-><init>(Lcom/vungle/ads/BannerView;)V

    invoke-virtual {v0, p0, v1}, Lcom/vungle/ads/internal/c1;->a(Landroid/view/View;Lcom/vungle/ads/internal/z0;)V

    .line 7
    :cond_28
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->e:Lcom/vungle/ads/internal/ui/view/j;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 8
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->e:Lcom/vungle/ads/internal/ui/view/j;

    iget v1, p0, Lcom/vungle/ads/BannerView;->c:I

    iget v2, p0, Lcom/vungle/ads/BannerView;->d:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 9
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->g:Lcom/vungle/ads/internal/ui/y;

    if-eqz v0, :cond_51

    .line 10
    iget v1, p0, Lcom/vungle/ads/BannerView;->c:I

    iget v2, p0, Lcom/vungle/ads/BannerView;->d:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 11
    iget-object v0, p0, Lcom/vungle/ads/BannerView;->g:Lcom/vungle/ads/internal/ui/y;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 15
    :cond_51
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 18
    iget v1, p0, Lcom/vungle/ads/BannerView;->d:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    iget v1, p0, Lcom/vungle/ads/BannerView;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_62
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 3
    :goto_8
    invoke-direct {p0, p1}, Lcom/vungle/ads/BannerView;->setAdVisibility(Z)V

    return-void
.end method

###### Class com.vungle.ads.BannerView.AnonymousClass1 (com.vungle.ads.BannerView$1)
.class public final Lcom/vungle/ads/BannerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BannerView;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/AdConfig;Lcom/vungle/ads/internal/presenter/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BannerView;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BannerView;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/BannerView$1;->a:Lcom/vungle/ads/BannerView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BannerView$1;->a:Lcom/vungle/ads/BannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/ads/BannerView;->finishAdInternal(Z)V

    return-void
.end method

###### Class com.vungle.ads.BannerView.AnonymousClass2 (com.vungle.ads.BannerView$2)
.class public final Lcom/vungle/ads/BannerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BannerView;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/AdConfig;Lcom/vungle/ads/internal/presenter/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BannerView;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BannerView;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/BannerView$2;->a:Lcom/vungle/ads/BannerView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/BannerView$2;->a:Lcom/vungle/ads/BannerView;

    invoke-static {v0}, Lcom/vungle/ads/BannerView;->access$getPresenter$p(Lcom/vungle/ads/BannerView;)Lcom/vungle/ads/internal/presenter/r;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/presenter/r;->a(Landroid/view/MotionEvent;)V

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

###### Class com.vungle.ads.BannerView.Companion (com.vungle.ads.BannerView$Companion)
.class public final Lcom/vungle/ads/BannerView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/vungle/ads/BannerView$Companion;-><init>()V

    return-void
.end method

###### Class com.vungle.ads.BannerView.C40981 (com.vungle.ads.BannerView$onAttachedToWindow$1)
.class public final Lcom/vungle/ads/BannerView$onAttachedToWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/z0;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/BannerView;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/BannerView;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/BannerView$onAttachedToWindow$1;->a:Lcom/vungle/ads/BannerView;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpression(Landroid/view/View;)V
    .registers 5

    .line 1
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "BannerView"

    const-string v0, "ImpressionTracker checked the banner view become visible."

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/vungle/ads/BannerView$onAttachedToWindow$1;->a:Lcom/vungle/ads/BannerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vungle/ads/BannerView;->access$setOnImpressionCalled$p(Lcom/vungle/ads/BannerView;Z)V

    .line 3
    iget-object p1, p0, Lcom/vungle/ads/BannerView$onAttachedToWindow$1;->a:Lcom/vungle/ads/BannerView;

    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$logViewVisibleOnPlay(Lcom/vungle/ads/BannerView;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/ads/BannerView$onAttachedToWindow$1;->a:Lcom/vungle/ads/BannerView;

    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$checkHardwareAcceleration(Lcom/vungle/ads/BannerView;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/BannerView$onAttachedToWindow$1;->a:Lcom/vungle/ads/BannerView;

    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$getPresenter$p(Lcom/vungle/ads/BannerView;)Lcom/vungle/ads/internal/presenter/r;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 6
    const-string v1, "MRAIDPresenter"

    const-string v2, "start()"

    invoke-static {v1, v2}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v1, p1, Lcom/vungle/ads/internal/presenter/r;->a:Lcom/vungle/ads/internal/ui/view/j;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/ui/view/j;->d()V

    .line 8
    iget-object p1, p1, Lcom/vungle/ads/internal/presenter/r;->d:Lcom/vungle/ads/internal/ui/x;

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/ui/x;->b(Z)V

    :cond_32
    return-void
.end method

.method public onViewInvisible(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/BannerView$onAttachedToWindow$1;->a:Lcom/vungle/ads/BannerView;

    invoke-static {p1}, Lcom/vungle/ads/BannerView;->access$isInvisibleLogged$p(Lcom/vungle/ads/BannerView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_33

    .line 2
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "BannerView"

    const-string v0, "ImpressionTracker checked the banner view invisible on play."

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 7
    new-instance v0, Lcom/vungle/ads/internal/j2;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_VISIBILITY:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    const-wide/16 v1, 0x1

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lcom/vungle/ads/internal/j2;->c:Ljava/lang/Long;

    .line 10
    iget-object v1, p0, Lcom/vungle/ads/BannerView$onAttachedToWindow$1;->a:Lcom/vungle/ads/BannerView;

    invoke-virtual {v1}, Lcom/vungle/ads/BannerView;->getAdvertisement()Lcom/vungle/ads/internal/model/i0;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/vungle/ads/internal/model/i0;->h:Lcom/vungle/ads/internal/util/t;

    const/4 v2, 0x4

    .line 12
    invoke-static {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    :cond_33
    return-void
.end method

###### Class com.vungle.ads.BannerView$impressionTracker$2 (com.vungle.ads.BannerView$impressionTracker$2)
.class final Lcom/vungle/ads/BannerView$impressionTracker$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BannerView;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/AdConfig;Lcom/vungle/ads/internal/presenter/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/c1;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/BannerView$impressionTracker$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/vungle/ads/BannerView$impressionTracker$2;

    invoke-direct {v0}, Lcom/vungle/ads/BannerView$impressionTracker$2;-><init>()V

    sput-object v0, Lcom/vungle/ads/BannerView$impressionTracker$2;->INSTANCE:Lcom/vungle/ads/BannerView$impressionTracker$2;

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
.method public final invoke()Lcom/vungle/ads/internal/c1;
    .registers 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/c1;

    invoke-direct {v0}, Lcom/vungle/ads/internal/c1;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/BannerView$impressionTracker$2;->invoke()Lcom/vungle/ads/internal/c1;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.BannerView$special$$inlined$inject$1 (com.vungle.ads.BannerView$special$$inlined$inject$1)
.class public final Lcom/vungle/ads/BannerView$special$$inlined$inject$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BannerView;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/AdConfig;Lcom/vungle/ads/internal/presenter/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/executor/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BannerView$special$$inlined$inject$1;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ServiceLocator;->d:Lcom/vungle/ads/internal/r1;

    iget-object v1, p0, Lcom/vungle/ads/BannerView$special$$inlined$inject$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r1;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.BannerView$special$$inlined$inject$2 (com.vungle.ads.BannerView$special$$inlined$inject$2)
.class public final Lcom/vungle/ads/BannerView$special$$inlined$inject$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BannerView;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/AdConfig;Lcom/vungle/ads/internal/presenter/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/omsdk/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BannerView$special$$inlined$inject$2;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/omsdk/d;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ServiceLocator;->d:Lcom/vungle/ads/internal/r1;

    iget-object v1, p0, Lcom/vungle/ads/BannerView$special$$inlined$inject$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r1;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/omsdk/d;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.BannerView$special$$inlined$inject$3 (com.vungle.ads.BannerView$special$$inlined$inject$3)
.class public final Lcom/vungle/ads/BannerView$special$$inlined$inject$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/BannerView;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/j3;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/VungleAdSize;Lcom/vungle/ads/AdConfig;Lcom/vungle/ads/internal/presenter/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/vungle/ads/internal/platform/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/BannerView$special$$inlined$inject$3;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/platform/f;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/ServiceLocator;->d:Lcom/vungle/ads/internal/r1;

    iget-object v1, p0, Lcom/vungle/ads/BannerView$special$$inlined$inject$3;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r1;->a(Landroid/content/Context;)Lcom/vungle/ads/internal/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/platform/f;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
