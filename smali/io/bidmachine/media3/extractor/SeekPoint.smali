###### Class io.bidmachine.media3.extractor.SeekPoint (io.bidmachine.media3.extractor.SeekPoint)
.class public final Lio/bidmachine/media3/extractor/SeekPoint;
.super Ljava/lang/Object;
.source "SeekPoint.java"


# static fields
.field public static final START:Lio/bidmachine/media3/extractor/SeekPoint;


# instance fields
.field public final position:J

.field public final timeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lio/bidmachine/media3/extractor/SeekPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    sput-object v0, Lio/bidmachine/media3/extractor/SeekPoint;->START:Lio/bidmachine/media3/extractor/SeekPoint;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    .line 40
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/SeekPoint;->position:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/SeekPoint;

    if-eq v3, v2, :cond_10

    goto :goto_23

    .line 56
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/SeekPoint;

    .line 57
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/SeekPoint;->position:J

    iget-wide v4, p1, Lio/bidmachine/media3/extractor/SeekPoint;->position:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 62
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/SeekPoint;->position:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/SeekPoint;->timeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/SeekPoint;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
