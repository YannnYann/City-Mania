###### Class io.bidmachine.media3.extractor.mp4.SmtaAtomUtil (io.bidmachine.media3.extractor.mp4.SmtaAtomUtil)
.class public final Lio/bidmachine/media3/extractor/mp4/SmtaAtomUtil;
.super Ljava/lang/Object;
.source "SmtaAtomUtil.java"


# direct methods
.method public static getCaptureFrameRate(ILio/bidmachine/media3/common/util/ParsableByteArray;I)I
    .registers 6

    const/16 v0, 0xc

    if-ne p0, v0, :cond_7

    const/16 p0, 0xf0

    return p0

    :cond_7
    const/16 v1, 0xd

    if-ne p0, v1, :cond_e

    const/16 p0, 0x78

    return p0

    :cond_e
    const/16 v1, 0x15

    const v2, -0x7fffffff

    if-eq p0, v1, :cond_16

    return v2

    .line 130
    :cond_16
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_3b

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    add-int/2addr p0, v1

    if-le p0, p2, :cond_26

    goto :goto_3b

    .line 134
    :cond_26
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 135
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p2

    if-lt p0, v0, :cond_3b

    const p0, 0x73726672

    if-eq p2, p0, :cond_36

    goto :goto_3b

    .line 140
    :cond_36
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result p0

    return p0

    :cond_3b
    :goto_3b
    return v2
.end method

.method public static parseSmta(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Lio/bidmachine/media3/common/Metadata;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc

    .line 74
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 75
    :goto_7
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, p1, :cond_5e

    .line 76
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 77
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 78
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0x73617574

    if-ne v5, v6, :cond_59

    const/16 v2, 0x10

    if-ge v4, v2, :cond_24

    return-object v3

    :cond_24
    const/4 v2, 0x4

    .line 84
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v2, -0x1

    move v4, v0

    move v5, v4

    :goto_2b
    const/4 v6, 0x2

    if-ge v4, v6, :cond_3f

    .line 91
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 92
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    if-nez v6, :cond_3a

    move v2, v7

    goto :goto_3d

    :cond_3a
    if-ne v6, v1, :cond_3d

    move v5, v7

    :cond_3d
    :goto_3d
    add-int/2addr v4, v1

    goto :goto_2b

    .line 100
    :cond_3f
    invoke-static {v2, p0, p1}, Lio/bidmachine/media3/extractor/mp4/SmtaAtomUtil;->getCaptureFrameRate(ILio/bidmachine/media3/common/util/ParsableByteArray;I)I

    move-result p0

    const p1, -0x7fffffff

    if-ne p0, p1, :cond_49

    return-object v3

    .line 105
    :cond_49
    new-instance p1, Lio/bidmachine/media3/common/Metadata;

    new-instance v2, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    int-to-float p0, p0

    invoke-direct {v2, p0, v5}, Lio/bidmachine/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    new-array p0, v1, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v2, p0, v0

    invoke-direct {p1, p0}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    return-object p1

    :cond_59
    add-int/2addr v2, v4

    .line 107
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_7

    :cond_5e
    return-object v3
.end method
