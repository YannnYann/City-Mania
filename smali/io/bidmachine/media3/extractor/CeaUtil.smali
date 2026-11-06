###### Class io.bidmachine.media3.extractor.CeaUtil (io.bidmachine.media3.extractor.CeaUtil)
.class public final Lio/bidmachine/media3/extractor/CeaUtil;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# direct methods
.method public static consume(JLio/bidmachine/media3/common/util/ParsableByteArray;[Lio/bidmachine/media3/extractor/TrackOutput;)V
    .registers 14

    .line 49
    :goto_0
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_70

    .line 50
    invoke-static {p2}, Lio/bidmachine/media3/extractor/CeaUtil;->readNon255TerminatedValue(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    move-result v0

    .line 51
    invoke-static {p2}, Lio/bidmachine/media3/extractor/CeaUtil;->readNon255TerminatedValue(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    move-result v2

    .line 52
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_61

    .line 54
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v2, v4, :cond_1e

    goto :goto_61

    :cond_1e
    const/4 v4, 0x4

    if-ne v0, v4, :cond_6c

    const/16 v0, 0x8

    if-lt v2, v0, :cond_6c

    .line 59
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 60
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    const/16 v4, 0x31

    const/4 v5, 0x0

    if-ne v2, v4, :cond_37

    .line 63
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    goto :goto_38

    :cond_37
    move v6, v5

    .line 65
    :goto_38
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    const/16 v8, 0x2f

    if-ne v2, v8, :cond_43

    .line 67
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_43
    const/16 v9, 0xb5

    if-ne v0, v9, :cond_50

    if-eq v2, v4, :cond_4b

    if-ne v2, v8, :cond_50

    :cond_4b
    const/4 v0, 0x3

    if-ne v7, v0, :cond_50

    move v0, v1

    goto :goto_51

    :cond_50
    move v0, v5

    :goto_51
    if-ne v2, v4, :cond_5b

    const v2, 0x47413934

    if-ne v6, v2, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v5

    :goto_5a
    and-int/2addr v0, v1

    :cond_5b
    if-eqz v0, :cond_6c

    .line 77
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/CeaUtil;->consumeCcData(JLio/bidmachine/media3/common/util/ParsableByteArray;[Lio/bidmachine/media3/extractor/TrackOutput;)V

    goto :goto_6c

    .line 56
    :cond_61
    :goto_61
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v3

    .line 80
    :cond_6c
    :goto_6c
    invoke-virtual {p2, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_70
    return-void
.end method

.method public static consumeCcData(JLio/bidmachine/media3/common/util/ParsableByteArray;[Lio/bidmachine/media3/extractor/TrackOutput;)V
    .registers 16

    .line 94
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3a

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    .line 101
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v6, v0, 0x3

    .line 105
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 106
    array-length v9, p3

    const/4 v10, 0x0

    move v11, v10

    :goto_17
    if-ge v11, v9, :cond_3a

    aget-object v2, p3, v11

    .line 107
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 108
    invoke-interface {v2, p2, v6}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p0, v3

    if-eqz v3, :cond_2c

    move v3, v1

    goto :goto_2d

    :cond_2c
    move v3, v10

    .line 109
    :goto_2d
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-wide v3, p0

    .line 110
    invoke-interface/range {v2 .. v8}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_3a
    return-void
.end method

.method public static readNon255TerminatedValue(Lio/bidmachine/media3/common/util/ParsableByteArray;)I
    .registers 4

    const/4 v0, 0x0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_9

    const/4 p0, -0x1

    return p0

    .line 134
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    return v0
.end method
