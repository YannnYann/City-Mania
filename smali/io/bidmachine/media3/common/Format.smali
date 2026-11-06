###### Class io.bidmachine.media3.common.Format (io.bidmachine.media3.common.Format)
.class public final Lio/bidmachine/media3/common/Format;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/common/Format$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/common/Format;

.field public static final FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

.field public static final FIELD_AUXILIARY_TRACK_TYPE:Ljava/lang/String;

.field public static final FIELD_AVERAGE_BITRATE:Ljava/lang/String;

.field public static final FIELD_CHANNEL_COUNT:Ljava/lang/String;

.field public static final FIELD_CODECS:Ljava/lang/String;

.field public static final FIELD_COLOR_INFO:Ljava/lang/String;

.field public static final FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

.field public static final FIELD_CRYPTO_TYPE:Ljava/lang/String;

.field public static final FIELD_DRM_INIT_DATA:Ljava/lang/String;

.field public static final FIELD_ENCODER_DELAY:Ljava/lang/String;

.field public static final FIELD_ENCODER_PADDING:Ljava/lang/String;

.field public static final FIELD_FRAME_RATE:Ljava/lang/String;

.field public static final FIELD_HEIGHT:Ljava/lang/String;

.field public static final FIELD_ID:Ljava/lang/String;

.field public static final FIELD_INITIALIZATION_DATA:Ljava/lang/String;

.field public static final FIELD_LABEL:Ljava/lang/String;

.field public static final FIELD_LABELS:Ljava/lang/String;

.field public static final FIELD_LANGUAGE:Ljava/lang/String;

.field public static final FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

.field public static final FIELD_MAX_SUB_LAYERS:Ljava/lang/String;

.field public static final FIELD_PCM_ENCODING:Ljava/lang/String;

.field public static final FIELD_PEAK_BITRATE:Ljava/lang/String;

.field public static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field public static final FIELD_PROJECTION_DATA:Ljava/lang/String;

.field public static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field public static final FIELD_ROTATION_DEGREES:Ljava/lang/String;

.field public static final FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

.field public static final FIELD_SAMPLE_RATE:Ljava/lang/String;

.field public static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field public static final FIELD_STEREO_MODE:Ljava/lang/String;

.field public static final FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

.field public static final FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

.field public static final FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

.field public static final FIELD_WIDTH:Ljava/lang/String;

.field public static final UNUSED_FIELD_METADATA:Ljava/lang/String;


# instance fields
.field public final accessibilityChannel:I

.field public final auxiliaryTrackType:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Lio/bidmachine/media3/common/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final cryptoType:I

.field public final cueReplacementBehavior:I

.field public final customData:Ljava/lang/Object;

.field public final drmInitData:Lio/bidmachine/media3/common/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field public final hasPrerollSamples:Z

.field public hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Label;",
            ">;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final maxNumReorderSamples:I

.field public final maxSubLayers:I

.field public final metadata:Lio/bidmachine/media3/common/Metadata;

.field public final pcmEncoding:I

.field public final peakBitrate:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final tileCountHorizontal:I

.field public final tileCountVertical:I

.field public final width:I


# direct methods
.method public static synthetic $r8$lambda$6sCHg1FQj_uptb7zN5R95FqVbLE(Lio/bidmachine/media3/common/Label;)Ljava/lang/String;
    .registers 3

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/common/Label;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/bidmachine/media3/common/Label;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 850
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->DEFAULT:Lio/bidmachine/media3/common/Format;

    const/4 v0, 0x0

    .line 1522
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1523
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1524
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1525
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1526
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1527
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1528
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    const/4 v0, 0x7

    .line 1529
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    const/16 v0, 0x8

    .line 1531
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->UNUSED_FIELD_METADATA:Ljava/lang/String;

    const/16 v0, 0x9

    .line 1532
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    const/16 v0, 0xa

    .line 1533
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    const/16 v0, 0xb

    .line 1534
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    const/16 v0, 0xc

    .line 1535
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    const/16 v0, 0xd

    .line 1536
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    const/16 v0, 0xe

    .line 1537
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    const/16 v0, 0xf

    .line 1538
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    const/16 v0, 0x10

    .line 1539
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    const/16 v0, 0x11

    .line 1540
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    const/16 v0, 0x12

    .line 1541
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    const/16 v0, 0x13

    .line 1542
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    const/16 v0, 0x14

    .line 1543
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    const/16 v0, 0x15

    .line 1544
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    const/16 v0, 0x16

    .line 1545
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    const/16 v0, 0x17

    .line 1546
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    const/16 v0, 0x18

    .line 1547
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    const/16 v0, 0x19

    .line 1548
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    const/16 v0, 0x1a

    .line 1549
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    const/16 v0, 0x1b

    .line 1550
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    const/16 v0, 0x1c

    .line 1551
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    const/16 v0, 0x1d

    .line 1552
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    const/16 v0, 0x1e

    .line 1553
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    const/16 v0, 0x1f

    .line 1554
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    const/16 v0, 0x20

    .line 1555
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_LABELS:Ljava/lang/String;

    const/16 v0, 0x21

    .line 1556
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_AUXILIARY_TRACK_TYPE:Ljava/lang/String;

    const/16 v0, 0x22

    .line 1557
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/Format;->FIELD_MAX_SUB_LAYERS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/Format$Builder;)V
    .registers 9

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$300(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    .line 1107
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$400(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    .line 1108
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$100(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$200(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 1109
    new-instance v1, Lio/bidmachine/media3/common/Label;

    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$200(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/bidmachine/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    .line 1110
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$200(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    goto :goto_6d

    .line 1111
    :cond_39
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$100(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$200(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 1112
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$100(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    .line 1113
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$100(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/Format;->getDefaultLabel(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    goto :goto_6d

    .line 1115
    :cond_5a
    invoke-static {p1}, Lio/bidmachine/media3/common/Format;->isLabelPartOfLabels(Lio/bidmachine/media3/common/Format$Builder;)Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1116
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$100(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    .line 1117
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$200(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    .line 1119
    :goto_6d
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$500(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    .line 1122
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$600(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_88

    .line 1123
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$700(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v0

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_86

    goto :goto_88

    :cond_86
    move v0, v2

    goto :goto_89

    :cond_88
    :goto_88
    move v0, v1

    :goto_89
    const-string v3, "Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set"

    .line 1121
    invoke-static {v0, v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 1126
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$700(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    .line 1127
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$600(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/Format;->auxiliaryTrackType:I

    .line 1128
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$800(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    .line 1129
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$900(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_aa

    move v0, v3

    .line 1130
    :cond_aa
    iput v0, p0, Lio/bidmachine/media3/common/Format;->bitrate:I

    .line 1131
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1000(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 1132
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1100(Lio/bidmachine/media3/common/Format$Builder;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    .line 1133
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1200(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->customData:Ljava/lang/Object;

    .line 1135
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1300(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 1137
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1400(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1138
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1500(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/Format;->maxInputSize:I

    .line 1139
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1600(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/common/Format;->maxNumReorderSamples:I

    .line 1141
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1700(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_df

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_e3

    :cond_df
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1700(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    :goto_e3
    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    .line 1142
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1800(Lio/bidmachine/media3/common/Format$Builder;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    .line 1143
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$1900(Lio/bidmachine/media3/common/Format$Builder;)J

    move-result-wide v5

    iput-wide v5, p0, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    .line 1144
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2000(Lio/bidmachine/media3/common/Format$Builder;)Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/media3/common/Format;->hasPrerollSamples:Z

    .line 1146
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2100(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/common/Format;->width:I

    .line 1147
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2200(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/common/Format;->height:I

    .line 1148
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2300(Lio/bidmachine/media3/common/Format$Builder;)F

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/common/Format;->frameRate:F

    .line 1149
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2400(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    if-ne v3, v4, :cond_111

    move v3, v2

    goto :goto_115

    :cond_111
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2400(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    :goto_115
    iput v3, p0, Lio/bidmachine/media3/common/Format;->rotationDegrees:I

    .line 1151
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2500(Lio/bidmachine/media3/common/Format$Builder;)F

    move-result v3

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v3, v3, v5

    if-nez v3, :cond_124

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_128

    :cond_124
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2500(Lio/bidmachine/media3/common/Format$Builder;)F

    move-result v3

    :goto_128
    iput v3, p0, Lio/bidmachine/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1152
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2600(Lio/bidmachine/media3/common/Format$Builder;)[B

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/Format;->projectionData:[B

    .line 1153
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2700(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/common/Format;->stereoMode:I

    .line 1154
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2800(Lio/bidmachine/media3/common/Format$Builder;)Lio/bidmachine/media3/common/ColorInfo;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    .line 1155
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$2900(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/common/Format;->maxSubLayers:I

    .line 1157
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3000(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/common/Format;->channelCount:I

    .line 1158
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3100(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    .line 1159
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3200(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    .line 1160
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3300(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    if-ne v3, v4, :cond_15c

    move v3, v2

    goto :goto_160

    :cond_15c
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3300(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    :goto_160
    iput v3, p0, Lio/bidmachine/media3/common/Format;->encoderDelay:I

    .line 1161
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3400(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v3

    if-ne v3, v4, :cond_169

    goto :goto_16d

    :cond_169
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3400(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v2

    :goto_16d
    iput v2, p0, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    .line 1163
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3500(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v2

    iput v2, p0, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    .line 1164
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3600(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v2

    iput v2, p0, Lio/bidmachine/media3/common/Format;->cueReplacementBehavior:I

    .line 1166
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3700(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v2

    iput v2, p0, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    .line 1167
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3800(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v2

    iput v2, p0, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    .line 1169
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3900(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result v2

    if-nez v2, :cond_192

    if-eqz v0, :cond_192

    .line 1171
    iput v1, p0, Lio/bidmachine/media3/common/Format;->cryptoType:I

    return-void

    .line 1173
    :cond_192
    invoke-static {p1}, Lio/bidmachine/media3/common/Format$Builder;->access$3900(Lio/bidmachine/media3/common/Format$Builder;)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/common/Format;->cryptoType:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/Format$Builder;Lio/bidmachine/media3/common/Format$1;)V
    .registers 3

    .line 132
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/Format;-><init>(Lio/bidmachine/media3/common/Format$Builder;)V

    return-void
.end method

.method public static getDefaultLabel(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Label;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1717
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/Label;

    .line 1718
    iget-object v2, v1, Lio/bidmachine/media3/common/Label;->language:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1719
    iget-object p0, v1, Lio/bidmachine/media3/common/Label;->value:Ljava/lang/String;

    return-object p0

    :cond_1b
    const/4 p1, 0x0

    .line 1722
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/common/Label;

    iget-object p0, p0, Lio/bidmachine/media3/common/Label;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static isLabelPartOfLabels(Lio/bidmachine/media3/common/Format$Builder;)Z
    .registers 6

    .line 1094
    invoke-static {p0}, Lio/bidmachine/media3/common/Format$Builder;->access$100(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-static {p0}, Lio/bidmachine/media3/common/Format$Builder;->access$200(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x0

    move v2, v0

    .line 1097
    :goto_14
    invoke-static {p0}, Lio/bidmachine/media3/common/Format$Builder;->access$100(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 1098
    invoke-static {p0}, Lio/bidmachine/media3/common/Format$Builder;->access$100(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/Label;

    iget-object v3, v3, Lio/bidmachine/media3/common/Label;->value:Ljava/lang/String;

    invoke-static {p0}, Lio/bidmachine/media3/common/Format$Builder;->access$200(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    return v1

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_38
    return v0
.end method

.method public static toLogString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;
    .registers 11

    if-nez p0, :cond_5

    .line 1435
    const-string p0, "null"

    return-object p0

    :cond_5
    const/16 v0, 0x2c

    .line 1437
    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1439
    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mimeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-eqz v2, :cond_32

    .line 1441
    const-string v2, ", container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    :cond_32
    iget v2, p0, Lio/bidmachine/media3/common/Format;->bitrate:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_41

    .line 1444
    const-string v2, ", bitrate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->bitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1446
    :cond_41
    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v2, :cond_4f

    .line 1447
    const-string v2, ", codecs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    :cond_4f
    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    if-eqz v2, :cond_d4

    .line 1450
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v4, 0x0

    .line 1451
    :goto_59
    iget-object v5, p0, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    iget v6, v5, Lio/bidmachine/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v4, v6, :cond_c7

    .line 1452
    invoke-virtual {v5, v4}, Lio/bidmachine/media3/common/DrmInitData;->get(I)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object v5

    iget-object v5, v5, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 1453
    sget-object v6, Lio/bidmachine/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1454
    const-string v5, "cenc"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    .line 1455
    :cond_73
    sget-object v6, Lio/bidmachine/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 1456
    const-string v5, "clearkey"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    .line 1457
    :cond_81
    sget-object v6, Lio/bidmachine/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 1458
    const-string v5, "playready"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    .line 1459
    :cond_8f
    sget-object v6, Lio/bidmachine/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 1460
    const-string v5, "widevine"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    .line 1461
    :cond_9d
    sget-object v6, Lio/bidmachine/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 1462
    const-string v5, "universal"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c4

    .line 1464
    :cond_ab
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_c4
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 1467
    :cond_c7
    const-string v4, ", drm=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    .line 1469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1471
    :cond_d4
    iget v2, p0, Lio/bidmachine/media3/common/Format;->width:I

    if-eq v2, v3, :cond_f0

    iget v2, p0, Lio/bidmachine/media3/common/Format;->height:I

    if-eq v2, v3, :cond_f0

    .line 1472
    const-string v2, ", res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1474
    :cond_f0
    iget v2, p0, Lio/bidmachine/media3/common/Format;->pixelWidthHeightRatio:F

    float-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static/range {v4 .. v9}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v2

    if-nez v2, :cond_118

    .line 1475
    const-string v2, ", par="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%.3f"

    invoke-static {v4, v2}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    :cond_118
    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    if-eqz v2, :cond_130

    invoke-virtual {v2}, Lio/bidmachine/media3/common/ColorInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_130

    .line 1478
    const-string v2, ", color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/ColorInfo;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    :cond_130
    iget v2, p0, Lio/bidmachine/media3/common/Format;->frameRate:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_142

    .line 1481
    const-string v2, ", fps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->frameRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1483
    :cond_142
    iget v2, p0, Lio/bidmachine/media3/common/Format;->maxSubLayers:I

    if-eq v2, v3, :cond_150

    .line 1484
    const-string v2, ", maxSubLayers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->maxSubLayers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1486
    :cond_150
    iget v2, p0, Lio/bidmachine/media3/common/Format;->channelCount:I

    if-eq v2, v3, :cond_15e

    .line 1487
    const-string v2, ", channels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->channelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1489
    :cond_15e
    iget v2, p0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    if-eq v2, v3, :cond_16c

    .line 1490
    const-string v2, ", sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1492
    :cond_16c
    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v2, :cond_17a

    .line 1493
    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    :cond_17a
    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "]"

    if-nez v2, :cond_19a

    .line 1496
    const-string v2, ", labels=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    new-instance v4, Lio/bidmachine/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lio/bidmachine/media3/common/Format$$ExternalSyntheticLambda0;-><init>()V

    .line 1498
    invoke-static {v2, v4}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v2

    .line 1497
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1499
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    :cond_19a
    iget v2, p0, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    if-eqz v2, :cond_1af

    .line 1502
    const-string v2, ", selectionFlags=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    iget v2, p0, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->getSelectionFlagStrings(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1504
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    :cond_1af
    iget v2, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    if-eqz v2, :cond_1c4

    .line 1507
    const-string v2, ", roleFlags=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    iget v2, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->getRoleFlagStrings(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1509
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    :cond_1c4
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->customData:Ljava/lang/Object;

    if-eqz v0, :cond_1d2

    .line 1512
    const-string v0, ", customData="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->customData:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1514
    :cond_1d2
    iget v0, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1e8

    .line 1515
    const-string v0, ", auxiliaryTrackType="

    .line 1516
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/bidmachine/media3/common/Format;->auxiliaryTrackType:I

    .line 1517
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->getAuxiliaryTrackTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    :cond_1e8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lio/bidmachine/media3/common/Format$Builder;
    .registers 3

    .line 1180
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/Format$Builder;-><init>(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format$1;)V

    return-object v0
.end method

.method public copyWithCryptoType(I)Lio/bidmachine/media3/common/Format;
    .registers 3

    .line 1260
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setCryptoType(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_131

    .line 1362
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/Format;

    if-eq v3, v2, :cond_11

    goto/16 :goto_131

    .line 1365
    :cond_11
    check-cast p1, Lio/bidmachine/media3/common/Format;

    .line 1366
    iget v2, p0, Lio/bidmachine/media3/common/Format;->hashCode:I

    if-eqz v2, :cond_1e

    iget v3, p1, Lio/bidmachine/media3/common/Format;->hashCode:I

    if-eqz v3, :cond_1e

    if-eq v2, v3, :cond_1e

    return v1

    .line 1370
    :cond_1e
    iget v2, p0, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->roleFlags:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->auxiliaryTrackType:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->auxiliaryTrackType:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->maxInputSize:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->maxInputSize:I

    if-ne v2, v3, :cond_131

    iget-wide v2, p0, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->width:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->width:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->height:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->height:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->rotationDegrees:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->stereoMode:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->stereoMode:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->maxSubLayers:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->maxSubLayers:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->channelCount:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->channelCount:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->sampleRate:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->encoderDelay:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->encoderDelay:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->cryptoType:I

    iget v3, p1, Lio/bidmachine/media3/common/Format;->cryptoType:I

    if-ne v2, v3, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->frameRate:F

    iget v3, p1, Lio/bidmachine/media3/common/Format;->frameRate:F

    .line 1391
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_131

    iget v2, p0, Lio/bidmachine/media3/common/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Lio/bidmachine/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1392
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    .line 1393
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    .line 1394
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    .line 1395
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 1396
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 1397
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1398
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    .line 1399
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->projectionData:[B

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->projectionData:[B

    .line 1400
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    .line 1401
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    .line 1402
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    .line 1403
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 1404
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format;->initializationDataEquals(Lio/bidmachine/media3/common/Format;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->customData:Ljava/lang/Object;

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->customData:Ljava/lang/Object;

    .line 1405
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_131

    return v0

    :cond_131
    :goto_131
    return v1
.end method

.method public getPixelCount()I
    .registers 4

    .line 1269
    iget v0, p0, Lio/bidmachine/media3/common/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v2, p0, Lio/bidmachine/media3/common/Format;->height:I

    if-ne v2, v1, :cond_a

    goto :goto_c

    :cond_a
    mul-int/2addr v0, v2

    return v0

    :cond_c
    :goto_c
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1306
    iget v0, p0, Lio/bidmachine/media3/common/Format;->hashCode:I

    if-nez v0, :cond_f3

    .line 1309
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1310
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    if-nez v0, :cond_1a

    move v0, v1

    goto :goto_1e

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1e
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1311
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1312
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    if-nez v0, :cond_30

    move v0, v1

    goto :goto_34

    :cond_30
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_34
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1313
    iget v0, p0, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1314
    iget v0, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1315
    iget v0, p0, Lio/bidmachine/media3/common/Format;->auxiliaryTrackType:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1316
    iget v0, p0, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1317
    iget v0, p0, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1318
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    if-nez v0, :cond_56

    move v0, v1

    goto :goto_5a

    :cond_56
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5a
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1319
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-nez v0, :cond_63

    move v0, v1

    goto :goto_67

    :cond_63
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Metadata;->hashCode()I

    move-result v0

    :goto_67
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1320
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->customData:Ljava/lang/Object;

    if-nez v0, :cond_70

    move v0, v1

    goto :goto_74

    :cond_70
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_74
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1322
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-nez v0, :cond_7d

    move v0, v1

    goto :goto_81

    :cond_7d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_81
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1324
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_89

    goto :goto_8d

    :cond_89
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8d
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 1325
    iget v0, p0, Lio/bidmachine/media3/common/Format;->maxInputSize:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1328
    iget-wide v0, p0, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1330
    iget v0, p0, Lio/bidmachine/media3/common/Format;->width:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1331
    iget v0, p0, Lio/bidmachine/media3/common/Format;->height:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1332
    iget v0, p0, Lio/bidmachine/media3/common/Format;->frameRate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1333
    iget v0, p0, Lio/bidmachine/media3/common/Format;->rotationDegrees:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1334
    iget v0, p0, Lio/bidmachine/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1336
    iget v0, p0, Lio/bidmachine/media3/common/Format;->stereoMode:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1338
    iget v0, p0, Lio/bidmachine/media3/common/Format;->maxSubLayers:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1340
    iget v0, p0, Lio/bidmachine/media3/common/Format;->channelCount:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1341
    iget v0, p0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1342
    iget v0, p0, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1343
    iget v0, p0, Lio/bidmachine/media3/common/Format;->encoderDelay:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1344
    iget v0, p0, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1346
    iget v0, p0, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1348
    iget v0, p0, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1349
    iget v0, p0, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 1351
    iget v0, p0, Lio/bidmachine/media3/common/Format;->cryptoType:I

    add-int/2addr v2, v0

    .line 1352
    iput v2, p0, Lio/bidmachine/media3/common/Format;->hashCode:I

    .line 1354
    :cond_f3
    iget v0, p0, Lio/bidmachine/media3/common/Format;->hashCode:I

    return v0
.end method

.method public initializationDataEquals(Lio/bidmachine/media3/common/Format;)Z
    .registers 6

    .line 1418
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    return v2

    :cond_10
    move v0, v2

    .line 1421
    :goto_11
    iget-object v1, p0, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1422
    iget-object v1, p0, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_33
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/bidmachine/media3/common/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withManifestFormatInfo(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 16

    if-ne p0, p1, :cond_3

    return-object p0

    .line 1191
    :cond_3
    iget-object v0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 1194
    iget-object v1, p1, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    .line 1195
    iget v2, p1, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    .line 1196
    iget v3, p1, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    .line 1199
    iget-object v4, p1, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    if-eqz v4, :cond_14

    goto :goto_16

    :cond_14
    iget-object v4, p0, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    .line 1200
    :goto_16
    iget-object v5, p1, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    iget-object v5, p1, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    goto :goto_23

    :cond_21
    iget-object v5, p0, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    .line 1201
    :goto_23
    iget-object v6, p0, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v0, v7, :cond_2b

    if-ne v0, v8, :cond_30

    .line 1202
    :cond_2b
    iget-object v7, p1, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v7, :cond_30

    move-object v6, v7

    .line 1209
    :cond_30
    iget v7, p0, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_37

    iget v7, p1, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    .line 1210
    :cond_37
    iget v10, p0, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    if-ne v10, v9, :cond_3d

    iget v10, p1, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    .line 1211
    :cond_3d
    iget-object v9, p0, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    if-nez v9, :cond_4f

    .line 1215
    iget-object v11, p1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v11, v0}, Lio/bidmachine/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1216
    invoke-static {v11}, Lio/bidmachine/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    if-ne v12, v8, :cond_4f

    move-object v9, v11

    .line 1223
    :cond_4f
    iget-object v8, p0, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-nez v8, :cond_56

    .line 1224
    iget-object v8, p1, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    goto :goto_5c

    .line 1225
    :cond_56
    iget-object v11, p1, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    invoke-virtual {v8, v11}, Lio/bidmachine/media3/common/Metadata;->copyWithAppendedEntriesFrom(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v8

    .line 1227
    :goto_5c
    iget v11, p0, Lio/bidmachine/media3/common/Format;->frameRate:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v11, v12

    if-nez v12, :cond_69

    const/4 v12, 0x2

    if-ne v0, v12, :cond_69

    .line 1229
    iget v11, p1, Lio/bidmachine/media3/common/Format;->frameRate:F

    .line 1233
    :cond_69
    iget v0, p0, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    iget v12, p1, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    or-int/2addr v0, v12

    .line 1234
    iget v12, p0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    iget v13, p1, Lio/bidmachine/media3/common/Format;->roleFlags:I

    or-int/2addr v12, v13

    .line 1236
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    iget-object v13, p0, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    .line 1237
    invoke-static {p1, v13}, Lio/bidmachine/media3/common/DrmInitData;->createSessionCreationData(Lio/bidmachine/media3/common/DrmInitData;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object p1

    .line 1239
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v13

    .line 1240
    invoke-virtual {v13, v1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 1241
    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 1242
    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 1243
    invoke-virtual {v1, v6}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 1244
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1245
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1246
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/common/Format$Builder;->setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1247
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/Format$Builder;->setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1248
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1249
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1250
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 1251
    invoke-virtual {p1, v11}, Lio/bidmachine/media3/common/Format$Builder;->setFrameRate(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 1252
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setTileCountHorizontal(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 1253
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setTileCountVertical(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 1254
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.common.Format.AnonymousClass1 (io.bidmachine.media3.common.Format$1)
.class public synthetic Lio/bidmachine/media3/common/Format$1;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.common.Format.Builder (io.bidmachine.media3.common.Format$Builder)
.class public final Lio/bidmachine/media3/common/Format$Builder;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/common/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public accessibilityChannel:I

.field public auxiliaryTrackType:I

.field public averageBitrate:I

.field public channelCount:I

.field public codecs:Ljava/lang/String;

.field public colorInfo:Lio/bidmachine/media3/common/ColorInfo;

.field public containerMimeType:Ljava/lang/String;

.field public cryptoType:I

.field public cueReplacementBehavior:I

.field public customData:Ljava/lang/Object;

.field public drmInitData:Lio/bidmachine/media3/common/DrmInitData;

.field public encoderDelay:I

.field public encoderPadding:I

.field public frameRate:F

.field public hasPrerollSamples:Z

.field public height:I

.field public id:Ljava/lang/String;

.field public initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public label:Ljava/lang/String;

.field public labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Label;",
            ">;"
        }
    .end annotation
.end field

.field public language:Ljava/lang/String;

.field public maxInputSize:I

.field public maxNumReorderSamples:I

.field public maxSubLayers:I

.field public metadata:Lio/bidmachine/media3/common/Metadata;

.field public pcmEncoding:I

.field public peakBitrate:I

.field public pixelWidthHeightRatio:F

.field public projectionData:[B

.field public roleFlags:I

.field public rotationDegrees:I

.field public sampleMimeType:Ljava/lang/String;

.field public sampleRate:I

.field public selectionFlags:I

.field public stereoMode:I

.field public subsampleOffsetUs:J

.field public tileCountHorizontal:I

.field public tileCountVertical:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->labels:Ljava/util/List;

    const/4 v0, -0x1

    .line 210
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->averageBitrate:I

    .line 211
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->peakBitrate:I

    .line 213
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->maxInputSize:I

    .line 214
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->maxNumReorderSamples:I

    const-wide v1, 0x7fffffffffffffffL

    .line 215
    iput-wide v1, p0, Lio/bidmachine/media3/common/Format$Builder;->subsampleOffsetUs:J

    .line 217
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->width:I

    .line 218
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->height:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 219
    iput v1, p0, Lio/bidmachine/media3/common/Format$Builder;->frameRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 220
    iput v1, p0, Lio/bidmachine/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    .line 221
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->stereoMode:I

    .line 222
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->maxSubLayers:I

    .line 224
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->channelCount:I

    .line 225
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->sampleRate:I

    .line 226
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->pcmEncoding:I

    .line 228
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->accessibilityChannel:I

    const/4 v1, 0x1

    .line 229
    iput v1, p0, Lio/bidmachine/media3/common/Format$Builder;->cueReplacementBehavior:I

    .line 231
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->tileCountHorizontal:I

    .line 232
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->tileCountVertical:I

    const/4 v0, 0x0

    .line 234
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->cryptoType:I

    .line 235
    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->auxiliaryTrackType:I

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/Format;)V
    .registers 4

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->id:Ljava/lang/String;

    .line 245
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->label:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->label:Ljava/lang/String;

    .line 246
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->labels:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->labels:Ljava/util/List;

    .line 247
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->language:Ljava/lang/String;

    .line 248
    iget v0, p1, Lio/bidmachine/media3/common/Format;->selectionFlags:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->selectionFlags:I

    .line 249
    iget v0, p1, Lio/bidmachine/media3/common/Format;->roleFlags:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->roleFlags:I

    .line 250
    iget v0, p1, Lio/bidmachine/media3/common/Format;->averageBitrate:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->averageBitrate:I

    .line 251
    iget v0, p1, Lio/bidmachine/media3/common/Format;->peakBitrate:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->peakBitrate:I

    .line 252
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    .line 253
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->metadata:Lio/bidmachine/media3/common/Metadata;

    .line 254
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->customData:Ljava/lang/Object;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->customData:Ljava/lang/Object;

    .line 256
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 258
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 259
    iget v0, p1, Lio/bidmachine/media3/common/Format;->maxInputSize:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->maxInputSize:I

    .line 260
    iget v0, p1, Lio/bidmachine/media3/common/Format;->maxNumReorderSamples:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->maxNumReorderSamples:I

    .line 261
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    .line 262
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    .line 263
    iget-wide v0, p1, Lio/bidmachine/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/common/Format$Builder;->subsampleOffsetUs:J

    .line 264
    iget-boolean v0, p1, Lio/bidmachine/media3/common/Format;->hasPrerollSamples:Z

    iput-boolean v0, p0, Lio/bidmachine/media3/common/Format$Builder;->hasPrerollSamples:Z

    .line 266
    iget v0, p1, Lio/bidmachine/media3/common/Format;->width:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->width:I

    .line 267
    iget v0, p1, Lio/bidmachine/media3/common/Format;->height:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->height:I

    .line 268
    iget v0, p1, Lio/bidmachine/media3/common/Format;->frameRate:F

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->frameRate:F

    .line 269
    iget v0, p1, Lio/bidmachine/media3/common/Format;->rotationDegrees:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->rotationDegrees:I

    .line 270
    iget v0, p1, Lio/bidmachine/media3/common/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    .line 271
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->projectionData:[B

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->projectionData:[B

    .line 272
    iget v0, p1, Lio/bidmachine/media3/common/Format;->stereoMode:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->stereoMode:I

    .line 273
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    iput-object v0, p0, Lio/bidmachine/media3/common/Format$Builder;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    .line 274
    iget v0, p1, Lio/bidmachine/media3/common/Format;->maxSubLayers:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->maxSubLayers:I

    .line 276
    iget v0, p1, Lio/bidmachine/media3/common/Format;->channelCount:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->channelCount:I

    .line 277
    iget v0, p1, Lio/bidmachine/media3/common/Format;->sampleRate:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->sampleRate:I

    .line 278
    iget v0, p1, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->pcmEncoding:I

    .line 279
    iget v0, p1, Lio/bidmachine/media3/common/Format;->encoderDelay:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->encoderDelay:I

    .line 280
    iget v0, p1, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->encoderPadding:I

    .line 282
    iget v0, p1, Lio/bidmachine/media3/common/Format;->accessibilityChannel:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->accessibilityChannel:I

    .line 283
    iget v0, p1, Lio/bidmachine/media3/common/Format;->cueReplacementBehavior:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->cueReplacementBehavior:I

    .line 285
    iget v0, p1, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->tileCountHorizontal:I

    .line 286
    iget v0, p1, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    iput v0, p0, Lio/bidmachine/media3/common/Format$Builder;->tileCountVertical:I

    .line 288
    iget p1, p1, Lio/bidmachine/media3/common/Format;->cryptoType:I

    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->cryptoType:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format$1;)V
    .registers 3

    .line 144
    invoke-direct {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;-><init>(Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->labels:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/common/Format$Builder;)Lio/bidmachine/media3/common/Metadata;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->metadata:Lio/bidmachine/media3/common/Metadata;

    return-object p0
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/Object;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->customData:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1500(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->maxInputSize:I

    return p0
.end method

.method public static synthetic access$1600(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->maxNumReorderSamples:I

    return p0
.end method

.method public static synthetic access$1700(Lio/bidmachine/media3/common/Format$Builder;)Ljava/util/List;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1800(Lio/bidmachine/media3/common/Format$Builder;)Lio/bidmachine/media3/common/DrmInitData;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    return-object p0
.end method

.method public static synthetic access$1900(Lio/bidmachine/media3/common/Format$Builder;)J
    .registers 3

    .line 144
    iget-wide v0, p0, Lio/bidmachine/media3/common/Format$Builder;->subsampleOffsetUs:J

    return-wide v0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2000(Lio/bidmachine/media3/common/Format$Builder;)Z
    .registers 1

    .line 144
    iget-boolean p0, p0, Lio/bidmachine/media3/common/Format$Builder;->hasPrerollSamples:Z

    return p0
.end method

.method public static synthetic access$2100(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->width:I

    return p0
.end method

.method public static synthetic access$2200(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->height:I

    return p0
.end method

.method public static synthetic access$2300(Lio/bidmachine/media3/common/Format$Builder;)F
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->frameRate:F

    return p0
.end method

.method public static synthetic access$2400(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->rotationDegrees:I

    return p0
.end method

.method public static synthetic access$2500(Lio/bidmachine/media3/common/Format$Builder;)F
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    return p0
.end method

.method public static synthetic access$2600(Lio/bidmachine/media3/common/Format$Builder;)[B
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->projectionData:[B

    return-object p0
.end method

.method public static synthetic access$2700(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->stereoMode:I

    return p0
.end method

.method public static synthetic access$2800(Lio/bidmachine/media3/common/Format$Builder;)Lio/bidmachine/media3/common/ColorInfo;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    return-object p0
.end method

.method public static synthetic access$2900(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->maxSubLayers:I

    return p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$3000(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->channelCount:I

    return p0
.end method

.method public static synthetic access$3100(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->sampleRate:I

    return p0
.end method

.method public static synthetic access$3200(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->pcmEncoding:I

    return p0
.end method

.method public static synthetic access$3300(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->encoderDelay:I

    return p0
.end method

.method public static synthetic access$3400(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->encoderPadding:I

    return p0
.end method

.method public static synthetic access$3500(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->accessibilityChannel:I

    return p0
.end method

.method public static synthetic access$3600(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->cueReplacementBehavior:I

    return p0
.end method

.method public static synthetic access$3700(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->tileCountHorizontal:I

    return p0
.end method

.method public static synthetic access$3800(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->tileCountVertical:I

    return p0
.end method

.method public static synthetic access$3900(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->cryptoType:I

    return p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/common/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 144
    iget-object p0, p0, Lio/bidmachine/media3/common/Format$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->selectionFlags:I

    return p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->auxiliaryTrackType:I

    return p0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->roleFlags:I

    return p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->averageBitrate:I

    return p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/common/Format$Builder;)I
    .registers 1

    .line 144
    iget p0, p0, Lio/bidmachine/media3/common/Format$Builder;->peakBitrate:I

    return p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/common/Format;
    .registers 3

    .line 807
    new-instance v0, Lio/bidmachine/media3/common/Format;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/common/Format;-><init>(Lio/bidmachine/media3/common/Format$Builder;Lio/bidmachine/media3/common/Format$1;)V

    return-object v0
.end method

.method public setAccessibilityChannel(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 747
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->accessibilityChannel:I

    return-object p0
.end method

.method public setAuxiliaryTrackType(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 397
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->auxiliaryTrackType:I

    return-object p0
.end method

.method public setAverageBitrate(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 409
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->averageBitrate:I

    return-object p0
.end method

.method public setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 685
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->channelCount:I

    return-object p0
.end method

.method public setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 433
    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    return-object p0
.end method

.method public setColorInfo(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 659
    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    return-object p0
.end method

.method public setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 475
    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setCryptoType(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 800
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->cryptoType:I

    return-object p0
.end method

.method public setCueReplacementBehavior(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 760
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->cueReplacementBehavior:I

    return-object p0
.end method

.method public setCustomData(Ljava/lang/Object;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 461
    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->customData:Ljava/lang/Object;

    return-object p0
.end method

.method public setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 537
    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    return-object p0
.end method

.method public setEncoderDelay(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 721
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->encoderDelay:I

    return-object p0
.end method

.method public setEncoderPadding(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 733
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->encoderPadding:I

    return-object p0
.end method

.method public setFrameRate(F)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 599
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->frameRate:F

    return-object p0
.end method

.method public setHasPrerollSamples(Z)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 561
    iput-boolean p1, p0, Lio/bidmachine/media3/common/Format$Builder;->hasPrerollSamples:Z

    return-object p0
.end method

.method public setHeight(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 587
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->height:I

    return-object p0
.end method

.method public setId(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 299
    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lio/bidmachine/media3/common/Format$Builder;"
        }
    .end annotation

    .line 525
    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 327
    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public setLabels(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Label;",
            ">;)",
            "Lio/bidmachine/media3/common/Format$Builder;"
        }
    .end annotation

    .line 342
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->labels:Ljava/util/List;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 354
    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxInputSize(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 501
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->maxInputSize:I

    return-object p0
.end method

.method public setMaxNumReorderSamples(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 513
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->maxNumReorderSamples:I

    return-object p0
.end method

.method public setMaxSubLayers(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 671
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->maxSubLayers:I

    return-object p0
.end method

.method public setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 445
    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->metadata:Lio/bidmachine/media3/common/Metadata;

    return-object p0
.end method

.method public setPcmEncoding(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 709
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->pcmEncoding:I

    return-object p0
.end method

.method public setPeakBitrate(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 421
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->peakBitrate:I

    return-object p0
.end method

.method public setPixelWidthHeightRatio(F)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 623
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    return-object p0
.end method

.method public setProjectionData([B)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 635
    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->projectionData:[B

    return-object p0
.end method

.method public setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 381
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->roleFlags:I

    return-object p0
.end method

.method public setRotationDegrees(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 611
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->rotationDegrees:I

    return-object p0
.end method

.method public setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 489
    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 697
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->sampleRate:I

    return-object p0
.end method

.method public setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 366
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->selectionFlags:I

    return-object p0
.end method

.method public setStereoMode(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 647
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->stereoMode:I

    return-object p0
.end method

.method public setSubsampleOffsetUs(J)Lio/bidmachine/media3/common/Format$Builder;
    .registers 3

    .line 549
    iput-wide p1, p0, Lio/bidmachine/media3/common/Format$Builder;->subsampleOffsetUs:J

    return-object p0
.end method

.method public setTileCountHorizontal(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 774
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->tileCountHorizontal:I

    return-object p0
.end method

.method public setTileCountVertical(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 786
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->tileCountVertical:I

    return-object p0
.end method

.method public setWidth(I)Lio/bidmachine/media3/common/Format$Builder;
    .registers 2

    .line 575
    iput p1, p0, Lio/bidmachine/media3/common/Format$Builder;->width:I

    return-object p0
.end method

###### Class io.bidmachine.media3.common.Format$$ExternalSyntheticLambda0 (io.bidmachine.media3.common.Format$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/common/Format$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/common/Label;

    invoke-static {p1}, Lio/bidmachine/media3/common/Format;->$r8$lambda$6sCHg1FQj_uptb7zN5R95FqVbLE(Lio/bidmachine/media3/common/Label;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
