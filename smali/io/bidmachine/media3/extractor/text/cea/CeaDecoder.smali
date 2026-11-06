###### Class io.bidmachine.media3.extractor.text.cea.CeaDecoder (io.bidmachine.media3.extractor.text.cea.CeaDecoder)
.class public abstract Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;,
        Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;
    }
.end annotation


# instance fields
.field public final availableInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final availableOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public dequeuedInputBuffer:Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

.field public outputStartTimeUs:J

.field public playbackPositionUs:J

.field public queuedInputBufferCount:J

.field public final queuedInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1e

    .line 49
    iget-object v2, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    new-instance v3, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;-><init>(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 51
    :cond_1e
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    :goto_25
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3a

    .line 53
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    new-instance v2, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;

    new-instance v3, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;)V

    invoke-direct {v2, v3}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;-><init>(Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 55
    :cond_3a
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->outputStartTimeUs:J

    return-void
.end method


# virtual methods
.method public abstract createSubtitle()Lio/bidmachine/media3/extractor/text/Subtitle;
.end method

.method public abstract decode(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;)V
.end method

.method public dequeueInputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 76
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_14
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    return-object v0
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeueInputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dequeueOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 108
    :cond_a
    :goto_a
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    iget-wide v2, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_80

    .line 110
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 112
    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 114
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    const/4 v2, 0x4

    .line 115
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/decoder/Buffer;->addFlag(I)V

    .line 116
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    return-object v1

    .line 120
    :cond_52
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->decode(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;)V

    .line 122
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->isNewSubtitleDataAvailable()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 123
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->createSubtitle()Lio/bidmachine/media3/extractor/text/Subtitle;

    move-result-object v6

    .line 125
    iget-object v1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    .line 126
    iget-wide v4, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->setContent(JLio/bidmachine/media3/extractor/text/Subtitle;J)V

    .line 127
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    return-object v3

    .line 131
    :cond_7c
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_a

    :cond_80
    return-object v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeueOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 148
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    .line 149
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    .line 150
    :goto_6
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 151
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_6

    .line 153
    :cond_20
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    if-eqz v0, :cond_2a

    .line 154
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    :cond_2a
    return-void
.end method

.method public final getAvailableOutputBuffer()Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;
    .registers 2

    .line 178
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;

    return-object v0
.end method

.method public final getPositionUs()J
    .registers 3

    .line 182
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    return-wide v0
.end method

.method public abstract isNewSubtitleDataAvailable()Z
.end method

.method public queueInputBuffer(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 86
    check-cast p1, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 87
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-wide v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2d

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->outputStartTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2d

    cmp-long v0, v0, v2

    if-gez v0, :cond_2d

    .line 92
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_3c

    .line 94
    :cond_2d
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->access$102(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;J)J

    .line 95
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_3c
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 31
    check-cast p1, Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->queueInputBuffer(Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public final releaseInputBuffer(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V
    .registers 3

    .line 137
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 138
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseOutputBuffer(Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;)V
    .registers 3

    .line 142
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;->clear()V

    .line 143
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setOutputStartTimeUs(J)V
    .registers 3

    .line 64
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->outputStartTimeUs:J

    return-void
.end method

.method public setPositionUs(J)V
    .registers 3

    .line 69
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.cea.CeaDecoder.AnonymousClass1 (io.bidmachine.media3.extractor.text.cea.CeaDecoder$1)
.class public synthetic Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$1;
.super Ljava/lang/Object;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.text.cea.CeaDecoder.CeaInputBuffer (io.bidmachine.media3.extractor.text.cea.CeaDecoder$CeaInputBuffer)
.class public final Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;
.super Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;
.source "CeaDecoder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CeaInputBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public queuedInputBufferCount:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 185
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/SubtitleInputBuffer;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$1;)V
    .registers 2

    .line 185
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;J)J
    .registers 3

    .line 185
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    return-wide p1
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)I
    .registers 10

    .line 192
    invoke-virtual {p0}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v0

    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_14

    .line 193
    invoke-virtual {p0}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_13

    return v3

    :cond_13
    return v2

    .line 195
    :cond_14
    iget-wide v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2a

    .line 197
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    iget-wide v6, p1, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    sub-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-nez p1, :cond_2a

    const/4 p1, 0x0

    return p1

    :cond_2a
    cmp-long p1, v0, v4

    if-lez p1, :cond_2f

    return v3

    :cond_2f
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 185
    check-cast p1, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->compareTo(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.extractor.text.cea.CeaDecoder.CeaOutputBuffer (io.bidmachine.media3.extractor.text.cea.CeaDecoder$CeaOutputBuffer)
.class public final Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;
.super Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CeaOutputBuffer"
.end annotation


# instance fields
.field public owner:Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner<",
            "Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner<",
            "Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;-><init>()V

    .line 211
    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;->owner:Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 2

    .line 216
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;->owner:Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;->releaseOutputBuffer(Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.text.cea.CeaDecoder$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.text.cea.CeaDecoder$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/decoder/DecoderOutputBuffer$Owner;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lio/bidmachine/media3/decoder/DecoderOutputBuffer;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;

    check-cast p1, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/text/cea/CeaDecoder;->releaseOutputBuffer(Lio/bidmachine/media3/extractor/text/SubtitleOutputBuffer;)V

    return-void
.end method
