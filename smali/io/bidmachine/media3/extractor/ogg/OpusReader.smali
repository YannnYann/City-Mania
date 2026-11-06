###### Class io.bidmachine.media3.extractor.ogg.OpusReader (io.bidmachine.media3.extractor.ogg.OpusReader)
.class public final Lio/bidmachine/media3/extractor/ogg/OpusReader;
.super Lio/bidmachine/media3/extractor/ogg/StreamReader;
.source "OpusReader.java"


# static fields
.field public static final OPUS_COMMENT_HEADER_SIGNATURE:[B

.field public static final OPUS_ID_HEADER_SIGNATURE:[B


# instance fields
.field public firstCommentHeaderSeen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x8

    .line 36
    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lio/bidmachine/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    .line 37
    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lio/bidmachine/media3/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1a
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method public static peekPacketStartsWith(Lio/bidmachine/media3/common/util/ParsableByteArray;[B)Z
    .registers 6

    .line 133
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_9

    return v2

    .line 136
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 137
    array-length v1, p1

    new-array v1, v1, [B

    .line 138
    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 139
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 140
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static verifyBitstreamType(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 2

    .line 44
    sget-object v0, Lio/bidmachine/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {p0, v0}, Lio/bidmachine/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Lio/bidmachine/media3/common/util/ParsableByteArray;[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public preparePayload(Lio/bidmachine/media3/common/util/ParsableByteArray;)J
    .registers 4

    .line 57
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/extractor/OpusUtil;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readHeaders(Lio/bidmachine/media3/common/util/ParsableByteArray;JLio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 64
    sget-object p2, Lio/bidmachine/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Lio/bidmachine/media3/common/util/ParsableByteArray;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_49

    .line 65
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 66
    invoke-static {p1}, Lio/bidmachine/media3/extractor/OpusUtil;->getChannelCount([B)I

    move-result p2

    .line 67
    invoke-static {p1}, Lio/bidmachine/media3/extractor/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object p1

    .line 69
    iget-object v0, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    if-eqz v0, :cond_22

    return p3

    .line 78
    :cond_22
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "audio/ogg"

    .line 80
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "audio/opus"

    .line 81
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    const v0, 0xbb80

    .line 83
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 84
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    return p3

    .line 87
    :cond_49
    sget-object p2, Lio/bidmachine/media3/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Lio/bidmachine/media3/common/util/ParsableByteArray;[B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8c

    .line 90
    iget-object v0, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    if-eqz v0, :cond_5c

    return p3

    .line 99
    :cond_5c
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    .line 100
    array-length p2, p2

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 102
    invoke-static {p1, v1, v1}, Lio/bidmachine/media3/extractor/VorbisUtil;->readVorbisCommentHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;ZZ)Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object p1

    .line 105
    iget-object p1, p1, Lio/bidmachine/media3/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lio/bidmachine/media3/common/Metadata;

    move-result-object p1

    if-nez p1, :cond_73

    return p3

    .line 110
    :cond_73
    iget-object p2, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    .line 113
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    iget-object v0, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    .line 114
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntriesFrom(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Metadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    return p3

    .line 120
    :cond_8c
    iget-object p1, p4, Lio/bidmachine/media3/extractor/ogg/StreamReader$SetupData;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public reset(Z)V
    .registers 2

    .line 49
    invoke-super {p0, p1}, Lio/bidmachine/media3/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    :cond_8
    return-void
.end method
