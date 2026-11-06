###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioTrackProvider (io.bidmachine.media3.exoplayer.audio.DefaultAudioTrackProvider)
.class public Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider;
.super Ljava/lang/Object;
.source "DefaultAudioTrackProvider.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAudioTrackV21(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .registers 10

    .line 93
    new-instance v0, Landroid/media/AudioTrack;

    iget-boolean v1, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->tunneling:Z

    .line 94
    invoke-virtual {p0, p2, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider;->getAudioTrackAttributesV21(Lio/bidmachine/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    iget p2, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->sampleRate:I

    iget v2, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->channelConfig:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->encoding:I

    .line 95
    invoke-static {p2, v2, v3}, Lio/bidmachine/media3/common/util/Util;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->bufferSize:I

    const/4 v4, 0x1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method public final createAudioTrackV23(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .registers 7

    .line 52
    iget v0, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->sampleRate:I

    iget v1, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->channelConfig:I

    iget v2, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->encoding:I

    .line 53
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/Util;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 55
    iget-boolean v1, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->tunneling:Z

    .line 56
    invoke-virtual {p0, p2, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider;->getAudioTrackAttributesV21(Lio/bidmachine/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object p2

    .line 57
    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 59
    invoke-virtual {v1, p2}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    .line 60
    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    iget v0, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->bufferSize:I

    .line 62
    invoke-virtual {p2, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    .line 63
    invoke-virtual {p2, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p2

    .line 64
    sget p3, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p3, v0, :cond_37

    .line 65
    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->offload:Z

    invoke-virtual {p0, p2, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider;->setOffloadedPlaybackV29(Landroid/media/AudioTrack$Builder;Z)V

    .line 67
    :cond_37
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider;->customizeAudioTrackBuilder(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1
.end method

.method public customizeAudioTrackBuilder(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack$Builder;
    .registers 2

    .line 0
    return-object p1
.end method

.method public final getAudioTrack(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .registers 6

    .line 40
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider;->createAudioTrackV23(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1

    .line 43
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider;->createAudioTrackV21(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p1

    return-object p1
.end method

.method public final getAudioTrackAttributesV21(Lio/bidmachine/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;
    .registers 3

    if-eqz p2, :cond_7

    .line 105
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider;->getAudioTrackTunnelingAttributesV21()Landroid/media/AudioAttributes;

    move-result-object p1

    return-object p1

    .line 107
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/media3/common/AudioAttributes;->getAudioAttributesV21()Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object p1

    iget-object p1, p1, Lio/bidmachine/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method public final getAudioTrackTunnelingAttributesV21()Landroid/media/AudioAttributes;
    .registers 3

    .line 112
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 113
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 114
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public final setOffloadedPlaybackV29(Landroid/media/AudioTrack$Builder;Z)V
    .registers 3

    .line 72
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack$Builder;Z)Landroid/media/AudioTrack$Builder;

    return-void
.end method
