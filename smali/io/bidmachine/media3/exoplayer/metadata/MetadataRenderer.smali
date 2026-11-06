###### Class io.bidmachine.media3.exoplayer.metadata.MetadataRenderer (io.bidmachine.media3.exoplayer.metadata.MetadataRenderer)
.class public final Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;
.super Lio/bidmachine/media3/exoplayer/BaseRenderer;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

.field public decoder:Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;

.field public final decoderFactory:Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;

.field public inputStreamEnded:Z

.field public final output:Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;

.field public final outputHandler:Landroid/os/Handler;

.field public final outputMetadataEarly:Z

.field public outputStreamEnded:Z

.field public outputStreamOffsetUs:J

.field public pendingMetadata:Lio/bidmachine/media3/common/Metadata;

.field public subsampleOffsetUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;)V
    .registers 4

    .line 80
    sget-object v0, Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;->DEFAULT:Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;-><init>(Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;)V
    .registers 5

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3, v0}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;-><init>(Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;Z)V
    .registers 6

    const/4 v0, 0x5

    .line 118
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 119
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->output:Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;

    if-nez p2, :cond_10

    const/4 p1, 0x0

    goto :goto_14

    .line 121
    :cond_10
    invoke-static {p2, p0}, Lio/bidmachine/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_14
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 122
    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 123
    iput-boolean p4, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputMetadataEarly:Z

    .line 124
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 125
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method


# virtual methods
.method public final decodeWrappedMetadata(Lio/bidmachine/media3/common/Metadata;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Metadata;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    :goto_1
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 181
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Lio/bidmachine/media3/common/Metadata$Entry;->getWrappedMetadataFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 182
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-interface {v2, v1}, Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;->supportsFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 183
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 184
    invoke-interface {v2, v1}, Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;->createDecoder(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;

    move-result-object v1

    .line 187
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v2

    invoke-interface {v2}, Lio/bidmachine/media3/common/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 188
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 189
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 190
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    iget-object v3, v3, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->flip()V

    .line 192
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    invoke-interface {v1, v2}, Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;->decode(Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 195
    invoke-virtual {p0, v1, p2}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->decodeWrappedMetadata(Lio/bidmachine/media3/common/Metadata;Ljava/util/List;)V

    goto :goto_5d

    .line 199
    :cond_56
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5d
    :goto_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_60
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 130
    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public final getPresentationTimeUs(J)J
    .registers 10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    move v2, v4

    goto :goto_e

    :cond_d
    move v2, v3

    .line 291
    :goto_e
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 292
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_18

    move v3, v4

    :cond_18
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 294
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 225
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/common/Metadata;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->invokeRendererInternal(Lio/bidmachine/media3/common/Metadata;)V

    return v1

    .line 229
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final invokeRenderer(Lio/bidmachine/media3/common/Metadata;)V
    .registers 4

    .line 278
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 279
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 281
    :cond_d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->invokeRendererInternal(Lio/bidmachine/media3/common/Metadata;)V

    return-void
.end method

.method public final invokeRendererInternal(Lio/bidmachine/media3/common/Metadata;)V
    .registers 3

    .line 286
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->output:Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;->onMetadata(Lio/bidmachine/media3/common/Metadata;)V

    return-void
.end method

.method public isEnded()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public onDisabled()V
    .registers 3

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Lio/bidmachine/media3/common/Metadata;

    .line 207
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->decoder:Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 208
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method

.method public onPositionReset(JZ)V
    .registers 4

    const/4 p1, 0x0

    .line 160
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Lio/bidmachine/media3/common/Metadata;

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 162
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    return-void
.end method

.method public onStreamChanged([Lio/bidmachine/media3/common/Format;JJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 9

    .line 149
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;->createDecoder(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->decoder:Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;

    .line 150
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Lio/bidmachine/media3/common/Metadata;

    if-eqz p1, :cond_1b

    .line 151
    iget-wide p2, p1, Lio/bidmachine/media3/common/Metadata;->presentationTimeUs:J

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    add-long/2addr p2, v0

    sub-long/2addr p2, p4

    .line 152
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/common/Metadata;->copyWithPresentationTimeUs(J)Lio/bidmachine/media3/common/Metadata;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Lio/bidmachine/media3/common/Metadata;

    .line 155
    :cond_1b
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method

.method public final outputMetadata(J)Z
    .registers 7

    .line 264
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Lio/bidmachine/media3/common/Metadata;

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputMetadataEarly:Z

    if-nez v2, :cond_13

    iget-wide v2, v0, Lio/bidmachine/media3/common/Metadata;->presentationTimeUs:J

    .line 266
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->getPresentationTimeUs(J)J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gtz p1, :cond_1d

    .line 267
    :cond_13
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Lio/bidmachine/media3/common/Metadata;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->invokeRenderer(Lio/bidmachine/media3/common/Metadata;)V

    const/4 p1, 0x0

    .line 268
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Lio/bidmachine/media3/common/Metadata;

    move p1, v1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 271
    :goto_1e
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-eqz p2, :cond_28

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Lio/bidmachine/media3/common/Metadata;

    if-nez p2, :cond_28

    .line 272
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    :cond_28
    return p1
.end method

.method public final readMetadata()V
    .registers 5

    .line 234
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_7d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Lio/bidmachine/media3/common/Metadata;

    if-nez v0, :cond_7d

    .line 235
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 236
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getFormatHolder()Lio/bidmachine/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->readSource(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_6e

    .line 239
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    return-void

    .line 241
    :cond_27
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    iget-wide v0, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7d

    .line 243
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->subsampleOffsetUs:J

    iput-wide v1, v0, Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 244
    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->flip()V

    .line 245
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->decoder:Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/extractor/metadata/MetadataDecoder;->decode(Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->decodeWrappedMetadata(Lio/bidmachine/media3/common/Metadata;Ljava/util/List;)V

    .line 249
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 250
    new-instance v0, Lio/bidmachine/media3/common/Metadata;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->buffer:Lio/bidmachine/media3/extractor/metadata/MetadataInputBuffer;

    iget-wide v2, v2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 251
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->getPresentationTimeUs(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Lio/bidmachine/media3/common/Metadata;-><init>(JLjava/util/List;)V

    .line 252
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Lio/bidmachine/media3/common/Metadata;

    return-void

    :cond_6e
    const/4 v2, -0x5

    if-ne v1, v2, :cond_7d

    .line 257
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Format;

    iget-wide v0, v0, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->subsampleOffsetUs:J

    :cond_7d
    return-void
.end method

.method public render(JJ)V
    .registers 5

    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_b

    .line 169
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->readMetadata()V

    .line 170
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->outputMetadata(J)Z

    move-result p3

    goto :goto_1

    :cond_b
    return-void
.end method

.method public supportsFormat(Lio/bidmachine/media3/common/Format;)I
    .registers 3

    .line 135
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/metadata/MetadataDecoderFactory;->supportsFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 137
    iget p1, p1, Lio/bidmachine/media3/common/Format;->cryptoType:I

    if-nez p1, :cond_e

    const/4 p1, 0x4

    goto :goto_f

    :cond_e
    const/4 p1, 0x2

    .line 136
    :goto_f
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_14
    const/4 p1, 0x0

    .line 139
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1
.end method
