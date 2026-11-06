###### Class io.bidmachine.ads.networks.vast.VastFullScreenAdLoadListener (io.bidmachine.ads.networks.vast.VastFullScreenAdLoadListener)
.class public final Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/VastRequestListener;


# instance fields
.field public final callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;


# direct methods
.method public constructor <init>(Lio/bidmachine/unified/UnifiedFullscreenAdCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    return-void
.end method


# virtual methods
.method public onVastLoadFailed(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/IabError;)V
    .registers 4

    const-string v0, "vastRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iabError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/iab/IabError;->getCode()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_17

    .line 2
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdExpired()V

    return-void

    .line 4
    :cond_17
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-static {p2}, Lio/bidmachine/utils/IabUtilsKt;->toBMError(Lio/bidmachine/iab/IabError;)Lio/bidmachine/utils/BMError;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/unified/UnifiedAdCallback;->onAdLoadFailed(Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onVastLoaded(Lio/bidmachine/iab/vast/VastRequest;)V
    .registers 3

    const-string v0, "vastRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/VastFullScreenAdLoadListener;->callback:Lio/bidmachine/unified/UnifiedFullscreenAdCallback;

    invoke-interface {p1}, Lio/bidmachine/unified/UnifiedFullscreenAdCallback;->onAdLoaded()V

    return-void
.end method
