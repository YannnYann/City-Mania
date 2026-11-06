###### Class info.flowersoft.theotown.city.objects.Sign (info.flowersoft.theotown.city.objects.Sign)
.class public Linfo/flowersoft/theotown/city/objects/Sign;
.super Ljava/lang/Object;
.source "Sign.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public b:I

.field public color:I

.field public g:I

.field public r:I

.field public size:I

.field public text:Ljava/lang/String;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Sign;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFII)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->text:Ljava/lang/String;

    .line 33
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Sign;->x:F

    .line 34
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Sign;->y:F

    .line 35
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/Sign;->size:I

    .line 36
    iput p5, p0, Linfo/flowersoft/theotown/city/objects/Sign;->color:I

    return-void
.end method


# virtual methods
.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    .line 120
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->color:I

    if-ltz v0, :cond_10

    .line 121
    sget-object v1, Linfo/flowersoft/theotown/resources/SignStyleProvider;->COLORS:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    aget-object v0, v1, v0

    return-object v0

    .line 123
    :cond_10
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->r:I

    iget v2, p0, Linfo/flowersoft/theotown/city/objects/Sign;->g:I

    iget v3, p0, Linfo/flowersoft/theotown/city/objects/Sign;->b:I

    invoke-direct {v0, v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    return-object v0
.end method

.method public getColorIndex()I
    .registers 2

    .line 116
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->color:I

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 145
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->size:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getX()F
    .registers 2

    .line 100
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 108
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->y:F

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->text:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->y:F

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->x:F

    .line 44
    :goto_9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 45
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_b2

    goto :goto_60

    :sswitch_1f
    const-string v2, "color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_60

    :cond_28
    const/4 v1, 0x5

    goto :goto_60

    :sswitch_2a
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_60

    :cond_33
    const/4 v1, 0x4

    goto :goto_60

    :sswitch_35
    const-string v2, "size"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_60

    :cond_3e
    const/4 v1, 0x3

    goto :goto_60

    :sswitch_40
    const-string v2, "rgb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_60

    :cond_49
    const/4 v1, 0x2

    goto :goto_60

    :sswitch_4b
    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_60

    :cond_54
    const/4 v1, 0x1

    goto :goto_60

    :sswitch_56
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_60

    :cond_5f
    const/4 v1, 0x0

    :goto_60
    packed-switch v1, :pswitch_data_cc

    .line 70
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_9

    .line 59
    :pswitch_67
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->color:I

    goto :goto_9

    .line 47
    :pswitch_6e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->text:Ljava/lang/String;

    goto :goto_9

    .line 56
    :pswitch_75
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->size:I

    goto :goto_9

    .line 62
    :pswitch_7c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 63
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->r:I

    .line 64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->g:I

    .line 65
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->b:I

    .line 66
    :goto_91
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_91

    .line 67
    :cond_9b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_9

    .line 53
    :pswitch_a0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->y:F

    goto/16 :goto_9

    .line 50
    :pswitch_a8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->x:F

    goto/16 :goto_9

    :cond_b0
    return-void

    nop

    :sswitch_data_b2
    .sparse-switch
        0x78 -> :sswitch_56
        0x79 -> :sswitch_4b
        0x1b8cd -> :sswitch_40
        0x35e001 -> :sswitch_35
        0x36452d -> :sswitch_2a
        0x5a72f63 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a0
        :pswitch_7c
        :pswitch_75
        :pswitch_6e
        :pswitch_67
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const-string v0, "text"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->text:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 79
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->x:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 80
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->y:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 81
    const-string v0, "size"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->size:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 82
    const-string v0, "color"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->color:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 84
    const-string v0, "rgb"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 85
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->r:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 86
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->g:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 87
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->b:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 88
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setColor(I)V
    .registers 2

    .line 127
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->color:I

    return-void
.end method

.method public setColor(III)V
    .registers 7

    const/4 v0, 0x0

    .line 131
    :goto_1
    sget-object v1, Linfo/flowersoft/theotown/resources/SignStyleProvider;->COLORS:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 132
    aget-object v1, v1, v0

    .line 133
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v2

    if-ne v2, p1, :cond_1d

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v2

    if-ne v2, p2, :cond_1d

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v1

    if-ne v1, p3, :cond_1d

    .line 134
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->color:I

    return-void

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_20
    const/4 v0, -0x1

    .line 138
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Sign;->color:I

    .line 139
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->r:I

    .line 140
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Sign;->g:I

    .line 141
    iput p3, p0, Linfo/flowersoft/theotown/city/objects/Sign;->b:I

    return-void
.end method

.method public setSize(I)V
    .registers 2

    .line 149
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->size:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->text:Ljava/lang/String;

    return-void
.end method

.method public setX(F)V
    .registers 2

    .line 104
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->x:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 112
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Sign;->y:F

    return-void
.end method
