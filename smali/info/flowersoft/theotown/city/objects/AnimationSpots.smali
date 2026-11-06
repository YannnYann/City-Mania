###### Class info.flowersoft.theotown.city.objects.AnimationSpots (info.flowersoft.theotown.city.objects.AnimationSpots)
.class public Linfo/flowersoft/theotown/city/objects/AnimationSpots;
.super Ljava/lang/Object;
.source "AnimationSpots.java"


# instance fields
.field public colors:[Lio/blueflower/stapel2d/drawing/Color;

.field public offsets:[I

.field public final slots:I

.field public speeds:[F


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->slots:I

    return-void
.end method


# virtual methods
.method public activeAnimationSpotFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;I)I
    .registers 6

    .line 158
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->initSpeeds()V

    if-gez p1, :cond_8

    const/high16 v0, -0x80000000

    add-int/2addr p1, v0

    :cond_8
    int-to-float p1, p1

    const/high16 v0, 0x43480000    # 200.0f

    div-float/2addr p1, v0

    .line 166
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 167
    iget v1, v0, Linfo/flowersoft/theotown/draft/AnimationDraft;->speed:F

    mul-float/2addr p1, v1

    iget p2, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->shift:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->speeds:[F

    aget p2, p2, p3

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->offsets:[I

    aget p2, p2, p3

    add-int/2addr p1, p2

    .line 168
    iget-boolean p2, v0, Linfo/flowersoft/theotown/draft/AnimationDraft;->rotationAware:Z

    if-eqz p2, :cond_2e

    .line 169
    iget-object p2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p2, p2

    div-int/lit8 p2, p2, 0x4

    rem-int/2addr p1, p2

    return p1

    .line 171
    :cond_2e
    iget-object p2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p2, p2

    rem-int/2addr p1, p2

    return p1
.end method

.method public getColor(I)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v0, :cond_7

    aget-object p1, v0, p1

    return-object p1

    :cond_7
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getColors()[Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getOffset(I)I
    .registers 3

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->offsets:[I

    if-eqz v0, :cond_7

    aget p1, v0, p1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public getOffsets()[I
    .registers 2

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->offsets:[I

    return-object v0
.end method

.method public getSpeed(I)F
    .registers 3

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->speeds:[F

    if-eqz v0, :cond_7

    aget p1, v0, p1

    return p1

    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getSpeeds()[F
    .registers 2

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->speeds:[F

    return-object v0
.end method

.method public final initColors()V
    .registers 3

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v0, :cond_5

    return-void

    .line 121
    :cond_5
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->slots:I

    new-array v0, v0, [Lio/blueflower/stapel2d/drawing/Color;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    .line 122
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final initSpeeds()V
    .registers 3

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->speeds:[F

    if-eqz v0, :cond_5

    return-void

    .line 112
    :cond_5
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->slots:I

    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->speeds:[F

    .line 113
    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->offsets:[I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 114
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->offsets:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public loadColors(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->initColors()V

    .line 142
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    const/4 v0, 0x0

    .line 144
    :goto_7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 145
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v1, v1, 0xff

    .line 150
    iget-object v5, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {v2, v3, v4, v1}, Lio/blueflower/stapel2d/drawing/Colors;->getRepr(IIII)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    aput-object v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 153
    :cond_2f
    :goto_2f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_2f

    .line 154
    :cond_39
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    return-void
.end method

.method public loadSpeeds(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->initSpeeds()V

    .line 128
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    const/4 v0, 0x0

    .line 130
    :goto_7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->speeds:[F

    array-length v2, v1

    if-ge v0, v2, :cond_23

    .line 131
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v2

    aput v2, v1, v0

    .line 132
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->offsets:[I

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 135
    :cond_23
    :goto_23
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_23

    .line 136
    :cond_2d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    return-void
.end method

.method public saveColors(Lio/blueflower/stapel2d/util/json/JsonWriter;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-nez v0, :cond_5

    return-void

    .line 100
    :cond_5
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 101
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 p2, 0x0

    .line 102
    :goto_c
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v1, v0

    if-ge p2, v1, :cond_1d

    .line 103
    aget-object v0, v0, p2

    .line 104
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->toRGBA()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 106
    :cond_1d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public saveSpeeds(Lio/blueflower/stapel2d/util/json/JsonWriter;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->speeds:[F

    if-nez v0, :cond_5

    return-void

    .line 90
    :cond_5
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p2

    invoke-interface {p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 p2, 0x0

    .line 91
    :goto_d
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->speeds:[F

    array-length v1, v0

    if-ge p2, v1, :cond_21

    .line 92
    aget v0, v0, p2

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->offsets:[I

    aget v0, v0, p2

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 95
    :cond_21
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setColor(ILio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    .line 80
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->initColors()V

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    aput-object p2, v0, p1

    return-void
.end method

.method public setFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;II)V
    .registers 6

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p3, v0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setOffset(II)V

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->activeAnimationSpotFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;I)I

    move-result p1

    sub-int/2addr p4, p1

    if-gez p4, :cond_11

    .line 74
    iget-object p1, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p1, p1

    add-int/2addr p4, p1

    .line 75
    :cond_11
    invoke-virtual {p0, p3, p4}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setOffset(II)V

    return-void
.end method

.method public setOffset(II)V
    .registers 4

    .line 58
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->initSpeeds()V

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->offsets:[I

    aput p2, v0, p1

    return-void
.end method

.method public setSpeed(IF)V
    .registers 4

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->initSpeeds()V

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->speeds:[F

    aput p2, v0, p1

    return-void
.end method

.method public setSpeedPreserveFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;IF)V
    .registers 6

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->activeAnimationSpotFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;I)I

    move-result v0

    .line 44
    invoke-virtual {p0, p3, p4}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setSpeed(IF)V

    .line 45
    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->setFrame(ILinfo/flowersoft/theotown/draft/AnimationSpot;II)V

    return-void
.end method
