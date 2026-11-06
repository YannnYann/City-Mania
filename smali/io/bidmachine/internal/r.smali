###### Class io.bidmachine.internal.r (io.bidmachine.internal.r)
.class public abstract Lio/bidmachine/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/measurer/AdMeasurer;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

.field public e:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

.field public f:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

.field public g:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/bidmachine/internal/r;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lio/bidmachine/internal/r;->a:Z

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/internal/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/bidmachine/internal/r;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/internal/r;Lcom/iab/omid/library/appodeal/adsession/AdEvents;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;
    .registers 2

    .line 4
    iput-object p1, p0, Lio/bidmachine/internal/r;->e:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    return-object p1
.end method

.method public static synthetic a(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/AdSession;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/internal/r;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/internal/r;Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;
    .registers 2

    .line 5
    iput-object p1, p0, Lio/bidmachine/internal/r;->f:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    return-object p1
.end method

.method public static synthetic a(Lio/bidmachine/internal/r;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    .line 3
    iput-object p1, p0, Lio/bidmachine/internal/r;->g:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static synthetic a(Lio/bidmachine/internal/r;Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/internal/r;->a(Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/internal/r;->e:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/internal/r;->f:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 28
    new-instance v0, Lio/bidmachine/internal/r$d;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/r$d;-><init>(Lio/bidmachine/internal/r;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract a(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V
.end method

.method public final a(Lcom/iab/omid/library/appodeal/adsession/AdSession;)V
    .registers 4

    .line 18
    iget-object v0, p0, Lio/bidmachine/internal/r;->g:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    if-eqz v0, :cond_12

    .line 22
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/internal/r;->a(Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V

    .line 24
    :cond_12
    iput-object v1, p0, Lio/bidmachine/internal/r;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V
    .registers 3

    .line 25
    invoke-virtual {p1, p2}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 27
    const-string p1, "registerAdView"

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;)V
    .registers 3

    .line 6
    :try_start_0
    invoke-static {p1, p2}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;Lcom/iab/omid/library/appodeal/adsession/AdSessionContext;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/internal/r;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    .line 7
    invoke-static {p2}, Lcom/iab/omid/library/appodeal/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/appodeal/adsession/AdSession;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/internal/r;->e:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 8
    invoke-virtual {p1}, Lcom/iab/omid/library/appodeal/adsession/AdSessionConfiguration;->isNativeMediaEventsOwner()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 9
    iget-object p1, p0, Lio/bidmachine/internal/r;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    invoke-static {p1}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->createMediaEvents(Lcom/iab/omid/library/appodeal/adsession/AdSession;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/internal/r;->f:Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    goto :goto_1d

    :catchall_1b
    move-exception p1

    goto :goto_32

    .line 11
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lio/bidmachine/internal/r;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/r;->a(Lcom/iab/omid/library/appodeal/adsession/AdSession;)V

    .line 12
    iget-object p1, p0, Lio/bidmachine/internal/r;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    invoke-virtual {p1}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->start()V

    .line 13
    iget-object p1, p0, Lio/bidmachine/internal/r;->e:Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/r;->a(Lcom/iab/omid/library/appodeal/adsession/AdEvents;)V

    .line 15
    const-string p1, "prepareAdSession"

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_1b

    return-void

    .line 17
    :goto_32
    invoke-static {p1}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
    .registers 4

    .line 30
    new-instance v0, Lio/bidmachine/internal/r$e;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/internal/r$e;-><init>(Lio/bidmachine/internal/r;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 29
    sget-object v0, Lcom/iab/omid/library/appodeal/adsession/ErrorType;->GENERIC:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/internal/r;->a(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 3
    const-string v0, "AdMeasurer"

    invoke-static {v0, p1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r;->d:Lcom/iab/omid/library/appodeal/adsession/AdSession;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 6
    :cond_b
    new-instance v0, Lio/bidmachine/internal/r$g;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/r$g;-><init>(Lio/bidmachine/internal/r;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdClicked()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/r$h;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/r$h;-><init>(Lio/bidmachine/internal/r;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShown()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/internal/r;->a:Z

    if-eqz v0, :cond_5

    return-void

    .line 5
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/internal/r;->c()V

    return-void
.end method

.method public onAdViewReady(Landroid/view/View;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onError(Lio/bidmachine/iab/IabError;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/IabError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/internal/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onMediaCompleted()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/r$m;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/r$m;-><init>(Lio/bidmachine/internal/r;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaFirstQuartile()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/r$j;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/r$j;-><init>(Lio/bidmachine/internal/r;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaMidpoint()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/r$k;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/r$k;-><init>(Lio/bidmachine/internal/r;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaPaused()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/r$n;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/r$n;-><init>(Lio/bidmachine/internal/r;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaResumed()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/r$a;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/r$a;-><init>(Lio/bidmachine/internal/r;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaSkipped()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/internal/r;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 4
    :cond_b
    new-instance v0, Lio/bidmachine/internal/r$c;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/r$c;-><init>(Lio/bidmachine/internal/r;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaStarted(FF)V
    .registers 4

    .line 1
    new-instance v0, Lio/bidmachine/internal/r$i;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/internal/r$i;-><init>(Lio/bidmachine/internal/r;FF)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaThirdQuartile()V
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/internal/r$l;

    invoke-direct {v0, p0}, Lio/bidmachine/internal/r$l;-><init>(Lio/bidmachine/internal/r;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMediaVolumeChanged(F)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/internal/r$b;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/internal/r$b;-><init>(Lio/bidmachine/internal/r;F)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerAdContainer(Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/internal/r$f;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/internal/r$f;-><init>(Lio/bidmachine/internal/r;Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lio/bidmachine/core/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerAdView(Landroid/view/View;)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.internal.r.a (io.bidmachine.internal.r$a)
.class public Lio/bidmachine/internal/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->onMediaResumed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$a;->a:Lio/bidmachine/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$a;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$a;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->resume()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$a;->a:Lio/bidmachine/internal/r;

    const-string v1, "onMediaResumed"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method

###### Class io.bidmachine.internal.r.b (io.bidmachine.internal.r$b)
.class public Lio/bidmachine/internal/r$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->onMediaVolumeChanged(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;F)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$b;->b:Lio/bidmachine/internal/r;

    iput p2, p0, Lio/bidmachine/internal/r$b;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$b;->b:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$b;->b:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/internal/r$b;->a:F

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->volumeChange(F)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$b;->b:Lio/bidmachine/internal/r;

    const-string v1, "onMediaVolumeChanged"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_1f
    return-void
.end method

###### Class io.bidmachine.internal.r.c (io.bidmachine.internal.r$c)
.class public Lio/bidmachine/internal/r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->onMediaSkipped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$c;->a:Lio/bidmachine/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$c;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$c;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->skipped()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$c;->a:Lio/bidmachine/internal/r;

    const-string v1, "onMediaSkipped"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method

###### Class io.bidmachine.internal.r.d (io.bidmachine.internal.r$d)
.class public Lio/bidmachine/internal/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$d;->a:Lio/bidmachine/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$d;->a:Lio/bidmachine/internal/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/internal/r;->a(Lio/bidmachine/internal/r;Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$d;->a:Lio/bidmachine/internal/r;

    invoke-static {v0, v1}, Lio/bidmachine/internal/r;->a(Lio/bidmachine/internal/r;Lcom/iab/omid/library/appodeal/adsession/AdEvents;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    .line 5
    iget-object v0, p0, Lio/bidmachine/internal/r$d;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->a(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 6
    iget-object v0, p0, Lio/bidmachine/internal/r$d;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->a(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->finish()V

    goto :goto_1f

    :catchall_1d
    move-exception v0

    goto :goto_27

    .line 9
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lio/bidmachine/internal/r$d;->a:Lio/bidmachine/internal/r;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_1d

    return-void

    .line 11
    :goto_27
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class io.bidmachine.internal.r.e (io.bidmachine.internal.r$e)
.class public Lio/bidmachine/internal/r$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->a(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$e;->c:Lio/bidmachine/internal/r;

    iput-object p2, p0, Lio/bidmachine/internal/r$e;->a:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

    iput-object p3, p0, Lio/bidmachine/internal/r$e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$e;->c:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->a(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$e;->c:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->a(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/internal/r$e;->a:Lcom/iab/omid/library/appodeal/adsession/ErrorType;

    iget-object v2, p0, Lio/bidmachine/internal/r$e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/appodeal/adsession/AdSession;->error(Lcom/iab/omid/library/appodeal/adsession/ErrorType;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$e;->c:Lio/bidmachine/internal/r;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_21
    return-void
.end method

###### Class io.bidmachine.internal.r.f (io.bidmachine.internal.r$f)
.class public Lio/bidmachine/internal/r$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->registerAdContainer(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$f;->b:Lio/bidmachine/internal/r;

    iput-object p2, p0, Lio/bidmachine/internal/r$f;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$f;->b:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->a(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$f;->b:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->a(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/AdSession;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/internal/r$f;->a:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lio/bidmachine/internal/r;->a(Lio/bidmachine/internal/r;Lcom/iab/omid/library/appodeal/adsession/AdSession;Landroid/view/View;)V

    return-void

    :catchall_14
    move-exception v0

    goto :goto_23

    .line 4
    :cond_16
    iget-object v0, p0, Lio/bidmachine/internal/r$f;->b:Lio/bidmachine/internal/r;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lio/bidmachine/internal/r$f;->a:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lio/bidmachine/internal/r;->a(Lio/bidmachine/internal/r;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_14

    return-void

    .line 7
    :goto_23
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class io.bidmachine.internal.r.g (io.bidmachine.internal.r$g)
.class public Lio/bidmachine/internal/r$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$g;->a:Lio/bidmachine/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$g;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->b(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$g;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->b(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/AdEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/AdEvents;->impressionOccurred()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$g;->a:Lio/bidmachine/internal/r;

    const-string v1, "onAdShown"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method

###### Class io.bidmachine.internal.r.h (io.bidmachine.internal.r$h)
.class public Lio/bidmachine/internal/r$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->onAdClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$h;->a:Lio/bidmachine/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$h;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$h;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/appodeal/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/appodeal/adsession/media/InteractionType;

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/appodeal/adsession/media/InteractionType;)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$h;->a:Lio/bidmachine/internal/r;

    const-string v1, "onAdClicked"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_1f
    return-void
.end method

###### Class io.bidmachine.internal.r.i (io.bidmachine.internal.r$i)
.class public Lio/bidmachine/internal/r$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->onMediaStarted(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;FF)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$i;->c:Lio/bidmachine/internal/r;

    iput p2, p0, Lio/bidmachine/internal/r$i;->a:F

    iput p3, p0, Lio/bidmachine/internal/r$i;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$i;->c:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$i;->c:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/internal/r$i;->a:F

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iget v2, p0, Lio/bidmachine/internal/r$i;->b:F

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->start(FF)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$i;->c:Lio/bidmachine/internal/r;

    const-string v1, "onMediaStarted"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_24
    return-void
.end method

###### Class io.bidmachine.internal.r.j (io.bidmachine.internal.r$j)
.class public Lio/bidmachine/internal/r$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->onMediaFirstQuartile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$j;->a:Lio/bidmachine/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$j;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$j;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->firstQuartile()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$j;->a:Lio/bidmachine/internal/r;

    const-string v1, "onMediaFirstQuartile"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method

###### Class io.bidmachine.internal.r.k (io.bidmachine.internal.r$k)
.class public Lio/bidmachine/internal/r$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->onMediaMidpoint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$k;->a:Lio/bidmachine/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$k;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$k;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->midpoint()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$k;->a:Lio/bidmachine/internal/r;

    const-string v1, "onMediaMidpoint"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method

###### Class io.bidmachine.internal.r.l (io.bidmachine.internal.r$l)
.class public Lio/bidmachine/internal/r$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->onMediaThirdQuartile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$l;->a:Lio/bidmachine/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$l;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$l;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->thirdQuartile()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$l;->a:Lio/bidmachine/internal/r;

    const-string v1, "onMediaThirdQuartile"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method

###### Class io.bidmachine.internal.r.m (io.bidmachine.internal.r$m)
.class public Lio/bidmachine/internal/r$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->onMediaCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$m;->a:Lio/bidmachine/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$m;->a:Lio/bidmachine/internal/r;

    invoke-virtual {v0}, Lio/bidmachine/internal/r;->onMediaSkipped()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$m;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 3
    iget-object v0, p0, Lio/bidmachine/internal/r$m;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->complete()V

    .line 5
    iget-object v0, p0, Lio/bidmachine/internal/r$m;->a:Lio/bidmachine/internal/r;

    const-string v1, "onMediaCompleted"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    .line 8
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_22
    return-void
.end method

###### Class io.bidmachine.internal.r.n (io.bidmachine.internal.r$n)
.class public Lio/bidmachine/internal/r$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/internal/r;->onMediaPaused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/internal/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/internal/r;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/internal/r$n;->a:Lio/bidmachine/internal/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/internal/r$n;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    iget-object v0, p0, Lio/bidmachine/internal/r$n;->a:Lio/bidmachine/internal/r;

    invoke-static {v0}, Lio/bidmachine/internal/r;->c(Lio/bidmachine/internal/r;)Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/appodeal/adsession/media/MediaEvents;->pause()V

    .line 4
    iget-object v0, p0, Lio/bidmachine/internal/r$n;->a:Lio/bidmachine/internal/r;

    const-string v1, "onMediaPaused"

    invoke-virtual {v0, v1}, Lio/bidmachine/internal/r;->b(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/bidmachine/core/Logger;->w(Ljava/lang/Throwable;)V

    :cond_1d
    return-void
.end method
