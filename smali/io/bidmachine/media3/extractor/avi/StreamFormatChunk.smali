###### Class io.bidmachine.media3.extractor.avi.StreamFormatChunk (io.bidmachine.media3.extractor.avi.StreamFormatChunk)
.class public final Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;
.super Ljava/lang/Object;
.source "StreamFormatChunk.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/avi/AviChunk;


# instance fields
.field public final format:Lio/bidmachine/media3/common/Format;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Format;)V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;->format:Lio/bidmachine/media3/common/Format;

    return-void
.end method

.method public static getMimeTypeFromCompression(I)Ljava/lang/String;
    .registers 1

    sparse-switch p0, :sswitch_data_14

    const/4 p0, 0x0

    return-object p0

    .line 144
    :sswitch_5
    const-string p0, "video/mjpeg"

    return-object p0

    .line 129
    :sswitch_8
    const-string p0, "video/mp43"

    return-object p0

    .line 127
    :sswitch_b
    const-string p0, "video/mp42"

    return-object p0

    .line 133
    :sswitch_e
    const-string p0, "video/avc"

    return-object p0

    .line 141
    :sswitch_11
    const-string p0, "video/mp4v-es"

    return-object p0

    :sswitch_data_14
    .sparse-switch
        0x30355844 -> :sswitch_11
        0x31435641 -> :sswitch_e
        0x31637661 -> :sswitch_e
        0x3234504d -> :sswitch_b
        0x3334504d -> :sswitch_8
        0x34363248 -> :sswitch_e
        0x34504d46 -> :sswitch_11
        0x44495633 -> :sswitch_11
        0x44495658 -> :sswitch_11
        0x47504a4d -> :sswitch_5
        0x58564944 -> :sswitch_11
        0x64697678 -> :sswitch_11
        0x67706a6d -> :sswitch_5
        0x78766964 -> :sswitch_11
    .end sparse-switch
.end method

.method public static getMimeTypeFromTag(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1e

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2001

    if-eq p0, v0, :cond_15

    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_15
    const-string p0, "audio/vnd.dts"

    return-object p0

    .line 115
    :cond_18
    const-string p0, "audio/ac3"

    return-object p0

    .line 113
    :cond_1b
    const-string p0, "audio/mp4a-latm"

    return-object p0

    .line 111
    :cond_1e
    const-string p0, "audio/mpeg"

    return-object p0

    .line 109
    :cond_21
    const-string p0, "audio/raw"

    return-object p0
.end method

.method public static parseBitmapInfoHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/AviChunk;
    .registers 4

    const/4 v0, 0x4

    .line 58
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 59
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 60
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 61
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 62
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p0

    .line 63
    invoke-static {p0}, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;->getMimeTypeFromCompression(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring track with unsupported compression "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StreamFormatChunk"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_31
    new-instance p0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 69
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    .line 70
    new-instance v0, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;

    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;-><init>(Lio/bidmachine/media3/common/Format;)V

    return-object v0
.end method

.method public static parseFrom(ILio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/AviChunk;
    .registers 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 34
    invoke-static {p1}, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;->parseBitmapInfoHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/AviChunk;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    .line 36
    invoke-static {p1}, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;->parseWaveFormatEx(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/AviChunk;

    move-result-object p0

    return-object p0

    .line 38
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring strf box for unsupported track type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 38
    const-string p1, "StreamFormatChunk"

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseWaveFormatEx(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/AviChunk;
    .registers 9

    .line 77
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 78
    invoke-static {v0}, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;->getMimeTypeFromTag(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring track with unsupported format tag "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StreamFormatChunk"

    invoke-static {v0, p0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_22
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    .line 84
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    const/4 v3, 0x6

    .line 85
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 86
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v3

    .line 87
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v3

    .line 88
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_42

    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v4

    goto :goto_43

    :cond_42
    move v4, v5

    .line 89
    :goto_43
    new-instance v6, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v6}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 91
    invoke-virtual {v6, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    .line 92
    invoke-virtual {v7, v0}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 94
    const-string v0, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    if-eqz v3, :cond_60

    .line 95
    invoke-virtual {v6, v3}, Lio/bidmachine/media3/common/Format$Builder;->setPcmEncoding(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 97
    :cond_60
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    if-lez v4, :cond_76

    .line 98
    new-array v0, v4, [B

    .line 99
    invoke-virtual {p0, v0, v5, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 100
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {v6, p0}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    .line 102
    :cond_76
    new-instance p0, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;-><init>(Lio/bidmachine/media3/common/Format;)V

    return-object p0
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 0
    const v0, 0x66727473

    return v0
.end method
