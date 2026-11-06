###### Class io.bidmachine.media3.common.AuxEffectInfo (io.bidmachine.media3.common.AuxEffectInfo)
.class public final Lio/bidmachine/media3/common/AuxEffectInfo;
.super Ljava/lang/Object;
.source "AuxEffectInfo.java"


# instance fields
.field public final effectId:I

.field public final sendLevel:F


# direct methods
.method public constructor <init>(IF)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lio/bidmachine/media3/common/AuxEffectInfo;->effectId:I

    .line 65
    iput p2, p0, Lio/bidmachine/media3/common/AuxEffectInfo;->sendLevel:F

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

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/common/AuxEffectInfo;

    if-eq v3, v2, :cond_10

    goto :goto_23

    .line 76
    :cond_10
    check-cast p1, Lio/bidmachine/media3/common/AuxEffectInfo;

    .line 77
    iget v2, p0, Lio/bidmachine/media3/common/AuxEffectInfo;->effectId:I

    iget v3, p1, Lio/bidmachine/media3/common/AuxEffectInfo;->effectId:I

    if-ne v2, v3, :cond_23

    iget p1, p1, Lio/bidmachine/media3/common/AuxEffectInfo;->sendLevel:F

    iget v2, p0, Lio/bidmachine/media3/common/AuxEffectInfo;->sendLevel:F

    .line 78
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x20f

    .line 84
    iget v1, p0, Lio/bidmachine/media3/common/AuxEffectInfo;->effectId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget v1, p0, Lio/bidmachine/media3/common/AuxEffectInfo;->sendLevel:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
