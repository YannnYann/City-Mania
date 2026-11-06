###### Class info.flowersoft.theotown.util.Distribution (info.flowersoft.theotown.util.Distribution)
.class public Linfo/flowersoft/theotown/util/Distribution;
.super Ljava/lang/Object;
.source "Distribution.java"


# instance fields
.field public average:F

.field public deviation:F

.field public maxValue:F

.field public minValue:F

.field public sampleCount:I

.field public variance:F


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, v0, v0, v1}, Linfo/flowersoft/theotown/util/Distribution;-><init>(FFI)V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    .line 35
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/util/Distribution;-><init>(FFIFF)V

    return-void
.end method

.method public constructor <init>(FFI)V
    .registers 10

    const v4, -0x800001

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 39
    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/util/Distribution;-><init>(FFIFF)V

    return-void
.end method

.method public constructor <init>(FFIFF)V
    .registers 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    .line 44
    iput p2, p0, Linfo/flowersoft/theotown/util/Distribution;->variance:F

    float-to-double p1, p2

    .line 45
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Linfo/flowersoft/theotown/util/Distribution;->deviation:F

    .line 46
    iput p3, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    .line 47
    iput p4, p0, Linfo/flowersoft/theotown/util/Distribution;->minValue:F

    .line 48
    iput p5, p0, Linfo/flowersoft/theotown/util/Distribution;->maxValue:F

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "average"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    .line 27
    const-string v0, "variance"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Linfo/flowersoft/theotown/util/Distribution;->variance:F

    float-to-double v0, v0

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Linfo/flowersoft/theotown/util/Distribution;->deviation:F

    .line 29
    const-string v0, "sample count"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    .line 30
    const-string v0, "min value"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Linfo/flowersoft/theotown/util/Distribution;->minValue:F

    .line 31
    const-string v0, "max value"

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/util/Distribution;->maxValue:F

    return-void
.end method


# virtual methods
.method public addSample(F)V
    .registers 6

    .line 64
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->variance:F

    iget v1, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    mul-float v2, v1, v1

    add-float/2addr v0, v2

    .line 65
    iget v2, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v1, p1

    add-int/lit8 v3, v2, 0x1

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    int-to-float v3, v2

    mul-float/2addr v0, v3

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    add-int/lit8 v2, v2, 0x1

    int-to-float p1, v2

    div-float/2addr v0, p1

    mul-float/2addr v1, v1

    sub-float/2addr v0, v1

    .line 67
    iput v0, p0, Linfo/flowersoft/theotown/util/Distribution;->variance:F

    float-to-double v0, v0

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/util/Distribution;->deviation:F

    .line 69
    iget p1, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    return-void
.end method

.method public getAverage()F
    .registers 2

    .line 82
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    return v0
.end method

.method public getDensity(F)F
    .registers 7

    .line 98
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->deviation:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    sub-float v1, p1, v0

    const/high16 v4, -0x41000000    # -0.5f

    mul-float/2addr v1, v4

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    iget p1, p0, Linfo/flowersoft/theotown/util/Distribution;->variance:F

    div-float/2addr v1, p1

    float-to-double v0, v1

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float p1, v2

    return p1
.end method

.method public getDeviation()F
    .registers 2

    .line 90
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->deviation:F

    return v0
.end method

.method public getDistribution(F)F
    .registers 7

    .line 103
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->deviation:F

    .line 107
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/Distribution;->getDensity(F)F

    move-result v1

    mul-float/2addr v1, v0

    sub-float/2addr p1, v0

    const/4 v2, 0x0

    .line 109
    :goto_9
    iget v3, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    cmpl-float v3, p1, v3

    if-gez v3, :cond_1e

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_17

    goto :goto_1e

    :cond_17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 123
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 110
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/Distribution;->getDensity(F)F

    move-result v3

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v2, v1

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v1, v3, v1

    if-gez v1, :cond_33

    mul-float/2addr v0, v4

    mul-float/2addr v3, v4

    :cond_31
    :goto_31
    move v1, v3

    goto :goto_3d

    :cond_33
    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v1, v3, v1

    if-lez v1, :cond_31

    div-float/2addr v0, v4

    div-float/2addr v3, v4

    goto :goto_31

    :goto_3d
    sub-float/2addr p1, v0

    goto :goto_9
.end method

.method public getSampleCount()I
    .registers 2

    .line 94
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    return v0
.end method

.method public getVariance()F
    .registers 2

    .line 86
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->variance:F

    return v0
.end method

.method public removeSample(F)V
    .registers 6

    .line 73
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->variance:F

    iget v1, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    mul-float v2, v1, v1

    add-float/2addr v0, v2

    .line 74
    iget v2, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    sub-float/2addr v1, p1

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    int-to-float v3, v2

    mul-float/2addr v0, v3

    mul-float/2addr p1, p1

    sub-float/2addr v0, p1

    add-int/lit8 v2, v2, -0x1

    int-to-float p1, v2

    div-float/2addr v0, p1

    mul-float/2addr v1, v1

    sub-float/2addr v0, v1

    .line 76
    iput v0, p0, Linfo/flowersoft/theotown/util/Distribution;->variance:F

    float-to-double v0, v0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/util/Distribution;->deviation:F

    .line 78
    iget p1, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    return-void
.end method

.method public sample(Ljava/util/Random;)F
    .registers 8

    .line 127
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 128
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    float-to-double v0, v0

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v4, p1

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->deviation:F

    mul-float/2addr p1, v0

    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    add-float/2addr p1, v0

    .line 130
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->maxValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->minValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public save(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 56
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    float-to-double v0, v0

    const-string v2, "average"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 57
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->variance:F

    float-to-double v0, v0

    const-string v2, "variance"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 58
    const-string v0, "sample count"

    iget v1, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;I)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 59
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->minValue:F

    float-to-double v0, v0

    const-string v2, "min value"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 60
    iget v0, p0, Linfo/flowersoft/theotown/util/Distribution;->maxValue:F

    float-to-double v0, v0

    const-string v2, "max value"

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;D)Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Average: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/Distribution;->average:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nVariance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/Distribution;->variance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nDeviation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/Distribution;->deviation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nSample count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/Distribution;->sampleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nMin value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/Distribution;->minValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nMax value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/util/Distribution;->maxValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
