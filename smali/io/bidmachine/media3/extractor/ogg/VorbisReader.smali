###### Class io.bidmachine.media3.extractor.ogg.VorbisReader (io.bidmachine.media3.extractor.ogg.VorbisReader)
.class public final Lio/bidmachine/media3/extractor/ogg/VorbisReader;
.super Lio/bidmachine/media3/extractor/ogg/StreamReader;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;
    }
.end annotation


# instance fields
.field public commentHeader:Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

.field public previousPacketBlockSize:I

.field public seenFirstAudioPacket:Z

.field public vorbisIdHeader:Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

.field public vorbisSetup:Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method public static appendNumberOfSamples(Lio/bidmachine/media3/common/util/ParsableByteArray;J)V
    .registers 9

    .line 179
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1e

    .line 180
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([B)V

    goto :goto_27

    .line 182
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 186
    :goto_27
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 188
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 189
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 190
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-void
.end method

.method public static decodeBlockSize(BLio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;)I
    .registers 4

    .line 195
    iget v0, p1, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->readBits(BII)I

    move-result p0

    .line 197
    iget-object v0, p1, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Lio/bidmachine/media3/extractor/VorbisUtil$Mode;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Lio/bidmachine/media3/extractor/VorbisUtil$Mode;->blockFlag:Z

    if-nez p0, :cond_14

    .line 198
    iget-object p0, p1, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

    iget p0, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    return p0

    .line 200
    :cond_14
    iget-object p0, p1, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

    iget p0, p0, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    return p0
.end method

.method public static readBits(BII)I
    .registers 3

    .line 0
    shr-int/2addr p0, p2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0xff

    ushr-int p1, p2, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static verifyBitstreamType(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 2

    const/4 v0, 0x1

    .line 48
    :try_start_1
    invoke-static {v0, p0, v0}, Lio/bidmachine/media3/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILio/bidmachine/media3/common/util/ParsableByteArray;Z)Z

    move-result p0
    :try_end_5
    .catch Lio/bidmachine/media3/common/ParserException; {:try_start_1 .. :try_end_5} :catch_6

    return p0

    :catch_6
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onSeekEnd(J)V
    .registers 5

    .line 68
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->onSeekEnd(J)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    move p1, p2

    .line 69
    :goto_d
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 70
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

    if-eqz p1, :cond_15

    iget p2, p1, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    :cond_15
    iput p2, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-void
.end method

.method public preparePayload(Lio/bidmachine/media3/common/util/ParsableByteArray;)J
    .registers 7

    .line 76
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    const-wide/16 v0, -0x1

    return-wide v0

    .line 81
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    aget-byte v0, v0, v1

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->vorbisSetup:Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-static {v0, v3}, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->decodeBlockSize(BLio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;)I

    move-result v0

    .line 85
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    if-eqz v3, :cond_29

    iget v1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_29
    int-to-long v3, v1

    .line 87
    invoke-static {p1, v3, v4}, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->appendNumberOfSamples(Lio/bidmachine/media3/common/util/ParsableByteArray;J)V

    .line 90
    iput-boolean v2, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    .line 91
    iput v0, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    return-wide v3
.end method

.method public readHeaders(Lio/bidmachine/media3/common/util/ParsableByteArray;JLio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->vorbisSetup:Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;

    if-eqz p2, :cond_b

    .line 100
    iget-object p1, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    .line 104
    :cond_b
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->readSetupHeaders(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->vorbisSetup:Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;

    const/4 p2, 0x1

    if-nez p1, :cond_15

    return p2

    .line 110
    :cond_15
    iget-object p3, p1, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v1, p3, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p1, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p1, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lio/bidmachine/media3/common/Metadata;

    move-result-object p1

    .line 120
    new-instance v1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v2, "audio/ogg"

    .line 122
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    const-string v2, "audio/vorbis"

    .line 123
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p3, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    .line 124
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p3, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateMaximum:I

    .line 125
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p3, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    .line 126
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget p3, p3, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:I

    .line 127
    invoke-virtual {v1, p3}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p3

    .line 128
    invoke-virtual {p3, v0}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p3

    .line 129
    invoke-virtual {p3, p1}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    return p2
.end method

.method public readSetupHeaders(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

    const/4 v0, 0x0

    if-nez v1, :cond_c

    .line 139
    invoke-static {p1}, Lio/bidmachine/media3/extractor/VorbisUtil;->readVorbisIdentificationHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

    return-object v0

    .line 143
    :cond_c
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->commentHeader:Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

    if-nez v2, :cond_17

    .line 144
    invoke-static {p1}, Lio/bidmachine/media3/extractor/VorbisUtil;->readVorbisCommentHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->commentHeader:Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

    return-object v0

    .line 151
    :cond_17
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    new-array v3, v0, [B

    .line 153
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v0, v1, Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/VorbisUtil;->readVorbisModes(Lio/bidmachine/media3/common/util/ParsableByteArray;I)[Lio/bidmachine/media3/extractor/VorbisUtil$Mode;

    move-result-object v4

    .line 157
    array-length p1, v4

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lio/bidmachine/media3/extractor/VorbisUtil;->iLog(I)I

    move-result v5

    .line 159
    new-instance v0, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;-><init>(Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;[B[Lio/bidmachine/media3/extractor/VorbisUtil$Mode;I)V

    return-object v0
.end method

.method public reset(Z)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->vorbisSetup:Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;

    .line 59
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->vorbisIdHeader:Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

    .line 60
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->commentHeader:Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

    :cond_c
    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->previousPacketBlockSize:I

    .line 63
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader;->seenFirstAudioPacket:Z

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ogg.VorbisReader.VorbisSetup (io.bidmachine.media3.extractor.ogg.VorbisReader$VorbisSetup)
.class public final Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;
.super Ljava/lang/Object;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ogg/VorbisReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisSetup"
.end annotation


# instance fields
.field public final commentHeader:Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

.field public final iLogModes:I

.field public final idHeader:Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

.field public final modes:[Lio/bidmachine/media3/extractor/VorbisUtil$Mode;

.field public final setupHeaderData:[B


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;[B[Lio/bidmachine/media3/extractor/VorbisUtil$Mode;I)V
    .registers 6

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lio/bidmachine/media3/extractor/VorbisUtil$VorbisIdHeader;

    .line 221
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

    .line 222
    iput-object p3, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    .line 223
    iput-object p4, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Lio/bidmachine/media3/extractor/VorbisUtil$Mode;

    .line 224
    iput p5, p0, Lio/bidmachine/media3/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    return-void
.end method
