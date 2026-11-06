###### Class io.bidmachine.media3.container.Mp4AlternateGroupData (io.bidmachine.media3.container.Mp4AlternateGroupData)
.class public final Lio/bidmachine/media3/container/Mp4AlternateGroupData;
.super Ljava/lang/Object;
.source "Mp4AlternateGroupData.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# instance fields
.field public final alternateGroup:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lio/bidmachine/media3/container/Mp4AlternateGroupData;->alternateGroup:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 37
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/container/Mp4AlternateGroupData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 41
    :cond_a
    check-cast p1, Lio/bidmachine/media3/container/Mp4AlternateGroupData;

    .line 42
    iget v1, p0, Lio/bidmachine/media3/container/Mp4AlternateGroupData;->alternateGroup:I

    iget p1, p1, Lio/bidmachine/media3/container/Mp4AlternateGroupData;->alternateGroup:I

    if-ne v1, p1, :cond_13

    return v0

    :cond_13
    return v2
.end method

.method public hashCode()I
    .registers 2

    .line 47
    iget v0, p0, Lio/bidmachine/media3/container/Mp4AlternateGroupData;->alternateGroup:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mp4AlternateGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/container/Mp4AlternateGroupData;->alternateGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
