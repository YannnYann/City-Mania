###### Class io.bidmachine.rendering.measurer.CompositeVideoMeasurer (io.bidmachine.rendering.measurer.CompositeVideoMeasurer)
.class public final Lio/bidmachine/rendering/measurer/CompositeVideoMeasurer;
.super Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/measurer/VideoMeasurer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer<",
        "Lio/bidmachine/rendering/measurer/VideoMeasurer;",
        "Landroid/view/View;",
        ">;",
        "Lio/bidmachine/rendering/measurer/VideoMeasurer;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/rendering/measurer/VideoMeasurer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "measurerList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onMediaCompleted()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->getMeasurerList()Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 40
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaCompleted()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onMediaFirstQuartile()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->getMeasurerList()Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 52
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaFirstQuartile()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onMediaMidpoint()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->getMeasurerList()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 48
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaMidpoint()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onMediaPaused()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->getMeasurerList()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 36
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaPaused()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onMediaResumed()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->getMeasurerList()Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 32
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaResumed()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onMediaSkipped()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->getMeasurerList()Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 24
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaSkipped()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onMediaStarted(FF)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->getMeasurerList()Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 56
    invoke-interface {v1, p1, p2}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaStarted(FF)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onMediaThirdQuartile()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->getMeasurerList()Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 44
    invoke-interface {v1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaThirdQuartile()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onMediaVolumeChanged(F)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/measurer/BaseCompositeMeasurer;->getMeasurerList()Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 28
    invoke-interface {v1, p1}, Lio/bidmachine/rendering/measurer/VideoMeasurer;->onMediaVolumeChanged(F)V

    goto :goto_8

    :cond_18
    return-void
.end method
