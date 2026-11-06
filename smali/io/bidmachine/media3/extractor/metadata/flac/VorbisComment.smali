###### Class io.bidmachine.media3.extractor.metadata.flac.VorbisComment (io.bidmachine.media3.extractor.metadata.flac.VorbisComment)
.class public Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;
.super Ljava/lang/Object;
.source "VorbisComment.java"

# interfaces
.implements Lio/bidmachine/media3/common/Metadata$Entry;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

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

    if-eqz p1, :cond_29

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 117
    :cond_12
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;

    .line 118
    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 124
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 125
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public populateMediaMetadata(Lio/bidmachine/media3/common/MediaMetadata$Builder;)V
    .registers 5

    .line 56
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_da

    goto/16 :goto_82

    :sswitch_f
    const-string v2, "ARTIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_82

    :cond_19
    const/16 v1, 0x9

    goto/16 :goto_82

    :sswitch_1d
    const-string v2, "ALBUMARTIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_82

    :cond_27
    const/16 v1, 0x8

    goto/16 :goto_82

    :sswitch_2b
    const-string v2, "DISCNUMBER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_82

    :cond_34
    const/4 v1, 0x7

    goto :goto_82

    :sswitch_36
    const-string v2, "DESCRIPTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_82

    :cond_3f
    const/4 v1, 0x6

    goto :goto_82

    :sswitch_41
    const-string v2, "TITLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_82

    :cond_4a
    const/4 v1, 0x5

    goto :goto_82

    :sswitch_4c
    const-string v2, "GENRE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_82

    :cond_55
    const/4 v1, 0x4

    goto :goto_82

    :sswitch_57
    const-string v2, "ALBUM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_82

    :cond_60
    const/4 v1, 0x3

    goto :goto_82

    :sswitch_62
    const-string v2, "TRACKNUMBER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_82

    :cond_6b
    const/4 v1, 0x2

    goto :goto_82

    :sswitch_6d
    const-string v2, "TOTALDISCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_82

    :cond_76
    const/4 v1, 0x1

    goto :goto_82

    :sswitch_78
    const-string v2, "TOTALTRACKS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto :goto_82

    :cond_81
    const/4 v1, 0x0

    :goto_82
    packed-switch v1, :pswitch_data_104

    goto :goto_d9

    .line 61
    :pswitch_86
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 67
    :pswitch_8c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 82
    :pswitch_92
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d9

    .line 84
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setDiscNumber(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 97
    :pswitch_9e
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setDescription(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 58
    :pswitch_a4
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 94
    :pswitch_aa
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 64
    :pswitch_b0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 70
    :pswitch_b6
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d9

    .line 72
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 88
    :pswitch_c2
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d9

    .line 90
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTotalDiscCount(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 76
    :pswitch_ce
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d9

    .line 78
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    :cond_d9
    :goto_d9
    return-void

    :sswitch_data_da
    .sparse-switch
        -0x7357db54 -> :sswitch_78
        -0xcdfdf46 -> :sswitch_6d
        -0x6c103cc -> :sswitch_62
        0x3b7864f -> :sswitch_57
        0x4091163 -> :sswitch_4c
        0x4c22a38 -> :sswitch_41
        0x198917dc -> :sswitch_36
        0x3b34911e -> :sswitch_2b
        0x681d2256 -> :sswitch_1d
        0x7395d347 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_c2
        :pswitch_b6
        :pswitch_b0
        :pswitch_aa
        :pswitch_a4
        :pswitch_9e
        :pswitch_92
        :pswitch_8c
        :pswitch_86
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/flac/VorbisComment;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
