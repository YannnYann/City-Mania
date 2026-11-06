###### Class io.bidmachine.media3.common.VideoFrameProcessor (io.bidmachine.media3.common.VideoFrameProcessor)
.class public interface abstract Lio/bidmachine/media3/common/VideoFrameProcessor;
.super Ljava/lang/Object;
.source "VideoFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;
    }
.end annotation


# virtual methods
.method public abstract flush()V
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract getPendingInputFrameCount()I
.end method

.method public abstract registerInputFrame()Z
.end method

.method public abstract registerInputStream(ILio/bidmachine/media3/common/Format;Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.common.VideoFrameProcessor.Factory (io.bidmachine.media3.common.VideoFrameProcessor$Factory)
.class public interface abstract Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;
.super Ljava/lang/Object;
.source "VideoFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/VideoFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation
