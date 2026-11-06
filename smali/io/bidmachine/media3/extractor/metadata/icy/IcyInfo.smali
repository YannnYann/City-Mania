###### Class io.bidmachine.media3.extractor.metadata.icy.IcyInfo (io.bidmachine.media3.extractor.metadata.icy.IcyInfo)
.class public final Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;
.super Ljava/lang/Object;
.source "IcyInfo.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# instance fields
.field public final rawMetadata:[B

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    .line 47
    iput-object p2, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;

    if-eq v1, v0, :cond_f

    goto :goto_1a

    .line 66
    :cond_f
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;

    .line 68
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    iget-object p1, p1, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 74
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public populateMediaMetadata(Lio/bidmachine/media3/common/MediaMetadata$Builder;)V
    .registers 3

    .line 53
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 54
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 79
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    array-length v2, v2

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 79
    const-string v1, "ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\""

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
