###### Class io.bidmachine.media3.extractor.IndexSeekMap (io.bidmachine.media3.extractor.IndexSeekMap)
.class public final Lio/bidmachine/media3/extractor/IndexSeekMap;
.super Ljava/lang/Object;
.source "IndexSeekMap.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/SeekMap;


# instance fields
.field public durationUs:J

.field public final positions:Lio/bidmachine/media3/common/util/LongArray;

.field public final timesUs:Lio/bidmachine/media3/common/util/LongArray;


# direct methods
.method public constructor <init>([J[JJ)V
    .registers 11

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    move v0, v3

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 47
    array-length v0, p2

    if-lez v0, :cond_30

    .line 48
    aget-wide v1, p2, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_30

    .line 50
    new-instance v1, Lio/bidmachine/media3/common/util/LongArray;

    add-int/2addr v0, v3

    invoke-direct {v1, v0}, Lio/bidmachine/media3/common/util/LongArray;-><init>(I)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->positions:Lio/bidmachine/media3/common/util/LongArray;

    .line 51
    new-instance v2, Lio/bidmachine/media3/common/util/LongArray;

    invoke-direct {v2, v0}, Lio/bidmachine/media3/common/util/LongArray;-><init>(I)V

    iput-object v2, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    .line 52
    invoke-virtual {v1, v4, v5}, Lio/bidmachine/media3/common/util/LongArray;->add(J)V

    .line 53
    invoke-virtual {v2, v4, v5}, Lio/bidmachine/media3/common/util/LongArray;->add(J)V

    goto :goto_3e

    .line 55
    :cond_30
    new-instance v1, Lio/bidmachine/media3/common/util/LongArray;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/common/util/LongArray;-><init>(I)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->positions:Lio/bidmachine/media3/common/util/LongArray;

    .line 56
    new-instance v1, Lio/bidmachine/media3/common/util/LongArray;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/common/util/LongArray;-><init>(I)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    .line 58
    :goto_3e
    iget-object v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->positions:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/LongArray;->addAll([J)V

    .line 59
    iget-object p1, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/LongArray;->addAll([J)V

    .line 60
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->durationUs:J

    return-void
.end method


# virtual methods
.method public addSeekPoint(JJ)V
    .registers 8

    .line 99
    iget-object v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result v0

    if-nez v0, :cond_18

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_18

    .line 101
    iget-object v2, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->positions:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/media3/common/util/LongArray;->add(J)V

    .line 102
    iget-object v2, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/media3/common/util/LongArray;->add(J)V

    .line 104
    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->positions:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v0, p3, p4}, Lio/bidmachine/media3/common/util/LongArray;->add(J)V

    .line 105
    iget-object p3, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {p3, p1, p2}, Lio/bidmachine/media3/common/util/LongArray;->add(J)V

    return-void
.end method

.method public getDurationUs()J
    .registers 3

    .line 70
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 10

    .line 75
    iget-object v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 76
    new-instance p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    sget-object p2, Lio/bidmachine/media3/extractor/SeekPoint;->START:Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p1

    .line 78
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    const/4 v1, 0x1

    .line 79
    invoke-static {v0, p1, p2, v1, v1}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor(Lio/bidmachine/media3/common/util/LongArray;JZZ)I

    move-result v0

    .line 80
    new-instance v2, Lio/bidmachine/media3/extractor/SeekPoint;

    iget-object v3, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v3, v0}, Lio/bidmachine/media3/common/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object v5, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->positions:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v5, v0}, Lio/bidmachine/media3/common/util/LongArray;->get(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 81
    iget-wide v3, v2, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    cmp-long p1, v3, p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_38

    goto :goto_50

    .line 84
    :cond_38
    new-instance p1, Lio/bidmachine/media3/extractor/SeekPoint;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    add-int/2addr v0, v1

    .line 85
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/LongArray;->get(I)J

    move-result-wide v3

    iget-object p2, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->positions:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-direct {p1, v3, v4, v0, v1}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 86
    new-instance p2, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p2, v2, p1}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p2

    .line 82
    :cond_50
    :goto_50
    new-instance p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, v2}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p1
.end method

.method public getTimeUs(J)J
    .registers 5

    .line 116
    iget-object v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result v0

    if-nez v0, :cond_e

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    .line 119
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->positions:Lio/bidmachine/media3/common/util/LongArray;

    const/4 v1, 0x1

    .line 120
    invoke-static {v0, p1, p2, v1, v1}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor(Lio/bidmachine/media3/common/util/LongArray;JZZ)I

    move-result p1

    .line 122
    iget-object p2, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/util/LongArray;->get(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public isSeekable()Z
    .registers 2

    .line 65
    iget-object v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeUsInIndex(JJ)Z
    .registers 11

    .line 137
    iget-object v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 140
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->timesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/LongArray;->get(I)J

    move-result-wide v4

    sub-long/2addr p1, v4

    cmp-long p1, p1, p3

    if-gez p1, :cond_1c

    return v3

    :cond_1c
    return v1
.end method

.method public setDurationUs(J)V
    .registers 3

    .line 145
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/IndexSeekMap;->durationUs:J

    return-void
.end method
