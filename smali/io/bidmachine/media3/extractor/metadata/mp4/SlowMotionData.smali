###### Class io.bidmachine.media3.extractor.metadata.mp4.SlowMotionData (io.bidmachine.media3.extractor.metadata.mp4.SlowMotionData)
.class public final Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData;
.super Ljava/lang/Object;
.source "SlowMotionData.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;
    }
.end annotation


# instance fields
.field public final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    .line 109
    invoke-static {p1}, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData;->doSegmentsOverlap(Ljava/util/List;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    return-void
.end method

.method public static doSegmentsOverlap(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;)Z"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 138
    :cond_8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    iget-wide v2, v0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    const/4 v0, 0x1

    move v4, v0

    .line 139
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_30

    .line 140
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    iget-wide v5, v5, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_25

    return v0

    .line 143
    :cond_25
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    iget-wide v2, v2, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_30
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData;

    if-eq v1, v0, :cond_f

    goto :goto_1a

    .line 125
    :cond_f
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData;

    .line 126
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 131
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SlowMotion: segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData;->segments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.metadata.mp4.SlowMotionData.Segment (io.bidmachine.media3.extractor.metadata.mp4.SlowMotionData$Segment)
.class public final Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;
.super Ljava/lang/Object;
.source "SlowMotionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# static fields
.field public static final BY_START_THEN_END_THEN_DIVISOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final endTimeMs:J

.field public final speedDivisor:I

.field public final startTimeMs:J


# direct methods
.method public static synthetic $r8$lambda$M050usfykiMdE3YpX34eXwwKku4(Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;)I
    .registers 7

    .line 38
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    iget-wide v3, p1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    .line 39
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(JJ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    iget-wide v3, p1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    .line 40
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(JJ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget p0, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    iget p1, p1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    .line 41
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->BY_START_THEN_END_THEN_DIVISOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(JJI)V
    .registers 7

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmp-long v0, p1, p3

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 66
    :goto_a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 67
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    .line 68
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    .line 69
    iput p5, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

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

    if-eqz p1, :cond_29

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    if-eq v3, v2, :cond_10

    goto :goto_29

    .line 87
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    .line 88
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    iget-wide v4, p1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_29

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    iget-wide v4, p1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_29

    iget v2, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    iget p1, p1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    if-ne v2, p1, :cond_29

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 95
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 74
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->startTimeMs:J

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->endTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->speedDivisor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 74
    const-string v1, "Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.metadata.mp4.SlowMotionData$Segment$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.metadata.mp4.SlowMotionData$Segment$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    check-cast p2, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;->$r8$lambda$M050usfykiMdE3YpX34eXwwKku4(Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;Lio/bidmachine/media3/extractor/metadata/mp4/SlowMotionData$Segment;)I

    move-result p1

    return p1
.end method
