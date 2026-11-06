###### Class info.flowersoft.theotown.components.DefaultInfluence (info.flowersoft.theotown.components.DefaultInfluence)
.class public Linfo/flowersoft/theotown/components/DefaultInfluence;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultInfluence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;
    }
.end annotation


# static fields
.field public static final INFLUENCE_COUNT:I


# instance fields
.field public cached:Z

.field public final cells:[[I

.field public foreignBuffer:[I

.field public final generalInfluence:[I

.field public gridHeight:I

.field public gridTypePitch:I

.field public gridWidth:I

.field public height:I

.field public final influenceBases:[F

.field public final influenceBuffer:[I

.field public influenceBufferSign:I

.field public final influenceFactors:[F

.field public final tempSources:[Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;

.field public usedBuffers:I

.field public width:I

.field public workers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RV28ElGNERFbjQoF3utI64ByZl8(Linfo/flowersoft/theotown/components/DefaultInfluence;Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;II)V
    .registers 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;->calculateBaseInfluences()V

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->generalInfluence:[I

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 143
    :goto_b
    :try_start_b
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->generalInfluence:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3f

    .line 144
    aget v4, v3, v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getGeneralInfluence()[I

    move-result-object v5

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 147
    div-int/lit8 v3, p2, 0x20

    :goto_1d
    div-int/lit8 v4, p3, 0x20

    if-ge v3, v4, :cond_3c

    move v4, v1

    .line 148
    :goto_22
    iget v5, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->gridWidth:I

    if-ge v4, v5, :cond_39

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    .line 149
    iget v6, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->gridTypePitch:I

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    .line 150
    iget-object v6, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->cells:[[I

    iget-object v7, p1, Linfo/flowersoft/theotown/components/DefaultInfluence;->cells:[[I

    aget-object v7, v7, v5

    aput-object v7, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :catchall_37
    move-exception p0

    goto :goto_41

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 154
    :cond_3f
    monitor-exit v0

    return-void

    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_37

    throw p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 28
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v0

    array-length v0, v0

    sput v0, Linfo/flowersoft/theotown/components/DefaultInfluence;->INFLUENCE_COUNT:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6

    .line 84
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBufferSign:I

    .line 85
    sget v0, Linfo/flowersoft/theotown/components/DefaultInfluence;->INFLUENCE_COUNT:I

    new-array v1, v0, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBuffer:[I

    .line 86
    new-array v1, v0, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->generalInfluence:[I

    .line 87
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->width:I

    .line 88
    iput p2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->height:I

    add-int/lit8 p1, p1, 0x1f

    .line 90
    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->gridWidth:I

    add-int/lit8 p2, p2, 0x1f

    .line 91
    div-int/lit8 p2, p2, 0x20

    iput p2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->gridHeight:I

    mul-int v1, p1, p2

    .line 92
    iput v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->gridTypePitch:I

    mul-int/2addr p1, p2

    mul-int/2addr p1, v0

    .line 93
    new-array p1, p1, [[I

    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->cells:[[I

    .line 95
    new-array p1, v0, [Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->tempSources:[Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;

    const/4 p1, 0x0

    move p2, p1

    .line 96
    :goto_30
    sget v0, Linfo/flowersoft/theotown/components/DefaultInfluence;->INFLUENCE_COUNT:I

    if-ge p2, v0, :cond_41

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->tempSources:[Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;

    new-instance v1, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;-><init>(Linfo/flowersoft/theotown/components/DefaultInfluence$1;)V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_30

    .line 100
    :cond_41
    new-array p2, v0, [F

    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceFactors:[F

    .line 101
    new-array p2, v0, [F

    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBases:[F

    .line 103
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object p2

    .line 104
    :goto_4d
    sget v0, Linfo/flowersoft/theotown/components/DefaultInfluence;->INFLUENCE_COUNT:I

    if-ge p1, v0, :cond_66

    .line 105
    aget-object v0, p2, p1

    .line 106
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceFactors:[F

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getFactor()F

    move-result v2

    aput v2, v1, p1

    .line 107
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBases:[F

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getBase()F

    move-result v0

    aput v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_66
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p2

    invoke-direct {p0, v0, p2}, Linfo/flowersoft/theotown/components/DefaultInfluence;-><init>(II)V

    const/4 p2, 0x0

    .line 77
    iput-boolean p2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->cached:Z

    .line 79
    :goto_e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 80
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_e

    :cond_18
    return-void
.end method

.method public static getInfluenceRadius(I)I
    .registers 3

    .line 413
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, -0x1

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static intSign(I)I
    .registers 1

    .line 0
    shr-int/lit8 p0, p0, 0x1f

    or-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public addBaseInfluenceFromTile(II)V
    .registers 3

    .line 294
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->setInfluenceBufferFromTile(II)V

    .line 296
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->applyInfluenceBuffer(II)V

    return-void
.end method

.method public final addInduceVectorToInfluenceBuffer([I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 369
    :cond_3
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->foreignBuffer:[I

    if-nez v0, :cond_e

    iget v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->usedBuffers:I

    if-nez v1, :cond_e

    .line 370
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->foreignBuffer:[I

    goto :goto_2a

    :cond_e
    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 373
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBuffer:[I

    array-length v3, v2

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->foreignBuffer:[I

    .line 376
    :cond_1a
    :goto_1a
    sget v0, Linfo/flowersoft/theotown/components/DefaultInfluence;->INFLUENCE_COUNT:I

    if-ge v1, v0, :cond_2a

    .line 377
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBuffer:[I

    aget v2, v0, v1

    aget v3, p1, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 380
    :cond_2a
    :goto_2a
    iget p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->usedBuffers:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->usedBuffers:I

    return-void
.end method

.method public addInfluenceRaw(IIII)V
    .registers 9

    if-nez p4, :cond_3

    return-void

    .line 213
    :cond_3
    div-int/lit8 v0, p1, 0x20

    .line 214
    div-int/lit8 v1, p2, 0x20

    .line 215
    iget v2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->gridWidth:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iget v3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->gridTypePitch:I

    mul-int/2addr p3, v3

    add-int/2addr v2, p3

    .line 216
    iget-object p3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->cells:[[I

    aget-object v3, p3, v2

    if-nez v3, :cond_1b

    const/16 v3, 0x100

    .line 219
    new-array v3, v3, [I

    .line 220
    aput-object v3, p3, v2

    :cond_1b
    mul-int/lit8 v0, v0, 0x20

    sub-int/2addr p1, v0

    .line 223
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 v1, v1, 0x20

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    .line 226
    invoke-static {p4}, Linfo/flowersoft/theotown/components/DefaultInfluence;->intSign(I)I

    move-result p2

    .line 228
    aget p3, v3, p1

    mul-int/2addr p4, p2

    add-int/lit8 p4, p4, 0x2

    mul-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x4

    add-int/2addr p3, p2

    aput p3, v3, p1

    return-void
.end method

.method public final addToInfluenceBuffer(II)V
    .registers 7

    .line 359
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->foreignBuffer:[I

    if-eqz v0, :cond_e

    .line 360
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBuffer:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->foreignBuffer:[I

    .line 363
    :cond_e
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBuffer:[I

    aget v1, v0, p1

    add-int/2addr v1, p2

    aput v1, v0, p1

    .line 364
    iget p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->usedBuffers:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->usedBuffers:I

    return-void
.end method

.method public applyInfluence(IIII)V
    .registers 16

    .line 417
    invoke-static {p4}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluenceRadius(I)I

    move-result v0

    mul-int v1, v0, v0

    if-lez v0, :cond_6d

    if-nez p4, :cond_b

    goto :goto_6d

    :cond_b
    sub-int v2, p1, v0

    const/4 v3, 0x0

    .line 422
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v4, p2, v0

    .line 423
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v4, p1, v0

    .line 424
    iget v5, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->width:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v0, p2

    .line 425
    iget v5, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->height:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 426
    invoke-static {p4}, Linfo/flowersoft/theotown/components/DefaultInfluence;->intSign(I)I

    move-result v5

    mul-int/2addr p4, v5

    :goto_30
    if-gt v3, v0, :cond_6d

    sub-int v6, v3, p2

    mul-int/2addr v6, v6

    sub-int v7, v1, v6

    int-to-double v7, v7

    .line 432
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v8, p1, v7

    .line 433
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v7, p1

    .line 434
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_50
    if-gt v8, v7, :cond_6a

    sub-int v9, v8, p1

    mul-int/2addr v9, v9

    add-int/2addr v9, v6

    if-gt v9, v1, :cond_67

    mul-int/lit8 v10, p4, 0x32

    add-int/lit8 v9, v9, 0x1

    .line 440
    div-int/2addr v10, v9

    const/16 v9, 0x64

    .line 441
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    mul-int/2addr v9, v5

    .line 443
    invoke-virtual {p0, v8, v3, p3, v9}, Linfo/flowersoft/theotown/components/DefaultInfluence;->addInfluenceRaw(IIII)V

    :cond_67
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_6d
    :goto_6d
    return-void
.end method

.method public final applyInfluenceBuffer(II)V
    .registers 8

    .line 402
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->usedBuffers:I

    if-nez v0, :cond_5

    goto :goto_25

    .line 403
    :cond_5
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->foreignBuffer:[I

    if-nez v0, :cond_b

    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBuffer:[I

    :cond_b
    if-nez v0, :cond_e

    goto :goto_25

    :cond_e
    const/4 v1, 0x0

    .line 405
    :goto_f
    sget v2, Linfo/flowersoft/theotown/components/DefaultInfluence;->INFLUENCE_COUNT:I

    if-ge v1, v2, :cond_25

    .line 406
    iget v2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBufferSign:I

    aget v3, v0, v1

    mul-int/2addr v2, v3

    .line 407
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->generalInfluence:[I

    aget v4, v3, v1

    add-int/2addr v4, v2

    aput v4, v3, v1

    .line 408
    invoke-virtual {p0, p1, p2, v1, v2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->applyInfluence(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_25
    :goto_25
    return-void
.end method

.method public final clearInfluenceBuffer()V
    .registers 4

    .line 388
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->usedBuffers:I

    const/4 v1, 0x0

    if-lez v0, :cond_19

    .line 389
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->foreignBuffer:[I

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->foreignBuffer:[I

    goto :goto_19

    :cond_d
    move v0, v1

    .line 392
    :goto_e
    sget v2, Linfo/flowersoft/theotown/components/DefaultInfluence;->INFLUENCE_COUNT:I

    if-ge v0, v2, :cond_19

    .line 393
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBuffer:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 397
    :cond_19
    :goto_19
    iput v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->usedBuffers:I

    const/4 v0, 0x1

    .line 398
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBufferSign:I

    return-void
.end method

.method public clearTempInfluence()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 318
    :goto_2
    sget v2, Linfo/flowersoft/theotown/components/DefaultInfluence;->INFLUENCE_COUNT:I

    if-ge v1, v2, :cond_f

    .line 319
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->tempSources:[Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;

    aget-object v2, v2, v1

    iput v0, v2, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->value:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    return-void
.end method

.method public finishPrepare()V
    .registers 3

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->workers:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 170
    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 171
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_17} :catch_18

    goto :goto_8

    :catch_18
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1c
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->workers:Ljava/util/List;

    :cond_1f
    return-void
.end method

.method public getGeneralInfluence(I)F
    .registers 4

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceFactors:[F

    aget v0, v0, p1

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->generalInfluence:[I

    aget v1, v1, p1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBases:[F

    aget p1, v1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public getGeneralInfluence()[I
    .registers 2

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->generalInfluence:[I

    return-object v0
.end method

.method public getGeneralInfluences([FI)V
    .registers 7

    const/4 v0, 0x0

    .line 199
    :goto_1
    sget v1, Linfo/flowersoft/theotown/components/DefaultInfluence;->INFLUENCE_COUNT:I

    if-ge v0, v1, :cond_1b

    add-int v1, p2, v0

    .line 200
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceFactors:[F

    aget v2, v2, v0

    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->generalInfluence:[I

    aget v3, v3, v0

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBases:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method

.method public getInfluence(III)F
    .registers 4

    .line 261
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluenceRaw(III)I

    move-result p1

    .line 262
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceFactors:[F

    aget p2, p2, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    const/high16 p1, 0x42480000    # 50.0f

    div-float/2addr p2, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBases:[F

    aget p1, p1, p3

    add-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getInfluence(IIIII)F
    .registers 6

    add-int/lit8 p3, p3, -0x1

    .line 450
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    invoke-virtual {p0, p1, p2, p5}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result p1

    return p1
.end method

.method public getInfluence(Linfo/flowersoft/theotown/city/objects/Building;I)F
    .registers 9

    .line 454
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(IIIII)F

    move-result p1

    return p1
.end method

.method public getInfluenceRaw(III)I
    .registers 6

    add-int/lit8 v0, p1, -0x1

    .line 254
    invoke-virtual {p0, v0, p2, p3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluenceRawGrid(III)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 255
    invoke-virtual {p0, v1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluenceRawGrid(III)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    .line 256
    invoke-virtual {p0, p1, v1, p3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluenceRawGrid(III)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    .line 257
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluenceRawGrid(III)I

    move-result p1

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getInfluenceRawGrid(III)I
    .registers 9

    .line 232
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->width:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p1

    .line 233
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->height:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p2

    .line 234
    div-int/lit8 v0, p1, 0x20

    .line 235
    div-int/lit8 v2, p2, 0x20

    .line 236
    iget v3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->gridWidth:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v4, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->gridTypePitch:I

    mul-int/2addr p3, v4

    add-int/2addr v3, p3

    .line 237
    iget-object p3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->cells:[[I

    aget-object p3, p3, v3

    if-nez p3, :cond_24

    return v1

    :cond_24
    mul-int/lit8 v0, v0, 0x20

    sub-int/2addr p1, v0

    .line 243
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 v2, v2, 0x20

    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0x10

    add-int/2addr p1, p2

    .line 245
    aget p1, p3, p1

    return p1
.end method

.method public getTempInfluence(III)F
    .registers 11

    .line 268
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->tempSources:[Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;

    aget-object v0, v0, p3

    .line 269
    iget v1, v0, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->value:I

    invoke-static {v1}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluenceRadius(I)I

    move-result v1

    mul-int v2, v1, v1

    .line 272
    iget v3, v0, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->x:I

    iget v4, v0, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->width:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    sub-int v4, p1, v4

    sub-int/2addr v3, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 273
    iget v5, v0, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->y:I

    iget v6, v0, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->height:I

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    sub-int v6, p2, v6

    sub-int/2addr v5, p2

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/2addr v3, v3

    mul-int/2addr v4, v4

    add-int/2addr v3, v4

    .line 275
    iget v4, v0, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->value:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    add-int/lit8 v2, v2, 0x1

    if-le v3, v2, :cond_45

    .line 277
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result p1

    return p1

    .line 279
    :cond_45
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluenceRaw(III)I

    move-result p1

    .line 281
    iget p2, v0, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->value:I

    mul-int/lit8 p2, p2, 0x32

    add-int/lit8 v2, v3, 0x1

    div-int/2addr p2, v2

    int-to-float p2, p2

    int-to-float v2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    .line 282
    invoke-static {p2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr v2, p2

    iget p2, v0, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->width:I

    int-to-float p2, p2

    mul-float/2addr v2, p2

    iget p2, v0, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->height:I

    int-to-float p2, p2

    mul-float/2addr v2, p2

    int-to-float p2, v1

    int-to-double v0, v3

    .line 285
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p2

    mul-float/2addr v2, p2

    .line 287
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceFactors:[F

    aget p2, p2, p3

    int-to-float p1, p1

    add-float/2addr p1, v2

    mul-float/2addr p2, p1

    const/high16 p1, 0x42480000    # 50.0f

    div-float/2addr p2, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBases:[F

    aget p1, p1, p3

    add-float/2addr p2, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getType()I
    .registers 2

    .line 0
    const/4 v0, 0x2

    return v0
.end method

.method public final invertInfluenceBuffer()V
    .registers 2

    .line 384
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBufferSign:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->influenceBufferSign:I

    return-void
.end method

.method public nextDay()V
    .registers 1

    .line 0
    return-void
.end method

.method public prepare()V
    .registers 11

    .line 115
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->cached:Z

    if-eqz v0, :cond_6

    goto/16 :goto_77

    .line 117
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->workers:Ljava/util/List;

    .line 118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    :goto_16
    mul-int/lit8 v2, v1, 0x2

    if-gt v2, v0, :cond_20

    .line 120
    iget v3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->height:I

    if-ge v2, v3, :cond_20

    move v1, v2

    goto :goto_16

    .line 123
    :cond_20
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Use %1$d threads on %2$d cores to calculate influence"

    invoke-static {v3, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "DefaultInfluence"

    invoke-interface {v2, v3, v0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->height:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1f

    div-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x20

    const/4 v2, 0x0

    :goto_43
    if-ge v2, v1, :cond_77

    mul-int v5, v2, v0

    add-int v3, v5, v0

    .line 130
    iget v4, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 132
    iget v9, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->height:I

    if-lt v5, v9, :cond_54

    goto :goto_77

    .line 136
    :cond_54
    new-instance v3, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;

    const/4 v4, 0x0

    iget v6, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->width:I

    move v8, v6

    invoke-direct/range {v3 .. v9}, Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;-><init>(IIIIII)V

    .line 137
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 139
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v3, v5, v7}, Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/components/DefaultInfluence;Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;II)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 158
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->workers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_77
    :goto_77
    return-void
.end method

.method public removeBaseInfluenceFromTile(II)V
    .registers 3

    .line 300
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->setInfluenceBufferFromTile(II)V

    .line 301
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultInfluence;->invertInfluenceBuffer()V

    .line 303
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->applyInfluenceBuffer(II)V

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public final setInfluenceBufferFromTile(II)V
    .registers 7

    .line 324
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultInfluence;->clearInfluenceBuffer()V

    .line 325
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    .line 326
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v0, :cond_1a

    .line 329
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->influenceInduceVector:[I

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultInfluence;->addInduceVectorToInfluenceBuffer([I)V

    :cond_1a
    if-eqz v1, :cond_29

    .line 332
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-nez v0, :cond_29

    .line 333
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getInfluenceInduceVector()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultInfluence;->addInduceVectorToInfluenceBuffer([I)V

    .line 336
    :cond_29
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 337
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBottomRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    if-eqz v1, :cond_6b

    .line 339
    iget v1, v1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    .line 340
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    :goto_3f
    if-gt v1, v0, :cond_6b

    .line 343
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-nez v2, :cond_4a

    goto :goto_68

    .line 346
    :cond_4a
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 348
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/BusStopDraft;->influenceInduceVector:[I

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->addInduceVectorToInfluenceBuffer([I)V

    .line 351
    :cond_59
    iget v3, v2, Linfo/flowersoft/theotown/city/objects/Road;->lastAppliedTrafficAmount:I

    if-eqz v3, :cond_68

    .line 352
    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->TRAFFIC:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget v2, v2, Linfo/flowersoft/theotown/city/objects/Road;->lastAppliedTrafficAmount:I

    invoke-virtual {p0, v3, v2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->addToInfluenceBuffer(II)V

    :cond_68
    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_6b
    return-void
.end method

.method public setTempInfluence([IIIII)V
    .registers 9

    const/4 v0, 0x0

    .line 307
    :goto_1
    sget v1, Linfo/flowersoft/theotown/components/DefaultInfluence;->INFLUENCE_COUNT:I

    if-ge v0, v1, :cond_18

    .line 308
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence;->tempSources:[Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;

    aget-object v1, v1, v0

    .line 309
    iput p2, v1, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->x:I

    .line 310
    iput p3, v1, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->y:I

    .line 311
    iput p4, v1, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->width:I

    .line 312
    iput p5, v1, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->height:I

    .line 313
    aget v2, p1, v0

    iput v2, v1, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;->value:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultInfluence.AnonymousClass1 (info.flowersoft.theotown.components.DefaultInfluence$1)
.class public synthetic Linfo/flowersoft/theotown/components/DefaultInfluence$1;
.super Ljava/lang/Object;
.source "DefaultInfluence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultInfluence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.components.DefaultInfluence.TempSource (info.flowersoft.theotown.components.DefaultInfluence$TempSource)
.class public Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;
.super Ljava/lang/Object;
.source "DefaultInfluence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultInfluence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TempSource"
.end annotation


# instance fields
.field public height:I

.field public value:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/DefaultInfluence$1;)V
    .registers 2

    .line 465
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultInfluence$TempSource;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultInfluence$$ExternalSyntheticLambda0 (info.flowersoft.theotown.components.DefaultInfluence$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public final synthetic f$1:Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/DefaultInfluence;Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;II)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;

    iput p3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/DefaultInfluence;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;

    iget v2, p0, Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/components/DefaultInfluence$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultInfluence;->$r8$lambda$RV28ElGNERFbjQoF3utI64ByZl8(Linfo/flowersoft/theotown/components/DefaultInfluence;Linfo/flowersoft/theotown/components/influence/AreaInfluenceWorker;II)V

    return-void
.end method
