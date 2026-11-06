###### Class io.bidmachine.media3.common.VideoGraph (io.bidmachine.media3.common.VideoGraph)
.class public interface abstract Lio/bidmachine/media3/common/VideoGraph;
.super Ljava/lang/Object;
.source "VideoGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/VideoGraph$Listener;
    }
.end annotation


# virtual methods
.method public abstract getProcessor(I)Lio/bidmachine/media3/common/VideoFrameProcessor;
.end method

.method public abstract initialize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/VideoFrameProcessingException;
        }
    .end annotation
.end method

.method public abstract registerInput(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/VideoFrameProcessingException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setOutputSurfaceInfo(Lio/bidmachine/media3/common/SurfaceInfo;)V
.end method

###### Class io.bidmachine.media3.common.VideoGraph.Listener (io.bidmachine.media3.common.VideoGraph$Listener)
.class public interface abstract Lio/bidmachine/media3/common/VideoGraph$Listener;
.super Ljava/lang/Object;
.source "VideoGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/VideoGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation
