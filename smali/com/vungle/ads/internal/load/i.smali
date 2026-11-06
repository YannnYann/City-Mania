###### Class com.vungle.ads.internal.load.i (com.vungle.ads.internal.load.i)
.class public abstract Lcom/vungle/ads/internal/load/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:J

.field public final a:Landroid/content/Context;

.field public final b:Lcom/vungle/ads/internal/network/VungleApiClient;

.field public final c:Lcom/vungle/ads/internal/executor/a;

.field public final d:Lcom/vungle/ads/internal/omsdk/c;

.field public final e:Lcom/vungle/ads/internal/downloader/n;

.field public final f:Lcom/vungle/ads/internal/util/PathProvider;

.field public final g:Lcom/vungle/ads/internal/load/b;

.field public final h:Lkotlin/Lazy;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public k:Lcom/vungle/ads/internal/load/a;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final o:Ljava/util/ArrayList;

.field public p:Lcom/vungle/ads/internal/model/i0;

.field public q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Lcom/vungle/ads/internal/k2;

.field public t:Lcom/vungle/ads/internal/j2;

.field public u:Lcom/vungle/ads/internal/j2;

.field public v:Lcom/vungle/ads/internal/k2;

.field public w:Lcom/vungle/ads/internal/k2;

.field public x:Lcom/vungle/ads/internal/k2;

.field public y:Lcom/vungle/ads/internal/k2;

.field public z:Lcom/vungle/ads/internal/util/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/d;Lcom/vungle/ads/internal/omsdk/c;Lcom/vungle/ads/internal/downloader/n;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/load/b;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vungleApiClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkExecutors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omInjector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/load/i;->b:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 4
    iput-object p3, p0, Lcom/vungle/ads/internal/load/i;->c:Lcom/vungle/ads/internal/executor/a;

    .line 5
    iput-object p4, p0, Lcom/vungle/ads/internal/load/i;->d:Lcom/vungle/ads/internal/omsdk/c;

    .line 6
    iput-object p5, p0, Lcom/vungle/ads/internal/load/i;->e:Lcom/vungle/ads/internal/downloader/n;

    .line 7
    iput-object p6, p0, Lcom/vungle/ads/internal/load/i;->f:Lcom/vungle/ads/internal/util/PathProvider;

    .line 8
    iput-object p7, p0, Lcom/vungle/ads/internal/load/i;->g:Lcom/vungle/ads/internal/load/b;

    .line 9
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lcom/vungle/ads/internal/load/h;

    invoke-direct {p3, p1}, Lcom/vungle/ads/internal/load/h;-><init>(Landroid/content/Context;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->h:Lkotlin/Lazy;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->o:Ljava/util/ArrayList;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance p1, Lcom/vungle/ads/internal/k2;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_REQUEST_TO_RESPONSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/k2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->s:Lcom/vungle/ads/internal/k2;

    .line 31
    new-instance p1, Lcom/vungle/ads/internal/j2;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->ASSET_FILE_SIZE:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->t:Lcom/vungle/ads/internal/j2;

    .line 34
    new-instance p1, Lcom/vungle/ads/internal/j2;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->TEMPLATE_HTML_SIZE:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->u:Lcom/vungle/ads/internal/j2;

    .line 37
    new-instance p1, Lcom/vungle/ads/internal/k2;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->ASSET_DOWNLOAD_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/k2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->v:Lcom/vungle/ads/internal/k2;

    .line 40
    new-instance p1, Lcom/vungle/ads/internal/k2;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_REQUIRED_DOWNLOAD_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/k2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->w:Lcom/vungle/ads/internal/k2;

    .line 43
    new-instance p1, Lcom/vungle/ads/internal/k2;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_OPTIONAL_DOWNLOAD_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/k2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->x:Lcom/vungle/ads/internal/k2;

    .line 46
    new-instance p1, Lcom/vungle/ads/internal/k2;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->AD_PRELOAD_TO_READY_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/k2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->y:Lcom/vungle/ads/internal/k2;

    return-void
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/load/i;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/load/i;->i:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static final a(Lcom/vungle/ads/internal/load/i;Lcom/vungle/ads/internal/load/b;)V
    .registers 5

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All download completed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseAdLoader"

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->p:Lcom/vungle/ads/internal/model/i0;

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/vungle/ads/internal/model/i0;->f:Z

    .line 6
    :cond_22
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->j()V

    .line 8
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->v:Lcom/vungle/ads/internal/k2;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->d()V

    .line 9
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->v:Lcom/vungle/ads/internal/k2;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V

    .line 11
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->x:Lcom/vungle/ads/internal/k2;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/k2;->d()V

    .line 12
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->x:Lcom/vungle/ads/internal/k2;

    iget-object p0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    invoke-static {p1, v0, p0, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V

    return-void
.end method

.method public static final a(Lcom/vungle/ads/internal/load/i;Lcom/vungle/ads/internal/model/b;Lcom/vungle/ads/internal/model/i0;)Z
    .registers 8

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p2, :cond_7

    goto :goto_4e

    .line 14
    :cond_7
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/b;->e()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4e

    .line 15
    :cond_e
    iget-object v1, p1, Lcom/vungle/ads/internal/model/b;->c:Ljava/lang/String;

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_4e

    .line 19
    :cond_17
    new-instance v1, Ljava/io/File;

    .line 20
    iget-object v2, p1, Lcom/vungle/ads/internal/model/b;->c:Ljava/lang/String;

    .line 21
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 23
    iget-wide v3, p1, Lcom/vungle/ads/internal/model/b;->f:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_4e

    .line 24
    iget-object p0, p0, Lcom/vungle/ads/internal/load/i;->f:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/i0;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/util/PathProvider;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_45

    .line 30
    :cond_41
    sget-object p0, Lcom/vungle/ads/internal/util/o;->a:Lcom/vungle/ads/internal/util/n;

    const/4 p0, 0x1

    return p0

    .line 31
    :cond_45
    :goto_45
    sget-boolean p0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p0, "BaseAdLoader"

    const-string p1, "Unable to access Destination Directory"

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return v0
.end method

.method public static final synthetic b(Lcom/vungle/ads/internal/load/i;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/load/i;->j:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static final synthetic c(Lcom/vungle/ads/internal/load/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/load/i;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic d(Lcom/vungle/ads/internal/load/i;)Lcom/vungle/ads/internal/j2;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/load/i;->t:Lcom/vungle/ads/internal/j2;

    return-object p0
.end method

.method public static final synthetic e(Lcom/vungle/ads/internal/load/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/load/i;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic f(Lcom/vungle/ads/internal/load/i;)Lcom/vungle/ads/internal/j2;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/load/i;->u:Lcom/vungle/ads/internal/j2;

    return-object p0
.end method

.method public static final synthetic g(Lcom/vungle/ads/internal/load/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/internal/load/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final h(Lcom/vungle/ads/internal/load/i;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->w:Lcom/vungle/ads/internal/k2;

    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/k2;->d()V

    .line 4
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/i;->w:Lcom/vungle/ads/internal/k2;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V

    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->j()V

    return-void
.end method

.method public static final i(Lcom/vungle/ads/internal/load/i;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->s:Lcom/vungle/ads/internal/k2;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/k2;->e()V

    .line 2
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->k()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/ads/internal/model/i0;)Lcom/vungle/ads/VungleError;
    .registers 7

    const-string v0, "adPayload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2330
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->i()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 2331
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->b()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    move-object v0, v1

    .line 2332
    :goto_1e
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/i;->i()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2a

    :cond_29
    move-object v2, v1

    .line 2333
    :goto_2a
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object p1

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i;->d()Ljava/lang/String;

    move-result-object v1

    .line 2334
    :cond_34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response error: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Request failed with error: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_58

    goto :goto_61

    .line 2336
    :cond_58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_61

    goto :goto_90

    :cond_61
    :goto_61
    if-nez v0, :cond_64

    goto :goto_6d

    .line 2337
    :cond_64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2712

    if-ne v1, v2, :cond_6d

    goto :goto_90

    :cond_6d
    :goto_6d
    if-nez v0, :cond_70

    goto :goto_79

    .line 2338
    :cond_70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x4e21

    if-ne v1, v2, :cond_79

    goto :goto_90

    :cond_79
    :goto_79
    if-nez v0, :cond_7c

    goto :goto_85

    .line 2339
    :cond_7c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x7531

    if-ne v1, v2, :cond_85

    goto :goto_90

    :cond_85
    :goto_85
    if-nez v0, :cond_88

    goto :goto_a3

    .line 2340
    :cond_88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x7532

    if-ne v1, v2, :cond_a3

    :goto_90
    new-instance v1, Lcom/vungle/ads/AdPayloadError;

    .line 2341
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->forNumber(I)Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    move-result-object v0

    const-string v2, "forNumber(errorCode)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2342
    invoke-direct {v1, v0, p1}, Lcom/vungle/ads/AdPayloadError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    return-object v1

    .line 2347
    :cond_a3
    :goto_a3
    new-instance v0, Lcom/vungle/ads/AdPayloadError;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->PLACEMENT_SLEEP:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    invoke-direct {v0, v1, p1}, Lcom/vungle/ads/AdPayloadError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    return-object v0

    .line 2348
    :cond_ab
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->g:Lcom/vungle/ads/internal/load/b;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/load/b;->d()Lcom/vungle/ads/internal/model/j3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/j3;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/ads/internal/load/i;->p:Lcom/vungle/ads/internal/model/i0;

    if-eqz v2, :cond_be

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/i0;->A()Ljava/lang/String;

    move-result-object v2

    goto :goto_bf

    :cond_be
    move-object v2, v1

    :goto_bf
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    .line 2349
    const-string p1, "Waterfall request and responses placement don\'t match "

    invoke-static {p1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2928
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->p:Lcom/vungle/ads/internal/model/i0;

    if-eqz v0, :cond_d3

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->A()Ljava/lang/String;

    move-result-object v1

    :cond_d3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2929
    new-instance v0, Lcom/vungle/ads/PlacementMismatchError;

    invoke-direct {v0, p1}, Lcom/vungle/ads/PlacementMismatchError;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2930
    :cond_e5
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_ee

    .line 2931
    iget-object v0, v0, Lcom/vungle/ads/internal/model/i;->u:Lcom/vungle/ads/internal/model/v;

    goto :goto_ef

    :cond_ee
    move-object v0, v1

    :goto_ef
    if-nez v0, :cond_fa

    .line 2932
    new-instance v0, Lcom/vungle/ads/AdResponseEmptyError;

    const-string v2, "Missing template settings"

    invoke-direct {v0, v2}, Lcom/vungle/ads/AdResponseEmptyError;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1ea

    .line 2933
    :cond_fa
    iget-object v0, v0, Lcom/vungle/ads/internal/model/v;->b:Ljava/util/Map;

    .line 2934
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->y()Z

    move-result v2

    if-eqz v2, :cond_148

    if-eqz v0, :cond_111

    .line 2935
    const-string v2, "MAIN_IMAGE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/model/o;

    if-eqz v2, :cond_111

    .line 2936
    iget-object v2, v2, Lcom/vungle/ads/internal/model/o;->a:Ljava/lang/String;

    goto :goto_112

    :cond_111
    move-object v2, v1

    :goto_112
    if-nez v2, :cond_12f

    if-eqz v0, :cond_123

    .line 2937
    const-string v2, "MAIN_VIDEO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/model/o;

    if-eqz v2, :cond_123

    .line 2938
    iget-object v2, v2, Lcom/vungle/ads/internal/model/o;->a:Ljava/lang/String;

    goto :goto_124

    :cond_123
    move-object v2, v1

    :goto_124
    if-nez v2, :cond_12f

    .line 2939
    new-instance v0, Lcom/vungle/ads/NativeAssetError;

    const-string v2, "Unable to load null main asset."

    invoke-direct {v0, v2}, Lcom/vungle/ads/NativeAssetError;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1ea

    .line 2941
    :cond_12f
    const-string v2, "VUNGLE_PRIVACY_ICON_URL"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/model/o;

    if-eqz v2, :cond_13c

    .line 2942
    iget-object v2, v2, Lcom/vungle/ads/internal/model/o;->a:Ljava/lang/String;

    goto :goto_13d

    :cond_13c
    move-object v2, v1

    :goto_13d
    if-nez v2, :cond_172

    .line 2943
    new-instance v0, Lcom/vungle/ads/NativeAssetError;

    const-string v2, "Unable to load null privacy image."

    invoke-direct {v0, v2}, Lcom/vungle/ads/NativeAssetError;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1ea

    .line 2944
    :cond_148
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->k()Lcom/vungle/ads/internal/model/i;

    move-result-object v2

    if-eqz v2, :cond_151

    .line 2945
    iget-object v2, v2, Lcom/vungle/ads/internal/model/i;->n:Ljava/lang/String;

    goto :goto_152

    :cond_151
    move-object v2, v1

    :goto_152
    if-eqz v2, :cond_1e3

    .line 2946
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_15c

    goto/16 :goto_1e3

    :cond_15c
    if-eqz v2, :cond_1d6

    .line 2949
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_166

    goto/16 :goto_1d6

    :cond_166
    invoke-static {v2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_172

    invoke-static {v2}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d6

    :cond_172
    if-eqz v0, :cond_1d4

    .line 3017
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17c
    :goto_17c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3018
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/ads/internal/model/o;

    .line 3019
    iget-object v3, v3, Lcom/vungle/ads/internal/model/o;->a:Ljava/lang/String;

    if-eqz v3, :cond_1bb

    .line 3020
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_199

    goto :goto_1bb

    :cond_199
    if-eqz v3, :cond_1af

    .line 3024
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1a2

    goto :goto_1af

    :cond_1a2
    invoke-static {v3}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17c

    invoke-static {v3}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1af

    goto :goto_17c

    .line 3025
    :cond_1af
    :goto_1af
    new-instance v0, Lcom/vungle/ads/InvalidAssetUrlError;

    .line 3026
    const-string v2, "Invalid asset URL "

    invoke-static {v2, v3}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3027
    invoke-direct {v0, v2}, Lcom/vungle/ads/InvalidAssetUrlError;-><init>(Ljava/lang/String;)V

    goto :goto_1ea

    .line 3021
    :cond_1bb
    :goto_1bb
    new-instance v0, Lcom/vungle/ads/InvalidAssetUrlError;

    .line 3022
    const-string v3, "None asset URL for "

    invoke-static {v3}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3023
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vungle/ads/InvalidAssetUrlError;-><init>(Ljava/lang/String;)V

    goto :goto_1ea

    :cond_1d4
    move-object v0, v1

    goto :goto_1ea

    .line 2950
    :cond_1d6
    :goto_1d6
    const-string v0, "Failed to load vm url: "

    invoke-static {v0, v2}, Lcom/iab/omid/library/vungle/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2951
    new-instance v2, Lcom/vungle/ads/InvalidTemplateURLError;

    invoke-direct {v2, v0}, Lcom/vungle/ads/InvalidTemplateURLError;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1ea

    .line 2948
    :cond_1e3
    :goto_1e3
    new-instance v0, Lcom/vungle/ads/InvalidTemplateURLError;

    const-string v2, "Failed to prepare null vmURL for downloading."

    invoke-direct {v0, v2}, Lcom/vungle/ads/InvalidTemplateURLError;-><init>(Ljava/lang/String;)V

    :goto_1ea
    if-eqz v0, :cond_1ed

    return-object v0

    .line 3028
    :cond_1ed
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->v()Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 3029
    new-instance v0, Lcom/vungle/ads/AdExpiredError;

    .line 3030
    const-string v2, "The ad markup has expired for playback. Ad expiry: "

    invoke-static {v2}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3620
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object p1

    if-eqz p1, :cond_205

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 3621
    :cond_205
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", device: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3623
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/ads/AdExpiredError;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3627
    :cond_21c
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_229

    goto :goto_22a

    :cond_229
    return-object v1

    .line 3628
    :cond_22a
    :goto_22a
    new-instance p1, Lcom/vungle/ads/InvalidEventIdError;

    const-string v0, "Event id is invalid."

    invoke-direct {p1, v0}, Lcom/vungle/ads/InvalidEventIdError;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final a()V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->e:Lcom/vungle/ads/internal/downloader/n;

    check-cast v0, Lcom/vungle/ads/internal/downloader/i;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/i;->a()V

    return-void
.end method

.method public final a(Lcom/vungle/ads/VungleError;)V
    .registers 9

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 40
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->p:Lcom/vungle/ads/internal/model/i0;

    if-eqz v0, :cond_b0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->y()Z

    move-result v0

    if-ne v0, v2, :cond_b0

    .line 41
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->o:Ljava/util/ArrayList;

    .line 381
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 382
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 384
    move-object v6, v5

    check-cast v6, Lcom/vungle/ads/internal/model/b;

    .line 385
    invoke-virtual {v6}, Lcom/vungle/ads/internal/model/b;->g()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 729
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 731
    :cond_48
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 734
    :cond_4c
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 735
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1085
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_68

    goto :goto_80

    .line 1086
    :cond_68
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/ads/internal/model/b;

    .line 1087
    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/b;->e()Z

    move-result v4

    if-eqz v4, :cond_6c

    move v3, v2

    goto :goto_81

    :cond_80
    :goto_80
    move v3, v1

    .line 1438
    :goto_81
    instance-of v4, v0, Ljava/util/Collection;

    if-eqz v4, :cond_8c

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8c

    goto :goto_a3

    .line 1439
    :cond_8c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/ads/internal/model/b;

    .line 1440
    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/b;->e()Z

    move-result v4

    if-nez v4, :cond_90

    move v2, v1

    :cond_a3
    :goto_a3
    if-eqz v3, :cond_b0

    if-eqz v2, :cond_b0

    .line 1442
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1443
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->j()V

    return-void

    .line 1448
    :cond_b0
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->k:Lcom/vungle/ads/internal/load/a;

    if-eqz v0, :cond_b7

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/load/a;->onFailure(Lcom/vungle/ads/VungleError;)V

    :cond_b7
    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/j2;)V
    .registers 13

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1449
    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->p:Lcom/vungle/ads/internal/model/i0;

    if-eqz p1, :cond_c

    .line 1450
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->B()V

    .line 1452
    :cond_c
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/model/i0;->a(Lcom/vungle/ads/internal/util/t;)V

    .line 1453
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    if-nez v0, :cond_16

    goto :goto_1d

    :cond_16
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/t;->d(Ljava/lang/String;)V

    .line 1454
    :goto_1d
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    if-nez v0, :cond_22

    goto :goto_29

    :cond_22
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/t;->c(Ljava/lang/String;)V

    .line 1455
    :goto_29
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    if-nez v0, :cond_2e

    goto :goto_35

    :cond_2e
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/t;->b(Ljava/lang/String;)V

    .line 1456
    :goto_35
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    if-nez v0, :cond_3a

    goto :goto_41

    :cond_3a
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/t;->f(Ljava/lang/String;)V

    .line 1457
    :goto_41
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    if-nez v0, :cond_46

    goto :goto_4d

    :cond_46
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/t;->h(Ljava/lang/String;)V

    .line 1458
    :goto_4d
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    if-nez v0, :cond_52

    goto :goto_5d

    :cond_52
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/t;->b(Ljava/lang/Boolean;)V

    .line 1459
    :goto_5d
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    if-nez v0, :cond_62

    goto :goto_6d

    :cond_62
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->w()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/t;->a(Ljava/lang/Boolean;)V

    .line 1460
    :goto_6d
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    if-nez v0, :cond_72

    goto :goto_79

    :cond_72
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/t;->e(Ljava/lang/String;)V

    .line 1463
    :goto_79
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->s:Lcom/vungle/ads/internal/k2;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/k2;->d()V

    .line 1464
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/i;->s:Lcom/vungle/ads/internal/k2;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V

    .line 1469
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->f()Lcom/vungle/ads/internal/model/w2;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 1470
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/i;->a:Landroid/content/Context;

    sget-object v4, Lcom/vungle/ads/internal/p0;->c:Lcom/vungle/ads/internal/p0;

    invoke-virtual {v1, v2, v0, v4, p2}, Lcom/vungle/ads/internal/ConfigManager;->a(Landroid/content/Context;Lcom/vungle/ads/internal/model/w2;Lcom/vungle/ads/internal/p0;Lcom/vungle/ads/internal/j2;)V

    .line 1473
    :cond_97
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/i;->a(Lcom/vungle/ads/internal/model/i0;)Lcom/vungle/ads/VungleError;

    move-result-object p2

    if-eqz p2, :cond_ab

    .line 1475
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {p2, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/i;->a(Lcom/vungle/ads/VungleError;)V

    return-void

    .line 1476
    :cond_ab
    iget-object p2, p0, Lcom/vungle/ads/internal/load/i;->f:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/vungle/ads/internal/util/PathProvider;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_2c7

    .line 1477
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2c7

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c5

    goto/16 :goto_2c7

    .line 1478
    :cond_c5
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->p:Lcom/vungle/ads/internal/model/i0;

    if-eqz v0, :cond_119

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->z()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_119

    .line 1480
    :try_start_d0
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->d:Lcom/vungle/ads/internal/omsdk/c;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/omsdk/c;->b()V

    .line 1481
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->d:Lcom/vungle/ads/internal/omsdk/c;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/i;->f:Lcom/vungle/ads/internal/util/PathProvider;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/util/PathProvider;->getVmDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/omsdk/c;->a(Ljava/io/File;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_e0} :catch_e1

    goto :goto_119

    :catch_e1
    move-exception v0

    .line 1483
    sget-boolean v1, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 1484
    const-string v1, "Failed to inject OMSDK: "

    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1485
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BaseAdLoader"

    invoke-static {v4, v2}, Lcom/vungle/ads/internal/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    new-instance v2, Lcom/vungle/ads/OmSdkJsError;

    .line 1487
    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->OMSDK_JS_WRITE_FAILED:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 1488
    invoke-static {v1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1489
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1490
    invoke-direct {v2, v4, v0}, Lcom/vungle/ads/OmSdkJsError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {v2, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 1494
    :cond_119
    :goto_119
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->a:Landroid/content/Context;

    .line 1495
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vungle/ads/internal/load/e;

    invoke-direct {v2, v0}, Lcom/vungle/ads/internal/load/e;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 1496
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object v1

    if-eqz v1, :cond_161

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/i;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_161

    .line 1683
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_136
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_161

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1684
    new-instance v4, Lcom/vungle/ads/internal/network/p;

    invoke-direct {v4, v2}, Lcom/vungle/ads/internal/network/p;-><init>(Ljava/lang/String;)V

    .line 1685
    const-string v2, "load_ad"

    invoke-virtual {v4, v2}, Lcom/vungle/ads/internal/network/p;->b(Ljava/lang/String;)Lcom/vungle/ads/internal/network/p;

    move-result-object v2

    .line 1686
    iget-object v4, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {v2, v4}, Lcom/vungle/ads/internal/network/p;->a(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/internal/network/p;

    move-result-object v2

    .line 1687
    invoke-virtual {v2}, Lcom/vungle/ads/internal/network/p;->a()Lcom/vungle/ads/internal/network/q;

    move-result-object v2

    .line 1688
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/ads/internal/network/r;

    .line 1689
    invoke-static {v4, v2}, Lcom/vungle/ads/internal/network/r;->a(Lcom/vungle/ads/internal/network/r;Lcom/vungle/ads/internal/network/q;)V

    goto :goto_136

    .line 1692
    :cond_161
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16e

    .line 1693
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1699
    :cond_16e
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->y()Z

    move-result v0

    if-nez v0, :cond_1a0

    .line 1700
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object v0

    if-eqz v0, :cond_1a0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a0

    .line 1701
    iget-object v1, p0, Lcom/vungle/ads/internal/load/i;->h:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/downloader/u;

    .line 1702
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vungle/ads/internal/downloader/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a0

    .line 1703
    iget-object v1, p0, Lcom/vungle/ads/internal/load/i;->h:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/downloader/u;

    .line 1704
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vungle/ads/internal/downloader/u;->a(Ljava/util/Set;)V

    .line 1706
    :cond_1a0
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/model/i0;->a(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1709
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->p()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1ea

    iget-object p2, p0, Lcom/vungle/ads/internal/load/i;->o:Ljava/util/ArrayList;

    if-eqz p2, :cond_1ba

    .line 1876
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ba

    goto :goto_1d1

    .line 1877
    :cond_1ba
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1be
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/model/b;

    .line 1878
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1be

    goto :goto_1ea

    .line 1879
    :cond_1d1
    :goto_1d1
    sget-object v4, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 1880
    sget-object v5, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->VM_TEMPLATE_CACHE_HIT:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    .line 1882
    iget-object v8, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    .line 1883
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object p2

    if-eqz p2, :cond_1e3

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/i;->m()Ljava/lang/String;

    move-result-object p2

    :goto_1e1
    move-object v9, p2

    goto :goto_1e5

    :cond_1e3
    const/4 p2, 0x0

    goto :goto_1e1

    :goto_1e5
    const-wide/16 v6, 0x1

    .line 1884
    invoke-virtual/range {v4 .. v9}, Lcom/vungle/ads/internal/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    .line 1892
    :cond_1ea
    :goto_1ea
    iget-object p2, p0, Lcom/vungle/ads/internal/load/i;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_20c

    .line 1899
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->C()V

    .line 1900
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->v:Lcom/vungle/ads/internal/k2;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->e()V

    .line 1901
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->v:Lcom/vungle/ads/internal/k2;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->d()V

    .line 1902
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object p2, p0, Lcom/vungle/ads/internal/load/i;->v:Lcom/vungle/ads/internal/k2;

    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    invoke-static {p1, p2, v0, v3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V

    .line 1903
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->j()V

    return-void

    .line 1904
    :cond_20c
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->v:Lcom/vungle/ads/internal/k2;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->e()V

    .line 1905
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->w:Lcom/vungle/ads/internal/k2;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->e()V

    .line 1906
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->x:Lcom/vungle/ads/internal/k2;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/k2;->e()V

    .line 1907
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->i:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p2, p0, Lcom/vungle/ads/internal/load/i;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1908
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->j:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p2, p0, Lcom/vungle/ads/internal/load/i;->o:Ljava/util/ArrayList;

    .line 2291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2292
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_234
    :goto_234
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vungle/ads/internal/model/b;

    .line 2293
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/b;->j()Z

    move-result v2

    if-eqz v2, :cond_234

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_234

    :cond_24b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2296
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->p:Lcom/vungle/ads/internal/model/i0;

    if-eqz p1, :cond_268

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i0;->c()Lcom/vungle/ads/internal/model/i;

    move-result-object p1

    if-eqz p1, :cond_268

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/i;->f()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_268

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_269

    :cond_268
    const/4 p1, 0x0

    :goto_269
    const/4 p2, 0x5

    .line 2297
    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(II)I

    move-result p1

    .line 2298
    iget-object p2, p0, Lcom/vungle/ads/internal/load/i;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_274
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/model/b;

    .line 2299
    new-instance v1, Lcom/vungle/ads/internal/downloader/l;

    .line 2300
    iget-boolean v2, v0, Lcom/vungle/ads/internal/model/b;->d:Z

    if-eqz v2, :cond_289

    .line 2301
    sget-object v2, Lcom/vungle/ads/internal/downloader/k;->b:Lcom/vungle/ads/internal/downloader/k;

    goto :goto_28b

    .line 2303
    :cond_289
    sget-object v2, Lcom/vungle/ads/internal/downloader/k;->c:Lcom/vungle/ads/internal/downloader/k;

    .line 2304
    :goto_28b
    iget-object v3, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/vungle/ads/internal/downloader/l;-><init>(Lcom/vungle/ads/internal/downloader/k;Lcom/vungle/ads/internal/model/b;Lcom/vungle/ads/internal/util/t;I)V

    .line 2305
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2b9

    .line 2306
    invoke-virtual {v1}, Lcom/vungle/ads/internal/downloader/l;->f()V

    .line 2307
    new-instance v2, Lcom/vungle/ads/internal/load/c;

    invoke-direct {v2, p0}, Lcom/vungle/ads/internal/load/c;-><init>(Lcom/vungle/ads/internal/load/i;)V

    .line 2308
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/b;->c()Ljava/lang/String;

    move-result-object v3

    .line 2309
    new-instance v4, Lcom/vungle/ads/internal/load/d;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/vungle/ads/internal/load/d;-><init>(Lcom/vungle/ads/internal/load/i;Ljava/lang/String;Lcom/vungle/ads/internal/load/c;Lcom/vungle/ads/internal/downloader/l;)V

    .line 2310
    iget-object v1, p0, Lcom/vungle/ads/internal/load/i;->h:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/downloader/u;

    .line 2311
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    .line 2312
    invoke-static {v1, v3, v0, v2, v4}, Lcom/vungle/ads/internal/downloader/u;->a(Lcom/vungle/ads/internal/downloader/u;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/util/t;Lcom/vungle/ads/internal/load/d;)V

    goto :goto_274

    .line 2316
    :cond_2b9
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->e:Lcom/vungle/ads/internal/downloader/n;

    .line 2317
    new-instance v2, Lcom/vungle/ads/internal/load/c;

    invoke-direct {v2, p0}, Lcom/vungle/ads/internal/load/c;-><init>(Lcom/vungle/ads/internal/load/i;)V

    .line 2318
    check-cast v0, Lcom/vungle/ads/internal/downloader/i;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/i;->a(Lcom/vungle/ads/internal/downloader/l;Lcom/vungle/ads/internal/downloader/e;)V

    goto :goto_274

    :cond_2c6
    return-void

    .line 2319
    :cond_2c7
    :goto_2c7
    new-instance p1, Lcom/vungle/ads/AssetWriteError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid directory. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/vungle/ads/AssetWriteError;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    invoke-virtual {p1, p2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    .line 2320
    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    .line 2321
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/i;->a(Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/r;)V
    .registers 4

    const-string v0, "adLoaderCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->k:Lcom/vungle/ads/internal/load/a;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/ads/internal/load/i;->A:J

    .line 35
    iget-object p1, p0, Lcom/vungle/ads/internal/load/i;->c:Lcom/vungle/ads/internal/executor/a;

    check-cast p1, Lcom/vungle/ads/internal/executor/d;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/executor/d;->b()Lcom/vungle/ads/internal/executor/j;

    move-result-object p1

    new-instance v0, Lcom/vungle/ads/internal/load/i$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/load/i$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/internal/load/i;)V

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/executor/j;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/vungle/ads/internal/util/t;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    return-void
.end method

.method public final b()Lcom/vungle/ads/internal/load/b;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->g:Lcom/vungle/ads/internal/load/b;

    return-object v0
.end method

.method public final c()Lcom/vungle/ads/internal/model/i0;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->p:Lcom/vungle/ads/internal/model/i0;

    return-object v0
.end method

.method public final d()Landroid/content/Context;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final e()Lcom/vungle/ads/internal/util/t;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->z:Lcom/vungle/ads/internal/util/t;

    return-object v0
.end method

.method public final f()Lcom/vungle/ads/internal/util/PathProvider;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->f:Lcom/vungle/ads/internal/util/PathProvider;

    return-object v0
.end method

.method public final g()Lcom/vungle/ads/internal/executor/a;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->c:Lcom/vungle/ads/internal/executor/a;

    return-object v0
.end method

.method public final h()Lcom/vungle/ads/internal/network/VungleApiClient;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->b:Lcom/vungle/ads/internal/network/VungleApiClient;

    return-object v0
.end method

.method public abstract i()V
.end method

.method public final j()V
    .registers 9

    .line 1
    iget-object v1, p0, Lcom/vungle/ads/internal/load/i;->p:Lcom/vungle/ads/internal/model/i0;

    if-eqz v1, :cond_7c

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 5
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/i0;->E()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 7
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->y:Lcom/vungle/ads/internal/k2;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/k2;->e()V

    .line 8
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/i0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string v0, "BaseAdLoader"

    const-string v2, "start preloading"

    invoke-static {v0, v2}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/vungle/ads/internal/load/i;->A:J

    sub-long/2addr v4, v6

    .line 12
    sget-object v0, Lcom/vungle/ads/internal/presenter/f0;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->a:Landroid/content/Context;

    .line 15
    iget-object v2, p0, Lcom/vungle/ads/internal/load/i;->g:Lcom/vungle/ads/internal/load/b;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/load/b;->d()Lcom/vungle/ads/internal/model/j3;

    move-result-object v2

    move-wide v5, v4

    .line 17
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/i0;->u()Lcom/vungle/ads/internal/model/f0;

    move-result-object v4

    move-wide v6, v5

    .line 18
    new-instance v5, Lcom/vungle/ads/internal/load/f;

    invoke-direct {v5, p0, v1}, Lcom/vungle/ads/internal/load/f;-><init>(Lcom/vungle/ads/internal/load/i;Lcom/vungle/ads/internal/model/i0;)V

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 40
    invoke-static/range {v0 .. v6}, Lcom/vungle/ads/internal/presenter/f0;->a(Landroid/content/Context;Lcom/vungle/ads/internal/model/i0;Lcom/vungle/ads/internal/model/j3;Ljava/lang/String;Lcom/vungle/ads/internal/model/f0;Lcom/vungle/ads/internal/load/f;Ljava/lang/Long;)V

    goto :goto_60

    .line 71
    :cond_56
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/i;->i()V

    .line 72
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->k:Lcom/vungle/ads/internal/load/a;

    if-eqz v0, :cond_60

    invoke-interface {v0, v1}, Lcom/vungle/ads/internal/load/a;->onSuccess(Lcom/vungle/ads/internal/model/i0;)V

    .line 73
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i;->a:Landroid/content/Context;

    .line 74
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vungle/ads/internal/load/g;

    invoke-direct {v2, v0}, Lcom/vungle/ads/internal/load/g;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/task/g;

    .line 76
    invoke-static {}, Lcom/vungle/ads/internal/task/j;->a()Lcom/vungle/ads/internal/task/e;

    move-result-object v1

    check-cast v0, Lcom/vungle/ads/internal/task/r;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/task/r;->a(Lcom/vungle/ads/internal/task/e;)V

    :cond_7c
    return-void
.end method

.method public abstract k()V
.end method

###### Class com.vungle.ads.internal.load.i$$ExternalSyntheticLambda0 (com.vungle.ads.internal.load.i$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/load/i$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/internal/load/i;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/load/i;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/i$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/load/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/load/i$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/internal/load/i;

    invoke-static {v0}, Lcom/vungle/ads/internal/load/i;->i(Lcom/vungle/ads/internal/load/i;)V

    return-void
.end method
