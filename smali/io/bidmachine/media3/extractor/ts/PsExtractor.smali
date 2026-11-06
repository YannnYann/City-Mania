###### Class io.bidmachine.media3.extractor.ts.PsExtractor (io.bidmachine.media3.extractor.ts.PsExtractor)
.class public final Lio/bidmachine/media3/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;


# instance fields
.field public final durationReader:Lio/bidmachine/media3/extractor/ts/PsDurationReader;

.field public foundAllTracks:Z

.field public foundAudioTrack:Z

.field public foundVideoTrack:Z

.field public hasOutputSeekMap:Z

.field public lastTrackPosition:J

.field public output:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public psBinarySearchSeeker:Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;

.field public final psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field public final timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;


# direct methods
.method public static synthetic $r8$lambda$1xjp3zh5f80u9V_EIPj3SIjafqw()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 44
    new-instance v0, Lio/bidmachine/media3/extractor/ts/PsExtractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ts/PsExtractor;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lio/bidmachine/media3/extractor/ts/PsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/ts/PsExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 80
    new-instance v0, Lio/bidmachine/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/common/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lio/bidmachine/media3/extractor/ts/PsExtractor;-><init>(Lio/bidmachine/media3/common/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/util/TimestampAdjuster;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    .line 85
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 86
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 87
    new-instance p1, Lio/bidmachine/media3/extractor/ts/PsDurationReader;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ts/PsDurationReader;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/PsDurationReader;

    return-void
.end method


# virtual methods
.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final maybeOutputSeekMap(J)V
    .registers 10

    .line 297
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_44

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    .line 299
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    .line 300
    new-instance v1, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/PsDurationReader;

    .line 302
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/PsDurationReader;->getScrTimestampAdjuster()Lio/bidmachine/media3/common/util/TimestampAdjuster;

    move-result-object v2

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/PsDurationReader;

    .line 303
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;-><init>(Lio/bidmachine/media3/common/util/TimestampAdjuster;JJ)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;

    .line 305
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->getSeekMap()Lio/bidmachine/media3/extractor/SeekMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void

    .line 307
    :cond_34
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    new-instance p2, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    :cond_44
    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1e

    .line 180
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v5}, Lio/bidmachine/media3/extractor/ts/PsDurationReader;->isDurationReadFinished()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 181
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->durationReader:Lio/bidmachine/media3/extractor/ts/PsDurationReader;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/ts/PsDurationReader;->readDuration(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 183
    :cond_1e
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/extractor/ts/PsExtractor;->maybeOutputSeekMap(J)V

    .line 184
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 185
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->handlePendingSeek(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 188
    :cond_32
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    if-eqz v4, :cond_3d

    .line 190
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_3e

    :cond_3d
    move-wide v0, v2

    :goto_3e
    cmp-long p2, v0, v2

    const/4 v2, -0x1

    if-eqz p2, :cond_4a

    const-wide/16 v3, 0x4

    cmp-long p2, v0, v3

    if-gez p2, :cond_4a

    return v2

    .line 195
    :cond_4a
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, p2, v1, v0, v3}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p2

    if-nez p2, :cond_5a

    return v2

    .line 199
    :cond_5a
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 200
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p2

    const/16 v0, 0x1b9

    if-ne p2, v0, :cond_6a

    return v2

    :cond_6a
    const/16 v0, 0x1ba

    if-ne p2, v0, :cond_8e

    .line 205
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v0, 0xa

    invoke-interface {p1, p2, v1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 208
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 211
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 214
    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    return v1

    :cond_8e
    const/16 v0, 0x1bb

    const/4 v2, 0x2

    const/4 v4, 0x6

    if-ne p2, v0, :cond_ad

    .line 218
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 221
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 222
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v4

    .line 223
    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    return v1

    :cond_ad
    and-int/lit16 v0, p2, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v3, :cond_b7

    .line 226
    invoke-interface {p1, v3}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    return v1

    :cond_b7
    and-int/lit16 v0, p2, 0xff

    .line 235
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;

    .line 236
    iget-boolean v6, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v6, :cond_13e

    if-nez v5, :cond_11e

    const/16 v6, 0xbd

    .line 239
    const-string v7, "video/mp2p"

    if-ne v0, v6, :cond_db

    .line 243
    new-instance p2, Lio/bidmachine/media3/extractor/ts/Ac3Reader;

    invoke-direct {p2, v7}, Lio/bidmachine/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    .line 244
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 245
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_104

    :cond_db
    and-int/lit16 v6, p2, 0xe0

    const/16 v8, 0xc0

    if-ne v6, v8, :cond_ef

    .line 247
    new-instance p2, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;

    invoke-direct {p2, v7}, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    .line 248
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 249
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_104

    :cond_ef
    and-int/lit16 p2, p2, 0xf0

    const/16 v6, 0xe0

    if-ne p2, v6, :cond_103

    .line 251
    new-instance p2, Lio/bidmachine/media3/extractor/ts/H262Reader;

    invoke-direct {p2, v7}, Lio/bidmachine/media3/extractor/ts/H262Reader;-><init>(Ljava/lang/String;)V

    .line 252
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->foundVideoTrack:Z

    .line 253
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_104

    :cond_103
    const/4 p2, 0x0

    :goto_104
    if-eqz p2, :cond_11e

    .line 256
    new-instance v5, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v6, 0x100

    invoke-direct {v5, v0, v6}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    .line 257
    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p2, v6, v5}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 258
    new-instance v5, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;

    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-direct {v5, p2, v6}, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;-><init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;Lio/bidmachine/media3/common/util/TimestampAdjuster;)V

    .line 259
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    :cond_11e
    iget-boolean p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz p2, :cond_12c

    iget-boolean p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz p2, :cond_12c

    .line 264
    iget-wide v6, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v8, 0x2000

    add-long/2addr v6, v8

    goto :goto_12f

    :cond_12c
    const-wide/32 v6, 0x100000

    .line 266
    :goto_12f
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_13e

    .line 267
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 268
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->output:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    .line 273
    :cond_13e
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 274
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 275
    iget-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v4

    if-nez v5, :cond_159

    .line 280
    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_17a

    .line 282
    :cond_159
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 284
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, p2}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 285
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 286
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, p1}, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 287
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPacketBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->capacity()I

    move-result p2

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    :goto_17a
    return v1
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 10

    .line 146
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_13

    move p1, v2

    goto :goto_14

    :cond_13
    move p1, p2

    :goto_14
    if-nez p1, :cond_2d

    .line 148
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2b

    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-eqz p1, :cond_2b

    cmp-long p1, v3, p3

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, p2

    :goto_2c
    move p1, v2

    :cond_2d
    if-eqz p1, :cond_34

    .line 158
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-virtual {p1, p3, p4}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->reset(J)V

    .line 161
    :cond_34
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lio/bidmachine/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_3b

    .line 162
    invoke-virtual {p1, p3, p4}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    .line 164
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge p2, p1, :cond_51

    .line 165
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->seek()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    :cond_51
    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 94
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 95
    invoke-interface {p1, v1, v2, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 98
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_2a

    return v2

    :cond_2a
    const/4 v0, 0x4

    .line 106
    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_34

    return v2

    :cond_34
    const/4 v7, 0x6

    .line 110
    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3b

    return v2

    .line 114
    :cond_3b
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_41

    return v2

    :cond_41
    const/16 v0, 0x9

    .line 118
    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_49

    return v2

    :cond_49
    const/16 v0, 0xc

    .line 122
    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_51

    return v2

    :cond_51
    const/16 v0, 0xd

    .line 126
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 127
    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 129
    invoke-interface {p1, v1, v2, v5}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 130
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_71

    return v3

    :cond_71
    return v2
.end method

###### Class io.bidmachine.media3.extractor.ts.PsExtractor.PesReader (io.bidmachine.media3.extractor.ts.PsExtractor$PesReader)
.class public final Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/ts/PsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PesReader"
.end annotation


# instance fields
.field public dtsFlag:Z

.field public extendedHeaderLength:I

.field public final pesPayloadReader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

.field public final pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

.field public ptsFlag:Z

.field public seenFirstDts:Z

.field public timeUs:J

.field public final timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;Lio/bidmachine/media3/common/util/TimestampAdjuster;)V
    .registers 3

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    .line 329
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    .line 330
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v0, v0, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 353
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 354
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->parseHeader()V

    .line 355
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v0, v0, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    invoke-virtual {p1, v0, v2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 356
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 357
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->parseHeaderExtension()V

    .line 358
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    const/4 v1, 0x4

    invoke-interface {v0, v3, v4, v1}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 359
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 361
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {p1, v2}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->packetFinished(Z)V

    return-void
.end method

.method public final parseHeader()V
    .registers 4

    .line 369
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 370
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    .line 371
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    .line 374
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 375
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    return-void
.end method

.method public final parseHeaderExtension()V
    .registers 11

    const-wide/16 v0, 0x0

    .line 379
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    .line 380
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v0, :cond_81

    .line 381
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 382
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 383
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 384
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 385
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 386
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 387
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 388
    iget-boolean v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    if-nez v5, :cond_79

    iget-boolean v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v5, :cond_79

    .line 389
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 390
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 391
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 392
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 393
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 394
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 395
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 401
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 402
    iput-boolean v6, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 404
    :cond_79
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    :cond_81
    return-void
.end method

.method public seek()V
    .registers 2

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    .line 342
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.ts.PsExtractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.ts.PsExtractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/ts/PsExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/ts/PsExtractor;->$r8$lambda$1xjp3zh5f80u9V_EIPj3SIjafqw()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
