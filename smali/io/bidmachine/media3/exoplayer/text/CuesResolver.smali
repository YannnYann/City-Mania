###### Class io.bidmachine.media3.exoplayer.text.CuesResolver (io.bidmachine.media3.exoplayer.text.CuesResolver)
.class public interface abstract Lio/bidmachine/media3/exoplayer/text/CuesResolver;
.super Ljava/lang/Object;
.source "CuesResolver.java"


# virtual methods
.method public abstract addCues(Lio/bidmachine/media3/extractor/text/CuesWithTiming;J)Z
.end method

.method public abstract clear()V
.end method

.method public abstract discardCuesBeforeTimeUs(J)V
.end method

.method public abstract getCuesAtTimeUs(J)Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNextCueChangeTimeUs(J)J
.end method

.method public abstract getPreviousCueChangeTimeUs(J)J
.end method
