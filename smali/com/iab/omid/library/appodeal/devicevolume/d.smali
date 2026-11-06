###### Class com.iab.omid.library.appodeal.devicevolume.d (com.iab.omid.library.appodeal.devicevolume.d)
.class public final Lcom/iab/omid/library/appodeal/devicevolume/d;
.super Landroid/database/ContentObserver;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/media/AudioManager;

.field private final d:Lcom/iab/omid/library/appodeal/devicevolume/a;

.field private final e:Lcom/iab/omid/library/appodeal/devicevolume/c;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/iab/omid/library/appodeal/devicevolume/a;Lcom/iab/omid/library/appodeal/devicevolume/c;)V
    .registers 7

    .line 0
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->h:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->b:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->c:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->d:Lcom/iab/omid/library/appodeal/devicevolume/a;

    iput-object p4, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->e:Lcom/iab/omid/library/appodeal/devicevolume/c;

    return-void
.end method

.method private a()F
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->c:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->c:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iget-object v2, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->d:Lcom/iab/omid/library/appodeal/devicevolume/a;

    invoke-virtual {v2, v0, v1}, Lcom/iab/omid/library/appodeal/devicevolume/a;->a(II)F

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/iab/omid/library/appodeal/devicevolume/d;)F
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/iab/omid/library/appodeal/devicevolume/d;->a()F

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/iab/omid/library/appodeal/devicevolume/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic c(Lcom/iab/omid/library/appodeal/devicevolume/d;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic d(Lcom/iab/omid/library/appodeal/devicevolume/d;)Lcom/iab/omid/library/appodeal/devicevolume/c;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->e:Lcom/iab/omid/library/appodeal/devicevolume/c;

    return-object p0
.end method

.method private d()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iab/omid/library/appodeal/devicevolume/d$a;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/appodeal/devicevolume/d$a;-><init>(Lcom/iab/omid/library/appodeal/devicevolume/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static synthetic e(Lcom/iab/omid/library/appodeal/devicevolume/d;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public b()V
    .registers 4

    .line 0
    invoke-direct {p0}, Lcom/iab/omid/library/appodeal/devicevolume/d;->d()V

    iget-object v0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public c()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .registers 3

    .line 0
    iget-object p1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/iab/omid/library/appodeal/devicevolume/d;->d()V

    return-void
.end method

###### Class com.iab.omid.library.appodeal.devicevolume.d.a (com.iab.omid.library.appodeal.devicevolume.d$a)
.class Lcom/iab/omid/library/appodeal/devicevolume/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/appodeal/devicevolume/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/appodeal/devicevolume/d;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/appodeal/devicevolume/d;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a;->a:Lcom/iab/omid/library/appodeal/devicevolume/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a;->a:Lcom/iab/omid/library/appodeal/devicevolume/d;

    invoke-static {v0}, Lcom/iab/omid/library/appodeal/devicevolume/d;->a(Lcom/iab/omid/library/appodeal/devicevolume/d;)F

    move-result v0

    iget-object v1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a;->a:Lcom/iab/omid/library/appodeal/devicevolume/d;

    invoke-static {v1}, Lcom/iab/omid/library/appodeal/devicevolume/d;->b(Lcom/iab/omid/library/appodeal/devicevolume/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a;->a:Lcom/iab/omid/library/appodeal/devicevolume/d;

    invoke-static {v1}, Lcom/iab/omid/library/appodeal/devicevolume/d;->c(Lcom/iab/omid/library/appodeal/devicevolume/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a;->a:Lcom/iab/omid/library/appodeal/devicevolume/d;

    invoke-static {v1}, Lcom/iab/omid/library/appodeal/devicevolume/d;->e(Lcom/iab/omid/library/appodeal/devicevolume/d;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iab/omid/library/appodeal/devicevolume/d$a$a;

    invoke-direct {v2, p0, v0}, Lcom/iab/omid/library/appodeal/devicevolume/d$a$a;-><init>(Lcom/iab/omid/library/appodeal/devicevolume/d$a;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_36
    return-void
.end method

###### Class com.iab.omid.library.appodeal.devicevolume.d.a.RunnableC0008a (com.iab.omid.library.appodeal.devicevolume.d$a$a)
.class Lcom/iab/omid/library/appodeal/devicevolume/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/appodeal/devicevolume/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/iab/omid/library/appodeal/devicevolume/d$a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/appodeal/devicevolume/d$a;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a$a;->b:Lcom/iab/omid/library/appodeal/devicevolume/d$a;

    iput p2, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a$a;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a$a;->b:Lcom/iab/omid/library/appodeal/devicevolume/d$a;

    iget-object v0, v0, Lcom/iab/omid/library/appodeal/devicevolume/d$a;->a:Lcom/iab/omid/library/appodeal/devicevolume/d;

    invoke-static {v0}, Lcom/iab/omid/library/appodeal/devicevolume/d;->d(Lcom/iab/omid/library/appodeal/devicevolume/d;)Lcom/iab/omid/library/appodeal/devicevolume/c;

    move-result-object v0

    iget v1, p0, Lcom/iab/omid/library/appodeal/devicevolume/d$a$a;->a:F

    invoke-interface {v0, v1}, Lcom/iab/omid/library/appodeal/devicevolume/c;->a(F)V

    return-void
.end method
