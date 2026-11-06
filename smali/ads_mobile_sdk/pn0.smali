###### Class ads_mobile_sdk.pn0 (ads_mobile_sdk.pn0)
.class public final Lads_mobile_sdk/pn0;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/media/AudioManager;

.field public final d:Lads_mobile_sdk/kn0;

.field public final e:Lads_mobile_sdk/mn0;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lads_mobile_sdk/kn0;Lads_mobile_sdk/cf2;)V
    .registers 7

    .line 2
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lads_mobile_sdk/pn0;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lads_mobile_sdk/pn0;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/pn0;->h:Ljava/util/concurrent/ExecutorService;

    .line 17
    iput-object p1, p0, Lads_mobile_sdk/pn0;->a:Landroid/os/Handler;

    .line 18
    iput-object p2, p0, Lads_mobile_sdk/pn0;->b:Landroid/content/Context;

    .line 19
    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lads_mobile_sdk/pn0;->c:Landroid/media/AudioManager;

    .line 20
    iput-object p3, p0, Lads_mobile_sdk/pn0;->d:Lads_mobile_sdk/kn0;

    .line 21
    iput-object p4, p0, Lads_mobile_sdk/pn0;->e:Lads_mobile_sdk/mn0;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 3

    .line 49
    iget-object p1, p0, Lads_mobile_sdk/pn0;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 50
    :cond_a
    iget-object p1, p0, Lads_mobile_sdk/pn0;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lads_mobile_sdk/on0;

    invoke-direct {v0, p0}, Lads_mobile_sdk/on0;-><init>(Lads_mobile_sdk/pn0;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
