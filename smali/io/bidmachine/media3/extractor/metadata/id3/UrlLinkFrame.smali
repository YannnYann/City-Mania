###### Class io.bidmachine.media3.extractor.metadata.id3.UrlLinkFrame (io.bidmachine.media3.extractor.metadata.id3.UrlLinkFrame)
.class public final Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;
.super Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;
.source "UrlLinkFrame.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 30
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;->description:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

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

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;

    if-eq v3, v2, :cond_10

    goto :goto_31

    .line 43
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;

    .line 44
    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;->description:Ljava/lang/String;

    .line 45
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    .line 46
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

    .line 52
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 53
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;->description:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 54
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_21
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
