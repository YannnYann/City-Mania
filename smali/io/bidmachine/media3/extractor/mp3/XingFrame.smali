###### Class io.bidmachine.media3.extractor.mp3.XingFrame (io.bidmachine.media3.extractor.mp3.XingFrame)
.class public final Lio/bidmachine/media3/extractor/mp3/XingFrame;
.super Ljava/lang/Object;
.source "XingFrame.java"


# instance fields
.field public final dataSize:J

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameCount:J

.field public final header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

.field public final tableOfContents:[J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;JJ[JII)V
    .registers 10

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;-><init>(Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    .line 64
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->frameCount:J

    .line 65
    iput-wide p4, p0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->dataSize:J

    .line 66
    iput-object p6, p0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->tableOfContents:[J

    .line 67
    iput p7, p0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->encoderDelay:I

    .line 68
    iput p8, p0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->encoderPadding:I

    return-void
.end method

.method public static parse(Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/mp3/XingFrame;
    .registers 16

    .line 83
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_e

    .line 84
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_19

    .line 85
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    :goto_17
    move-wide v9, v3

    goto :goto_1c

    :cond_19
    const-wide/16 v3, -0x1

    goto :goto_17

    :goto_1c
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    const/16 v3, 0x64

    .line 89
    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v3, :cond_32

    .line 91
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    int-to-long v7, v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_32
    :goto_32
    move-object v11, v5

    goto :goto_36

    :cond_34
    const/4 v5, 0x0

    goto :goto_32

    :goto_36
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3d

    .line 98
    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 106
    :cond_3d
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_59

    const/16 v0, 0x15

    .line 107
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 108
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p1

    const v0, 0xfff000

    and-int/2addr v0, p1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit16 p1, p1, 0xfff

    move v13, p1

    move v12, v2

    goto :goto_5b

    :cond_59
    move v12, v2

    move v13, v12

    .line 116
    :goto_5b
    new-instance v5, Lio/bidmachine/media3/extractor/mp3/XingFrame;

    int-to-long v7, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v13}, Lio/bidmachine/media3/extractor/mp3/XingFrame;-><init>(Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;JJ[JII)V

    return-object v5
.end method


# virtual methods
.method public computeDurationUs()J
    .registers 6

    .line 126
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->frameCount:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1f

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    goto :goto_1f

    .line 132
    :cond_f
    iget-object v2, p0, Lio/bidmachine/media3/extractor/mp3/XingFrame;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v3, v2, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v3, v3

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    iget v2, v2, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    return-wide v0

    :cond_1f
    :goto_1f
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
