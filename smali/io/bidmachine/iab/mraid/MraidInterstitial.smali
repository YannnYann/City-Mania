###### Class io.bidmachine.iab.mraid.MraidInterstitial (io.bidmachine.iab.mraid.MraidInterstitial)
.class public Lio/bidmachine/iab/mraid/MraidInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/MraidInterstitial$b;,
        Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    }
.end annotation


# static fields
.field public static final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final synthetic l:Z = true


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lio/bidmachine/iab/mraid/MraidViewListener;

.field public d:Lio/bidmachine/iab/mraid/MraidView;

.field public e:Lio/bidmachine/iab/mraid/MraidInterstitialListener;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public final id:I

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lio/bidmachine/iab/mraid/MraidInterstitial;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/bidmachine/iab/mraid/MraidInterstitial;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->id:I

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->f:Z

    .line 17
    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->g:Z

    .line 18
    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->h:Z

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->i:Z

    .line 20
    iput-boolean v1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->j:Z

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$b;-><init>(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/mraid/MraidInterstitial$a;)V

    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->c:Lio/bidmachine/iab/mraid/MraidViewListener;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->e:Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/mraid/MraidInterstitialListener;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;
    .registers 2

    .line 2
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->e:Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    return-object p1
.end method

.method public static synthetic b(Lio/bidmachine/iab/mraid/MraidInterstitial;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a()V

    return-void
.end method

.method public static synthetic c(Lio/bidmachine/iab/mraid/MraidInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static newBuilder()Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;

    new-instance v1, Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-direct {v1}, Lio/bidmachine/iab/mraid/MraidInterstitial;-><init>()V

    invoke-direct {v0, v1}, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;-><init>(Lio/bidmachine/iab/mraid/MraidInterstitial;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 22
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->j:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    if-eqz v0, :cond_11

    .line 23
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 25
    invoke-static {v0}, Lio/bidmachine/util/UiUtils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    :cond_11
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V
    .registers 6

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->isReady()Z

    move-result v0

    if-nez v0, :cond_21

    if-eqz p1, :cond_d

    if-eqz p3, :cond_d

    .line 8
    invoke-static {p1}, Lio/bidmachine/util/UiUtils;->finishActivityWithoutAnimation(Landroid/app/Activity;)V

    .line 10
    :cond_d
    const-string p1, "Interstitial is not ready"

    invoke-static {p1}, Lio/bidmachine/iab/IabError;->incorrectState(Ljava/lang/String;)Lio/bidmachine/iab/IabError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->c(Lio/bidmachine/iab/IabError;)V

    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "MraidInterstitial"

    const-string p3, "Show failed: interstitial is not ready"

    invoke-static {p2, p3, p1}, Lio/bidmachine/iab/mraid/MraidLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_21
    sget-boolean v0, Lio/bidmachine/iab/mraid/MraidInterstitial;->l:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    if-eqz v0, :cond_2a

    goto :goto_30

    :cond_2a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_30
    :goto_30
    iput-boolean p4, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->i:Z

    .line 16
    iput-boolean p3, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->j:Z

    .line 17
    iget-object p3, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    invoke-static {p3}, Lio/bidmachine/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    .line 18
    iget-object p3, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p2, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    invoke-virtual {p2, p1}, Lio/bidmachine/iab/mraid/MraidView;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .registers 5

    const v0, 0x1020002

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V

    return-void
.end method

.method public a(Lio/bidmachine/iab/IabError;)V
    .registers 3

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->f:Z

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->h:Z

    .line 28
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->e:Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    if-eqz v0, :cond_d

    .line 29
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onLoadFailed(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/IabError;)V

    :cond_d
    return-void
.end method

.method public b()V
    .registers 2

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_18

    :cond_7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->g:Z

    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->e:Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    if-eqz v0, :cond_11

    .line 10
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onClose(Lio/bidmachine/iab/mraid/MraidInterstitial;)V

    .line 12
    :cond_11
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->i:Z

    if-eqz v0, :cond_18

    .line 13
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->destroy()V

    :cond_18
    :goto_18
    return-void
.end method

.method public b(Lio/bidmachine/iab/IabError;)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->f:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->h:Z

    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->c(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->f:Z

    .line 3
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->e:Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    if-eqz v0, :cond_a

    .line 4
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onLoaded(Lio/bidmachine/iab/mraid/MraidInterstitial;)V

    :cond_a
    return-void
.end method

.method public c(Lio/bidmachine/iab/IabError;)V
    .registers 3

    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->e:Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    if-eqz v0, :cond_7

    .line 6
    invoke-interface {v0, p0, p1}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onShowFailed(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/IabError;)V

    :cond_7
    return-void
.end method

.method public canBeClosed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->canBeClosed()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->isReceivedError()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->e:Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    if-eqz v0, :cond_d

    .line 3
    invoke-interface {v0, p0}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onShown(Lio/bidmachine/iab/mraid/MraidInterstitial;)V

    :cond_d
    return-void
.end method

.method public destroy()V
    .registers 5

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MraidInterstitial"

    const-string v3, "destroy"

    invoke-static {v2, v3, v1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->f:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->e:Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    .line 4
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    if-eqz v1, :cond_18

    .line 5
    invoke-virtual {v1}, Lio/bidmachine/iab/mraid/MraidView;->destroy()V

    .line 6
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    :cond_18
    return-void
.end method

.method public dispatchClose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidInterstitial;->canBeClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->f()V

    :cond_f
    return-void
.end method

.method public isClosed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->g:Z

    return v0
.end method

.method public isCompleted()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->f:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isReceivedError()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->h:Z

    return v0
.end method

.method public isShown()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView;->load(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MraidView not created (mraidView == null)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public peekContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_6
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/MraidView;->peekContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public show(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidType;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mraidType"
        }
    .end annotation

    .line 1
    invoke-static {p1, p0, p2}, Lio/bidmachine/iab/mraid/MraidActivity;->show(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/mraid/MraidType;)V

    return-void
.end method

.method public showInView(Landroid/view/ViewGroup;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "destroyOnClose"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1, p2}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Landroid/app/Activity;Landroid/view/ViewGroup;ZZ)V

    return-void
.end method

###### Class io.bidmachine.iab.mraid.MraidInterstitial.Builder (io.bidmachine.iab.mraid.MraidInterstitial$Builder)
.class public Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lio/bidmachine/iab/mraid/MraidView$Builder;

.field public final synthetic b:Lio/bidmachine/iab/mraid/MraidInterstitial;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidInterstitial;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lio/bidmachine/iab/mraid/MraidView$Builder;

    sget-object v0, Lio/bidmachine/iab/mraid/MraidPlacementType;->INTERSTITIAL:Lio/bidmachine/iab/mraid/MraidPlacementType;

    invoke-direct {p1, v0}, Lio/bidmachine/iab/mraid/MraidView$Builder;-><init>(Lio/bidmachine/iab/mraid/MraidPlacementType;)V

    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lio/bidmachine/iab/mraid/MraidInterstitial;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    iget-object v1, v1, Lio/bidmachine/iab/mraid/MraidInterstitial;->c:Lio/bidmachine/iab/mraid/MraidViewListener;

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setListener(Lio/bidmachine/iab/mraid/MraidViewListener;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    .line 2
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v1, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->build(Landroid/content/Context;)Lio/bidmachine/iab/mraid/MraidView;

    move-result-object p1

    iput-object p1, v0, Lio/bidmachine/iab/mraid/MraidInterstitial;->d:Lio/bidmachine/iab/mraid/MraidView;

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    return-object p1
.end method

.method public forceUseNativeCloseButton(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceUseNativeCloseButton"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->forceUseNativeCloseButton(Z)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mraidAdMeasurer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setAdMeasurer(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setAutoViewabilityCheck(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAutoViewabilityCheck"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setAutoViewabilityCheck(Z)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setBaseUrl(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseUrl"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setBaseUrl(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setCacheControl(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheControl"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setCacheControl(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setCloseStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeStyle"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setCloseStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setCloseTime(F)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeTime"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setCloseTimeSec(F)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setCountDownStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countDownStyle"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setCountDownStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setDurationSec(F)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "durationSec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setDurationSec(F)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setEngagedClickParams(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engagedClickParams"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setEngagedClickParams(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setIsTag(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isTag"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setIsTag(Z)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setListener(Lio/bidmachine/iab/mraid/MraidInterstitialListener;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->b:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/mraid/MraidInterstitialListener;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    return-object p0
.end method

.method public setLoadingStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingStyle"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setLoadingStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setPlaceholderTimeoutSec(F)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholderTimeoutSec"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setPlaceholderTimeoutSec(F)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setProductLink(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productLink"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setProductLink(Ljava/lang/String;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setProgressStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressStyle"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setProgressStyle(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setR1(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r1"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setR1(Z)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

.method public setR2(Z)Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r2"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$Builder;->a:Lio/bidmachine/iab/mraid/MraidView$Builder;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/mraid/MraidView$Builder;->setR2(Z)Lio/bidmachine/iab/mraid/MraidView$Builder;

    return-object p0
.end method

###### Class io.bidmachine.iab.mraid.MraidInterstitial.a (io.bidmachine.iab.mraid.MraidInterstitial$a)
.class public abstract synthetic Lio/bidmachine/iab/mraid/MraidInterstitial$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.iab.mraid.MraidInterstitial.b (io.bidmachine.iab.mraid.MraidInterstitial$b)
.class public Lio/bidmachine/iab/mraid/MraidInterstitial$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/mraid/MraidViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/mraid/MraidInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/iab/mraid/MraidInterstitial;


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/mraid/MraidInterstitial;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/mraid/MraidInterstitial$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/iab/mraid/MraidInterstitial$b;-><init>(Lio/bidmachine/iab/mraid/MraidInterstitial;)V

    return-void
.end method


# virtual methods
.method public onCalendarEvent(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 6

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onCalendarEvent (%s)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-interface {p1, v0, p2, p3}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onCalendarEvent(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V

    :cond_1e
    return-void
.end method

.method public onClose(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 4

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onClose"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->c(Lio/bidmachine/iab/mraid/MraidInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->b(Lio/bidmachine/iab/mraid/MraidInterstitial;)V

    .line 6
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->b()V

    return-void
.end method

.method public onExpand(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onExpired(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V
    .registers 5

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onExpired (%s)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-interface {p1, v0, p2}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onExpired(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/iab/IabError;)V

    :cond_1e
    return-void
.end method

.method public onLoadFailed(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V
    .registers 5

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onLoadFailed (%s)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->b(Lio/bidmachine/iab/mraid/MraidInterstitial;)V

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-virtual {p1, p2}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onLoaded(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 4

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onLoaded"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->c()V

    return-void
.end method

.method public onOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/PrivacySheetParams;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onOpenPrivacySheet (%s)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-interface {p1, v0, p2}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onOpenPrivacySheet(Lio/bidmachine/iab/mraid/MraidInterstitial;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    :cond_22
    return-void
.end method

.method public onOpenUrl(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 6

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onOpenBrowser (%s)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-interface {p1, v0, p2, p3}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onOpenUrl(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V

    :cond_1e
    return-void
.end method

.method public onPlayVideo(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;)V
    .registers 5

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onPlayVideo (%s)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-interface {p1, v0, p2}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onPlayVideo(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public onShowFailed(Lio/bidmachine/iab/mraid/MraidView;Lio/bidmachine/iab/IabError;)V
    .registers 5

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onShowFailed (%s)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->b(Lio/bidmachine/iab/mraid/MraidInterstitial;)V

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-virtual {p1, p2}, Lio/bidmachine/iab/mraid/MraidInterstitial;->b(Lio/bidmachine/iab/IabError;)V

    return-void
.end method

.method public onShown(Lio/bidmachine/iab/mraid/MraidView;)V
    .registers 4

    const/4 p1, 0x0

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onShown"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-virtual {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->d()V

    return-void
.end method

.method public onStorePicture(Lio/bidmachine/iab/mraid/MraidView;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V
    .registers 6

    .line 1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MraidInterstitial"

    const-string v1, "ViewListener - onCalendarEvent (%s)"

    invoke-static {v0, v1, p1}, Lio/bidmachine/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidInterstitial;->a(Lio/bidmachine/iab/mraid/MraidInterstitial;)Lio/bidmachine/iab/mraid/MraidInterstitialListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidInterstitial$b;->a:Lio/bidmachine/iab/mraid/MraidInterstitial;

    invoke-interface {p1, v0, p2, p3}, Lio/bidmachine/iab/mraid/MraidInterstitialListener;->onStorePicture(Lio/bidmachine/iab/mraid/MraidInterstitial;Ljava/lang/String;Lio/bidmachine/iab/utils/IabClickCallback;)V

    :cond_1e
    return-void
.end method
