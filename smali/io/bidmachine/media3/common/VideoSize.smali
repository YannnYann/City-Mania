###### Class io.bidmachine.media3.common.VideoSize (io.bidmachine.media3.common.VideoSize)
.class public final Lio/bidmachine/media3/common/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"


# static fields
.field public static final FIELD_HEIGHT:Ljava/lang/String;

.field public static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field public static final FIELD_WIDTH:Ljava/lang/String;

.field public static final UNKNOWN:Lio/bidmachine/media3/common/VideoSize;


# instance fields
.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final unappliedRotationDegrees:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lio/bidmachine/media3/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lio/bidmachine/media3/common/VideoSize;-><init>(II)V

    sput-object v0, Lio/bidmachine/media3/common/VideoSize;->UNKNOWN:Lio/bidmachine/media3/common/VideoSize;

    .line 127
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    const/4 v0, 0x1

    .line 128
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    const/4 v0, 0x3

    .line 130
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/media3/common/VideoSize;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lio/bidmachine/media3/common/VideoSize;->width:I

    .line 85
    iput p2, p0, Lio/bidmachine/media3/common/VideoSize;->height:I

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lio/bidmachine/media3/common/VideoSize;->unappliedRotationDegrees:I

    .line 87
    iput p3, p0, Lio/bidmachine/media3/common/VideoSize;->pixelWidthHeightRatio:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 109
    :cond_4
    instance-of v1, p1, Lio/bidmachine/media3/common/VideoSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 110
    check-cast p1, Lio/bidmachine/media3/common/VideoSize;

    .line 111
    iget v1, p0, Lio/bidmachine/media3/common/VideoSize;->width:I

    iget v3, p1, Lio/bidmachine/media3/common/VideoSize;->width:I

    if-ne v1, v3, :cond_20

    iget v1, p0, Lio/bidmachine/media3/common/VideoSize;->height:I

    iget v3, p1, Lio/bidmachine/media3/common/VideoSize;->height:I

    if-ne v1, v3, :cond_20

    iget v1, p0, Lio/bidmachine/media3/common/VideoSize;->pixelWidthHeightRatio:F

    iget p1, p1, Lio/bidmachine/media3/common/VideoSize;->pixelWidthHeightRatio:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0xd9

    .line 121
    iget v1, p0, Lio/bidmachine/media3/common/VideoSize;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget v1, p0, Lio/bidmachine/media3/common/VideoSize;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget v1, p0, Lio/bidmachine/media3/common/VideoSize;->pixelWidthHeightRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
