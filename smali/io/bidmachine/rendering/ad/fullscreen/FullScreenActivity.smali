###### Class io.bidmachine.rendering.ad.fullscreen.FullScreenActivity (io.bidmachine.rendering.ad.fullscreen.FullScreenActivity)
.class public final Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;
.super Lio/bidmachine/rendering/internal/AdActivity;
.source "SourceFile"


# instance fields
.field public a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/AdActivity;-><init>()V

    return-void
.end method

.method private final c()V
    .registers 2

    .line 1
    invoke-static {p0}, Lio/bidmachine/util/UiUtilsKt;->finishActivityWithoutAnimationSafely(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->processAdClosed()V

    :cond_a
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    return-void

    .line 3
    :cond_c
    :goto_c
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/rendering/internal/AdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivityKt;->access$getTempFullScreenAd$p()Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    if-eqz p1, :cond_16

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_16

    .line 9
    :cond_12
    invoke-virtual {p1, p0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;->showInActivity(Landroid/app/Activity;)V

    return-void

    .line 10
    :cond_16
    :goto_16
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->c()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 4
    invoke-static {}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivityKt;->access$getTempFullScreenAd$p()Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->a:Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivityKt;->access$setTempFullScreenAd$p(Lio/bidmachine/rendering/ad/fullscreen/FullScreenAd;)V

    .line 7
    :cond_19
    invoke-direct {p0}, Lio/bidmachine/rendering/ad/fullscreen/FullScreenActivity;->c()V

    :cond_1c
    return-void
.end method
