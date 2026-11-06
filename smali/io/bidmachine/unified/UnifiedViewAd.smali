###### Class io.bidmachine.unified.UnifiedViewAd (io.bidmachine.unified.UnifiedViewAd)
.class public abstract Lio/bidmachine/unified/UnifiedViewAd;
.super Lio/bidmachine/unified/UnifiedAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdCallbackType::",
        "Lio/bidmachine/unified/UnifiedAdCallback;",
        "UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Lio/bidmachine/unified/UnifiedAd<",
        "TUnifiedAdCallbackType;TUnifiedAdRequestParamsType;>;"
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
.method public prepareToShow(Lio/bidmachine/RendererConfiguration;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    return-void
.end method
