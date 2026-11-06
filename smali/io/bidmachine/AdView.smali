###### Class io.bidmachine.AdView (io.bidmachine.AdView)
.class public abstract Lio/bidmachine/AdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/IAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/AdView<",
        "TSelfType;TAdType;TAdRequestType;TAdObjectType;TExternalAd",
        "ListenerType;",
        ">;AdType:",
        "Lio/bidmachine/ViewAd<",
        "TAdType;TAdRequestType;TAdObjectType;*",
        "Lio/bidmachine/AdListener<",
        "TAdType;>;>;AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;**>;AdObjectType:",
        "Lio/bidmachine/ViewAdObject<",
        "TAdRequestType;**>;ExternalAd",
        "ListenerType::Lio/bidmachine/AdListener<",
        "TSelfType;>;>",
        "Landroid/widget/FrameLayout;",
        "Lio/bidmachine/IAd<",
        "TSelfType;TAdRequestType;>;"
    }
.end annotation


# instance fields
.field private final adListener:Lio/bidmachine/AdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdListener<",
            "TAdType;>;"
        }
    .end annotation
.end field

.field private currentAd:Lio/bidmachine/ViewAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdType;"
        }
    .end annotation
.end field

.field private externalListener:Lio/bidmachine/AdListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TExternalAd",
            "ListenerType;"
        }
    .end annotation
.end field

.field private isAttachedToWindow:Z

.field private isShowPending:Z

.field private pendingAd:Lio/bidmachine/ViewAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdType;"
        }
    .end annotation
.end field

.field private rendererConfiguration:Lio/bidmachine/RendererConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/bidmachine/AdView;->isShowPending:Z

    .line 5
    iput-boolean p1, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    .line 188
    new-instance p1, Lio/bidmachine/AdView$a;

    invoke-direct {p1, p0}, Lio/bidmachine/AdView$a;-><init>(Lio/bidmachine/AdView;)V

    iput-object p1, p0, Lio/bidmachine/AdView;->adListener:Lio/bidmachine/AdListener;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdView;->externalListener:Lio/bidmachine/AdListener;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/AdView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdView;->performShow()V

    return-void
.end method

.method private canPerformShow()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private canShow(Lio/bidmachine/ViewAd;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->canShow()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private isLoaded(Lio/bidmachine/ViewAd;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method private performHide()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/ViewAd;->hide()V

    :cond_7
    return-void
.end method

.method private performShow()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdView;->canPerformShow()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    invoke-direct {p0}, Lio/bidmachine/AdView;->prepareDisplayRequest()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_1a

    .line 4
    iget-object v1, p0, Lio/bidmachine/AdView;->rendererConfiguration:Lio/bidmachine/RendererConfiguration;

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->setRendererConfiguration(Lio/bidmachine/RendererConfiguration;)Lio/bidmachine/IAd;

    .line 5
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    invoke-virtual {v0, p0}, Lio/bidmachine/ViewAd;->show(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    :cond_1a
    return-void
.end method

.method private prepareDisplayRequest()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    return-void

    .line 2
    :cond_10
    :goto_10
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_17

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 5
    :cond_17
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    iput-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    return-void
.end method


# virtual methods
.method public canShow()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->canShow(Lio/bidmachine/ViewAd;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->canShow(Lio/bidmachine/ViewAd;)Z

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

.method public abstract createAd(Landroid/content/Context;)Lio/bidmachine/ViewAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TAdType;"
        }
    .end annotation
.end method

.method public destroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 3
    iput-object v1, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    .line 5
    :cond_a
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_13

    .line 6
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 7
    iput-object v1, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    :cond_13
    return-void
.end method

.method public getAd()Lio/bidmachine/ViewAd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_5

    return-object v0

    .line 3
    :cond_5
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    return-object v0
.end method

.method public getAuctionResult()Lio/bidmachine/models/AuctionResult;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_12

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentAd()Lio/bidmachine/ViewAd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    return-object v0
.end method

.method public getPendingAd()Lio/bidmachine/ViewAd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    return-object v0
.end method

.method public isDestroyed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isDestroyed()Z

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isExpired()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isExpired()Z

    move-result v0

    return v0

    .line 3
    :cond_9
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->currentAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->isLoaded(Lio/bidmachine/ViewAd;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    invoke-direct {p0, v0}, Lio/bidmachine/AdView;->isLoaded(Lio/bidmachine/ViewAd;)Z

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

.method public isLoading()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)TSelfType;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    .line 3
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    if-eqz v0, :cond_a

    .line 4
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 6
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/AdView;->createAd(Landroid/content/Context;)Lio/bidmachine/ViewAd;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    .line 7
    iget-object v1, p0, Lio/bidmachine/AdView;->adListener:Lio/bidmachine/AdListener;

    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 8
    iget-object v0, p0, Lio/bidmachine/AdView;->pendingAd:Lio/bidmachine/ViewAd;

    invoke-virtual {v0, p1}, Lio/bidmachine/BidMachineAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    return-object p0
.end method

.method public bridge synthetic load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/AdView;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;

    move-result-object p1

    return-object p1
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    .line 4
    invoke-direct {p0}, Lio/bidmachine/AdView;->performShow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isAttachedToWindow:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/bidmachine/AdView;->isShowPending:Z

    .line 5
    invoke-direct {p0}, Lio/bidmachine/AdView;->performHide()V

    return-void
.end method

.method public setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TExternalAd",
            "ListenerType;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdView;->externalListener:Lio/bidmachine/AdListener;

    return-object p0
.end method

.method public setRendererConfiguration(Lio/bidmachine/RendererConfiguration;)Lio/bidmachine/AdView;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/RendererConfiguration;",
            ")TSelfType;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdView;->rendererConfiguration:Lio/bidmachine/RendererConfiguration;

    return-object p0
.end method

.method public bridge synthetic setRendererConfiguration(Lio/bidmachine/RendererConfiguration;)Lio/bidmachine/IAd;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/AdView;->setRendererConfiguration(Lio/bidmachine/RendererConfiguration;)Lio/bidmachine/AdView;

    move-result-object p1

    return-object p1
.end method

.method public setVisibility(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 4
    invoke-direct {p0}, Lio/bidmachine/AdView;->performShow()V

    :cond_c
    return-void
.end method

###### Class io.bidmachine.AdView.a (io.bidmachine.AdView$a)
.class public Lio/bidmachine/AdView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/AdView;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$a;->onAdClicked(Lio/bidmachine/ViewAd;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/ViewAd;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 3
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdClicked(Lio/bidmachine/IAd;)V

    :cond_13
    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$a;->onAdExpired(Lio/bidmachine/ViewAd;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/ViewAd;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 3
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdExpired(Lio/bidmachine/IAd;)V

    :cond_13
    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$a;->onAdImpression(Lio/bidmachine/ViewAd;)V

    return-void
.end method

.method public onAdImpression(Lio/bidmachine/ViewAd;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 3
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdImpression(Lio/bidmachine/IAd;)V

    :cond_13
    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdView$a;->onAdLoadFailed(Lio/bidmachine/ViewAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/ViewAd;Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 2
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 3
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-interface {p1, v0, p2}, Lio/bidmachine/AdListener;->onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V

    :cond_13
    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .registers 2

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/AdView$a;->onAdLoaded(Lio/bidmachine/ViewAd;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/ViewAd;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 3
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-interface {p1, v0}, Lio/bidmachine/AdListener;->onAdLoaded(Lio/bidmachine/IAd;)V

    .line 5
    :cond_13
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$100(Lio/bidmachine/AdView;)V

    return-void
.end method

.method public bridge synthetic onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/ViewAd;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdView$a;->onAdShowFailed(Lio/bidmachine/ViewAd;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShowFailed(Lio/bidmachine/ViewAd;Lio/bidmachine/utils/BMError;)V
    .registers 4

    .line 2
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 3
    iget-object p1, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-static {p1}, Lio/bidmachine/AdView;->access$000(Lio/bidmachine/AdView;)Lio/bidmachine/AdListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/AdView$a;->a:Lio/bidmachine/AdView;

    invoke-interface {p1, v0, p2}, Lio/bidmachine/AdListener;->onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V

    :cond_13
    return-void
.end method
