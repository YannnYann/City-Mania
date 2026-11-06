###### Class info.flowersoft.theotown.city.objects.Bridge (info.flowersoft.theotown.city.objects.Bridge)
.class public final Linfo/flowersoft/theotown/city/objects/Bridge;
.super Ljava/lang/Object;
.source "Bridge.java"


# instance fields
.field public dir:I

.field public length:I

.field public sx:I

.field public sy:I

.field public tx:I

.field public ty:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 29
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_a2

    goto :goto_65

    :sswitch_19
    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_65

    :cond_22
    const/4 v1, 0x6

    goto :goto_65

    :sswitch_24
    const-string v2, "dir"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_65

    :cond_2d
    const/4 v1, 0x5

    goto :goto_65

    :sswitch_2f
    const-string v2, "ty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_65

    :cond_38
    const/4 v1, 0x4

    goto :goto_65

    :sswitch_3a
    const-string v2, "tx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_65

    :cond_43
    const/4 v1, 0x3

    goto :goto_65

    :sswitch_45
    const-string v2, "sy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_65

    :cond_4e
    const/4 v1, 0x2

    goto :goto_65

    :sswitch_50
    const-string v2, "sx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_65

    :cond_59
    const/4 v1, 0x1

    goto :goto_65

    :sswitch_5b
    const-string v2, "length"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    :goto_65
    packed-switch v1, :pswitch_data_c0

    .line 52
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 46
    :pswitch_6c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->type:I

    goto :goto_3

    .line 49
    :pswitch_73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->dir:I

    goto :goto_3

    .line 40
    :pswitch_7a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->ty:I

    goto :goto_3

    .line 37
    :pswitch_81
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->tx:I

    goto/16 :goto_3

    .line 34
    :pswitch_89
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->sy:I

    goto/16 :goto_3

    .line 31
    :pswitch_91
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->sx:I

    goto/16 :goto_3

    .line 43
    :pswitch_99
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->length:I

    goto/16 :goto_3

    :cond_a1
    return-void

    :sswitch_data_a2
    .sparse-switch
        -0x41f1c51a -> :sswitch_5b
        0xe65 -> :sswitch_50
        0xe66 -> :sswitch_45
        0xe84 -> :sswitch_3a
        0xe85 -> :sswitch_2f
        0x1848d -> :sswitch_24
        0x368f3a -> :sswitch_19
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_99
        :pswitch_91
        :pswitch_89
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 78
    instance-of v0, p1, Linfo/flowersoft/theotown/city/objects/Bridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 79
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Bridge;

    .line 80
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->sx:I

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Bridge;->sx:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->sy:I

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Bridge;->sy:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->tx:I

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Bridge;->tx:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->ty:I

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Bridge;->ty:I

    if-ne v0, p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 73
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->sx:I

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->sy:I

    const/high16 v2, 0x10000

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const-string v0, "sx"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->sx:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 63
    const-string v0, "sy"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->sy:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 64
    const-string v0, "tx"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->tx:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 65
    const-string v0, "ty"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->ty:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 66
    const-string v0, "length"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->length:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 67
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->type:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 68
    const-string v0, "dir"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Bridge;->dir:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
