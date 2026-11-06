###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecPerformancePointCoverageProvider (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecPerformancePointCoverageProvider)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;
.super Ljava/lang/Object;
.source "MediaCodecPerformancePointCoverageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;
    }
.end annotation


# static fields
.field public static shouldIgnorePerformancePoints:Ljava/lang/Boolean;


# direct methods
.method public static synthetic access$000()Ljava/lang/Boolean;
    .registers 1

    .line 35
    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->shouldIgnorePerformancePoints:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 1

    .line 35
    sput-object p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->shouldIgnorePerformancePoints:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static areResolutionAndFrameRateCovered(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I
    .registers 7

    .line 88
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_16

    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->shouldIgnorePerformancePoints:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    .line 93
    :cond_11
    invoke-static {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->areResolutionAndFrameRateCovered(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecPerformancePointCoverageProvider.Api29 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecPerformancePointCoverageProvider$Api29)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;
.super Ljava/lang/Object;
.source "MediaCodecPerformancePointCoverageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api29"
.end annotation


# direct methods
.method public static areResolutionAndFrameRateCovered(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I
    .registers 7

    .line 101
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    .line 102
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3a

    .line 109
    :cond_e
    invoke-static {}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29$$ExternalSyntheticApiModelOutline1;->m()V

    double-to-int p3, p3

    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29$$ExternalSyntheticApiModelOutline0;->m(III)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object p1

    .line 114
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->evaluatePerformancePointCoverage(Ljava/util/List;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_39

    .line 117
    invoke-static {}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->access$000()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_39

    .line 121
    invoke-static {}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->shouldIgnorePerformancePoints()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 122
    invoke-static {}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->access$000()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_39

    return v0

    :cond_39
    return p0

    :cond_3a
    :goto_3a
    return v0
.end method

.method public static evaluateH264RequiredSupport(Z)I
    .registers 5

    const/4 v0, 0x0

    .line 158
    :try_start_1
    new-instance v1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v2, "video/avc"

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v1

    .line 160
    iget-object v2, v1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v2, :cond_66

    .line 161
    sget-object v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 162
    invoke-static {v2, v1, p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSoftMatch(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    move v1, v0

    .line 167
    :goto_1b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 168
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v2, :cond_63

    .line 169
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 172
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 174
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    .line 175
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 176
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    .line 177
    invoke-static {}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29$$ExternalSyntheticApiModelOutline1;->m()V

    const/16 p0, 0x2d0

    const/16 v1, 0x3c

    const/16 v3, 0x500

    invoke-static {v3, p0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29$$ExternalSyntheticApiModelOutline0;->m(III)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object p0

    .line 179
    invoke-static {v2, p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->evaluatePerformancePointCoverage(Ljava/util/List;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I

    move-result p0
    :try_end_62
    .catch Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_1 .. :try_end_62} :catch_66

    return p0

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :catch_66
    :cond_66
    return v0
.end method

.method public static evaluatePerformancePointCoverage(Ljava/util/List;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ">;",
            "Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 194
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29$$ExternalSyntheticApiModelOutline3;->m(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object v1

    invoke-static {v1, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29$$ExternalSyntheticApiModelOutline4;->m(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p0, 0x2

    return p0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldIgnorePerformancePoints()Z
    .registers 5

    .line 134
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-lt v0, v1, :cond_8

    return v2

    .line 140
    :cond_8
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->evaluateH264RequiredSupport(Z)I

    move-result v0

    const/4 v1, 0x1

    .line 143
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider$Api29;->evaluateH264RequiredSupport(Z)I

    move-result v3

    if-nez v0, :cond_14

    return v1

    :cond_14
    const/4 v4, 0x2

    if-nez v3, :cond_1b

    if-eq v0, v4, :cond_1a

    return v1

    :cond_1a
    return v2

    :cond_1b
    if-ne v0, v4, :cond_21

    if-eq v3, v4, :cond_20

    goto :goto_21

    :cond_20
    return v2

    :cond_21
    :goto_21
    return v1
.end method
