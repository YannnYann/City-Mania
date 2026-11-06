###### Class io.bidmachine.media3.exoplayer.DefaultRenderersFactory (io.bidmachine.media3.exoplayer.DefaultRenderersFactory)
.class public Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/RenderersFactory;


# instance fields
.field public allowedVideoJoiningTimeMs:J

.field public final codecAdapterFactory:Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

.field public final context:Landroid/content/Context;

.field public enableAudioTrackPlaybackParams:Z

.field public enableDecoderFallback:Z

.field public enableFloatOutput:Z

.field public enableMediaCodecVideoRendererPrewarming:Z

.field public extensionRendererMode:I

.field public lateThresholdToDropDecoderInputUs:J

.field public mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

.field public parseAv1SampleDependencies:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 120
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    const/4 p1, 0x0

    .line 121
    iput p1, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    const-wide/16 v0, 0x1388

    .line 122
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    .line 123
    sget-object p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 124
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->lateThresholdToDropDecoderInputUs:J

    return-void
.end method


# virtual methods
.method public buildAudioRenderers(Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;ZLio/bidmachine/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Z",
            "Lio/bidmachine/media3/exoplayer/audio/AudioSink;",
            "Landroid/os/Handler;",
            "Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    move/from16 v8, p2

    move-object/from16 v9, p8

    .line 537
    const-class v10, Landroid/content/Context;

    const-string v11, "DefaultRenderersFactory"

    const-class v12, Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    const-class v13, Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;

    const-class v14, Landroid/os/Handler;

    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 540
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->getCodecAdapterFactory()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v2

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;Lio/bidmachine/media3/exoplayer/audio/AudioSink;)V

    .line 546
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v8, :cond_2a

    goto/16 :goto_14d

    .line 551
    :cond_2a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v8, v2, :cond_33

    add-int/lit8 v0, v0, -0x1

    .line 559
    :cond_33
    :try_start_33
    const-string v2, "io.bidmachine.media3.decoder.midi.MidiRenderer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 560
    filled-new-array {v10, v14, v13, v12}, [Ljava/lang/Class;

    move-result-object v3

    .line 561
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 567
    filled-new-array {v1, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 568
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/Renderer;
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_4b} :catch_62
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4b} :catch_56

    add-int/lit8 v3, v0, 0x1

    .line 569
    :try_start_4d
    invoke-virtual {v9, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 570
    const-string v0, "Loaded MidiRenderer."

    invoke-static {v11, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4d .. :try_end_55} :catch_58
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_55} :catch_56

    goto :goto_63

    :catch_56
    move-exception v0

    goto :goto_5a

    :catch_58
    move v0, v3

    goto :goto_62

    .line 575
    :goto_5a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating MIDI extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_62
    :goto_62
    move v3, v0

    .line 581
    :goto_63
    :try_start_63
    const-string v0, "io.bidmachine.media3.decoder.opus.LibopusAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 582
    filled-new-array {v14, v13, v12}, [Ljava/lang/Class;

    move-result-object v2

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 588
    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;
    :try_end_7b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_63 .. :try_end_7b} :catch_92
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_7b} :catch_86

    add-int/lit8 v2, v3, 0x1

    .line 590
    :try_start_7d
    invoke-virtual {v9, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 591
    const-string v0, "Loaded LibopusAudioRenderer."

    invoke-static {v11, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7d .. :try_end_85} :catch_88
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_85} :catch_86

    goto :goto_93

    :catch_86
    move-exception v0

    goto :goto_8a

    :catch_88
    move v3, v2

    goto :goto_92

    .line 596
    :goto_8a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating Opus extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_92
    :goto_92
    move v2, v3

    .line 602
    :goto_93
    :try_start_93
    const-string v0, "io.bidmachine.media3.decoder.flac.LibflacAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 603
    filled-new-array {v14, v13, v12}, [Ljava/lang/Class;

    move-result-object v3

    .line 604
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 609
    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 610
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;
    :try_end_ab
    .catch Ljava/lang/ClassNotFoundException; {:try_start_93 .. :try_end_ab} :catch_c2
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_ab} :catch_b6

    add-int/lit8 v3, v2, 0x1

    .line 611
    :try_start_ad
    invoke-virtual {v9, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 612
    const-string v0, "Loaded LibflacAudioRenderer."

    invoke-static {v11, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ad .. :try_end_b5} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b5} :catch_b6

    goto :goto_c3

    :catch_b6
    move-exception v0

    goto :goto_ba

    :catch_b8
    move v2, v3

    goto :goto_c2

    .line 617
    :goto_ba
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_c2
    :goto_c2
    move v3, v2

    .line 623
    :goto_c3
    :try_start_c3
    const-string v0, "io.bidmachine.media3.decoder.ffmpeg.FfmpegAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 624
    filled-new-array {v14, v13, v12}, [Ljava/lang/Class;

    move-result-object v2

    .line 625
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 630
    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 631
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;
    :try_end_db
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c3 .. :try_end_db} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_db} :catch_e6

    add-int/lit8 v2, v3, 0x1

    .line 632
    :try_start_dd
    invoke-virtual {v9, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 633
    const-string v0, "Loaded FfmpegAudioRenderer."

    invoke-static {v11, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_dd .. :try_end_e5} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e5} :catch_e6

    goto :goto_f3

    :catch_e6
    move-exception v0

    goto :goto_ea

    :catch_e8
    move v3, v2

    goto :goto_f2

    .line 638
    :goto_ea
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating FFmpeg extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_f2
    :goto_f2
    move v2, v3

    .line 644
    :goto_f3
    :try_start_f3
    const-string v0, "io.bidmachine.media3.decoder.iamf.LibiamfAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 645
    filled-new-array {v10, v14, v13, v12}, [Ljava/lang/Class;

    move-result-object v3

    .line 646
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 652
    filled-new-array {v1, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;
    :try_end_10b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f3 .. :try_end_10b} :catch_122
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_10b} :catch_116

    add-int/lit8 v1, v2, 0x1

    .line 654
    :try_start_10d
    invoke-virtual {v9, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 655
    const-string v0, "Loaded LibiamfAudioRenderer."

    invoke-static {v11, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_115
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10d .. :try_end_115} :catch_118
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_115} :catch_116

    goto :goto_123

    :catch_116
    move-exception v0

    goto :goto_11a

    :catch_118
    move v2, v1

    goto :goto_122

    .line 660
    :goto_11a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating IAMF extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_122
    :goto_122
    move v1, v2

    .line 665
    :goto_123
    :try_start_123
    const-string v0, "io.bidmachine.media3.decoder.mpegh.MpeghAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 666
    filled-new-array {v14, v13, v12}, [Ljava/lang/Class;

    move-result-object v2

    .line 667
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 671
    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 672
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;

    .line 673
    invoke-virtual {v9, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 674
    const-string v0, "Loaded MpeghAudioRenderer."

    invoke-static {v11, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_143
    .catch Ljava/lang/ClassNotFoundException; {:try_start_123 .. :try_end_143} :catch_14d
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_143} :catch_144

    goto :goto_14d

    :catch_144
    move-exception v0

    .line 679
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating MPEG-H extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_14d
    :goto_14d
    return-void
.end method

.method public buildAudioSink(Landroid/content/Context;ZZ)Lio/bidmachine/media3/exoplayer/audio/AudioSink;
    .registers 5

    .line 774
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;-><init>(Landroid/content/Context;)V

    .line 775
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->setEnableFloatOutput(Z)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 776
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->setEnableAudioTrackPlaybackParams(Z)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object p1

    .line 777
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->build()Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    move-result-object p1

    return-object p1
.end method

.method public buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 729
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildImageRenderers(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 741
    new-instance v0, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->getImageDecoderFactory()Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/image/ImageRenderer;-><init>(Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;Lio/bidmachine/media3/exoplayer/image/ImageOutput;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildMetadataRenderers(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 716
    new-instance p1, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;

    invoke-direct {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;-><init>(Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance p1, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;

    invoke-direct {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;-><init>(Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public buildSecondaryVideoRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;J)Lio/bidmachine/media3/exoplayer/Renderer;
    .registers 10

    .line 835
    iget-boolean p3, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->enableMediaCodecVideoRendererPrewarming:Z

    if-eqz p3, :cond_44

    .line 836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p3, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    if-ne p1, p3, :cond_44

    .line 837
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 838
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->getCodecAdapterFactory()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setCodecAdapterFactory(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 839
    invoke-virtual {p1, p4}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMediaCodecSelector(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 840
    invoke-virtual {p1, p8, p9}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setAllowedJoiningTimeMs(J)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 841
    invoke-virtual {p1, p5}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEnableDecoderFallback(Z)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 842
    invoke-virtual {p1, p6}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventHandler(Landroid/os/Handler;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 843
    invoke-virtual {p1, p7}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventListener(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    const/16 p2, 0x32

    .line 844
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMaxDroppedFramesToNotify(I)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->parseAv1SampleDependencies:Z

    .line 845
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->experimentalSetParseAv1SampleDependencies(Z)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    iget-wide p2, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->lateThresholdToDropDecoderInputUs:J

    .line 846
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->experimentalSetLateThresholdToDropDecoderInputUs(J)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object p1

    .line 847
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->build()Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    move-result-object p1

    return-object p1

    :cond_44
    const/4 p1, 0x0

    return-object p1
.end method

.method public buildTextRenderers(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/media3/exoplayer/text/TextOutput;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    .line 698
    new-instance p1, Lio/bidmachine/media3/exoplayer/text/TextRenderer;

    invoke-direct {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;-><init>(Lio/bidmachine/media3/exoplayer/text/TextOutput;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildVideoRenderers(Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Z",
            "Landroid/os/Handler;",
            "Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;",
            "J",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    .line 409
    const-string v4, "DefaultRenderersFactory"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    const-class v7, Landroid/os/Handler;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v9, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-object v10, p1

    invoke-direct {v9, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->getCodecAdapterFactory()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setCodecAdapterFactory(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v9

    move-object/from16 v10, p3

    .line 412
    invoke-virtual {v9, v10}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMediaCodecSelector(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v9

    move-wide/from16 v10, p7

    .line 413
    invoke-virtual {v9, v10, v11}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setAllowedJoiningTimeMs(J)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v9

    move/from16 v12, p4

    .line 414
    invoke-virtual {v9, v12}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEnableDecoderFallback(Z)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v9

    .line 415
    invoke-virtual {v9, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventHandler(Landroid/os/Handler;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v9

    .line 416
    invoke-virtual {v9, v2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setEventListener(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v9

    const/16 v12, 0x32

    .line 448
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 417
    invoke-virtual {v9, v12}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->setMaxDroppedFramesToNotify(I)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v9

    iget-boolean v12, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->parseAv1SampleDependencies:Z

    .line 418
    invoke-virtual {v9, v12}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->experimentalSetParseAv1SampleDependencies(Z)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v9

    iget-wide v10, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->lateThresholdToDropDecoderInputUs:J

    .line 419
    invoke-virtual {v9, v10, v11}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->experimentalSetLateThresholdToDropDecoderInputUs(J)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    move-result-object v9

    .line 420
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->build()Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    move-result-object v9

    .line 421
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_5b

    goto/16 :goto_fa

    .line 426
    :cond_5b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v0, v10, :cond_64

    add-int/lit8 v9, v9, -0x1

    .line 434
    :cond_64
    :try_start_64
    const-string v0, "io.bidmachine.media3.decoder.vp9.LibvpxVideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 435
    filled-new-array {v8, v7, v6, v5}, [Ljava/lang/Class;

    move-result-object v10

    .line 436
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 445
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 448
    filled-new-array {v10, v1, v2, v13}, [Ljava/lang/Object;

    move-result-object v10

    .line 444
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;
    :try_end_80
    .catch Ljava/lang/ClassNotFoundException; {:try_start_64 .. :try_end_80} :catch_97
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_80} :catch_8b

    add-int/lit8 v10, v9, 0x1

    .line 449
    :try_start_82
    invoke-virtual {v3, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 450
    const-string v0, "Loaded LibvpxVideoRenderer."

    invoke-static {v4, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_82 .. :try_end_8a} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8a} :catch_8b

    goto :goto_98

    :catch_8b
    move-exception v0

    goto :goto_8f

    :catch_8d
    move v9, v10

    goto :goto_97

    .line 455
    :goto_8f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating VP9 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_97
    :goto_97
    move v10, v9

    .line 461
    :goto_98
    :try_start_98
    const-string v0, "io.bidmachine.media3.decoder.av1.Libgav1VideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 462
    filled-new-array {v8, v7, v6, v5}, [Ljava/lang/Class;

    move-result-object v9

    .line 463
    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 472
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 475
    filled-new-array {v9, v1, v2, v13}, [Ljava/lang/Object;

    move-result-object v9

    .line 471
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;
    :try_end_b4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_98 .. :try_end_b4} :catch_cb
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_b4} :catch_bf

    add-int/lit8 v9, v10, 0x1

    .line 476
    :try_start_b6
    invoke-virtual {v3, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 477
    const-string v0, "Loaded Libgav1VideoRenderer."

    invoke-static {v4, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b6 .. :try_end_be} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_be} :catch_bf

    goto :goto_cc

    :catch_bf
    move-exception v0

    goto :goto_c3

    :catch_c1
    move v10, v9

    goto :goto_cb

    .line 482
    :goto_c3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating AV1 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_cb
    :goto_cb
    move v9, v10

    .line 488
    :goto_cc
    :try_start_cc
    const-string v0, "io.bidmachine.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer"

    .line 489
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 490
    filled-new-array {v8, v7, v6, v5}, [Ljava/lang/Class;

    move-result-object v5

    .line 491
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 500
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 503
    filled-new-array {v5, v1, v2, v13}, [Ljava/lang/Object;

    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;

    .line 504
    invoke-virtual {v3, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 505
    const-string v0, "Loaded FfmpegVideoRenderer."

    invoke-static {v4, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_cc .. :try_end_f0} :catch_fa
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_f0} :catch_f1

    goto :goto_fa

    :catch_f1
    move-exception v0

    .line 510
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating FFmpeg extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_fa
    :goto_fa
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;Lio/bidmachine/media3/exoplayer/text/TextOutput;Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;)[Lio/bidmachine/media3/exoplayer/Renderer;
    .registers 16

    .line 343
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 344
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->enableDecoderFallback:Z

    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    move-object v0, p0

    move-object v6, p2

    move-object v9, v5

    move-object v5, p1

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->buildVideoRenderers(Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;JLjava/util/ArrayList;)V

    move-object v8, v9

    .line 354
    iget-object p1, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget-boolean p2, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->enableFloatOutput:Z

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->enableAudioTrackPlaybackParams:Z

    .line 355
    invoke-virtual {p0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->buildAudioSink(Landroid/content/Context;ZZ)Lio/bidmachine/media3/exoplayer/audio/AudioSink;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 357
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v2, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-boolean v4, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->enableDecoderFallback:Z

    move-object v7, p3

    move-object v6, v5

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->buildAudioRenderers(Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;ZLio/bidmachine/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;Ljava/util/ArrayList;)V

    :goto_31
    move-object v5, v8

    goto :goto_35

    :cond_33
    move-object v6, v5

    goto :goto_31

    .line 367
    :goto_35
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 370
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v2, p4

    .line 367
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->buildTextRenderers(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/text/TextOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 373
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    .line 376
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    move-object v2, p5

    .line 373
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->buildMetadataRenderers(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 379
    iget-object p1, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget p2, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, p1, p2, v5}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->buildCameraMotionRenderers(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 380
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->buildImageRenderers(Ljava/util/ArrayList;)V

    .line 381
    iget-object p1, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget p2, v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    invoke-virtual {p0, p1, v6, p2, v5}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 382
    new-array p1, p1, [Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/exoplayer/Renderer;

    return-object p1
.end method

.method public createSecondaryRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;Lio/bidmachine/media3/exoplayer/text/TextOutput;Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;)Lio/bidmachine/media3/exoplayer/Renderer;
    .registers 17

    .line 789
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->getTrackType()I

    move-result p4

    const/4 p5, 0x2

    if-ne p4, p5, :cond_1a

    .line 790
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    iget v3, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->extensionRendererMode:I

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->enableDecoderFallback:Z

    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->allowedVideoJoiningTimeMs:J

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->buildSecondaryVideoRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Landroid/content/Context;ILio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;J)Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object p1

    return-object p1

    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCodecAdapterFactory()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
    .registers 2

    .line 857
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Lio/bidmachine/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    return-object v0
.end method

.method public getImageDecoderFactory()Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;
    .registers 2

    .line 862
    sget-object v0, Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;->DEFAULT:Lio/bidmachine/media3/exoplayer/image/ImageDecoder$Factory;

    return-object v0
.end method
