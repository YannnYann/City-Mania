###### Class io.bidmachine.k (io.bidmachine.k)
.class public final Lio/bidmachine/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/k$b;,
        Lio/bidmachine/k$c;
    }
.end annotation


# static fields
.field public static final F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static volatile G:Lio/bidmachine/k;


# instance fields
.field public A:J

.field public B:J

.field public C:Ljava/util/List;

.field public D:Lio/bidmachine/u;

.field public final E:Lio/bidmachine/u$d;

.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lio/bidmachine/tracking/EventTrackerImpl;

.field public final e:Lio/bidmachine/tracking/SessionTracker;

.field public final f:Lio/bidmachine/internal/x;

.field public final g:Lio/bidmachine/PriceFloorParams;

.field public final h:Lio/bidmachine/AppParams;

.field public final i:Lio/bidmachine/DeviceParams;

.field public final j:Lio/bidmachine/SessionParams;

.field public final k:Lio/bidmachine/r;

.field public final l:Ljava/util/Map;

.field public final m:Ljava/util/List;

.field public final n:Lio/bidmachine/e;

.field public final o:Lio/bidmachine/internal/c;

.field public final p:Lio/bidmachine/i;

.field public final q:Lio/bidmachine/BidMachineAssetCacheInitializer;

.field public final r:Lio/bidmachine/InstallInfoProvider;

.field public s:Landroid/content/Context;

.field public t:Ljava/lang/String;

.field public u:Lio/bidmachine/TargetingParams;

.field public v:Lio/bidmachine/CustomParams;

.field public w:Lio/bidmachine/Publisher;

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public static synthetic $r8$lambda$9vENb8wVPfhCZyTi2XDrV86F0pw(Lio/bidmachine/k;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/k;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HWzILqHXwt55FzAEkwkzZa_QK8Y(Landroid/content/Context;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/k;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LFwls1NX2sXN8fXYvPVhJtfb_V8(Lio/bidmachine/k;Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;Lio/bidmachine/internal/y;Landroid/content/Context;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/k;->a(Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;Lio/bidmachine/internal/y;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQouC0kz7DXnbNt8aB_6VWz9qBg(Landroid/content/Context;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/k;->e(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/k;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v0, Lio/bidmachine/k$a;

    const-string v1, "BidMachineLog"

    invoke-direct {v0, v1}, Lio/bidmachine/k$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/core/Logger;->setEnabledInstance(Lio/bidmachine/utils/log/LoggerInstance;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->a:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Lio/bidmachine/tracking/EventTrackerImpl;

    invoke-direct {v0}, Lio/bidmachine/tracking/EventTrackerImpl;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->d:Lio/bidmachine/tracking/EventTrackerImpl;

    .line 49
    new-instance v2, Lio/bidmachine/l;

    invoke-direct {v2, v0}, Lio/bidmachine/l;-><init>(Lio/bidmachine/tracking/EventTracker;)V

    iput-object v2, p0, Lio/bidmachine/k;->e:Lio/bidmachine/tracking/SessionTracker;

    .line 51
    new-instance v0, Lio/bidmachine/internal/x;

    invoke-direct {v0}, Lio/bidmachine/internal/x;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->f:Lio/bidmachine/internal/x;

    .line 53
    new-instance v0, Lio/bidmachine/PriceFloorParams;

    invoke-direct {v0}, Lio/bidmachine/PriceFloorParams;-><init>()V

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v0, v2, v3, v4}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/k;->g:Lio/bidmachine/PriceFloorParams;

    .line 58
    new-instance v0, Lio/bidmachine/AppParams;

    new-instance v2, Lio/bidmachine/f;

    invoke-direct {v2}, Lio/bidmachine/f;-><init>()V

    invoke-direct {v0, v2}, Lio/bidmachine/AppParams;-><init>(Lio/bidmachine/f;)V

    iput-object v0, p0, Lio/bidmachine/k;->h:Lio/bidmachine/AppParams;

    .line 60
    new-instance v0, Lio/bidmachine/DeviceParams;

    new-instance v2, Lio/bidmachine/DeviceConnectionParams;

    invoke-direct {v2}, Lio/bidmachine/DeviceConnectionParams;-><init>()V

    invoke-direct {v0, v2}, Lio/bidmachine/DeviceParams;-><init>(Lio/bidmachine/DeviceConnectionParams;)V

    iput-object v0, p0, Lio/bidmachine/k;->i:Lio/bidmachine/DeviceParams;

    .line 62
    new-instance v0, Lio/bidmachine/SessionParams;

    invoke-direct {v0}, Lio/bidmachine/SessionParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->j:Lio/bidmachine/SessionParams;

    .line 64
    new-instance v0, Lio/bidmachine/s;

    invoke-direct {v0}, Lio/bidmachine/s;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->k:Lio/bidmachine/r;

    .line 66
    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lio/bidmachine/TrackEventType;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lio/bidmachine/k;->l:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->m:Ljava/util/List;

    .line 70
    new-instance v0, Lio/bidmachine/e;

    invoke-direct {v0}, Lio/bidmachine/e;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->n:Lio/bidmachine/e;

    .line 72
    new-instance v0, Lio/bidmachine/internal/c;

    invoke-direct {v0}, Lio/bidmachine/internal/c;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->o:Lio/bidmachine/internal/c;

    .line 74
    new-instance v0, Lio/bidmachine/i;

    invoke-direct {v0}, Lio/bidmachine/i;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->p:Lio/bidmachine/i;

    .line 76
    new-instance v0, Lio/bidmachine/BidMachineAssetCacheInitializer;

    invoke-direct {v0}, Lio/bidmachine/BidMachineAssetCacheInitializer;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->q:Lio/bidmachine/BidMachineAssetCacheInitializer;

    .line 78
    new-instance v0, Lio/bidmachine/InstallInfoProvider;

    invoke-direct {v0}, Lio/bidmachine/InstallInfoProvider;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->r:Lio/bidmachine/InstallInfoProvider;

    .line 86
    new-instance v0, Lio/bidmachine/TargetingParams;

    invoke-direct {v0}, Lio/bidmachine/TargetingParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->u:Lio/bidmachine/TargetingParams;

    .line 88
    new-instance v0, Lio/bidmachine/CustomParams;

    invoke-direct {v0}, Lio/bidmachine/CustomParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/k;->v:Lio/bidmachine/CustomParams;

    .line 93
    iput v1, p0, Lio/bidmachine/k;->y:I

    .line 95
    iput v1, p0, Lio/bidmachine/k;->z:I

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lio/bidmachine/k;->A:J

    .line 98
    iput-wide v0, p0, Lio/bidmachine/k;->B:J

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lio/bidmachine/k;->C:Ljava/util/List;

    .line 107
    new-instance v1, Lio/bidmachine/k$b;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/k$b;-><init>(Lio/bidmachine/k;Lio/bidmachine/k$a;)V

    iput-object v1, p0, Lio/bidmachine/k;->E:Lio/bidmachine/u$d;

    return-void
.end method

.method public static a(Lio/bidmachine/InitializationCallback;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 38
    :cond_3
    new-instance v0, Lio/bidmachine/k$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lio/bidmachine/k$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/InitializationCallback;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b()Lio/bidmachine/k;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/k;->G:Lio/bidmachine/k;

    if-nez v0, :cond_19

    .line 3
    const-class v1, Lio/bidmachine/k;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lio/bidmachine/k;->G:Lio/bidmachine/k;

    if-nez v0, :cond_15

    .line 6
    new-instance v0, Lio/bidmachine/k;

    invoke-direct {v0}, Lio/bidmachine/k;-><init>()V

    .line 7
    sput-object v0, Lio/bidmachine/k;->G:Lio/bidmachine/k;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 9
    :cond_15
    :goto_15
    monitor-exit v1

    return-object v0

    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v0

    :cond_19
    return-object v0
.end method

.method public static synthetic e(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/h;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic f(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/bidmachine/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lio/bidmachine/k;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4
    :cond_b
    new-instance v0, Lio/bidmachine/k$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/bidmachine/k$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->runCatching(Lio/bidmachine/utils/ThrowableRunnable;)V

    .line 5
    new-instance v0, Lio/bidmachine/k$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/bidmachine/k$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->runCatching(Lio/bidmachine/utils/ThrowableRunnable;)V

    return-void
.end method


# virtual methods
.method public a()Lio/bidmachine/InitializationParams;
    .registers 4

    .line 91
    sget-object v0, Lio/bidmachine/internal/y;->c:Lio/bidmachine/internal/y;

    invoke-virtual {p0, v0}, Lio/bidmachine/k;->a(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/u;

    move-result-object v0

    .line 92
    new-instance v1, Lio/bidmachine/v;

    iget-object v2, p0, Lio/bidmachine/k;->u:Lio/bidmachine/TargetingParams;

    invoke-virtual {v0}, Lio/bidmachine/internal/u;->a()Lio/bidmachine/models/DataRestrictions;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lio/bidmachine/v;-><init>(Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-object v1
.end method

.method public a(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/u;
    .registers 4

    .line 93
    iget-object v0, p0, Lio/bidmachine/k;->f:Lio/bidmachine/internal/x;

    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/internal/x;->a(Ljava/lang/String;Lio/bidmachine/internal/y;)Lio/bidmachine/internal/u;

    move-result-object p1

    return-object p1
.end method

.method public a(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .registers 3

    .line 86
    iget-object v0, p0, Lio/bidmachine/k;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 81
    invoke-static {p1, v0}, Lio/bidmachine/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V
    .registers 3

    .line 84
    invoke-static {}, Lio/bidmachine/NetworkRegistry;->registerCoreNetworks()V

    .line 85
    invoke-static {p1, p2}, Lio/bidmachine/NetworkRegistry;->initializeNetworksAsync(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lio/bidmachine/k;->k(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/k;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3
    invoke-static {p3}, Lio/bidmachine/k;->a(Lio/bidmachine/InitializationCallback;)V

    return-void

    :cond_d
    if-nez p1, :cond_15

    .line 8
    const-string p1, "Initialization fail: Context is not provided"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 12
    const-string p1, "Initialization fail: Source id is not provided"

    invoke-static {p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_21
    if-eqz p3, :cond_28

    .line 16
    iget-object v0, p0, Lio/bidmachine/k;->a:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_28
    iget-object p3, p0, Lio/bidmachine/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p3

    if-nez p3, :cond_33

    return-void

    .line 22
    :cond_33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 23
    iput-object p3, p0, Lio/bidmachine/k;->s:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lio/bidmachine/k;->t:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lio/bidmachine/k;->o:Lio/bidmachine/internal/c;

    invoke-virtual {v0, p3}, Lio/bidmachine/internal/c;->a(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lio/bidmachine/k;->o:Lio/bidmachine/internal/c;

    invoke-virtual {v0, v1}, Lio/bidmachine/SessionManager;->addObserver(Lio/bidmachine/SessionManager$Observer;)V

    .line 29
    invoke-virtual {v0, p3}, Lio/bidmachine/SessionManager;->attachContext(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->resume()V

    .line 31
    invoke-static {p3}, Lio/bidmachine/utils/BluetoothUtils;->register(Landroid/content/Context;)V

    .line 32
    invoke-static {p1}, Lio/bidmachine/UserAgentManager;->initialize(Landroid/content/Context;)V

    .line 33
    new-instance p1, Lio/bidmachine/k$c;

    invoke-direct {p1, p3}, Lio/bidmachine/k$c;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lio/bidmachine/rendering/Rendering;->setUserAgentProvider(Lio/bidmachine/rendering/utils/UserAgentProvider;)V

    .line 35
    new-instance p1, Lio/bidmachine/u;

    iget-object v0, p0, Lio/bidmachine/k;->E:Lio/bidmachine/u$d;

    invoke-direct {p1, p3, p2, v0}, Lio/bidmachine/u;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/u$d;)V

    iput-object p1, p0, Lio/bidmachine/k;->D:Lio/bidmachine/u;

    .line 37
    new-instance p1, Lio/bidmachine/k$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lio/bidmachine/k$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/k;Landroid/content/Context;)V

    invoke-static {p1}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .registers 4

    if-nez p2, :cond_3

    goto :goto_17

    .line 82
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork;

    .line 83
    invoke-static {p1, v0}, Lio/bidmachine/NetworkRegistry;->registerInitNetwork(Landroid/content/Context;Lio/bidmachine/protobuf/AdNetwork;)V

    goto :goto_7

    :cond_17
    :goto_17
    return-void
.end method

.method public a(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 90
    :cond_3
    iget-object v0, p0, Lio/bidmachine/k;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lio/bidmachine/Publisher;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lio/bidmachine/k;->w:Lio/bidmachine/Publisher;

    return-void
.end method

.method public a(Lio/bidmachine/TargetingParams;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_8

    .line 88
    :cond_3
    new-instance p1, Lio/bidmachine/TargetingParams;

    invoke-direct {p1}, Lio/bidmachine/TargetingParams;-><init>()V

    :goto_8
    iput-object p1, p0, Lio/bidmachine/k;->u:Lio/bidmachine/TargetingParams;

    return-void
.end method

.method public a(Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V
    .registers 11

    .line 39
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/UrlProvider;->setAuctionUrlFromInit(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lio/bidmachine/k;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 41
    iget-object v0, p0, Lio/bidmachine/k;->l:Ljava/util/Map;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getEventList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/utils/ProtoUtils;->prepareEvents(Ljava/util/Map;Ljava/util/List;)V

    .line 42
    iget-object v0, p0, Lio/bidmachine/k;->d:Lio/bidmachine/tracking/EventTrackerImpl;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/tracking/EventTrackerImpl;->setDefaultEventConfiguration(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V

    .line 43
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v0

    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/SessionManager;->setSessionResetAfter(J)V

    .line 44
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    move-result v0

    iput v0, p0, Lio/bidmachine/k;->y:I

    .line 45
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    move-result v0

    iput v0, p0, Lio/bidmachine/k;->z:I

    .line 46
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getShowWithoutInternet()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/m;->a(Z)V

    .line 47
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getTokenConfigurationsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/o;->a(Ljava/util/List;)V

    .line 49
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getAdCachePlacementControlMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 51
    invoke-static {v0}, Lio/bidmachine/c;->a(Ljava/util/Map;)V

    .line 54
    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    invoke-virtual {v1}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    if-eqz v1, :cond_60

    .line 56
    invoke-virtual {v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v1

    goto :goto_61

    :cond_60
    const/4 v1, 0x0

    .line 58
    :goto_61
    sget-object v2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    invoke-virtual {v2}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    if-eqz v0, :cond_74

    .line 60
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result v0

    add-int/2addr v1, v0

    :cond_74
    const/4 v0, 0x5

    if-le v1, v0, :cond_7a

    .line 63
    invoke-static {v1}, Lio/bidmachine/iab/vast/VastRequest;->setCacheSize(I)V

    .line 66
    :cond_7a
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    const-string v1, "mraid_js"

    invoke-static {v0, v1}, Lio/bidmachine/utils/ProtoUtilsKt;->getString(Lcom/explorestack/protobuf/Struct;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/iab/mraid/MraidUtils;->dynamicMraidJs:Ljava/lang/String;

    .line 68
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getRestrictionMode()Lio/bidmachine/protobuf/sdk/RestrictionMode;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/internal/E;->a(Lio/bidmachine/protobuf/sdk/RestrictionMode;)Lio/bidmachine/internal/y;

    move-result-object v6

    .line 70
    iget-object v0, p0, Lio/bidmachine/k;->s:Landroid/content/Context;

    new-instance v1, Lio/bidmachine/k$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/k$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/k;Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;Lio/bidmachine/internal/y;)V

    invoke-static {v0, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;Lio/bidmachine/internal/y;Landroid/content/Context;)V
    .registers 7

    .line 71
    iget-object v0, p0, Lio/bidmachine/k;->p:Lio/bidmachine/i;

    invoke-virtual {v0, p5, p1, p2, p3}, Lio/bidmachine/i;->a(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lio/bidmachine/k;->q:Lio/bidmachine/BidMachineAssetCacheInitializer;

    invoke-virtual {p1, p5, p2}, Lio/bidmachine/BidMachineAssetCacheInitializer;->configure(Landroid/content/Context;Lio/bidmachine/protobuf/InitResponse;)V

    .line 73
    iget-object p1, p0, Lio/bidmachine/k;->o:Lio/bidmachine/internal/c;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getBmifvTtlSessions()I

    move-result p3

    invoke-virtual {p1, p5, p3}, Lio/bidmachine/internal/c;->b(Landroid/content/Context;I)V

    .line 74
    invoke-static {p5, p4}, Lio/bidmachine/n;->a(Landroid/content/Context;Lio/bidmachine/internal/y;)V

    .line 75
    sget-object p1, Lio/bidmachine/internal/y;->c:Lio/bidmachine/internal/y;

    if-ne p4, p1, :cond_1d

    .line 76
    invoke-virtual {p0, p5}, Lio/bidmachine/k;->a(Landroid/content/Context;)V

    .line 79
    :cond_1d
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object p1

    invoke-static {p5, p1}, Lio/bidmachine/CrashTracker;->reportAndInit(Landroid/content/Context;Lio/bidmachine/protobuf/SdkCrashSignalConfig;)V

    .line 80
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getCrashSignalConfig()Lio/bidmachine/protobuf/SdkCrashSignalConfig;

    move-result-object p1

    invoke-static {p5, p1}, Lio/bidmachine/AnrTracker;->initAndReport(Landroid/content/Context;Lio/bidmachine/protobuf/SdkCrashSignalConfig;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 87
    iput-boolean p1, p0, Lio/bidmachine/k;->x:Z

    return-void
.end method

.method public b(Landroid/content/Context;)Lio/bidmachine/internal/u;
    .registers 2

    .line 11
    invoke-static {p1}, Lio/bidmachine/n;->t(Landroid/content/Context;)Lio/bidmachine/internal/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/k;->a(Lio/bidmachine/internal/y;)Lio/bidmachine/internal/u;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lio/bidmachine/k;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Landroid/content/Context;)J
    .registers 4

    .line 1
    invoke-static {p1}, Lio/bidmachine/n;->u(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/k;->m:Ljava/util/List;

    return-object v0
.end method

.method public d()Landroid/content/Context;
    .registers 2

    .line 18
    iget-object v0, p0, Lio/bidmachine/k;->s:Landroid/content/Context;

    return-object v0
.end method

.method public final synthetic d(Landroid/content/Context;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/Debugger;->setup(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/k;->f:Lio/bidmachine/internal/x;

    invoke-static {p1}, Lio/bidmachine/internal/H;->a(Landroid/content/Context;)Lio/bidmachine/internal/G;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/x;->a(Lio/bidmachine/internal/G;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/k;->k:Lio/bidmachine/r;

    invoke-interface {v0, p1}, Lio/bidmachine/r;->a(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/k;->n:Lio/bidmachine/e;

    invoke-virtual {v0, p1}, Lio/bidmachine/e;->b(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/k;->D:Lio/bidmachine/u;

    invoke-virtual {v0}, Lio/bidmachine/u;->d()V

    .line 7
    invoke-virtual {p0, p1}, Lio/bidmachine/k;->h(Landroid/content/Context;)J

    .line 8
    iget-object v0, p0, Lio/bidmachine/k;->r:Lio/bidmachine/InstallInfoProvider;

    invoke-virtual {v0, p1}, Lio/bidmachine/InstallInfoProvider;->initialize(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/k;->a(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V

    .line 11
    invoke-virtual {p0}, Lio/bidmachine/k;->v()V

    .line 13
    iget-object p1, p0, Lio/bidmachine/k;->D:Lio/bidmachine/u;

    invoke-virtual {p1}, Lio/bidmachine/u;->c()V

    .line 15
    invoke-static {}, Lio/bidmachine/internal/o;->a()V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception p1

    .line 17
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e()Lio/bidmachine/AppParams;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/k;->h:Lio/bidmachine/AppParams;

    return-object v0
.end method

.method public f()Lio/bidmachine/DeviceParams;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/k;->i:Lio/bidmachine/DeviceParams;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/k;->n:Lio/bidmachine/e;

    invoke-virtual {v0}, Lio/bidmachine/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/k;->o:Lio/bidmachine/internal/c;

    invoke-virtual {v0, p1}, Lio/bidmachine/internal/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroid/content/Context;)J
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/bidmachine/k;->A:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    return-wide v0

    .line 4
    :cond_9
    invoke-static {p1}, Lio/bidmachine/n;->D(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/k;->A:J

    return-wide v0
.end method

.method public h()Lio/bidmachine/InstallInfoProvider;
    .registers 2

    .line 5
    iget-object v0, p0, Lio/bidmachine/k;->r:Lio/bidmachine/InstallInfoProvider;

    return-object v0
.end method

.method public i()I
    .registers 2

    .line 6
    iget v0, p0, Lio/bidmachine/k;->z:I

    return v0
.end method

.method public i(Landroid/content/Context;)Ljava/util/List;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/k;->C:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    .line 4
    :cond_5
    invoke-virtual {p0, p1}, Lio/bidmachine/k;->j(Landroid/content/Context;)J

    move-result-wide v0

    .line 5
    invoke-static {p1, v0, v1}, Lio/bidmachine/n;->a(Landroid/content/Context;J)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/k;->C:Ljava/util/List;

    return-object p1
.end method

.method public j(Landroid/content/Context;)J
    .registers 6

    .line 1
    iget-wide v0, p0, Lio/bidmachine/k;->B:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    return-wide v0

    .line 4
    :cond_9
    invoke-static {p1}, Lio/bidmachine/n;->E(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/k;->B:J

    return-wide v0
.end method

.method public j()Lio/bidmachine/PriceFloorParams;
    .registers 2

    .line 5
    iget-object v0, p0, Lio/bidmachine/k;->g:Lio/bidmachine/PriceFloorParams;

    return-object v0
.end method

.method public k()Lio/bidmachine/internal/x;
    .registers 2

    .line 6
    iget-object v0, p0, Lio/bidmachine/k;->f:Lio/bidmachine/internal/x;

    return-object v0
.end method

.method public l()Lio/bidmachine/Publisher;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/k;->w:Lio/bidmachine/Publisher;

    return-object v0
.end method

.method public m()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/k;->y:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/k;->t:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lio/bidmachine/SessionParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/k;->j:Lio/bidmachine/SessionParams;

    return-object v0
.end method

.method public p()Lio/bidmachine/tracking/SessionTracker;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/k;->e:Lio/bidmachine/tracking/SessionTracker;

    return-object v0
.end method

.method public q()Lio/bidmachine/TargetingParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/k;->u:Lio/bidmachine/TargetingParams;

    return-object v0
.end method

.method public r()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/k;->t()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lio/bidmachine/k;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public s()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public u()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/k;->x:Z

    return v0
.end method

.method public v()V
    .registers 3

    .line 1
    const-string v0, "Notify initialization finished"

    invoke-static {v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/bidmachine/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lio/bidmachine/k;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/InitializationCallback;

    .line 6
    invoke-static {v1}, Lio/bidmachine/k;->a(Lio/bidmachine/InitializationCallback;)V

    goto :goto_17

    .line 8
    :cond_27
    iget-object v0, p0, Lio/bidmachine/k;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

###### Class io.bidmachine.k.a (io.bidmachine.k$a)
.class public Lio/bidmachine/k$a;
.super Lio/bidmachine/utils/log/DefaultLoggerInstance;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/utils/log/DefaultLoggerInstance;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildMessage(Ljava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lio/bidmachine/utils/log/DefaultLoggerInstance;->buildMessage(Ljava/lang/Object;Ljava/lang/String;Lio/bidmachine/utils/lazy/LazyValue;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/bidmachine/k;->b()Lio/bidmachine/k;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/k;->u()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "(TEST MODE) "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1f
    return-object p1
.end method

###### Class io.bidmachine.k.b (io.bidmachine.k$b)
.class public Lio/bidmachine/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/u$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/k;


# direct methods
.method public constructor <init>(Lio/bidmachine/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/k$b;->a:Lio/bidmachine/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/k;Lio/bidmachine/k$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/k$b;-><init>(Lio/bidmachine/k;)V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/u$b;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/u$b;->a()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/bidmachine/k$b;->a:Lio/bidmachine/k;

    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/bidmachine/u$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Lio/bidmachine/k;->a(Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lio/bidmachine/k$b;->a:Lio/bidmachine/k;

    iget-object p1, p1, Lio/bidmachine/k;->s:Landroid/content/Context;

    if-nez p1, :cond_1c

    return-void

    .line 8
    :cond_1c
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    move-result-object p1

    iget-object v1, p0, Lio/bidmachine/k$b;->a:Lio/bidmachine/k;

    iget-object v1, v1, Lio/bidmachine/k;->s:Landroid/content/Context;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lio/bidmachine/ExtraParamsManager;->setExtras(Landroid/content/Context;Lio/bidmachine/protobuf/Extras;)V

    .line 9
    iget-object p1, p0, Lio/bidmachine/k$b;->a:Lio/bidmachine/k;

    iget-object v1, p1, Lio/bidmachine/k;->s:Landroid/content/Context;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lio/bidmachine/k;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public b(Lio/bidmachine/u$b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/k$b;->a:Lio/bidmachine/k;

    iget-object v1, v0, Lio/bidmachine/k;->s:Landroid/content/Context;

    if-nez v1, :cond_7

    return-void

    .line 5
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/u$b;->a()Lio/bidmachine/protobuf/InitResponse;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/k;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public c(Lio/bidmachine/u$b;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/k$b;->a:Lio/bidmachine/k;

    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/u$b;->a()Lio/bidmachine/protobuf/InitResponse;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/u$b;->b()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/k;->a(Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.k.c (io.bidmachine.k$c)
.class public Lio/bidmachine/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/utils/UserAgentProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/k$c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/k$c;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/UserAgentManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.k$$ExternalSyntheticLambda0 (io.bidmachine.k$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/k$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/ThrowableRunnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/k$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/k$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/k;->$r8$lambda$nQouC0kz7DXnbNt8aB_6VWz9qBg(Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.k$$ExternalSyntheticLambda1 (io.bidmachine.k$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/k$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/ThrowableRunnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/k$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/k$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/k;->$r8$lambda$HWzILqHXwt55FzAEkwkzZa_QK8Y(Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.k$$ExternalSyntheticLambda2 (io.bidmachine.k$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/k$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/k;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/k;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/k$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/k;

    iput-object p2, p0, Lio/bidmachine/k$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/k$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/k;

    iget-object v1, p0, Lio/bidmachine/k$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/bidmachine/k;->$r8$lambda$9vENb8wVPfhCZyTi2XDrV86F0pw(Lio/bidmachine/k;Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.k$$ExternalSyntheticLambda3 (io.bidmachine.k$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/k$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/k;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lio/bidmachine/protobuf/InitResponse;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lio/bidmachine/internal/y;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/k;Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;Lio/bidmachine/internal/y;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/k$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/k;

    iput-object p2, p0, Lio/bidmachine/k$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/bidmachine/k$$ExternalSyntheticLambda3;->f$2:Lio/bidmachine/protobuf/InitResponse;

    iput-object p4, p0, Lio/bidmachine/k$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lio/bidmachine/k$$ExternalSyntheticLambda3;->f$4:Lio/bidmachine/internal/y;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lio/bidmachine/k$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/k;

    iget-object v1, p0, Lio/bidmachine/k$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/k$$ExternalSyntheticLambda3;->f$2:Lio/bidmachine/protobuf/InitResponse;

    iget-object v3, p0, Lio/bidmachine/k$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lio/bidmachine/k$$ExternalSyntheticLambda3;->f$4:Lio/bidmachine/internal/y;

    move-object v5, p1

    check-cast v5, Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lio/bidmachine/k;->$r8$lambda$LFwls1NX2sXN8fXYvPVhJtfb_V8(Lio/bidmachine/k;Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;Lio/bidmachine/internal/y;Landroid/content/Context;)V

    return-void
.end method

###### Class io.bidmachine.k$$ExternalSyntheticLambda4 (io.bidmachine.k$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/k$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/InitializationCallback;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/InitializationCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/k$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/InitializationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/k$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/InitializationCallback;

    invoke-interface {v0}, Lio/bidmachine/InitializationCallback;->onInitialized()V

    return-void
.end method
