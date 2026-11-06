###### Class io.bidmachine.media3.common.PlaybackParameters (io.bidmachine.media3.common.PlaybackParameters)
.class public final Lio/bidmachine/media3/common/PlaybackParameters;
.super Ljava/lang/Object;
.source "PlaybackParameters.java"


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/common/PlaybackParameters;

.field public static final FIELD_PITCH:Ljava/lang/String;

.field public static final FIELD_SPEED:Ljava/lang/String;


# instance fields
.field public final pitch:F

.field public final scaledUsPerMs:I

.field public final speed:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lio/bidmachine/media3/common/PlaybackParameters;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/PlaybackParameters;-><init>(F)V

    sput-object v0, Lio/bidmachine/media3/common/PlaybackParameters;->DEFAULT:Lio/bidmachine/media3/common/PlaybackParameters;

    const/4 v0, 0x0

    .line 128
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/PlaybackParameters;->FIELD_SPEED:Ljava/lang/String;

    const/4 v0, 0x1

    .line 129
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/common/PlaybackParameters;->FIELD_PITCH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/common/PlaybackParameters;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 7

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_c

    move v1, v3

    goto :goto_d

    :cond_c
    move v1, v2

    .line 61
    :goto_d
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    cmpl-float v0, p2, v0

    if-lez v0, :cond_15

    move v2, v3

    .line 62
    :cond_15
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 63
    iput p1, p0, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    .line 64
    iput p2, p0, Lio/bidmachine/media3/common/PlaybackParameters;->pitch:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p2

    .line 65
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/common/PlaybackParameters;->scaledUsPerMs:I

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

    if-eqz p1, :cond_23

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/PlaybackParameters;

    if-eq v3, v2, :cond_10

    goto :goto_23

    .line 111
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/PlaybackParameters;

    .line 112
    iget v2, p0, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    iget v3, p1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_23

    iget v2, p0, Lio/bidmachine/media3/common/PlaybackParameters;->pitch:F

    iget p1, p1, Lio/bidmachine/media3/common/PlaybackParameters;->pitch:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public getMediaTimeUsForPlayoutTimeMs(J)J
    .registers 5

    .line 77
    iget v0, p0, Lio/bidmachine/media3/common/PlaybackParameters;->scaledUsPerMs:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public hashCode()I
    .registers 3

    .line 118
    iget v0, p0, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 119
    iget v0, p0, Lio/bidmachine/media3/common/PlaybackParameters;->pitch:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 125
    iget v0, p0, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/common/PlaybackParameters;->pitch:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PlaybackParameters(speed=%.2f, pitch=%.2f)"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withSpeed(F)Lio/bidmachine/media3/common/PlaybackParameters;
    .registers 4

    .line 88
    new-instance v0, Lio/bidmachine/media3/common/PlaybackParameters;

    iget v1, p0, Lio/bidmachine/media3/common/PlaybackParameters;->pitch:F

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/common/PlaybackParameters;-><init>(FF)V

    return-object v0
.end method
