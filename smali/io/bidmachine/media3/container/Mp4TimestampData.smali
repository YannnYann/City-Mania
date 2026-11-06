###### Class io.bidmachine.media3.container.Mp4TimestampData (io.bidmachine.media3.container.Mp4TimestampData)
.class public final Lio/bidmachine/media3/container/Mp4TimestampData;
.super Ljava/lang/Object;
.source "Mp4TimestampData.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# instance fields
.field public final creationTimestampSeconds:J

.field public final modificationTimestampSeconds:J

.field public final timescale:J


# direct methods
.method public constructor <init>(JJJ)V
    .registers 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    .line 73
    iput-wide p3, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    .line 74
    iput-wide p5, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->timescale:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 90
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/container/Mp4TimestampData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 94
    :cond_a
    check-cast p1, Lio/bidmachine/media3/container/Mp4TimestampData;

    .line 96
    iget-wide v3, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    iget-wide v5, p1, Lio/bidmachine/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_25

    iget-wide v3, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    iget-wide v5, p1, Lio/bidmachine/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_25

    iget-wide v3, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->timescale:J

    iget-wide v5, p1, Lio/bidmachine/media3/container/Mp4TimestampData;->timescale:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_25

    return v0

    :cond_25
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 104
    iget-wide v0, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 105
    iget-wide v2, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 106
    iget-wide v2, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->timescale:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mp4Timestamp: creation time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", modification time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timescale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/container/Mp4TimestampData;->timescale:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
