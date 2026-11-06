###### Class io.bidmachine.media3.extractor.metadata.id3.TextInformationFrame (io.bidmachine.media3.extractor.metadata.id3.TextInformationFrame)
.class public final Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;
.super Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;
.source "TextInformationFrame.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final values:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 50
    iput-object p2, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 51
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    const/4 p2, 0x0

    .line 52
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    return-void
.end method

.method public static parseId3v2point4TimestampFrameForDate(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-lt v1, v3, :cond_41

    .line 223
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 225
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 226
    :cond_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_66

    .line 227
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 229
    :cond_66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_7b

    .line 230
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_7b} :catch_7c

    :cond_7b
    return-object v0

    .line 234
    :catch_7c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
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

    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    if-eq v3, v2, :cond_10

    goto :goto_31

    .line 195
    :cond_10
    check-cast p1, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;

    .line 196
    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 197
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    .line 198
    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    return v0

    :cond_31
    :goto_31
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 204
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 206
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public populateMediaMetadata(Lio/bidmachine/media3/common/MediaMetadata$Builder;)V
    .registers 10

    const/4 v0, 0x4

    .line 73
    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_292

    goto/16 :goto_13d

    :sswitch_14
    const-string v7, "TYER"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_13d

    :cond_1e
    const/16 v6, 0x16

    goto/16 :goto_13d

    :sswitch_22
    const-string v7, "TRCK"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto/16 :goto_13d

    :cond_2c
    const/16 v6, 0x15

    goto/16 :goto_13d

    :sswitch_30
    const-string v7, "TPE3"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto/16 :goto_13d

    :cond_3a
    const/16 v6, 0x14

    goto/16 :goto_13d

    :sswitch_3e
    const-string v7, "TPE2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto/16 :goto_13d

    :cond_48
    const/16 v6, 0x13

    goto/16 :goto_13d

    :sswitch_4c
    const-string v7, "TPE1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    goto/16 :goto_13d

    :cond_56
    const/16 v6, 0x12

    goto/16 :goto_13d

    :sswitch_5a
    const-string v7, "TIT2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto/16 :goto_13d

    :cond_64
    const/16 v6, 0x11

    goto/16 :goto_13d

    :sswitch_68
    const-string v7, "TEXT"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    goto/16 :goto_13d

    :cond_72
    const/16 v6, 0x10

    goto/16 :goto_13d

    :sswitch_76
    const-string v7, "TDRL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    goto/16 :goto_13d

    :cond_80
    const/16 v6, 0xf

    goto/16 :goto_13d

    :sswitch_84
    const-string v7, "TDRC"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    goto/16 :goto_13d

    :cond_8e
    const/16 v6, 0xe

    goto/16 :goto_13d

    :sswitch_92
    const-string v7, "TDAT"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    goto/16 :goto_13d

    :cond_9c
    const/16 v6, 0xd

    goto/16 :goto_13d

    :sswitch_a0
    const-string v7, "TCON"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    goto/16 :goto_13d

    :cond_aa
    const/16 v6, 0xc

    goto/16 :goto_13d

    :sswitch_ae
    const-string v7, "TCOM"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b8

    goto/16 :goto_13d

    :cond_b8
    const/16 v6, 0xb

    goto/16 :goto_13d

    :sswitch_bc
    const-string v7, "TALB"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c6

    goto/16 :goto_13d

    :cond_c6
    const/16 v6, 0xa

    goto/16 :goto_13d

    :sswitch_ca
    const-string v7, "TYE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d4

    goto/16 :goto_13d

    :cond_d4
    const/16 v6, 0x9

    goto/16 :goto_13d

    :sswitch_d8
    const-string v7, "TXT"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e2

    goto/16 :goto_13d

    :cond_e2
    const/16 v6, 0x8

    goto/16 :goto_13d

    :sswitch_e6
    const-string v7, "TT2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ef

    goto :goto_13d

    :cond_ef
    const/4 v6, 0x7

    goto :goto_13d

    :sswitch_f1
    const-string v7, "TRK"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fa

    goto :goto_13d

    :cond_fa
    const/4 v6, 0x6

    goto :goto_13d

    :sswitch_fc
    const-string v7, "TP3"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    goto :goto_13d

    :cond_105
    const/4 v6, 0x5

    goto :goto_13d

    :sswitch_107
    const-string v7, "TP2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_110

    goto :goto_13d

    :cond_110
    move v6, v0

    goto :goto_13d

    :sswitch_112
    const-string v7, "TP1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11b

    goto :goto_13d

    :cond_11b
    move v6, v2

    goto :goto_13d

    :sswitch_11d
    const-string v7, "TDA"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_126

    goto :goto_13d

    :cond_126
    move v6, v3

    goto :goto_13d

    :sswitch_128
    const-string v7, "TCM"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_131

    goto :goto_13d

    :cond_131
    move v6, v4

    goto :goto_13d

    :sswitch_133
    const-string v7, "TAL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13c

    goto :goto_13d

    :cond_13c
    move v6, v5

    :goto_13d
    packed-switch v6, :pswitch_data_2f0

    goto/16 :goto_278

    .line 141
    :pswitch_142
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->parseId3v2point4TimestampFrameForDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v4, :cond_16c

    if-eq v1, v3, :cond_163

    if-eq v1, v2, :cond_15a

    goto/16 :goto_278

    .line 144
    :cond_15a
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setReleaseDay(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 147
    :cond_163
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setReleaseMonth(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 150
    :cond_16c
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setReleaseYear(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 123
    :pswitch_176
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->parseId3v2point4TimestampFrameForDate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v4, :cond_1a0

    if-eq v1, v3, :cond_197

    if-eq v1, v2, :cond_18e

    goto/16 :goto_278

    .line 126
    :cond_18e
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 129
    :cond_197
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    .line 132
    :cond_1a0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 171
    :pswitch_1aa
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1c4

    .line 173
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 176
    :cond_1c4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Util;->resolveV1Genre(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_278

    .line 178
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setGenre(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 106
    :pswitch_1d2
    :try_start_1d2
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setRecordingYear(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    :try_end_1e5
    .catch Ljava/lang/NumberFormatException; {:try_start_1d2 .. :try_end_1e5} :catch_278

    return-void

    .line 168
    :pswitch_1e6
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setWriter(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 76
    :pswitch_1f2
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 92
    :pswitch_1fe
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    :try_start_20c
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 97
    array-length v2, v0

    if-le v2, v4, :cond_220

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_221

    :cond_220
    const/4 v0, 0x0

    .line 98
    :goto_221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTrackNumber(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setTotalTrackCount(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    :try_end_22c
    .catch Ljava/lang/NumberFormatException; {:try_start_20c .. :try_end_22c} :catch_278

    return-void

    .line 164
    :pswitch_22d
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setConductor(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 84
    :pswitch_239
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setAlbumArtist(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 80
    :pswitch_245
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setArtist(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 114
    :pswitch_251
    :try_start_251
    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setRecordingMonth(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setRecordingDay(Ljava/lang/Integer;)Lio/bidmachine/media3/common/MediaMetadata$Builder;
    :try_end_278
    .catch Ljava/lang/NumberFormatException; {:try_start_251 .. :try_end_278} :catch_278
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_251 .. :try_end_278} :catch_278

    :catch_278
    :cond_278
    :goto_278
    return-void

    .line 160
    :pswitch_279
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setComposer(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    .line 88
    :pswitch_285
    iget-object v0, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->setAlbumTitle(Ljava/lang/CharSequence;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    return-void

    nop

    :sswitch_data_292
    .sparse-switch
        0x1437f -> :sswitch_133
        0x143be -> :sswitch_128
        0x143d1 -> :sswitch_11d
        0x14535 -> :sswitch_112
        0x14536 -> :sswitch_107
        0x14537 -> :sswitch_fc
        0x1458d -> :sswitch_f1
        0x145b2 -> :sswitch_e6
        0x14650 -> :sswitch_d8
        0x14660 -> :sswitch_ca
        0x272ca3 -> :sswitch_bc
        0x27348d -> :sswitch_ae
        0x27348e -> :sswitch_a0
        0x2736a3 -> :sswitch_92
        0x2738a1 -> :sswitch_84
        0x2738aa -> :sswitch_76
        0x273d2d -> :sswitch_68
        0x274b93 -> :sswitch_5a
        0x276408 -> :sswitch_4c
        0x276409 -> :sswitch_3e
        0x27640a -> :sswitch_30
        0x276b66 -> :sswitch_22
        0x2785f2 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_2f0
    .packed-switch 0x0
        :pswitch_285
        :pswitch_279
        :pswitch_251
        :pswitch_245
        :pswitch_239
        :pswitch_22d
        :pswitch_1fe
        :pswitch_1f2
        :pswitch_1e6
        :pswitch_1d2
        :pswitch_285
        :pswitch_279
        :pswitch_1aa
        :pswitch_251
        :pswitch_176
        :pswitch_142
        :pswitch_1e6
        :pswitch_1f2
        :pswitch_245
        :pswitch_239
        :pswitch_22d
        :pswitch_1fe
        :pswitch_1d2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
