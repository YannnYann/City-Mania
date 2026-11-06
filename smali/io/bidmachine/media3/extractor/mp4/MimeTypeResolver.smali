###### Class io.bidmachine.media3.extractor.mp4.MimeTypeResolver (io.bidmachine.media3.extractor.mp4.MimeTypeResolver)
.class public final Lio/bidmachine/media3/extractor/mp4/MimeTypeResolver;
.super Ljava/lang/Object;
.source "MimeTypeResolver.java"


# direct methods
.method public static getContainerMimeType(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 2

    .line 46
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 48
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    const-string p0, "video/mp4"

    return-object p0

    .line 52
    :cond_b
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 53
    const-string p0, "audio/mp4"

    return-object p0

    .line 56
    :cond_14
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 57
    const-string v0, "image/heic"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 58
    const-string p0, "image/heif"

    return-object p0

    .line 59
    :cond_25
    const-string v0, "image/avif"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    return-object v0

    .line 64
    :cond_2e
    const-string p0, "application/mp4"

    return-object p0
.end method

.method public static getContainerMimeType(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    .line 87
    iget-object v2, v2, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object v2, v2, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget-object v2, v2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 89
    invoke-static {v2}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 90
    const-string p0, "video/mp4"

    return-object p0

    .line 93
    :cond_21
    invoke-static {v2}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v0, 0x1

    goto :goto_6

    .line 95
    :cond_29
    invoke-static {v2}, Lio/bidmachine/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 96
    const-string v3, "image/heic"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 97
    const-string v1, "image/heif"

    goto :goto_6

    .line 98
    :cond_3a
    const-string v3, "image/avif"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v1, v3

    goto :goto_6

    :cond_44
    if-eqz v0, :cond_49

    .line 105
    const-string p0, "audio/mp4"

    return-object p0

    :cond_49
    if-eqz v1, :cond_4c

    return-object v1

    .line 110
    :cond_4c
    const-string p0, "application/mp4"

    return-object p0
.end method
