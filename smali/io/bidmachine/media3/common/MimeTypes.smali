###### Class io.bidmachine.media3.common.MimeTypes (io.bidmachine.media3.common.MimeTypes)
.class public final Lio/bidmachine/media3/common/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/MimeTypes$CustomMimeType;,
        Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;
    }
.end annotation


# static fields
.field public static final MP4A_RFC_6381_CODEC_PATTERN:Ljava/util/regex/Pattern;

.field public static final customMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/common/MimeTypes$CustomMimeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/bidmachine/media3/common/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    .line 191
    const-string v0, "^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$"

    .line 192
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/MimeTypes;->MP4A_RFC_6381_CODEC_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_5

    return v1

    :cond_5
    const/4 v2, -0x1

    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_ac

    goto/16 :goto_90

    :sswitch_f
    const-string v3, "audio/g711-mlaw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_90

    :cond_19
    const/16 v2, 0xa

    goto/16 :goto_90

    :sswitch_1d
    const-string v3, "audio/g711-alaw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_90

    :cond_27
    const/16 v2, 0x9

    goto/16 :goto_90

    :sswitch_2b
    const-string v3, "audio/mpeg"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_90

    :cond_35
    const/16 v2, 0x8

    goto/16 :goto_90

    :sswitch_39
    const-string v3, "audio/flac"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto :goto_90

    :cond_42
    const/4 v2, 0x7

    goto :goto_90

    :sswitch_44
    const-string v3, "audio/eac3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    goto :goto_90

    :cond_4d
    const/4 v2, 0x6

    goto :goto_90

    :sswitch_4f
    const-string v3, "audio/raw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto :goto_90

    :cond_58
    const/4 v2, 0x5

    goto :goto_90

    :sswitch_5a
    const-string v3, "audio/ac3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto :goto_90

    :cond_63
    const/4 v2, 0x4

    goto :goto_90

    :sswitch_65
    const-string v3, "audio/mp4a-latm"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto :goto_90

    :cond_6e
    const/4 v2, 0x3

    goto :goto_90

    :sswitch_70
    const-string v3, "audio/mpeg-L2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_79

    goto :goto_90

    :cond_79
    const/4 v2, 0x2

    goto :goto_90

    :sswitch_7b
    const-string v3, "audio/mpeg-L1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_84

    goto :goto_90

    :cond_84
    move v2, v0

    goto :goto_90

    :sswitch_86
    const-string v3, "audio/eac3-joc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8f

    goto :goto_90

    :cond_8f
    move v2, v1

    :goto_90
    packed-switch v2, :pswitch_data_da

    return v1

    :pswitch_94
    if-nez p1, :cond_97

    return v1

    .line 296
    :cond_97
    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->getObjectTypeFromMp4aRFC6381CodecString(Ljava/lang/String;)Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;

    move-result-object p0

    if-nez p0, :cond_9e

    return v1

    .line 300
    :cond_9e
    invoke-virtual {p0}, Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;->getEncoding()I

    move-result p0

    if-eqz p0, :cond_a9

    const/16 p1, 0x10

    if-eq p0, p1, :cond_a9

    return v0

    :cond_a9
    return v1

    :pswitch_aa
    return v0

    nop

    :sswitch_data_ac
    .sparse-switch
        -0x7e929daa -> :sswitch_86
        -0x19cc928c -> :sswitch_7b
        -0x19cc928b -> :sswitch_70
        -0x3313c2e -> :sswitch_65
        0xb269698 -> :sswitch_5a
        0xb26d66f -> :sswitch_4f
        0x59ae0c65 -> :sswitch_44
        0x59aeaa01 -> :sswitch_39
        0x59b1e81e -> :sswitch_2b
        0x71710385 -> :sswitch_1d
        0x717677f9 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_94
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
    .end packed-switch
.end method

.method public static containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 344
    invoke-static {p0, p1}, Lio/bidmachine/media3/common/MimeTypes;->getCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 390
    :cond_4
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 391
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 392
    invoke-static {v3}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 393
    invoke-static {v3}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return-object v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    return-object v0
.end method

.method public static getCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_3b

    if-nez p1, :cond_6

    goto :goto_3b

    .line 365
    :cond_6
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    array-length v2, p0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_30

    aget-object v4, p0, v3

    .line 368
    invoke-static {v4}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2a

    .line 370
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_2a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 375
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method public static getCustomMimeTypeForCodec(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 774
    sget-object v0, Lio/bidmachine/media3/common/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 776
    sget-object v2, Lio/bidmachine/media3/common/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/MimeTypes$CustomMimeType;

    .line 777
    iget-object v3, v2, Lio/bidmachine/media3/common/MimeTypes$CustomMimeType;->codecPrefix:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 778
    iget-object p0, v2, Lio/bidmachine/media3/common/MimeTypes$CustomMimeType;->mimeType:Ljava/lang/String;

    return-object p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEncoding(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/16 v0, 0x9

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    .line 657
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_ca

    goto/16 :goto_a2

    :sswitch_15
    const-string v7, "audio/true-hd"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_a2

    :cond_1f
    const/16 v6, 0xb

    goto/16 :goto_a2

    :sswitch_23
    const-string v7, "audio/vnd.dts.hd"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_a2

    :cond_2d
    const/16 v6, 0xa

    goto/16 :goto_a2

    :sswitch_31
    const-string v7, "audio/opus"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto/16 :goto_a2

    :cond_3b
    move v6, v0

    goto/16 :goto_a2

    :sswitch_3e
    const-string v7, "audio/mpeg"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto/16 :goto_a2

    :cond_48
    move v6, v4

    goto/16 :goto_a2

    :sswitch_4b
    const-string v7, "audio/eac3"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto :goto_a2

    :cond_54
    move v6, v1

    goto :goto_a2

    :sswitch_56
    const-string v7, "audio/vnd.dts.uhd;profile=p2"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto :goto_a2

    :cond_5f
    move v6, v2

    goto :goto_a2

    :sswitch_61
    const-string v7, "audio/ac4"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto :goto_a2

    :cond_6a
    move v6, v3

    goto :goto_a2

    :sswitch_6c
    const-string v7, "audio/ac3"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    goto :goto_a2

    :cond_75
    const/4 v6, 0x4

    goto :goto_a2

    :sswitch_77
    const-string v7, "audio/mp4a-latm"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    goto :goto_a2

    :cond_80
    const/4 v6, 0x3

    goto :goto_a2

    :sswitch_82
    const-string v7, "audio/vnd.dts"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    goto :goto_a2

    :cond_8b
    const/4 v6, 0x2

    goto :goto_a2

    :sswitch_8d
    const-string v7, "audio/vnd.dts.hd;profile=lbr"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96

    goto :goto_a2

    :cond_96
    const/4 v6, 0x1

    goto :goto_a2

    :sswitch_98
    const-string v7, "audio/eac3-joc"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    goto :goto_a2

    :cond_a1
    move v6, v5

    :goto_a2
    packed-switch v6, :pswitch_data_fc

    return v5

    :pswitch_a6
    const/16 p0, 0xe

    return p0

    :pswitch_a9
    return v4

    :pswitch_aa
    const/16 p0, 0x14

    return p0

    :pswitch_ad
    return v0

    :pswitch_ae
    return v2

    :pswitch_af
    const/16 p0, 0x1e

    return p0

    :pswitch_b2
    const/16 p0, 0x11

    return p0

    :pswitch_b5
    return v3

    :pswitch_b6
    if-nez p1, :cond_b9

    return v5

    .line 664
    :cond_b9
    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->getObjectTypeFromMp4aRFC6381CodecString(Ljava/lang/String;)Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;

    move-result-object p0

    if-nez p0, :cond_c0

    return v5

    .line 668
    :cond_c0
    invoke-virtual {p0}, Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;->getEncoding()I

    move-result p0

    return p0

    :pswitch_c5
    return v1

    :pswitch_c6
    return v4

    :pswitch_c7
    const/16 p0, 0x12

    return p0

    :sswitch_data_ca
    .sparse-switch
        -0x7e929daa -> :sswitch_98
        -0x51617051 -> :sswitch_8d
        -0x41455b98 -> :sswitch_82
        -0x3313c2e -> :sswitch_77
        0xb269698 -> :sswitch_6c
        0xb269699 -> :sswitch_61
        0x20d04866 -> :sswitch_56
        0x59ae0c65 -> :sswitch_4b
        0x59b1e81e -> :sswitch_3e
        0x59b2d2d8 -> :sswitch_31
        0x59c2dc42 -> :sswitch_23
        0x5cc95062 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_b6
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_aa
        :pswitch_a9
        :pswitch_a6
    .end packed-switch
.end method

.method public static getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 435
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 436
    const-string v1, "avc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19f

    const-string v1, "avc3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto/16 :goto_19f

    .line 438
    :cond_1e
    const-string v1, "hev1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19c

    const-string v1, "hvc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto/16 :goto_19c

    .line 440
    :cond_30
    const-string v1, "dvav"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_199

    const-string v1, "dva1"

    .line 441
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_199

    const-string v1, "dvhe"

    .line 442
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_199

    const-string v1, "dvh1"

    .line 443
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    goto/16 :goto_199

    .line 445
    :cond_52
    const-string v1, "av01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 446
    const-string p0, "video/av01"

    return-object p0

    .line 447
    :cond_5d
    const-string v1, "vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_196

    const-string v1, "vp09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    goto/16 :goto_196

    .line 449
    :cond_6f
    const-string v1, "vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_193

    const-string v1, "vp08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    goto/16 :goto_193

    .line 451
    :cond_81
    const-string v1, "mp4a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 453
    const-string v1, "mp4a."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 454
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->getObjectTypeFromMp4aRFC6381CodecString(Ljava/lang/String;)Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;

    move-result-object p0

    if-eqz p0, :cond_9d

    .line 456
    iget p0, p0, Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;->objectTypeIndication:I

    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    :cond_9d
    if-nez v0, :cond_a2

    .line 459
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_a2
    return-object v0

    .line 460
    :cond_a3
    const-string v0, "mha1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 461
    const-string p0, "audio/mha1"

    return-object p0

    .line 462
    :cond_ae
    const-string v0, "mhm1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 463
    const-string p0, "audio/mhm1"

    return-object p0

    .line 464
    :cond_b9
    const-string v0, "ac-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_190

    const-string v0, "dac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    goto/16 :goto_190

    .line 466
    :cond_cb
    const-string v0, "ec-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18d

    const-string v0, "dec3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dd

    goto/16 :goto_18d

    .line 468
    :cond_dd
    const-string v0, "ec+3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 469
    const-string p0, "audio/eac3-joc"

    return-object p0

    .line 470
    :cond_e8
    const-string v0, "ac-4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18a

    const-string v0, "dac4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fa

    goto/16 :goto_18a

    .line 472
    :cond_fa
    const-string v0, "dtsc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 473
    const-string p0, "audio/vnd.dts"

    return-object p0

    .line 474
    :cond_105
    const-string v0, "dtse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 475
    const-string p0, "audio/vnd.dts.hd;profile=lbr"

    return-object p0

    .line 476
    :cond_110
    const-string v0, "dtsh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_187

    const-string v0, "dtsl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_121

    goto :goto_187

    .line 478
    :cond_121
    const-string v0, "dtsx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 479
    const-string p0, "audio/vnd.dts.uhd;profile=p2"

    return-object p0

    .line 480
    :cond_12c
    const-string v0, "opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 481
    const-string p0, "audio/opus"

    return-object p0

    .line 482
    :cond_137
    const-string v0, "vorbis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 483
    const-string p0, "audio/vorbis"

    return-object p0

    .line 484
    :cond_142
    const-string v0, "flac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 485
    const-string p0, "audio/flac"

    return-object p0

    .line 486
    :cond_14d
    const-string v0, "stpp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_158

    .line 487
    const-string p0, "application/ttml+xml"

    return-object p0

    .line 488
    :cond_158
    const-string v0, "wvtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 489
    const-string p0, "text/vtt"

    return-object p0

    .line 490
    :cond_163
    const-string v0, "cea708"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 491
    const-string p0, "application/cea-708"

    return-object p0

    .line 492
    :cond_16e
    const-string v0, "eia608"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_184

    const-string v0, "cea608"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17f

    goto :goto_184

    .line 495
    :cond_17f
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->getCustomMimeTypeForCodec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 493
    :cond_184
    :goto_184
    const-string p0, "application/cea-608"

    return-object p0

    .line 477
    :cond_187
    :goto_187
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    .line 471
    :cond_18a
    :goto_18a
    const-string p0, "audio/ac4"

    return-object p0

    .line 467
    :cond_18d
    :goto_18d
    const-string p0, "audio/eac3"

    return-object p0

    .line 465
    :cond_190
    :goto_190
    const-string p0, "audio/ac3"

    return-object p0

    .line 450
    :cond_193
    :goto_193
    const-string p0, "video/x-vnd.on2.vp8"

    return-object p0

    .line 448
    :cond_196
    :goto_196
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    .line 444
    :cond_199
    :goto_199
    const-string p0, "video/dolby-vision"

    return-object p0

    .line 439
    :cond_19c
    :goto_19c
    const-string p0, "video/hevc"

    return-object p0

    .line 437
    :cond_19f
    :goto_19f
    const-string p0, "video/avc"

    return-object p0
.end method

.method public static getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_5c

    const/16 v0, 0x21

    if-eq p0, v0, :cond_59

    const/16 v0, 0x23

    if-eq p0, v0, :cond_56

    const/16 v0, 0x40

    if-eq p0, v0, :cond_53

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_50

    const/16 v0, 0xb1

    if-eq p0, v0, :cond_4d

    const/16 v0, 0xdd

    if-eq p0, v0, :cond_4a

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_47

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_44

    packed-switch p0, :pswitch_data_60

    packed-switch p0, :pswitch_data_7e

    const/4 p0, 0x0

    return-object p0

    .line 575
    :pswitch_2c
    const-string p0, "audio/ac4"

    return-object p0

    .line 573
    :pswitch_2f
    const-string p0, "audio/opus"

    return-object p0

    .line 571
    :pswitch_32
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    .line 568
    :pswitch_35
    const-string p0, "audio/vnd.dts"

    return-object p0

    .line 552
    :pswitch_38
    const-string p0, "image/jpeg"

    return-object p0

    .line 547
    :pswitch_3b
    const-string p0, "video/mpeg"

    return-object p0

    .line 550
    :pswitch_3e
    const-string p0, "audio/mpeg"

    return-object p0

    .line 545
    :pswitch_41
    const-string p0, "video/mpeg2"

    return-object p0

    .line 565
    :cond_44
    const-string p0, "audio/eac3"

    return-object p0

    .line 563
    :cond_47
    const-string p0, "audio/ac3"

    return-object p0

    .line 577
    :cond_4a
    const-string p0, "audio/vorbis"

    return-object p0

    .line 556
    :cond_4d
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    .line 554
    :cond_50
    const-string p0, "video/wvc1"

    return-object p0

    .line 561
    :cond_53
    :pswitch_53
    const-string p0, "audio/mp4a-latm"

    return-object p0

    .line 538
    :cond_56
    const-string p0, "video/hevc"

    return-object p0

    .line 536
    :cond_59
    const-string p0, "video/avc"

    return-object p0

    .line 534
    :cond_5c
    const-string p0, "video/mp4v-es"

    return-object p0

    nop

    :pswitch_data_60
    .packed-switch 0x60
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_3e
        :pswitch_3b
        :pswitch_3e
        :pswitch_38
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0xa9
        :pswitch_35
        :pswitch_32
        :pswitch_32
        :pswitch_35
        :pswitch_2f
        :pswitch_2c
    .end packed-switch
.end method

.method public static getObjectTypeFromMp4aRFC6381CodecString(Ljava/lang/String;)Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;
    .registers 4

    .line 819
    sget-object v0, Lio/bidmachine/media3/common/MimeTypes;->MP4A_RFC_6381_CODEC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 820
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    const/4 v0, 0x1

    .line 823
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x2

    .line 824
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x10

    .line 828
    :try_start_20
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p0, :cond_2b

    .line 830
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2a} :catch_31

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    .line 835
    :goto_2c
    new-instance v1, Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;

    invoke-direct {v1, v0, p0}, Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;-><init>(II)V

    :catch_31
    return-object v1
.end method

.method public static getTopLevelType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x2f

    .line 765
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    return-object v0

    :cond_e
    const/4 v0, 0x0

    .line 769
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackType(Ljava/lang/String;)I
    .registers 2

    .line 623
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 625
    :cond_8
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 627
    :cond_10
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x2

    return p0

    .line 629
    :cond_18
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x3

    return p0

    .line 631
    :cond_20
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 p0, 0x4

    return p0

    .line 633
    :cond_28
    const-string v0, "application/id3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "application/x-emsg"

    .line 634
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "application/x-scte35"

    .line 635
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "application/x-icy"

    .line 636
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "application/vnd.dvb.ait"

    .line 637
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_60

    .line 639
    :cond_51
    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 p0, 0x6

    return p0

    .line 642
    :cond_5b
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->getTrackTypeForCustomMimeType(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_60
    :goto_60
    const/4 p0, 0x5

    return p0
.end method

.method public static getTrackTypeForCustomMimeType(Ljava/lang/String;)I
    .registers 5

    .line 785
    sget-object v0, Lio/bidmachine/media3/common/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 787
    sget-object v2, Lio/bidmachine/media3/common/MimeTypes;->customMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/MimeTypes$CustomMimeType;

    .line 788
    iget-object v3, v2, Lio/bidmachine/media3/common/MimeTypes$CustomMimeType;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 789
    iget p0, v2, Lio/bidmachine/media3/common/MimeTypes$CustomMimeType;->trackType:I

    return p0

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public static getTrackTypeOfCodec(Ljava/lang/String;)I
    .registers 1

    .line 703
    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 322
    :cond_4
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 323
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    .line 324
    invoke-static {v3}, Lio/bidmachine/media3/common/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 325
    invoke-static {v3}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return-object v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    return-object v0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .registers 2

    .line 221
    const-string v0, "audio"

    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDolbyVisionCodec(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 598
    :cond_4
    const-string v1, "dvhe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_67

    const-string v2, "dvh1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_67

    :cond_16
    if-nez p1, :cond_19

    return v0

    .line 606
    :cond_19
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "hev1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 607
    :cond_27
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "hvc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    :cond_35
    const-string v1, "dvav"

    .line 608
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "avc3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    :cond_45
    const-string v1, "dva1"

    .line 609
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "avc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    :cond_55
    const-string v1, "dav1"

    .line 610
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_66

    const-string p1, "av01"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_66

    :cond_65
    return v3

    :cond_66
    return v0

    :cond_67
    :goto_67
    return v3
.end method

.method public static isImage(Ljava/lang/String;)Z
    .registers 3

    .line 256
    const-string v0, "image"

    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "application/x-image-uri"

    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public static isMatroska(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 747
    :cond_4
    const-string v1, "video/webm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "audio/webm"

    .line 748
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "application/webm"

    .line 749
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "video/x-matroska"

    .line 750
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "audio/x-matroska"

    .line 751
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "application/x-matroska"

    .line 752
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_36

    :cond_35
    return v0

    :cond_36
    :goto_36
    const/4 p0, 0x1

    return p0
.end method

.method public static isText(Ljava/lang/String;)Z
    .registers 3

    .line 238
    const-string v0, "text"

    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/x-media3-cues"

    .line 239
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/cea-608"

    .line 240
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/cea-708"

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/x-mp4-cea-608"

    .line 242
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/x-subrip"

    .line 243
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/ttml+xml"

    .line 244
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/x-quicktime-tx3g"

    .line 245
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/x-mp4-vtt"

    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/x-rawcc"

    .line 247
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/vobsub"

    .line 248
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/pgs"

    .line 249
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    const-string v0, "application/dvbsubs"

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 p0, 0x0

    return p0

    :cond_6f
    :goto_6f
    const/4 p0, 0x1

    return p0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .registers 2

    .line 227
    const-string v0, "video"

    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 717
    :cond_4
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 718
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7a

    goto :goto_60

    :sswitch_14
    const-string v1, "audio/mp3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_60

    :cond_1d
    const/4 v0, 0x6

    goto :goto_60

    :sswitch_1f
    const-string v1, "audio/mpeg-l2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_60

    :cond_28
    const/4 v0, 0x5

    goto :goto_60

    :sswitch_2a
    const-string v1, "audio/mpeg-l1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_60

    :cond_33
    const/4 v0, 0x4

    goto :goto_60

    :sswitch_35
    const-string v1, "audio/x-wav"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_60

    :cond_3e
    const/4 v0, 0x3

    goto :goto_60

    :sswitch_40
    const-string v1, "application/x-mpegurl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_60

    :cond_49
    const/4 v0, 0x2

    goto :goto_60

    :sswitch_4b
    const-string v1, "audio/x-flac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    goto :goto_60

    :cond_54
    const/4 v0, 0x1

    goto :goto_60

    :sswitch_56
    const-string v1, "video/x-mvhevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v0, 0x0

    :goto_60
    packed-switch v0, :pswitch_data_98

    return-object p0

    .line 726
    :pswitch_64
    const-string p0, "audio/mpeg"

    return-object p0

    .line 735
    :pswitch_67
    const-string p0, "audio/mpeg-L2"

    return-object p0

    .line 733
    :pswitch_6a
    const-string p0, "audio/mpeg-L1"

    return-object p0

    .line 728
    :pswitch_6d
    const-string p0, "audio/wav"

    return-object p0

    .line 731
    :pswitch_70
    const-string p0, "application/x-mpegURL"

    return-object p0

    .line 724
    :pswitch_73
    const-string p0, "audio/flac"

    return-object p0

    .line 721
    :pswitch_76
    const-string p0, "video/mv-hevc"

    return-object p0

    nop

    :sswitch_data_7a
    .sparse-switch
        -0x6d4a8464 -> :sswitch_56
        -0x3c11ec0a -> :sswitch_4b
        -0x3a5bd08a -> :sswitch_40
        -0x22f81362 -> :sswitch_35
        -0x19cc8eac -> :sswitch_2a
        -0x19cc8eab -> :sswitch_1f
        0xb26c537 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
    .end packed-switch
.end method

###### Class io.bidmachine.media3.common.MimeTypes.CustomMimeType (io.bidmachine.media3.common.MimeTypes$CustomMimeType)
.class public final Lio/bidmachine/media3/common/MimeTypes$CustomMimeType;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MimeTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomMimeType"
.end annotation


# instance fields
.field public final codecPrefix:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final trackType:I

###### Class io.bidmachine.media3.common.MimeTypes.Mp4aObjectType (io.bidmachine.media3.common.MimeTypes$Mp4aObjectType)
.class public final Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/MimeTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mp4aObjectType"
.end annotation


# instance fields
.field public final audioObjectTypeIndication:I

.field public final objectTypeIndication:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput p1, p0, Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;->objectTypeIndication:I

    .line 849
    iput p2, p0, Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;->audioObjectTypeIndication:I

    return-void
.end method


# virtual methods
.method public getEncoding()I
    .registers 3

    .line 855
    iget v0, p0, Lio/bidmachine/media3/common/MimeTypes$Mp4aObjectType;->audioObjectTypeIndication:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-eq v0, v1, :cond_26

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_23

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_20

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x0

    return v0

    :cond_1a
    const/16 v0, 0xf

    return v0

    :cond_1d
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    :cond_20
    const/16 v0, 0x10

    return v0

    :cond_23
    const/16 v0, 0xc

    return v0

    :cond_26
    const/16 v0, 0xb

    return v0

    :cond_29
    const/16 v0, 0xa

    return v0
.end method
