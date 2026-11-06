###### Class io.bidmachine.media3.exoplayer.text.TextOutput (io.bidmachine.media3.exoplayer.text.TextOutput)
.class public interface abstract Lio/bidmachine/media3/exoplayer/text/TextOutput;
.super Ljava/lang/Object;
.source "TextOutput.java"


# virtual methods
.method public abstract onCues(Lio/bidmachine/media3/common/text/CueGroup;)V
.end method

.method public onCues(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method
