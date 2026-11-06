###### Class io.bidmachine.media3.extractor.MpegAudioUtil (io.bidmachine.media3.extractor.MpegAudioUtil)
.class public final Lio/bidmachine/media3/extractor/MpegAudioUtil;
.super Ljava/lang/Object;
.source "MpegAudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;
    }
.end annotation


# static fields
.field public static final BITRATE_V1_L1:[I

.field public static final BITRATE_V1_L2:[I

.field public static final BITRATE_V1_L3:[I

.field public static final BITRATE_V2:[I

.field public static final BITRATE_V2_L1:[I

.field public static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field public static final SAMPLING_RATE_V1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 240
    const-string v0, "audio/mpeg-L2"

    const-string v1, "audio/mpeg"

    const-string v2, "audio/mpeg-L1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    const v0, 0xbb80

    const/16 v1, 0x7d00

    const v2, 0xac44

    .line 242
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    const/16 v0, 0xe

    .line 243
    new-array v1, v0, [I

    fill-array-data v1, :array_40

    sput-object v1, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V1_L1:[I

    .line 247
    new-array v1, v0, [I

    fill-array-data v1, :array_60

    sput-object v1, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V2_L1:[I

    .line 251
    new-array v1, v0, [I

    fill-array-data v1, :array_80

    sput-object v1, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V1_L2:[I

    .line 255
    new-array v1, v0, [I

    fill-array-data v1, :array_a0

    sput-object v1, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V1_L3:[I

    .line 259
    new-array v0, v0, [I

    fill-array-data v0, :array_c0

    sput-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V2:[I

    return-void

    :array_40
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_60
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_80
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_a0
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_c0
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method public static synthetic access$000(I)Z
    .registers 1

    .line 25
    invoke-static {p0}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->isMagicPresent(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .line 25
    sget-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200()[I
    .registers 1

    .line 25
    sget-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    return-object v0
.end method

.method public static synthetic access$300(II)I
    .registers 2

    .line 25
    invoke-static {p0, p1}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->getFrameSizeInSamples(II)I

    move-result p0

    return p0
.end method

.method public static synthetic access$400()[I
    .registers 1

    .line 25
    sget-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V1_L1:[I

    return-object v0
.end method

.method public static synthetic access$500()[I
    .registers 1

    .line 25
    sget-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V2_L1:[I

    return-object v0
.end method

.method public static synthetic access$600()[I
    .registers 1

    .line 25
    sget-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V1_L2:[I

    return-object v0
.end method

.method public static synthetic access$700()[I
    .registers 1

    .line 25
    sget-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V1_L3:[I

    return-object v0
.end method

.method public static synthetic access$800()[I
    .registers 1

    .line 25
    sget-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V2:[I

    return-object v0
.end method

.method public static getFrameSize(I)I
    .registers 8

    .line 138
    invoke-static {p0}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_16

    return v1

    :cond_16
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_72

    if-ne v5, v6, :cond_20

    goto :goto_72

    :cond_20
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_26

    return v1

    .line 163
    :cond_26
    sget-object v1, Lio/bidmachine/media3/extractor/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    aget v1, v1, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_30

    .line 166
    div-int/lit8 v1, v1, 0x2

    goto :goto_34

    :cond_30
    if-nez v0, :cond_34

    .line 169
    div-int/lit8 v1, v1, 0x4

    :cond_34
    :goto_34
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v2, :cond_4d

    if-ne v0, v2, :cond_41

    .line 176
    sget-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_46

    :cond_41
    sget-object v0, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_46
    mul-int/lit8 v0, v0, 0xc

    .line 177
    div-int/2addr v0, v1

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_4d
    if-ne v0, v2, :cond_5d

    if-ne v4, v6, :cond_57

    .line 181
    sget-object v6, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    :cond_57
    sget-object v6, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    .line 184
    :cond_5d
    sget-object v6, Lio/bidmachine/media3/extractor/MpegAudioUtil;->BITRATE_V2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_62
    const/16 v6, 0x90

    if-ne v0, v2, :cond_6a

    mul-int/2addr v5, v6

    .line 190
    div-int/2addr v5, v1

    add-int/2addr v5, p0

    return v5

    :cond_6a
    if-ne v4, v3, :cond_6e

    const/16 v6, 0x48

    :cond_6e
    mul-int/2addr v6, v5

    .line 193
    div-int/2addr v6, v1

    add-int/2addr v6, p0

    return v6

    :cond_72
    :goto_72
    return v1
.end method

.method public static getFrameSizeInSamples(II)I
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x480

    const/4 v2, 0x3

    if-eq p1, v0, :cond_15

    const/4 p0, 0x2

    if-eq p1, p0, :cond_14

    if-ne p1, v2, :cond_e

    const/16 p0, 0x180

    return p0

    .line 284
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_14
    return v1

    :cond_15
    if-ne p0, v2, :cond_18

    return v1

    :cond_18
    const/16 p0, 0x240

    return p0
.end method

.method public static isMagicPresent(I)Z
    .registers 2

    .line 0
    const/high16 v0, -0x200000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static parseMpegAudioFrameSampleCount(I)I
    .registers 7

    .line 202
    invoke-static {p0}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    ushr-int/lit8 v3, p0, 0x11

    and-int/2addr v3, v2

    if-nez v3, :cond_16

    return v1

    :cond_16
    ushr-int/lit8 v4, p0, 0xc

    const/16 v5, 0xf

    and-int/2addr v4, v5

    ushr-int/lit8 p0, p0, 0xa

    and-int/2addr p0, v2

    if-eqz v4, :cond_2a

    if-eq v4, v5, :cond_2a

    if-ne p0, v2, :cond_25

    goto :goto_2a

    .line 223
    :cond_25
    invoke-static {v0, v3}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->getFrameSizeInSamples(II)I

    move-result p0

    return p0

    :cond_2a
    :goto_2a
    return v1
.end method

###### Class io.bidmachine.media3.extractor.MpegAudioUtil.Header (io.bidmachine.media3.extractor.MpegAudioUtil$Header)
.class public final Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;
.super Ljava/lang/Object;
.source "MpegAudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/MpegAudioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget v0, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->version:I

    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->version:I

    .line 57
    iget-object v0, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 58
    iget v0, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    .line 59
    iget v0, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 60
    iget v0, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->channels:I

    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->channels:I

    .line 61
    iget v0, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    .line 62
    iget p1, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    iput p1, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    return-void
.end method


# virtual methods
.method public setForHeaderData(I)Z
    .registers 10

    .line 75
    invoke-static {p1}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->access$000(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    ushr-int/lit8 v0, p1, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    ushr-int/lit8 v4, p1, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_16

    return v1

    :cond_16
    ushr-int/lit8 v5, p1, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_ad

    if-ne v5, v6, :cond_21

    goto/16 :goto_ad

    :cond_21
    ushr-int/lit8 v6, p1, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_27

    return v1

    .line 100
    :cond_27
    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->version:I

    .line 101
    invoke-static {}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->access$100()[Ljava/lang/String;

    move-result-object v1

    rsub-int/lit8 v7, v4, 0x3

    aget-object v1, v1, v7

    iput-object v1, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 102
    invoke-static {}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->access$200()[I

    move-result-object v1

    aget v1, v1, v6

    iput v1, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_42

    .line 105
    div-int/2addr v1, v6

    iput v1, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    goto :goto_48

    :cond_42
    if-nez v0, :cond_48

    .line 108
    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    :cond_48
    :goto_48
    ushr-int/lit8 v1, p1, 0x9

    and-int/2addr v1, v3

    .line 111
    invoke-static {v0, v4}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->access$300(II)I

    move-result v7

    iput v7, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    if-ne v4, v2, :cond_71

    if-ne v0, v2, :cond_5d

    .line 114
    invoke-static {}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->access$400()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_64

    :cond_5d
    invoke-static {}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->access$500()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_64
    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    mul-int/lit8 v0, v0, 0xc

    .line 115
    iget v4, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v0, v4

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    goto :goto_a4

    :cond_71
    const/16 v7, 0x90

    if-ne v0, v2, :cond_90

    if-ne v4, v6, :cond_7f

    .line 120
    invoke-static {}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->access$600()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_86

    :cond_7f
    invoke-static {}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->access$700()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_86
    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    mul-int/2addr v0, v7

    .line 121
    iget v4, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    goto :goto_a4

    .line 124
    :cond_90
    invoke-static {}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->access$800()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    iput v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    if-ne v4, v3, :cond_9d

    const/16 v7, 0x48

    :cond_9d
    mul-int/2addr v7, v0

    .line 125
    iget v0, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v7, v0

    add-int/2addr v7, v1

    iput v7, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    :goto_a4
    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_aa

    move v6, v3

    .line 128
    :cond_aa
    iput v6, p0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->channels:I

    return v3

    :cond_ad
    :goto_ad
    return v1
.end method
