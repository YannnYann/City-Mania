###### Class io.bidmachine.media3.extractor.ogg.FlacReader (io.bidmachine.media3.extractor.ogg.FlacReader)
.class public final Lio/bidmachine/media3/extractor/ogg/FlacReader;
.super Lio/bidmachine/media3/extractor/ogg/StreamReader;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;
    }
.end annotation


# instance fields
.field public flacOggSeeker:Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;

.field public streamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method public static isAudioPacket([B)Z
    .registers 3

    const/4 v0, 0x0

    .line 64
    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    return v0
.end method

.method public static verifyBitstreamType(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 5

    .line 48
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1c

    .line 49
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1c

    .line 51
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getFlacFrameBlockSize(Lio/bidmachine/media3/common/util/ParsableByteArray;)I
    .registers 5

    .line 110
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_11

    const/4 v2, 0x7

    if-ne v0, v2, :cond_17

    .line 113
    :cond_11
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 114
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUtf8EncodedLong()J

    .line 116
    :cond_17
    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/FlacFrameReader;->readFrameBlockSizeSamplesFromKey(Lio/bidmachine/media3/common/util/ParsableByteArray;I)I

    move-result v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v0
.end method

.method public preparePayload(Lio/bidmachine/media3/common/util/ParsableByteArray;)J
    .registers 4

    .line 69
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, -0x1

    return-wide v0

    .line 72
    :cond_d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ogg/FlacReader;->getFlacFrameBlockSize(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public readHeaders(Lio/bidmachine/media3/common/util/ParsableByteArray;JLio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;)Z
    .registers 11

    .line 78
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 79
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader;->streamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    const/4 v2, 0x1

    if-nez v1, :cond_32

    .line 81
    new-instance p2, Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;-><init>([BI)V

    .line 82
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader;->streamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    const/16 p3, 0x9

    .line 83
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p3, 0x0

    .line 84
    invoke-virtual {p2, p1, p3}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->getFormat([BLio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    const-string p2, "audio/ogg"

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    return v2

    :cond_32
    const/4 v3, 0x0

    .line 89
    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4c

    .line 90
    invoke-static {p1}, Lio/bidmachine/media3/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;

    move-result-object p1

    .line 91
    invoke-virtual {v1, p1}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->copyWithSeekTable(Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;)Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    move-result-object p2

    .line 92
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader;->streamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    .line 93
    new-instance p3, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    invoke-direct {p3, p2, p1}, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;-><init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;)V

    iput-object p3, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader;->flacOggSeeker:Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    return v2

    .line 97
    :cond_4c
    invoke-static {v0}, Lio/bidmachine/media3/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 98
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader;->flacOggSeeker:Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    if-eqz p1, :cond_5d

    .line 99
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->setFirstFrameOffset(J)V

    .line 100
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader;->flacOggSeeker:Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    iput-object p1, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lio/bidmachine/media3/extractor/ogg/OggSeeker;

    .line 102
    :cond_5d
    iget-object p1, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_63
    return v2
.end method

.method public reset(Z)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader;->streamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    .line 59
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader;->flacOggSeeker:Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    :cond_a
    return-void
.end method

###### Class io.bidmachine.media3.extractor.ogg.FlacReader.FlacOggSeeker (io.bidmachine.media3.extractor.ogg.FlacReader$FlacOggSeeker)
.class public final Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacOggSeeker"
.end annotation


# instance fields
.field public firstFrameOffset:J

.field public pendingSeekGranule:J

.field public seekTable:Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;

.field public streamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;)V
    .registers 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->streamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    .line 130
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->seekTable:Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;

    const-wide/16 p1, -0x1

    .line 131
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 132
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method


# virtual methods
.method public createSeekMap()Lio/bidmachine/media3/extractor/SeekMap;
    .registers 5

    .line 160
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 161
    new-instance v0, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->streamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;-><init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;J)V

    return-object v0
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;)J
    .registers 8

    .line 141
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_11

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 143
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-wide v0

    :cond_11
    return-wide v2
.end method

.method public setFirstFrameOffset(J)V
    .registers 3

    .line 136
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    return-void
.end method

.method public startSeek(J)V
    .registers 5

    .line 151
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->seekTable:Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;->pointSampleNumbers:[J

    const/4 v1, 0x1

    .line 153
    invoke-static {v0, p1, p2, v1, v1}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    .line 155
    aget-wide p1, v0, p1

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ogg/FlacReader$FlacOggSeeker;->pendingSeekGranule:J

    return-void
.end method
