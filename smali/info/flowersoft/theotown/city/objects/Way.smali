###### Class info.flowersoft.theotown.city.objects.Way (info.flowersoft.theotown.city.objects.Way)
.class public final Linfo/flowersoft/theotown/city/objects/Way;
.super Ljava/lang/Object;
.source "Way.java"


# instance fields
.field public dirs:[I

.field public size:I

.field public startIndex:I

.field public startLevel:I

.field public startX:I

.field public startY:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    add-int/lit8 v0, p1, 0x7

    .line 39
    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    .line 40
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Way;->startX:I

    .line 69
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Way;->startY:I

    const/4 p1, 0x2

    .line 70
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    .line 71
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Way;->startLevel:I

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    const/4 p2, 0x1

    .line 73
    new-array p2, p2, [I

    iput-object p2, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    .line 74
    aput p4, p2, p1

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/objects/Way;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    .line 30
    iget-object v0, p1, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    .line 31
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Way;->startX:I

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startX:I

    .line 32
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Way;->startY:I

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startY:I

    .line 33
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Way;->startLevel:I

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startLevel:I

    .line 34
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/IntList;)V
    .registers 9

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Way;->startX:I

    const/4 v1, 0x1

    .line 57
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Way;->startY:I

    .line 58
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    .line 59
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startLevel:I

    .line 60
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    add-int/lit8 v1, v1, 0x5

    .line 61
    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    const/4 v0, 0x2

    move v1, v0

    .line 62
    :goto_27
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 63
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    add-int/lit8 v3, v1, -0x2

    ushr-int/lit8 v4, v3, 0x3

    aget v5, v2, v4

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    rem-int/lit8 v3, v3, 0x8

    shl-int/2addr v3, v0

    shl-int v3, v6, v3

    or-int/2addr v3, v5

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_44
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    :goto_5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 79
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_86

    goto :goto_3b

    :sswitch_1b
    const-string v4, "way"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_3b

    :cond_24
    const/4 v3, 0x2

    goto :goto_3b

    :sswitch_26
    const-string v4, "pos"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_3b

    :cond_2f
    move v3, v0

    goto :goto_3b

    :sswitch_31
    const-string v4, "lvl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v1

    :goto_3b
    packed-switch v3, :pswitch_data_94

    .line 102
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_5

    .line 86
    :pswitch_42
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 87
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    .line 88
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    .line 89
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    .line 90
    new-array v2, v2, [I

    iput-object v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    move v2, v1

    .line 92
    :goto_5a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 93
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v4

    aput v4, v3, v2

    add-int/2addr v2, v0

    goto :goto_5a

    .line 96
    :cond_6a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_5

    .line 81
    :pswitch_6e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    ushr-int/lit8 v3, v2, 0x10

    .line 82
    iput v3, p0, Linfo/flowersoft/theotown/city/objects/Way;->startX:I

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 83
    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->startY:I

    goto :goto_5

    .line 99
    :pswitch_7d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->startLevel:I

    goto :goto_5

    :cond_84
    return-void

    nop

    :sswitch_data_86
    .sparse-switch
        0x1a422 -> :sswitch_31
        0x1b254 -> :sswitch_26
        0x1caef -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_6e
        :pswitch_42
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Way;->startX:I

    const/4 v1, 0x1

    .line 45
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Way;->startY:I

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    .line 47
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startLevel:I

    .line 48
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    add-int/lit8 v1, v1, 0x5

    .line 49
    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    const/4 v0, 0x2

    move v1, v0

    .line 50
    :goto_33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 51
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    add-int/lit8 v3, v1, -0x2

    ushr-int/lit8 v4, v3, 0x3

    aget v5, v2, v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    rem-int/lit8 v3, v3, 0x8

    shl-int/2addr v3, v0

    shl-int v3, v6, v3

    or-int/2addr v3, v5

    aput v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_56
    return-void
.end method


# virtual methods
.method public addDir(I)V
    .registers 6

    .line 132
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x2

    .line 135
    iget-object v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    aget v3, v2, v1

    shl-int/2addr p1, v0

    or-int/2addr p1, v3

    aput p1, v2, v1

    .line 136
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    return-void
.end method

.method public addDirToFront(I)V
    .registers 7

    .line 144
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x2

    .line 146
    iget-object v3, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    aget v4, v3, v1

    shl-int/2addr p1, v2

    or-int/2addr p1, v4

    aput p1, v3, v1

    add-int/lit8 v0, v0, 0x1

    .line 147
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    .line 148
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    return-void
.end method

.method public getDir(I)I
    .registers 4

    .line 152
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    .line 155
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    aget v0, v1, v0

    ushr-int p1, v0, p1

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method public getStartLevel()I
    .registers 2

    .line 174
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startLevel:I

    return v0
.end method

.method public getStartX()I
    .registers 2

    .line 166
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startX:I

    return v0
.end method

.method public getStartY()I
    .registers 2

    .line 170
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startY:I

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const-string v0, "pos"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Way;->startX:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Linfo/flowersoft/theotown/city/objects/Way;->startY:I

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 110
    const-string v0, "way"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 111
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 112
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 113
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 114
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    array-length v0, v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 115
    :goto_29
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    array-length v2, v1

    if-ge v0, v2, :cond_36

    .line 116
    aget v1, v1, v0

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 118
    :cond_36
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 120
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startLevel:I

    if-eqz v0, :cond_48

    .line 121
    const-string v0, "lvl"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startLevel:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_48
    return-void
.end method

.method public setDir(II)V
    .registers 7

    .line 159
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    .line 162
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Way;->dirs:[I

    aget v2, v1, v0

    const/16 v3, 0xf

    shl-int/2addr v3, p1

    not-int v3, v3

    and-int/2addr v2, v3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    aput p1, v1, v0

    return-void
.end method

.method public setStart(III)V
    .registers 4

    .line 126
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Way;->startX:I

    .line 127
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Way;->startY:I

    .line 128
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Way;->startLevel:I

    return-void
.end method

.method public size()I
    .registers 2

    .line 178
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->size:I

    return v0
.end method

.method public startFromFront()V
    .registers 2

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Way;->startIndex:I

    return-void
.end method
