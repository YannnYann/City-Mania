###### Class io.bidmachine.media3.extractor.metadata.id3.InternalFrame (io.bidmachine.media3.extractor.metadata.id3.InternalFrame)
.class public final Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;
.super Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;
.source "InternalFrame.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final domain:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 33
    const-string v0, "----"

    invoke-direct {p0, v0}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->text:Ljava/lang/String;

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

    if-eqz p1, :cond_31

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;

    if-eq v3, v2, :cond_10

    goto :goto_31

    .line 47
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;

    .line 48
    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    .line 49
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    .line 50
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 56
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 57
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 58
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_25
    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
