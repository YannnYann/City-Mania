###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;
    }
.end annotation


# static fields
.field public static final decoderInfosCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public static maxH264DecodableFrameSize:I


# direct methods
.method public static synthetic $r8$lambda$-NjgbgbZA-YhPc_Vzn31z5O053M(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .registers 2

    .line 298
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->softwareOnly:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->vendor:Z

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static synthetic $r8$lambda$FRycqgp0wJWE86zJwGJ8XIaZSPI(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .registers 2

    .line 261
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatFunctionallySupported(Lio/bidmachine/media3/common/Format;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KgfLilVm-6uaKAxDCf_6eKlZgPQ(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 768
    invoke-interface {p0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p2, p0

    return p2
.end method

.method public static synthetic $r8$lambda$KqL62aJZemnGLQRpZFz7vmT1ntU(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .registers 3

    .line 620
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 621
    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "c2.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_25

    .line 625
    :cond_13
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_23

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, -0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 74
    sput v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return-void
.end method

.method public static applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .line 597
    const-string v0, "audio/raw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4b

    .line 598
    sget p0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge p0, v2, :cond_43

    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "R9"

    .line 599
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    .line 600
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_43

    .line 601
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v2, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 605
    const-string v2, "OMX.google.raw.decoder"

    const-string v3, "audio/raw"

    const-string v4, "audio/raw"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object p0

    .line 604
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_43
    new-instance p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 634
    :cond_4b
    sget p0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-ge p0, v2, :cond_70

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_70

    .line 635
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 638
    const-string v0, "OMX.qti.audio.decoder.flac"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_70

    .line 639
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_70
    return-void
.end method

.method public static getAlternativeCodecMimeType(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 4

    .line 366
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 368
    const-string p0, "audio/eac3"

    return-object p0

    .line 370
    :cond_d
    const-string v0, "video/dolby-vision"

    iget-object v1, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "video/hevc"

    if-eqz v0, :cond_3f

    .line 375
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lio/bidmachine/media3/common/Format;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 377
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_3e

    const/16 v2, 0x100

    if-ne v0, v2, :cond_30

    goto :goto_3e

    :cond_30
    const/16 v2, 0x200

    if-ne v0, v2, :cond_37

    .line 382
    const-string p0, "video/avc"

    return-object p0

    :cond_37
    const/16 v2, 0x400

    if-ne v0, v2, :cond_3f

    .line 384
    const-string p0, "video/av01"

    return-object p0

    :cond_3e
    :goto_3e
    return-object v1

    .line 388
    :cond_3f
    const-string v0, "video/mv-hevc"

    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    return-object v1

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAlternativeDecoderInfos(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Lio/bidmachine/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 244
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    .line 246
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 248
    :cond_b
    invoke-interface {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 514
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    .line 515
    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    .line 516
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    return-object v2

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 521
    :cond_14
    const-string p0, "video/dolby-vision"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 524
    const-string p0, "OMX.MS.HEVCDV.Decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 525
    const-string p0, "video/hevcdv"

    return-object p0

    .line 526
    :cond_27
    const-string p0, "OMX.RTK.video.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    .line 527
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8e

    .line 528
    :cond_37
    const-string p0, "video/dv_hevc"

    return-object p0

    .line 530
    :cond_3a
    const-string p0, "video/mv-hevc"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_55

    .line 532
    const-string p0, "c2.qti.mvhevc.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    const-string p0, "c2.qti.mvhevc.decoder.secure"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8e

    .line 533
    :cond_52
    const-string p0, "video/x-mvhevc"

    return-object p0

    .line 535
    :cond_55
    const-string p0, "audio/alac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    .line 536
    const-string p0, "audio/x-lg-alac"

    return-object p0

    .line 537
    :cond_68
    const-string p0, "audio/flac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 538
    const-string p0, "audio/x-lg-flac"

    return-object p0

    .line 539
    :cond_7b
    const-string p0, "audio/ac3"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8e

    const-string p0, "OMX.lge.ac3.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8e

    .line 540
    const-string p0, "audio/lg-ac3"

    return-object p0

    :cond_8e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCodecProfileAndLevel(Lio/bidmachine/media3/common/Format;)Landroid/util/Pair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    invoke-static {p0}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->getCodecProfileAndLevel(Lio/bidmachine/media3/common/Format;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static getDecoderInfo(Ljava/lang/String;ZZ)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 130
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 131
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    return-object p0
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    const-class v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;

    monitor-enter v0

    .line 149
    :try_start_3
    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v1, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    .line 150
    sget-object v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_69

    if-eqz v3, :cond_14

    .line 152
    monitor-exit v0

    return-object v3

    .line 157
    :cond_14
    :try_start_14
    const-string v3, "video/mv-hevc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 158
    new-instance v4, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v4, p1, p2, v3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;-><init>(ZZZ)V

    .line 160
    invoke-static {v1, v4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_6b

    .line 161
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6b

    sget p1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-gt p1, v3, :cond_6b

    .line 164
    new-instance p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$1;)V

    .line 165
    invoke-static {v1, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    .line 166
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6b

    .line 167
    const-string p1, "MediaCodecUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Assuming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 172
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {p1, v3}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :catchall_69
    move-exception p0

    goto :goto_77

    .line 175
    :cond_6b
    :goto_6b
    invoke-static {p0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V

    .line 176
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 177
    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catchall {:try_start_14 .. :try_end_75} :catchall_69

    .line 178
    monitor-exit v0

    return-object p0

    :goto_77
    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_69

    throw p0
.end method

.method public static getDecoderInfosInternal(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 409
    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    :try_start_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 410
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 411
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v15

    .line 412
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v6

    const/4 v0, 0x0

    move v8, v0

    :goto_19
    if-ge v8, v15, :cond_143

    .line 415
    invoke-interface {v2, v8}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 416
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->isAlias(Landroid/media/MediaCodecInfo;)Z

    move-result v9

    if-eqz v9, :cond_2b

    :goto_25
    move/from16 v17, v6

    move/from16 v16, v8

    goto/16 :goto_119

    .line 421
    :cond_2b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 422
    invoke-static {v0, v9, v6, v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_36

    goto :goto_25

    :cond_36
    move v10, v8

    .line 425
    invoke-static {v0, v9, v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3b} :catch_144

    if-nez v8, :cond_43

    move/from16 v17, v6

    move/from16 v16, v10

    goto/16 :goto_119

    :cond_43
    move v11, v6

    move-object v6, v9

    .line 430
    :try_start_45
    invoke-virtual {v0, v8}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    .line 432
    invoke-interface {v2, v4, v8, v9}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v12

    .line 435
    invoke-interface {v2, v4, v8, v9}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v13

    .line 437
    iget-boolean v14, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v14, :cond_57

    if-nez v13, :cond_5b

    :cond_57
    if-eqz v14, :cond_61

    if-nez v12, :cond_61

    :cond_5b
    :goto_5b
    move/from16 v16, v10

    move/from16 v17, v11

    goto/16 :goto_119

    .line 441
    :cond_61
    invoke-interface {v2, v3, v8, v9}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v12

    .line 444
    invoke-interface {v2, v3, v8, v9}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v13

    .line 446
    iget-boolean v14, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6b} :catch_ec

    if-nez v14, :cond_6f

    if-nez v13, :cond_5b

    :cond_6f
    if-eqz v14, :cond_74

    if-nez v12, :cond_74

    goto :goto_5b

    :cond_74
    move v13, v10

    .line 449
    :try_start_75
    invoke-static {v0, v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v10
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_79} :catch_e5

    move v14, v11

    .line 450
    :try_start_7a
    invoke-static {v0, v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v11

    .line 451
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->isVendor(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-eqz v14, :cond_95

    move/from16 v16, v0

    .line 452
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_88} :catch_8d

    if-eq v0, v12, :cond_8b

    goto :goto_97

    :cond_8b
    :goto_8b
    move v12, v13

    goto :goto_9e

    :catch_8d
    move-exception v0

    move-object v1, v6

    move/from16 v16, v13

    move/from16 v17, v14

    goto/16 :goto_f2

    :cond_95
    move/from16 v16, v0

    :goto_97
    if-nez v14, :cond_b4

    :try_start_99
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9b} :catch_bc

    if-nez v0, :cond_b4

    goto :goto_8b

    :goto_9e
    const/4 v13, 0x0

    move/from16 v17, v14

    const/4 v14, 0x0

    move/from16 v18, v16

    move/from16 v16, v12

    move/from16 v12, v18

    .line 455
    :try_start_a8
    invoke-static/range {v6 .. v14}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 454
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_119

    :catch_b1
    move-exception v0

    :goto_b2
    move-object v1, v6

    goto :goto_f2

    :cond_b4
    move v0, v12

    move/from16 v17, v14

    move/from16 v12, v16

    move/from16 v16, v13

    goto :goto_c2

    :catch_bc
    move-exception v0

    move/from16 v16, v13

    move/from16 v17, v14

    goto :goto_b2

    :goto_c2
    if-nez v17, :cond_119

    if-eqz v0, :cond_119

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".secure"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_d7} :catch_b1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v1, v6

    move-object v6, v0

    .line 467
    :try_start_db
    invoke-static/range {v6 .. v14}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 466
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e2} :catch_e3

    goto :goto_143

    :catch_e3
    move-exception v0

    goto :goto_f2

    :catch_e5
    move-exception v0

    move-object v1, v6

    move/from16 v17, v11

    move/from16 v16, v13

    goto :goto_f2

    :catch_ec
    move-exception v0

    move-object v1, v6

    move/from16 v16, v10

    move/from16 v17, v11

    .line 481
    :goto_f2
    :try_start_f2
    sget v6, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f4} :catch_144

    const/16 v9, 0x17

    const-string v10, "MediaCodecUtil"

    if-gt v6, v9, :cond_121

    :try_start_fa
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_121

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping codec "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (failed to query capabilities)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_119
    :goto_119
    add-int/lit8 v8, v16, 0x1

    move-object/from16 v1, p0

    move/from16 v6, v17

    goto/16 :goto_19

    .line 487
    :cond_121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    throw v0
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_143} :catch_144

    :cond_143
    :goto_143
    return-object v5

    :catch_144
    move-exception v0

    .line 496
    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$1;)V

    throw v1
.end method

.method public static getDecoderInfosSoftMatch(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Lio/bidmachine/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 208
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 209
    invoke-interface {p0, v0, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 212
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeDecoderInfos(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    .line 214
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 216
    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lio/bidmachine/media3/common/Format;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;",
            "Lio/bidmachine/media3/common/Format;",
            ")",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 260
    new-instance p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/common/Format;)V

    invoke-static {v0, p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    return-object v0
.end method

.method public static getDecoderInfosSortedBySoftwareOnly(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    new-instance p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    .line 299
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static getDecryptOnlyDecoderInfo()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 113
    const-string v0, "audio/raw"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getHevcBaseLayerCodecProfileAndLevel(Lio/bidmachine/media3/common/Format;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {v0}, Lio/bidmachine/media3/container/NalUnitUtil;->getH265BaseLayerCodecsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 351
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 352
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    invoke-static {v0, v1, p0}, Lio/bidmachine/media3/common/util/CodecSpecificDataUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Lio/bidmachine/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static isAlias(Landroid/media/MediaCodecInfo;)Z
    .registers 3

    .line 645
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->isAliasV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static isAliasV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 650
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method public static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 6

    .line 560
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8d

    if-nez p2, :cond_13

    const-string p0, ".secure"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto/16 :goto_8d

    .line 565
    :cond_13
    sget p0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x18

    if-ge p0, p2, :cond_76

    const-string p2, "OMX.SEC.aac.dec"

    .line 566
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_29

    const-string p2, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    :cond_29
    const-string p2, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 567
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    sget-object p2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "zeroflte"

    .line 568
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "zerolte"

    .line 569
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "zenlte"

    .line 570
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "SC-05G"

    .line 571
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "marinelteatt"

    .line 572
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "404SC"

    .line 573
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "SC-04G"

    .line 574
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string v1, "SCV31"

    .line 575
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    :cond_75
    return v0

    :cond_76
    const/16 p2, 0x17

    if-gt p0, p2, :cond_8b

    .line 580
    const-string p0, "audio/eac3-joc"

    .line 581
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    const-string p0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    .line 582
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    return v0

    :cond_8b
    const/4 p0, 0x1

    return p0

    :cond_8d
    :goto_8d
    return v0
.end method

.method public static isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .registers 4

    .line 659
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 660
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 664
    :cond_b
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 669
    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidStaticDeviceInfoDataSource$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method public static isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .registers 4

    .line 677
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 678
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 680
    :cond_b
    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_13

    return v0

    .line 684
    :cond_13
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 685
    const-string p1, "arc."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_25

    return v1

    .line 689
    :cond_25
    const-string p1, "omx.google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6f

    const-string p1, "omx.ffmpeg."

    .line 690
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6f

    const-string p1, "omx.sec."

    .line 691
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, ".sw."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6f

    :cond_45
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    .line 692
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    const-string p1, "c2.android."

    .line 693
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6f

    const-string p1, "c2.google."

    .line 694
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6f

    const-string p1, "omx."

    .line 695
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6e

    const-string p1, "c2."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto :goto_6f

    :cond_6e
    return v1

    :cond_6f
    :goto_6f
    return v0
.end method

.method public static isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 700
    invoke-static {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidStaticDeviceInfoDataSource$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method public static isVendor(Landroid/media/MediaCodecInfo;)Z
    .registers 3

    .line 708
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 709
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->isVendorV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 711
    :cond_b
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 712
    const-string v0, "omx.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "c2.android."

    .line 713
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "c2.google."

    .line 714
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    const/4 p0, 0x1

    return p0

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method public static isVendorV29(Landroid/media/MediaCodecInfo;)Z
    .registers 1

    .line 719
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method public static sortByScore(Ljava/util/List;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 768
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.AnonymousClass1 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$1;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.CodecKey (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$CodecKey)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecKey"
.end annotation


# instance fields
.field public final mimeType:Ljava/lang/String;

.field public final secure:Z

.field public final tunneling:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 891
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    .line 892
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

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

    .line 910
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;

    if-eq v2, v3, :cond_10

    goto :goto_29

    .line 913
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;

    .line 914
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-ne v2, v3, :cond_29

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-ne v2, p1, :cond_29

    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 6

    .line 899
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 900
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    if-eqz v2, :cond_14

    move v2, v4

    goto :goto_15

    :cond_14
    move v2, v3

    :goto_15
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 901
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-eqz v1, :cond_1c

    move v3, v4

    :cond_1c
    add-int/2addr v0, v3

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$DecoderQueryException)
.class public Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
.super Ljava/lang/Exception;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderQueryException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 64
    const-string v0, "Failed to query underlying media codecs"

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$1;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$MediaCodecListCompat)
.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaCodecListCompat"
.end annotation


# virtual methods
.method public abstract getCodecCount()I
.end method

.method public abstract getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
.end method

.method public abstract isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
.end method

.method public abstract isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
.end method

.method public abstract secureDecodersExplicit()Z
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompatV16 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$MediaCodecListCompatV16)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaCodecListCompatV16"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$1;)V
    .registers 2

    .line 850
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodecCount()I
    .registers 2

    .line 854
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .registers 2

    .line 859
    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method public isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 4

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 4

    .line 872
    const-string p3, "secure-playback"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "video/avc"

    .line 873
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public secureDecodersExplicit()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompatV21 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$MediaCodecListCompatV21)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaCodecListCompatV21"
.end annotation


# instance fields
.field public final codecKind:I

.field public mediaCodecInfos:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 4

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    if-eqz p3, :cond_a

    goto :goto_c

    :cond_a
    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p1, 0x1

    .line 810
    :goto_d
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    return-void
.end method


# virtual methods
.method public final ensureMediaCodecInfosInitialized()V
    .registers 3

    .line 844
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_11

    .line 845
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    :cond_11
    return-void
.end method

.method public getCodecCount()I
    .registers 2

    .line 815
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    .line 816
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .registers 3

    .line 821
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    .line 822
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 4

    .line 839
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 4

    .line 833
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public secureDecodersExplicit()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$ScoreProvider)
.class public interface abstract Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScoreProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getScore(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->$r8$lambda$KqL62aJZemnGLQRpZFz7vmT1ntU(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/Format;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/common/Format;

    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->$r8$lambda$FRycqgp0wJWE86zJwGJ8XIaZSPI(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->$r8$lambda$KgfLilVm-6uaKAxDCf_6eKlZgPQ(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda5 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->$r8$lambda$-NjgbgbZA-YhPc_Vzn31z5O053M(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result p1

    return p1
.end method
