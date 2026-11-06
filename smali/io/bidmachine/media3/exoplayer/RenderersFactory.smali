###### Class io.bidmachine.media3.exoplayer.RenderersFactory (io.bidmachine.media3.exoplayer.RenderersFactory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/RenderersFactory;
.super Ljava/lang/Object;
.source "RenderersFactory.java"


# virtual methods
.method public abstract createRenderers(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;Lio/bidmachine/media3/exoplayer/text/TextOutput;Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;)[Lio/bidmachine/media3/exoplayer/Renderer;
.end method

.method public createSecondaryRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;Lio/bidmachine/media3/exoplayer/text/TextOutput;Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;)Lio/bidmachine/media3/exoplayer/Renderer;
    .registers 7

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method
