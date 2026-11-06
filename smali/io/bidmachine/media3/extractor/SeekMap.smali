###### Class io.bidmachine.media3.extractor.SeekMap (io.bidmachine.media3.extractor.SeekMap)
.class public interface abstract Lio/bidmachine/media3/extractor/SeekMap;
.super Ljava/lang/Object;
.source "SeekMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;,
        Lio/bidmachine/media3/extractor/SeekMap$Unseekable;
    }
.end annotation


# virtual methods
.method public abstract getDurationUs()J
.end method

.method public abstract getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
.end method

.method public abstract isSeekable()Z
.end method

###### Class io.bidmachine.media3.extractor.SeekMap.SeekPoints (io.bidmachine.media3.extractor.SeekMap$SeekPoints)
.class public final Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
.super Ljava/lang/Object;
.source "SeekMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPoints"
.end annotation


# instance fields
.field public final first:Lio/bidmachine/media3/extractor/SeekPoint;

.field public final second:Lio/bidmachine/media3/extractor/SeekPoint;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/SeekPoint;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1, p1}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/SeekPoint;Lio/bidmachine/media3/extractor/SeekPoint;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/SeekPoint;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    .line 92
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/SeekPoint;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->second:Lio/bidmachine/media3/extractor/SeekPoint;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    if-eq v3, v2, :cond_10

    goto :goto_27

    .line 108
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    .line 109
    iget-object v2, p0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/extractor/SeekPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->second:Lio/bidmachine/media3/extractor/SeekPoint;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->second:Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-virtual {v2, p1}, Lio/bidmachine/media3/extractor/SeekPoint;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 114
    iget-object v0, p0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/SeekPoint;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->second:Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/SeekPoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->second:Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/extractor/SeekPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, ""

    goto :goto_2f

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->second:Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.SeekMap.Unseekable (io.bidmachine.media3.extractor.SeekMap$Unseekable)
.class public Lio/bidmachine/media3/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unseekable"
.end annotation


# instance fields
.field public final durationUs:J

.field public final startSeekPoints:Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;


# direct methods
.method public constructor <init>(J)V
    .registers 5

    const-wide/16 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0, v1}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;->durationUs:J

    .line 50
    new-instance p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_10

    .line 51
    sget-object p2, Lio/bidmachine/media3/extractor/SeekPoint;->START:Lio/bidmachine/media3/extractor/SeekPoint;

    goto :goto_15

    :cond_10
    new-instance p2, Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-direct {p2, v0, v1, p3, p4}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    :goto_15
    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 61
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 3

    .line 66
    iget-object p1, p0, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;->startSeekPoints:Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    return-object p1
.end method

.method public isSeekable()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method
