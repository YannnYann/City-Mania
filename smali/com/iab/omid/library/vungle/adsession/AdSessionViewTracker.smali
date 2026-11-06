###### Class com.iab.omid.library.vungle.adsession.AdSessionViewTracker (com.iab.omid.library.vungle.adsession.AdSessionViewTracker)
.class Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attachChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private focusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

.field private weakTrackedView:Lcom/iab/omid/library/vungle/weakreference/a;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iab/omid/library/vungle/weakreference/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iab/omid/library/vungle/weakreference/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->weakTrackedView:Lcom/iab/omid/library/vungle/weakreference/a;

    return-void
.end method

.method public static synthetic access$000(Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->registerFocusListener(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->unregisterFocusListener(Landroid/view/View;)V

    return-void
.end method

.method private registerFocusListener(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->focusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    if-nez v0, :cond_21

    new-instance v0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker$2;

    invoke-direct {v0, p0}, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker$2;-><init>(Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;)V

    iput-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->focusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->focusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {}, Lcom/iab/omid/library/vungle/internal/i;->c()Lcom/iab/omid/library/vungle/internal/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/internal/i;->d()V

    :cond_21
    return-void
.end method

.method private unregisterFocusListener(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->focusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->focusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_17
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->focusChangeListener:Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    :cond_1a
    return-void
.end method


# virtual methods
.method public stopTracking()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->weakTrackedView:Lcom/iab/omid/library/vungle/weakreference/a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->attachChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v1, :cond_14

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->attachChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    :cond_14
    invoke-direct {p0, v0}, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->unregisterFocusListener(Landroid/view/View;)V

    :cond_17
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->weakTrackedView:Lcom/iab/omid/library/vungle/weakreference/a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public trackView(Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->stopTracking()V

    if-nez p1, :cond_6

    goto :goto_20

    :cond_6
    new-instance v0, Lcom/iab/omid/library/vungle/weakreference/a;

    invoke-direct {v0, p1}, Lcom/iab/omid/library/vungle/weakreference/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->weakTrackedView:Lcom/iab/omid/library/vungle/weakreference/a;

    new-instance v0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker$1;

    invoke-direct {v0, p0}, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker$1;-><init>(Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;)V

    iput-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->attachChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0, p1}, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->registerFocusListener(Landroid/view/View;)V

    :cond_20
    :goto_20
    return-void
.end method

###### Class com.iab.omid.library.vungle.adsession.AdSessionViewTracker.AnonymousClass1 (com.iab.omid.library.vungle.adsession.AdSessionViewTracker$1)
.class Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->trackView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker$1;->this$0:Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker$1;->this$0:Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;

    invoke-static {v0, p1}, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->access$000(Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;Landroid/view/View;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker$1;->this$0:Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;

    invoke-static {v0, p1}, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->access$100(Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;Landroid/view/View;)V

    return-void
.end method

###### Class com.iab.omid.library.vungle.adsession.AdSessionViewTracker.AnonymousClass2 (com.iab.omid.library.vungle.adsession.AdSessionViewTracker$2)
.class Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;->registerFocusListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker$2;->this$0:Lcom/iab/omid/library/vungle/adsession/AdSessionViewTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 0
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/i;->c()Lcom/iab/omid/library/vungle/internal/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/internal/i;->d()V

    return-void
.end method
