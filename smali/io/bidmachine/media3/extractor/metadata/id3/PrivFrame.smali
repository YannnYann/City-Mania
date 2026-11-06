###### Class io.bidmachine.media3.extractor.metadata.id3.PrivFrame (io.bidmachine.media3.extractor.metadata.id3.PrivFrame)
.class public final Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;
.super Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;
.source "PrivFrame.java"


# instance fields
.field public final owner:Ljava/lang/String;

.field public final privateData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    .line 33
    const-string v0, "PRIV"

    invoke-direct {p0, v0}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->privateData:[B

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

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;

    if-eq v3, v2, :cond_10

    goto :goto_27

    .line 46
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;

    .line 47
    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->privateData:[B

    iget-object p1, p1, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->privateData:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_27

    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 53
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 54
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->privateData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
