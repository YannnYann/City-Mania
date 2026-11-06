###### Class io.bidmachine.media3.exoplayer.source.SequenceableLoader (io.bidmachine.media3.exoplayer.source.SequenceableLoader)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;
.super Ljava/lang/Object;
.source "SequenceableLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;
    }
.end annotation


# virtual methods
.method public abstract continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract isLoading()Z
.end method

.method public abstract reevaluateBuffer(J)V
.end method

###### Class io.bidmachine.media3.exoplayer.source.SequenceableLoader.Callback (io.bidmachine.media3.exoplayer.source.SequenceableLoader$Callback)
.class public interface abstract Lio/bidmachine/media3/exoplayer/source/SequenceableLoader$Callback;
.super Ljava/lang/Object;
.source "SequenceableLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
