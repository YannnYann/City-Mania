###### Class io.bidmachine.unified.UnifiedFullscreenAd (io.bidmachine.unified.UnifiedFullscreenAd)
.class public abstract Lio/bidmachine/unified/UnifiedFullscreenAd;
.super Lio/bidmachine/unified/UnifiedAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/unified/UnifiedAd<",
        "Lio/bidmachine/unified/UnifiedFullscreenAdCallback;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/unified/UnifiedAd;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onFinished()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract show(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedFullscreenAdCallback;Lio/bidmachine/RendererConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
