###### Class io.bidmachine.media3.container.ReorderingSeiMessageQueue (io.bidmachine.media3.container.ReorderingSeiMessageQueue)
.class public final Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;
.super Ljava/lang/Object;
.source "ReorderingSeiMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;,
        Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;
    }
.end annotation


# instance fields
.field public lastQueuedMessage:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

.field public final pendingSeiMessages:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;",
            ">;"
        }
    .end annotation
.end field

.field public reorderingQueueSize:I

.field public final seiConsumer:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

.field public final unusedParsableByteArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            ">;"
        }
    .end annotation
.end field

.field public final unusedSampleSeiMessages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->seiConsumer:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    .line 66
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    .line 67
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    .line 68
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    return-void
.end method


# virtual methods
.method public add(JLio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 8

    .line 119
    iget v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    if-eqz v0, :cond_62

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    .line 121
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v2, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    if-lt v0, v2, :cond_26

    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    .line 122
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    iget-wide v2, v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_26

    goto :goto_62

    .line 128
    :cond_26
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->copy(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/util/ParsableByteArray;

    move-result-object p3

    .line 129
    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    if-eqz v0, :cond_3a

    iget-wide v2, v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_3a

    .line 130
    iget-object p1, v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 134
    :cond_3a
    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-direct {v0}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;-><init>()V

    goto :goto_50

    :cond_48
    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    .line 135
    :goto_50
    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->init(JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 136
    iget-object p1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 137
    iput-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    .line 138
    iget p1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    if-eq p1, v1, :cond_61

    .line 139
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->flushQueueDownToSize(I)V

    :cond_61
    return-void

    .line 123
    :cond_62
    :goto_62
    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->seiConsumer:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;->consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 164
    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method public final copy(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/common/util/ParsableByteArray;
    .registers 7

    .line 149
    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    goto :goto_16

    .line 151
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 152
    :goto_16
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 154
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p1

    .line 156
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 158
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    .line 153
    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public flush()V
    .registers 2

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->flushQueueDownToSize(I)V

    return-void
.end method

.method public final flushQueueDownToSize(I)V
    .registers 8

    .line 176
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-le v0, p1, :cond_58

    .line 177
    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    const/4 v1, 0x0

    .line 178
    :goto_17
    iget-object v2, v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 179
    iget-object v2, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->seiConsumer:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    iget-wide v3, v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    iget-object v5, v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    .line 180
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 179
    invoke-interface {v2, v3, v4, v5}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;->consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 181
    iget-object v2, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    iget-object v3, v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 183
    :cond_3e
    iget-object v1, v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 184
    iget-object v1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    if-eqz v1, :cond_52

    iget-wide v1, v1, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    iget-wide v3, v0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_52

    const/4 v1, 0x0

    .line 186
    iput-object v1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    .line 188
    :cond_52
    iget-object v1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_58
    return-void
.end method

.method public getMaxSize()I
    .registers 2

    .line 101
    iget v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    return v0
.end method

.method public setMaxSize(I)V
    .registers 3

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 90
    :goto_5
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 91
    iput p1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    .line 92
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->flushQueueDownToSize(I)V

    return-void
.end method

###### Class io.bidmachine.media3.container.ReorderingSeiMessageQueue.SampleSeiMessages (io.bidmachine.media3.container.ReorderingSeiMessageQueue$SampleSeiMessages)
.class public final Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;
.super Ljava/lang/Object;
.source "ReorderingSeiMessageQueue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleSeiMessages"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;",
        ">;"
    }
.end annotation


# instance fields
.field public final nalBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            ">;"
        }
    .end annotation
.end field

.field public presentationTimeUs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 199
    iput-wide v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;)I
    .registers 6

    .line 212
    iget-wide v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    iget-wide v2, p1, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 193
    check-cast p1, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->compareTo(Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;)I

    move-result p1

    return p1
.end method

.method public init(JLio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 204
    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 206
    iput-wide p1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    .line 207
    iget-object p1, p0, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.bidmachine.media3.container.ReorderingSeiMessageQueue.SeiConsumer (io.bidmachine.media3.container.ReorderingSeiMessageQueue$SeiConsumer)
.class public interface abstract Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;
.super Ljava/lang/Object;
.source "ReorderingSeiMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SeiConsumer"
.end annotation


# virtual methods
.method public abstract consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V
.end method
