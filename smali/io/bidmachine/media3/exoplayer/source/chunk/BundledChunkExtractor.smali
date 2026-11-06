###### Class io.bidmachine.media3.exoplayer.source.chunk.BundledChunkExtractor (io.bidmachine.media3.exoplayer.source.chunk.BundledChunkExtractor)
.class public final Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorOutput;
.implements Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;,
        Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;
    }
.end annotation


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POSITION_HOLDER:Lio/bidmachine/media3/extractor/PositionHolder;


# instance fields
.field public final bindingTrackOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field public endTimeUs:J

.field public final extractor:Lio/bidmachine/media3/extractor/Extractor;

.field public extractorInitialized:Z

.field public final primaryTrackManifestFormat:Lio/bidmachine/media3/common/Format;

.field public final primaryTrackType:I

.field public sampleFormats:[Lio/bidmachine/media3/common/Format;

.field public seekMap:Lio/bidmachine/media3/extractor/SeekMap;

.field public trackOutputProvider:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 178
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->FACTORY:Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;

    .line 180
    new-instance v0, Lio/bidmachine/media3/extractor/PositionHolder;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/PositionHolder;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->POSITION_HOLDER:Lio/bidmachine/media3/extractor/PositionHolder;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/Extractor;ILio/bidmachine/media3/common/Format;)V
    .registers 4

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    .line 204
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->primaryTrackType:I

    .line 205
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->primaryTrackManifestFormat:Lio/bidmachine/media3/common/Format;

    .line 206
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public endTracks()V
    .registers 4

    .line 274
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lio/bidmachine/media3/common/Format;

    const/4 v1, 0x0

    .line 275
    :goto_9
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 276
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/Format;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 278
    :cond_26
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->sampleFormats:[Lio/bidmachine/media3/common/Format;

    return-void
.end method

.method public getChunkIndex()Lio/bidmachine/media3/extractor/ChunkIndex;
    .registers 3

    .line 214
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    instance-of v1, v0, Lio/bidmachine/media3/extractor/ChunkIndex;

    if-eqz v1, :cond_9

    check-cast v0, Lio/bidmachine/media3/extractor/ChunkIndex;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleFormats()[Lio/bidmachine/media3/common/Format;
    .registers 2

    .line 220
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->sampleFormats:[Lio/bidmachine/media3/common/Format;

    return-object v0
.end method

.method public init(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V
    .registers 11

    .line 226
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->trackOutputProvider:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    .line 227
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->endTimeUs:J

    .line 228
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractorInitialized:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_21

    .line 229
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/extractor/Extractor;->init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_1d

    .line 231
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {p1, v3, v4, p2, p3}, Lio/bidmachine/media3/extractor/Extractor;->seek(JJ)V

    :cond_1d
    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractorInitialized:Z

    return-void

    .line 235
    :cond_21
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    cmp-long v1, p2, v1

    if-nez v1, :cond_28

    move-wide p2, v3

    :cond_28
    invoke-interface {v0, v3, v4, p2, p3}, Lio/bidmachine/media3/extractor/Extractor;->seek(JJ)V

    const/4 p2, 0x0

    .line 236
    :goto_2c
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_42

    .line 237
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;

    invoke-virtual {p3, p1, p4, p5}, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->bind(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2c

    :cond_42
    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    sget-object v1, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->POSITION_HOLDER:Lio/bidmachine/media3/extractor/PositionHolder;

    invoke-interface {v0, p1, v1}, Lio/bidmachine/media3/extractor/Extractor;->read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    move v2, v0

    .line 250
    :goto_f
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    if-nez p1, :cond_15

    return v1

    :cond_15
    return v0
.end method

.method public release()V
    .registers 2

    .line 244
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Lio/bidmachine/media3/extractor/Extractor;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/Extractor;->release()V

    return-void
.end method

.method public seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    return-void
.end method

.method public track(II)Lio/bidmachine/media3/extractor/TrackOutput;
    .registers 6

    .line 258
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;

    if-nez v0, :cond_2d

    .line 261
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->sampleFormats:[Lio/bidmachine/media3/common/Format;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 263
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;

    .line 265
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->primaryTrackType:I

    if-ne p2, v1, :cond_1d

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->primaryTrackManifestFormat:Lio/bidmachine/media3/common/Format;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;-><init>(IILio/bidmachine/media3/common/Format;)V

    .line 266
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->trackOutputProvider:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->endTimeUs:J

    invoke-virtual {v0, p2, v1, v2}, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->bind(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;J)V

    .line 267
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2d
    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.source.chunk.BundledChunkExtractor.BindingTrackOutput (io.bidmachine.media3.exoplayer.source.chunk.BundledChunkExtractor$BindingTrackOutput)
.class public final Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BindingTrackOutput"
.end annotation


# instance fields
.field public endTimeUs:J

.field public final fakeTrackOutput:Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

.field public final id:I

.field public final manifestFormat:Lio/bidmachine/media3/common/Format;

.field public sampleFormat:Lio/bidmachine/media3/common/Format;

.field public trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final type:I


# direct methods
.method public constructor <init>(IILio/bidmachine/media3/common/Format;)V
    .registers 4

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->id:I

    .line 301
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->type:I

    .line 302
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->manifestFormat:Lio/bidmachine/media3/common/Format;

    .line 303
    new-instance p1, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    return-void
.end method


# virtual methods
.method public bind(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;J)V
    .registers 4

    if-nez p1, :cond_7

    .line 308
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    return-void

    .line 311
    :cond_7
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->endTimeUs:J

    .line 312
    iget p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->id:I

    iget p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->type:I

    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 313
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lio/bidmachine/media3/common/Format;

    if-eqz p2, :cond_1a

    .line 314
    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    :cond_1a
    return-void
.end method

.method public format(Lio/bidmachine/media3/common/Format;)V
    .registers 3

    .line 321
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->manifestFormat:Lio/bidmachine/media3/common/Format;

    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Format;->withManifestFormatInfo(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    :cond_8
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lio/bidmachine/media3/common/Format;

    .line 322
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lio/bidmachine/media3/common/Format;

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

.method public sampleData(Lio/bidmachine/media3/common/DataReader;IZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {p4}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {p4, p1, p2, p3}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V
    .registers 4

    .line 334
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {p3, p1, p2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    .registers 15

    .line 344
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->endTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_13

    cmp-long v0, p1, v0

    if-ltz v0, :cond_13

    .line 345
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 347
    :cond_13
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/bidmachine/media3/extractor/TrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.chunk.BundledChunkExtractor.Factory (io.bidmachine.media3.exoplayer.source.chunk.BundledChunkExtractor$Factory)
.class public final Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public codecsToParseWithinGopSampleDependencies:I

.field public parseSubtitlesDuringExtraction:Z

.field public subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    return-void
.end method


# virtual methods
.method public createProgressiveMediaExtractor(ILio/bidmachine/media3/common/Format;ZLjava/util/List;Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/Format;",
            "Z",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Lio/bidmachine/media3/extractor/TrackOutput;",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            ")",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;"
        }
    .end annotation

    .line 129
    iget-object p6, p2, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 131
    invoke-static {p6}, Lio/bidmachine/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 132
    iget-boolean p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->parseSubtitlesDuringExtraction:Z

    if-nez p3, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 136
    :cond_e
    new-instance p3, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;

    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 138
    invoke-interface {p4, p2}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->create(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/text/SubtitleParser;

    move-result-object p4

    invoke-direct {p3, p4, p2}, Lio/bidmachine/media3/extractor/text/SubtitleExtractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser;Lio/bidmachine/media3/common/Format;)V

    goto :goto_69

    .line 140
    :cond_1a
    invoke-static {p6}, Lio/bidmachine/media3/common/MimeTypes;->isMatroska(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2e

    .line 142
    iget-boolean p3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->parseSubtitlesDuringExtraction:Z

    if-nez p3, :cond_26

    const/4 v1, 0x3

    .line 145
    :cond_26
    new-instance p3, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p3, p4, v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V

    goto :goto_69

    .line 146
    :cond_2e
    const-string v0, "image/jpeg"

    invoke-static {p6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 147
    new-instance p3, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;

    invoke-direct {p3, v1}, Lio/bidmachine/media3/extractor/jpeg/JpegExtractor;-><init>(I)V

    goto :goto_69

    .line 148
    :cond_3c
    const-string v0, "image/png"

    invoke-static {p6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_4a

    .line 149
    new-instance p3, Lio/bidmachine/media3/extractor/png/PngExtractor;

    invoke-direct {p3}, Lio/bidmachine/media3/extractor/png/PngExtractor;-><init>()V

    goto :goto_69

    :cond_4a
    if-eqz p3, :cond_4e

    const/4 p3, 0x4

    goto :goto_4f

    :cond_4e
    const/4 p3, 0x0

    .line 155
    :goto_4f
    iget-boolean p6, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->parseSubtitlesDuringExtraction:Z

    if-nez p6, :cond_55

    or-int/lit8 p3, p3, 0x20

    .line 158
    :cond_55
    iget p6, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->codecsToParseWithinGopSampleDependencies:I

    .line 159
    invoke-static {p6}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->codecsToParseWithinGopSampleDependenciesAsFlags(I)I

    move-result p6

    or-int v2, p3, p6

    .line 161
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;ILio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/mp4/Track;Ljava/util/List;Lio/bidmachine/media3/extractor/TrackOutput;)V

    move-object p3, v0

    .line 170
    :goto_69
    new-instance p4, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;

    invoke-direct {p4, p3, p1, p2}, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor;-><init>(Lio/bidmachine/media3/extractor/Extractor;ILio/bidmachine/media3/common/Format;)V

    return-object p4
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;
    .registers 2

    .line 81
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->parseSubtitlesDuringExtraction:Z

    return-object p0
.end method

.method public bridge synthetic experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;
    .registers 2

    .line 89
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->codecsToParseWithinGopSampleDependencies:I

    return-object p0
.end method

.method public bridge synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;

    move-result-object p1

    return-object p1
.end method

.method public getOutputTextFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 6

    .line 104
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->parseSubtitlesDuringExtraction:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->supportsFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 106
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-media3-cues"

    .line 107
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 109
    invoke-interface {v1, p1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->getCueReplacementBehavior(Lio/bidmachine/media3/common/Format;)I

    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setCueReplacementBehavior(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    :cond_42
    const-string p1, ""

    :goto_44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    .line 113
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    :cond_5c
    return-object p1
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;
    .registers 2

    .line 73
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    return-object p0
.end method

.method public bridge synthetic setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;
    .registers 2

    .line 60
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;

    move-result-object p1

    return-object p1
.end method
