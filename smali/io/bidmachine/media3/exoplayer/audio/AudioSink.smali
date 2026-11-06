###### Class io.bidmachine.media3.exoplayer.audio.AudioSink (io.bidmachine.media3.exoplayer.audio.AudioSink)
.class public interface abstract Lio/bidmachine/media3/exoplayer/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;,
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;,
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;,
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;,
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;,
        Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;
    }
.end annotation


# virtual methods
.method public abstract configure(Lio/bidmachine/media3/common/Format;I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract enableTunnelingV21()V
.end method

.method public abstract flush()V
.end method

.method public abstract getAudioTrackBufferSizeUs()J
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public getFormatOffloadSupport(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;
    .registers 2

    .line 463
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p1
.end method

.method public abstract getFormatSupport(Lio/bidmachine/media3/common/Format;)I
.end method

.method public abstract getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;
.end method

.method public abstract handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;,
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setAuxEffectInfo(Lio/bidmachine/media3/common/AuxEffectInfo;)V
.end method

.method public setClock(Lio/bidmachine/media3/common/util/Clock;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract setListener(Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;)V
.end method

.method public setOffloadDelayPadding(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public setOffloadMode(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setOutputStreamOffsetUs(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract setPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V
.end method

.method public setPlayerId(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .registers 2

    .line 0
    return-void
.end method

.method public abstract setSkipSilenceEnabled(Z)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract supportsFormat(Lio/bidmachine/media3/common/Format;)Z
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioSink.AudioTrackConfig (io.bidmachine.media3.exoplayer.audio.AudioSink$AudioTrackConfig)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioTrackConfig"
.end annotation


# instance fields
.field public final bufferSize:I

.field public final channelConfig:I

.field public final encoding:I

.field public final offload:Z

.field public final sampleRate:I

.field public final tunneling:Z


# direct methods
.method public constructor <init>(IIIZZI)V
    .registers 7

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->encoding:I

    .line 200
    iput p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->sampleRate:I

    .line 201
    iput p3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->channelConfig:I

    .line 202
    iput-boolean p4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->tunneling:Z

    .line 203
    iput-boolean p5, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->offload:Z

    .line 204
    iput p6, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->bufferSize:I

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioSink.ConfigurationException (io.bidmachine.media3.exoplayer.audio.AudioSink$ConfigurationException)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigurationException"
.end annotation


# instance fields
.field public final format:Lio/bidmachine/media3/common/Format;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 222
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 223
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;->format:Lio/bidmachine/media3/common/Format;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 216
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 217
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;->format:Lio/bidmachine/media3/common/Format;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioSink.InitializationException (io.bidmachine.media3.exoplayer.audio.AudioSink$InitializationException)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationException"
.end annotation


# instance fields
.field public final audioTrackState:I

.field public final format:Lio/bidmachine/media3/common/Format;

.field public final isRecoverable:Z


# direct methods
.method public constructor <init>(IIIILio/bidmachine/media3/common/Format;ZLjava/lang/Exception;)V
    .registers 15

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack init failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Config("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_38

    .line 286
    const-string p2, " (recoverable)"

    goto :goto_3a

    :cond_38
    const-string p2, ""

    :goto_3a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    .line 279
    invoke-direct/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(Ljava/lang/String;ILio/bidmachine/media3/common/Format;ZLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILio/bidmachine/media3/common/Format;ZLjava/lang/Throwable;)V
    .registers 6

    .line 254
    invoke-direct {p0, p1, p5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    iput p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;->audioTrackState:I

    .line 256
    iput-boolean p4, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;->isRecoverable:Z

    .line 257
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;->format:Lio/bidmachine/media3/common/Format;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioSink.Listener (io.bidmachine.media3.exoplayer.audio.AudioSink$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onAudioCapabilitiesChanged()V
    .registers 1

    .line 0
    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAudioTrackInitialized(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAudioTrackReleased(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onOffloadBufferEmptying()V
    .registers 1

    .line 0
    return-void
.end method

.method public onOffloadBufferFull()V
    .registers 1

    .line 0
    return-void
.end method

.method public onPositionAdvancing(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public abstract onPositionDiscontinuity()V
.end method

.method public onSilenceSkipped()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract onSkipSilenceEnabledChanged(Z)V
.end method

.method public abstract onUnderrun(IJJ)V
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioSink.UnexpectedDiscontinuityException (io.bidmachine.media3.exoplayer.audio.AudioSink$UnexpectedDiscontinuityException)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnexpectedDiscontinuityException"
.end annotation


# instance fields
.field public final actualPresentationTimeUs:J

.field public final expectedPresentationTimeUs:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 7

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected audio track timestamp discontinuity: expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 348
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;->actualPresentationTimeUs:J

    .line 349
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;->expectedPresentationTimeUs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.AudioSink.WriteException (io.bidmachine.media3.exoplayer.audio.AudioSink$WriteException)
.class public final Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
.super Ljava/lang/Exception;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WriteException"
.end annotation


# instance fields
.field public final errorCode:I

.field public final format:Lio/bidmachine/media3/common/Format;

.field public final isRecoverable:Z


# direct methods
.method public constructor <init>(ILio/bidmachine/media3/common/Format;Z)V
    .registers 6

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack write failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 320
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    .line 321
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;->errorCode:I

    .line 322
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;->format:Lio/bidmachine/media3/common/Format;

    return-void
.end method
