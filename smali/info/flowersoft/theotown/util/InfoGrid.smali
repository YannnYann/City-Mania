###### Class info.flowersoft.theotown.util.InfoGrid (info.flowersoft.theotown.util.InfoGrid)
.class public Linfo/flowersoft/theotown/util/InfoGrid;
.super Ljava/lang/Object;
.source "InfoGrid.java"


# instance fields
.field public grid:[F

.field public gridHeight:I

.field public gridWidth:I

.field public height:I

.field public maxValue:F

.field public minValue:F

.field public tilesPerCell:I

.field public widht:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->widht:I

    .line 21
    iput p2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->height:I

    .line 22
    iput p3, p0, Linfo/flowersoft/theotown/util/InfoGrid;->tilesPerCell:I

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, -0x1

    .line 23
    div-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->gridWidth:I

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    .line 24
    div-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->gridHeight:I

    mul-int/2addr p1, p2

    .line 25
    new-array p1, p1, [F

    iput-object p1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->grid:[F

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :goto_5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 30
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_d8

    goto :goto_5c

    :sswitch_1b
    const-string v4, "grid height"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_5c

    :cond_24
    const/4 v3, 0x5

    goto :goto_5c

    :sswitch_26
    const-string v4, "width"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_5c

    :cond_2f
    const/4 v3, 0x4

    goto :goto_5c

    :sswitch_31
    const-string v4, "grid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_5c

    :cond_3a
    const/4 v3, 0x3

    goto :goto_5c

    :sswitch_3c
    const-string v4, "grid width"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_5c

    :cond_45
    const/4 v3, 0x2

    goto :goto_5c

    :sswitch_47
    const-string v4, "height"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_5c

    :cond_50
    move v3, v0

    goto :goto_5c

    :sswitch_52
    const-string v4, "tiles per cell"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    goto :goto_5c

    :cond_5b
    move v3, v1

    :goto_5c
    packed-switch v3, :pswitch_data_f2

    .line 62
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_5

    .line 44
    :pswitch_63
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->gridHeight:I

    goto :goto_5

    .line 32
    :pswitch_6a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->widht:I

    goto :goto_5

    .line 47
    :pswitch_71
    iget v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->gridWidth:I

    iget v3, p0, Linfo/flowersoft/theotown/util/InfoGrid;->gridHeight:I

    mul-int/2addr v2, v3

    new-array v2, v2, [F

    iput-object v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->grid:[F

    .line 49
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 50
    iput v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->maxValue:F

    const v2, -0x800001

    .line 51
    iput v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->minValue:F

    move v2, v1

    .line 52
    :goto_88
    iget-object v3, p0, Linfo/flowersoft/theotown/util/InfoGrid;->grid:[F

    array-length v3, v3

    if-ge v2, v3, :cond_af

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 53
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v3

    .line 54
    iget-object v4, p0, Linfo/flowersoft/theotown/util/InfoGrid;->grid:[F

    add-int/lit8 v5, v2, 0x1

    aput v3, v4, v2

    .line 55
    iget v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->minValue:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->minValue:F

    .line 56
    iget v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->maxValue:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->maxValue:F

    move v2, v5

    goto :goto_88

    .line 58
    :cond_af
    :goto_af
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_af

    .line 59
    :cond_b9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5

    .line 41
    :pswitch_be
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->gridWidth:I

    goto/16 :goto_5

    .line 35
    :pswitch_c6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->height:I

    goto/16 :goto_5

    .line 38
    :pswitch_ce
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->tilesPerCell:I

    goto/16 :goto_5

    :cond_d6
    return-void

    nop

    :sswitch_data_d8
    .sparse-switch
        -0x7b380b40 -> :sswitch_52
        -0x48c76ed9 -> :sswitch_47
        -0x2d563f94 -> :sswitch_3c
        0x308b46 -> :sswitch_31
        0x6be2dc6 -> :sswitch_26
        0x68bf5341 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_c6
        :pswitch_be
        :pswitch_71
        :pswitch_6a
        :pswitch_63
    .end packed-switch
.end method


# virtual methods
.method public add(IIF)V
    .registers 11

    int-to-float p1, p1

    .line 92
    iget v0, p0, Linfo/flowersoft/theotown/util/InfoGrid;->tilesPerCell:I

    int-to-float v1, v0

    div-float/2addr p1, v1

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v0, p1

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    float-to-double v1, p2

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v2, v0

    sub-float/2addr p1, v2

    int-to-float v2, v1

    sub-float/2addr p2, v2

    .line 98
    iget v2, p0, Linfo/flowersoft/theotown/util/InfoGrid;->tilesPerCell:I

    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 99
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/InfoGrid;->queryGrid(II)F

    move-result v2

    sub-float v5, v4, p1

    mul-float/2addr v5, v3

    sub-float/2addr v4, p2

    mul-float v6, v5, v4

    mul-float/2addr v6, p3

    add-float/2addr v2, v6

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/util/InfoGrid;->setGrid(IIF)V

    add-int/lit8 v2, v0, 0x1

    .line 100
    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/util/InfoGrid;->queryGrid(II)F

    move-result v6

    mul-float/2addr v3, p1

    mul-float/2addr v4, v3

    mul-float/2addr v4, p3

    add-float/2addr v6, v4

    invoke-virtual {p0, v2, v1, v6}, Linfo/flowersoft/theotown/util/InfoGrid;->setGrid(IIF)V

    add-int/lit8 v1, v1, 0x1

    .line 101
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/InfoGrid;->queryGrid(II)F

    move-result p1

    mul-float/2addr v5, p2

    mul-float/2addr v5, p3

    add-float/2addr p1, v5

    invoke-virtual {p0, v0, v1, p1}, Linfo/flowersoft/theotown/util/InfoGrid;->setGrid(IIF)V

    .line 102
    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/util/InfoGrid;->queryGrid(II)F

    move-result p1

    mul-float/2addr v3, p2

    mul-float/2addr v3, p3

    add-float/2addr p1, v3

    invoke-virtual {p0, v2, v1, p1}, Linfo/flowersoft/theotown/util/InfoGrid;->setGrid(IIF)V

    return-void
.end method

.method public get(II)F
    .registers 10

    int-to-float p1, p1

    .line 106
    iget v0, p0, Linfo/flowersoft/theotown/util/InfoGrid;->tilesPerCell:I

    int-to-float v1, v0

    div-float/2addr p1, v1

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-double v0, p1

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    float-to-double v1, p2

    .line 109
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-float v2, v0

    sub-float/2addr p1, v2

    int-to-float v2, v1

    sub-float/2addr p2, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p1

    sub-float/2addr v2, p2

    mul-float v4, v3, v2

    .line 112
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/InfoGrid;->queryGrid(II)F

    move-result v5

    mul-float/2addr v4, v5

    mul-float/2addr v2, p1

    add-int/lit8 v5, v0, 0x1

    .line 113
    invoke-virtual {p0, v5, v1}, Linfo/flowersoft/theotown/util/InfoGrid;->queryGrid(II)F

    move-result v6

    mul-float/2addr v2, v6

    add-float/2addr v4, v2

    mul-float/2addr v3, p2

    add-int/lit8 v1, v1, 0x1

    .line 114
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/InfoGrid;->queryGrid(II)F

    move-result v0

    mul-float/2addr v3, v0

    add-float/2addr v4, v3

    mul-float/2addr p1, p2

    .line 115
    invoke-virtual {p0, v5, v1}, Linfo/flowersoft/theotown/util/InfoGrid;->queryGrid(II)F

    move-result p2

    mul-float/2addr p1, p2

    add-float/2addr v4, p1

    return v4
.end method

.method public getMaxValue()F
    .registers 2

    .line 123
    iget v0, p0, Linfo/flowersoft/theotown/util/InfoGrid;->maxValue:F

    return v0
.end method

.method public getMinValue()F
    .registers 2

    .line 119
    iget v0, p0, Linfo/flowersoft/theotown/util/InfoGrid;->minValue:F

    return v0
.end method

.method public final queryGrid(II)F
    .registers 5

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/util/InfoGrid;->grid:[F

    iget v1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->gridWidth:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const-string v0, "width"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->widht:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 70
    const-string v0, "height"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->height:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 71
    const-string v0, "tiles per cell"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->tilesPerCell:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 72
    const-string v0, "grid width"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->gridWidth:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 73
    const-string v0, "grid height"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->gridHeight:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 74
    const-string v0, "grid"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 75
    :goto_41
    iget-object v1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->grid:[F

    array-length v2, v1

    if-ge v0, v2, :cond_4e

    .line 76
    aget v1, v1, v0

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 78
    :cond_4e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public final setGrid(IIF)V
    .registers 6

    .line 82
    iget v0, p0, Linfo/flowersoft/theotown/util/InfoGrid;->minValue:F

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/util/InfoGrid;->minValue:F

    .line 83
    iget v0, p0, Linfo/flowersoft/theotown/util/InfoGrid;->maxValue:F

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/util/InfoGrid;->maxValue:F

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/util/InfoGrid;->grid:[F

    iget v1, p0, Linfo/flowersoft/theotown/util/InfoGrid;->gridWidth:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method
