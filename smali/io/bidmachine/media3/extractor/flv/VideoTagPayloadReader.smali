###### Class io.bidmachine.media3.extractor.flv.VideoTagPayloadReader (io.bidmachine.media3.extractor.flv.VideoTagPayloadReader)
.class public final Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;
.super Lio/bidmachine/media3/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# instance fields
.field public frameType:I

.field public hasOutputFormat:Z

.field public hasOutputKeyframe:Z

.field public final nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/TrackOutput;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/flv/TagPayloadReader;-><init>(Lio/bidmachine/media3/extractor/TrackOutput;)V

    .line 56
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    sget-object v0, Lio/bidmachine/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 57
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public parseHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_16

    .line 74
    iput v0, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1

    .line 72
    :cond_16
    new-instance v0, Lio/bidmachine/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video format not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parsePayload(Lio/bidmachine/media3/common/util/ParsableByteArray;J)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 81
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt24()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_6f

    .line 85
    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v1, :cond_6f

    .line 86
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 87
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 88
    invoke-static {v0}, Lio/bidmachine/media3/extractor/AvcConfig;->parse(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/AvcConfig;

    move-result-object p1

    .line 89
    iget v0, p1, Lio/bidmachine/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v0, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    .line 91
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "video/x-flv"

    .line 93
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "video/avc"

    .line 94
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p1, Lio/bidmachine/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Lio/bidmachine/media3/extractor/AvcConfig;->width:I

    .line 96
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Lio/bidmachine/media3/extractor/AvcConfig;->height:I

    .line 97
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Lio/bidmachine/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    .line 98
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object p1, p1, Lio/bidmachine/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 99
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flv/TagPayloadReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 102
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    return p3

    :cond_6f
    if-ne v0, p2, :cond_d1

    .line 104
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v0, :cond_d1

    .line 105
    iget v0, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v0, p2, :cond_7b

    move v6, p2

    goto :goto_7c

    :cond_7b
    move v6, p3

    .line 106
    :goto_7c
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    if-nez v0, :cond_83

    if-nez v6, :cond_83

    return p3

    .line 112
    :cond_83
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 113
    aput-byte p3, v0, p3

    .line 114
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 115
    aput-byte p3, v0, v1

    .line 116
    iget v0, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    move v7, p3

    .line 122
    :goto_96
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_c7

    .line 124
    iget-object v2, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget v3, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {p1, v2, v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 125
    iget-object v2, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 126
    iget-object v2, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 129
    iget-object v3, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 130
    iget-object v3, p0, Lio/bidmachine/media3/extractor/flv/TagPayloadReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v8, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v3, v8, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    add-int/lit8 v7, v7, 0x4

    .line 134
    iget-object v3, p0, Lio/bidmachine/media3/extractor/flv/TagPayloadReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v3, p1, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    add-int/2addr v7, v2

    goto :goto_96

    .line 137
    :cond_c7
    iget-object v3, p0, Lio/bidmachine/media3/extractor/flv/TagPayloadReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 139
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    return p2

    :cond_d1
    return p3
.end method
