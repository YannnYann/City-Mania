###### Class io.bidmachine.media3.common.PreviewingVideoGraph (io.bidmachine.media3.common.PreviewingVideoGraph)
.class public interface abstract Lio/bidmachine/media3/common/PreviewingVideoGraph;
.super Ljava/lang/Object;
.source "PreviewingVideoGraph.java"

# interfaces
.implements Lio/bidmachine/media3/common/VideoGraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;
    }
.end annotation


# virtual methods
.method public abstract renderOutputFrame(J)V
.end method

###### Class io.bidmachine.media3.common.PreviewingVideoGraph.Factory (io.bidmachine.media3.common.PreviewingVideoGraph$Factory)
.class public interface abstract Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;
.super Ljava/lang/Object;
.source "PreviewingVideoGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/PreviewingVideoGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Lio/bidmachine/media3/common/ColorInfo;Lio/bidmachine/media3/common/DebugViewProvider;Lio/bidmachine/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Lio/bidmachine/media3/common/VideoCompositorSettings;Ljava/util/List;J)Lio/bidmachine/media3/common/PreviewingVideoGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/media3/common/ColorInfo;",
            "Lio/bidmachine/media3/common/DebugViewProvider;",
            "Lio/bidmachine/media3/common/VideoGraph$Listener;",
            "Ljava/util/concurrent/Executor;",
            "Lio/bidmachine/media3/common/VideoCompositorSettings;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J)",
            "Lio/bidmachine/media3/common/PreviewingVideoGraph;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/VideoFrameProcessingException;
        }
    .end annotation
.end method

.method public abstract supportsMultipleInputs()Z
.end method
