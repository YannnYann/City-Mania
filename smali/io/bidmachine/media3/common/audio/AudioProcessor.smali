###### Class io.bidmachine.media3.common.audio.AudioProcessor (io.bidmachine.media3.common.audio.AudioProcessor)
.class public interface abstract Lio/bidmachine/media3/common/audio/AudioProcessor;
.super Ljava/lang/Object;
.source "AudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;,
        Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;
    }
.end annotation


# static fields
.field public static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public abstract configure(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation
.end method

.method public abstract flush()V
.end method

.method public abstract getOutput()Ljava/nio/ByteBuffer;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract queueEndOfStream()V
.end method

.method public abstract queueInput(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract reset()V
.end method

###### Class io.bidmachine.media3.common.audio.AudioProcessor.AudioFormat (io.bidmachine.media3.common.audio.AudioProcessor$AudioFormat)
.class public final Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;
.super Ljava/lang/Object;
.source "AudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/audio/AudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioFormat"
.end annotation


# static fields
.field public static final NOT_SET:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;


# instance fields
.field public final bytesPerFrame:I

.field public final channelCount:I

.field public final encoding:I

.field public final sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    sput-object v0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 74
    iput p2, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 75
    iput p3, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 77
    invoke-static {p3}, Lio/bidmachine/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 78
    invoke-static {p3, p2}, Lio/bidmachine/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    .line 79
    :goto_15
    iput p1, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/Format;)V
    .registers 4

    .line 69
    iget v0, p1, Lio/bidmachine/media3/common/Format;->sampleRate:I

    iget v1, p1, Lio/bidmachine/media3/common/Format;->channelCount:I

    iget p1, p1, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    invoke-direct {p0, v0, v1, p1}, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 99
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 102
    :cond_a
    check-cast p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    .line 103
    iget v1, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v3, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    if-ne v1, v3, :cond_1f

    iget v1, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v3, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ne v1, v3, :cond_1f

    iget v1, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    iget p1, p1, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-ne v1, p1, :cond_1f

    return v0

    :cond_1f
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 110
    iget v0, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioFormat[sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.common.audio.AudioProcessor.UnhandledAudioFormatException (io.bidmachine.media3.common.audio.AudioProcessor$UnhandledAudioFormatException)
.class public final Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
.super Ljava/lang/Exception;
.source "AudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/audio/AudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnhandledAudioFormatException"
.end annotation


# instance fields
.field public final inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)V
    .registers 3

    .line 119
    const-string v0, "Unhandled input format:"

    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)V
    .registers 4

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 124
    iput-object p2, p0, Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;->inputAudioFormat:Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    return-void
.end method
