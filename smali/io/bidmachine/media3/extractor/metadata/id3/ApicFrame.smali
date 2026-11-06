###### Class io.bidmachine.media3.extractor.metadata.id3.ApicFrame (io.bidmachine.media3.extractor.metadata.id3.ApicFrame)
.class public final Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;
.super Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;
.source "ApicFrame.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 6

    .line 37
    const-string v0, "APIC"

    invoke-direct {p0, v0}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 40
    iput p3, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->pictureType:I

    .line 41
    iput-object p4, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->pictureData:[B

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

    if-eqz p1, :cond_37

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;

    if-eq v3, v2, :cond_10

    goto :goto_37

    .line 57
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;

    .line 58
    iget v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->pictureType:I

    iget v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->pictureType:I

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 59
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 60
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->pictureData:[B

    iget-object p1, p1, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->pictureData:[B

    .line 61
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_37

    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x20f

    .line 67
    iget v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->pictureType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->pictureData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public populateMediaMetadata(Lio/bidmachine/media3/common/MediaMetadata$Builder;)V
    .registers 4

    .line 46
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->pictureData:[B

    iget v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->pictureType:I

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->maybeSetArtworkData([BI)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
