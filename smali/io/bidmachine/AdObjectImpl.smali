###### Class io.bidmachine.AdObjectImpl (io.bidmachine.AdObjectImpl)
.class public abstract Lio/bidmachine/AdObjectImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/AdObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdObjectImpl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;*TUnifiedAdRequestParamsType;>;AdObjectParamsType:",
        "Lio/bidmachine/models/AdObjectParams;",
        "UnifiedAdType:",
        "Lio/bidmachine/unified/UnifiedAd<",
        "TUnifiedAdCallbackType;TUnifiedAdRequestParamsType;>;UnifiedAdCallbackType::",
        "Lio/bidmachine/unified/UnifiedAdCallback;",
        "UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Ljava/lang/Object;",
        "Lio/bidmachine/models/AdObject<",
        "TAdObjectParamsType;TUnifiedAdRequestParamsType;TUnifiedAdCallbackType;>;"
    }
.end annotation


# instance fields
.field private final adObjectParams:Lio/bidmachine/models/AdObjectParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdObjectParamsType;"
        }
    .end annotation
.end field

.field private final adProcessCallback:Lio/bidmachine/AdProcessCallback;

.field private final adRequest:Lio/bidmachine/AdRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field private final contextProvider:Lio/bidmachine/ContextProvider;

.field private final unifiedAd:Lio/bidmachine/unified/UnifiedAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdType;"
        }
    .end annotation
.end field

.field private final unifiedAdCallback:Lio/bidmachine/unified/UnifiedAdCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdCallbackType;"
        }
    .end annotation
.end field

.field private final viewabilityHandler:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;


# direct methods
.method public static synthetic $r8$lambda$_QdQ0Shm2oekzqZKezah40olUY0(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Can\'t start viewability tracker! Check ad settings! (%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Lio/bidmachine/models/AdObjectParams;Lio/bidmachine/unified/UnifiedAd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdProcessCallback;",
            "TAdRequestType;TAdObjectParamsType;TUnifiedAdType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/AdObjectImpl;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 3
    iput-object p2, p0, Lio/bidmachine/AdObjectImpl;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    .line 4
    iput-object p3, p0, Lio/bidmachine/AdObjectImpl;->adRequest:Lio/bidmachine/AdRequest;

    .line 5
    iput-object p4, p0, Lio/bidmachine/AdObjectImpl;->adObjectParams:Lio/bidmachine/models/AdObjectParams;

    .line 6
    iput-object p5, p0, Lio/bidmachine/AdObjectImpl;->unifiedAd:Lio/bidmachine/unified/UnifiedAd;

    .line 7
    invoke-interface {p0, p2}, Lio/bidmachine/models/AdObject;->createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedAdCallback;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdObjectImpl;->unifiedAdCallback:Lio/bidmachine/unified/UnifiedAdCallback;

    .line 8
    new-instance p1, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    iget-object p2, p4, Lio/bidmachine/models/AdObjectParams;->viewabilityTrackerParams:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

    sget-object p3, Lio/bidmachine/util/visibilitytracking/VisibilityParams;->Companion:Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;

    .line 9
    invoke-virtual {p3}, Lio/bidmachine/util/visibilitytracking/VisibilityParams$Companion;->getDefault()Lio/bidmachine/util/visibilitytracking/VisibilityParams;

    move-result-object p3

    new-instance p4, Lio/bidmachine/AdObjectImpl$a;

    invoke-direct {p4, p0}, Lio/bidmachine/AdObjectImpl$a;-><init>(Lio/bidmachine/AdObjectImpl;)V

    invoke-direct {p1, p2, p3, p4}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;-><init>(Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;Lio/bidmachine/util/visibilitytracking/VisibilityParams;Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;)V

    iput-object p1, p0, Lio/bidmachine/AdObjectImpl;->viewabilityHandler:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    return-void
.end method


# virtual methods
.method public abstract synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/unified/UnifiedAdCallback;
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->contextProvider:Lio/bidmachine/ContextProvider;

    invoke-interface {v0}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getAdProcessCallback()Lio/bidmachine/AdProcessCallback;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    return-object v0
.end method

.method public getAdRequest()Lio/bidmachine/AdRequest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->adRequest:Lio/bidmachine/AdRequest;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->contextProvider:Lio/bidmachine/ContextProvider;

    invoke-interface {v0}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedAd;->getCustomParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lio/bidmachine/models/AdObjectParams;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdObjectParamsType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->adObjectParams:Lio/bidmachine/models/AdObjectParams;

    return-object v0
.end method

.method public getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUnifiedAdType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->unifiedAd:Lio/bidmachine/unified/UnifiedAd;

    return-object v0
.end method

.method public getUnifiedAdCallback()Lio/bidmachine/unified/UnifiedAdCallback;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUnifiedAdCallbackType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->unifiedAdCallback:Lio/bidmachine/unified/UnifiedAdCallback;

    return-object v0
.end method

.method public hide()V
    .registers 1

    .line 0
    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/NetworkAdUnit;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->unifiedAd:Lio/bidmachine/unified/UnifiedAd;

    iget-object v2, p0, Lio/bidmachine/AdObjectImpl;->unifiedAdCallback:Lio/bidmachine/unified/UnifiedAdCallback;

    iget-object v1, p0, Lio/bidmachine/AdObjectImpl;->adObjectParams:Lio/bidmachine/models/AdObjectParams;

    .line 4
    invoke-virtual {v1}, Lio/bidmachine/models/AdObjectParams;->getMediationParams()Lio/bidmachine/unified/UnifiedMediationParams;

    move-result-object v4

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 5
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/unified/UnifiedAd;->load(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdCallback;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/unified/UnifiedMediationParams;Lio/bidmachine/NetworkAdUnit;)V

    return-void
.end method

.method public onClicked()Ljava/lang/Boolean;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedAd;->onClicked()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onClosed(Z)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lio/bidmachine/unified/UnifiedFullscreenAd;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Lio/bidmachine/unified/UnifiedFullscreenAd;

    invoke-virtual {v0, p1}, Lio/bidmachine/unified/UnifiedFullscreenAd;->onClosed(Z)V

    :cond_d
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedAd;->onDestroy()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->viewabilityHandler:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    invoke-virtual {v0}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->destroy()V

    return-void
.end method

.method public onExpired()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedAd;->onExpired()V

    return-void
.end method

.method public onFinished()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lio/bidmachine/unified/UnifiedFullscreenAd;

    if-eqz v1, :cond_d

    .line 3
    check-cast v0, Lio/bidmachine/unified/UnifiedFullscreenAd;

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedFullscreenAd;->onFinished()V

    :cond_d
    return-void
.end method

.method public onShowFailed()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedAd;->onShowFailed()V

    return-void
.end method

.method public onShown()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/unified/UnifiedAd;->onShown()V

    return-void
.end method

.method public startViewabilityTracker(Landroid/view/View;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getAdRequest()Lio/bidmachine/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAdResponse()Lio/bidmachine/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdResponse;->getVisibilitySource()Lio/bidmachine/core/VisibilitySource;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 5
    :goto_10
    sget-object v2, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    if-eq v1, v2, :cond_18

    sget-object v2, Lio/bidmachine/core/VisibilitySource;->All:Lio/bidmachine/core/VisibilitySource;

    if-ne v1, v2, :cond_31

    .line 6
    :cond_18
    iget-object v1, p0, Lio/bidmachine/AdObjectImpl;->viewabilityHandler:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    invoke-virtual {v1, p1}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->start(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lio/bidmachine/AdObjectImpl;->adObjectParams:Lio/bidmachine/models/AdObjectParams;

    iget-object p1, p1, Lio/bidmachine/models/AdObjectParams;->viewabilityTrackerParams:Lio/bidmachine/util/viewabilitytracker/model/ViewabilityTrackerParams;

    if-nez p1, :cond_31

    .line 9
    iget-object p1, p0, Lio/bidmachine/AdObjectImpl;->adRequest:Lio/bidmachine/AdRequest;

    invoke-virtual {p1}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p1

    new-instance v1, Lio/bidmachine/AdObjectImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/bidmachine/AdObjectImpl$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {p1, v1}, Lio/bidmachine/core/Logger;->e(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    :cond_31
    return-void
.end method

.method public stopViewabilityTracker()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->viewabilityHandler:Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;

    invoke-virtual {v0}, Lio/bidmachine/util/viewabilityhandler/ViewabilityHandler;->stop()V

    return-void
.end method

###### Class io.bidmachine.AdObjectImpl.a (io.bidmachine.AdObjectImpl$a)
.class public final Lio/bidmachine/AdObjectImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/util/viewabilityhandler/ViewabilityHandlerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdObjectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/AdObjectImpl;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdObjectImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdObjectImpl$a;->a:Lio/bidmachine/AdObjectImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewabilityChanged(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$a;->a:Lio/bidmachine/AdObjectImpl;

    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lio/bidmachine/unified/UnifiedAd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/unified/UnifiedAd;->onViewabilityChanged(Z)V

    return-void
.end method

.method public onViewabilityError(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/util/Error;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$a;->a:Lio/bidmachine/AdObjectImpl;

    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getAdProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    new-instance v1, Lio/bidmachine/utils/BMError;

    .line 3
    invoke-virtual {p2}, Lio/bidmachine/util/Error;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x6c

    invoke-direct {v1, v2, p2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-interface {v0, p1, v1}, Lio/bidmachine/AdProcessCallback;->onVisibilityTrackerViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$a;->a:Lio/bidmachine/AdObjectImpl;

    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getAdProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lio/bidmachine/AdProcessCallback;->onVisibilityTrackerViewabilityEvent(Lio/bidmachine/util/viewabilitytracker/model/ActionEvent;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onViewabilityTracked()V
    .registers 1

    .line 0
    return-void
.end method

###### Class io.bidmachine.AdObjectImpl$$ExternalSyntheticLambda0 (io.bidmachine.AdObjectImpl$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/AdObjectImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/AdObjectImpl$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/AdObjectImpl;->$r8$lambda$_QdQ0Shm2oekzqZKezah40olUY0(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
