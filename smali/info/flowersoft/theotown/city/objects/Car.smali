###### Class info.flowersoft.theotown.city.objects.Car (info.flowersoft.theotown.city.objects.Car)
.class public final Linfo/flowersoft/theotown/city/objects/Car;
.super Ljava/lang/Object;
.source "Car.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/objects/Car$CarResolver;
    }
.end annotation


# instance fields
.field public absLevel:I

.field public absParent:Linfo/flowersoft/theotown/city/objects/Car;

.field public child:Linfo/flowersoft/theotown/city/objects/Car;

.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public controller:I

.field public data:J

.field public data2:J

.field public dir:I

.field public draft:Linfo/flowersoft/theotown/draft/CarDraft;

.field public fadeIn:Z

.field public fadeOut:Z

.field public flags:I

.field public frame:I

.field public id:I

.field public invalid:Z

.field public isImportant:Z

.field public lastDir:I

.field public lastLevel:I

.field public lastMovement:I

.field public lastSpeed:F

.field public lastX:I

.field public lastY:I

.field public owner:Linfo/flowersoft/theotown/city/objects/CarOwner;

.field public p:F

.field public parent:Linfo/flowersoft/theotown/city/objects/Car;

.field public paused:Z

.field public prog:I

.field public speed:F

.field public way:Linfo/flowersoft/theotown/city/objects/Way;

.field public wealthLevel:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/draft/CarDraft;II)V
    .registers 8

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->speed:F

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->wealthLevel:I

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->fadeIn:Z

    .line 248
    iput-object p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    const/4 p2, -0x1

    .line 249
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    .line 250
    iget p2, p1, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 251
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    .line 252
    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    .line 253
    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    .line 254
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    .line 255
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    .line 256
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    .line 257
    iput v2, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    .line 258
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/Car;->id:I

    int-to-short p2, p3

    .line 259
    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    .line 260
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Car;->setParent(Linfo/flowersoft/theotown/city/objects/Car;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/objects/Way;III)V
    .registers 8

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->speed:F

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->wealthLevel:I

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->fadeIn:Z

    .line 264
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    .line 265
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Way;->getStartX()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 266
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Way;->getStartY()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    .line 267
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Way;->getStartLevel()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    .line 268
    iput-object p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    .line 269
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    int-to-short p1, p3

    .line 270
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    const/4 p1, 0x0

    .line 271
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 272
    iput p4, p0, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    .line 273
    iput p5, p0, Linfo/flowersoft/theotown/city/objects/Car;->id:I

    .line 274
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    .line 275
    iput-object p0, p0, Linfo/flowersoft/theotown/city/objects/Car;->absParent:Linfo/flowersoft/theotown/city/objects/Car;

    .line 277
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    .line 278
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    .line 279
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    .line 280
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/objects/Car$CarResolver;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->speed:F

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->wealthLevel:I

    const/4 v2, 0x1

    .line 91
    iput-boolean v2, p0, Linfo/flowersoft/theotown/city/objects/Car;->fadeIn:Z

    const/4 v3, -0x1

    .line 103
    iput v3, p0, Linfo/flowersoft/theotown/city/objects/Car;->id:I

    .line 104
    iput-boolean v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    .line 105
    iput-boolean v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    const-wide/16 v4, 0x0

    .line 106
    iput-wide v4, p0, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    .line 107
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    .line 109
    iput v3, p0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    .line 110
    iput-object p0, p0, Linfo/flowersoft/theotown/city/objects/Car;->absParent:Linfo/flowersoft/theotown/city/objects/Car;

    const/16 v4, 0x20

    move v5, v4

    .line 112
    :cond_22
    :goto_22
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37d

    .line 113
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_39a

    :goto_38
    move v6, v3

    goto/16 :goto_209

    :sswitch_3b
    const-string v8, "controller"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    goto :goto_38

    :cond_44
    const/16 v6, 0x22

    goto/16 :goto_209

    :sswitch_48
    const-string v8, "speed"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    goto :goto_38

    :cond_51
    const/16 v6, 0x21

    goto/16 :goto_209

    :sswitch_55
    const-string v8, "owner"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5e

    goto :goto_38

    :cond_5e
    move v6, v4

    goto/16 :goto_209

    :sswitch_61
    const-string v8, "frame"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6a

    goto :goto_38

    :cond_6a
    const/16 v6, 0x1f

    goto/16 :goto_209

    :sswitch_6e
    const-string v8, "draft"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_77

    goto :goto_38

    :cond_77
    const/16 v6, 0x1e

    goto/16 :goto_209

    :sswitch_7b
    const-string v8, "data2"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_84

    goto :goto_38

    :cond_84
    const/16 v6, 0x1d

    goto/16 :goto_209

    :sswitch_88
    const-string v8, "color"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_91

    goto :goto_38

    :cond_91
    const/16 v6, 0x1c

    goto/16 :goto_209

    :sswitch_95
    const-string v8, "wlvl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9e

    goto :goto_38

    :cond_9e
    const/16 v6, 0x1b

    goto/16 :goto_209

    :sswitch_a2
    const-string v8, "prog"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ab

    goto :goto_38

    :cond_ab
    const/16 v6, 0x1a

    goto/16 :goto_209

    :sswitch_af
    const-string v8, "prg2"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b8

    goto :goto_38

    :cond_b8
    const/16 v6, 0x19

    goto/16 :goto_209

    :sswitch_bc
    const-string v8, "llvl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c6

    goto/16 :goto_38

    :cond_c6
    const/16 v6, 0x18

    goto/16 :goto_209

    :sswitch_ca
    const-string v8, "ldir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d4

    goto/16 :goto_38

    :cond_d4
    const/16 v6, 0x17

    goto/16 :goto_209

    :sswitch_d8
    const-string v8, "data"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e2

    goto/16 :goto_38

    :cond_e2
    const/16 v6, 0x16

    goto/16 :goto_209

    :sswitch_e6
    const-string v8, "way"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f0

    goto/16 :goto_38

    :cond_f0
    const/16 v6, 0x15

    goto/16 :goto_209

    :sswitch_f4
    const-string v8, "lvl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_fe

    goto/16 :goto_38

    :cond_fe
    const/16 v6, 0x14

    goto/16 :goto_209

    :sswitch_102
    const-string v8, "dir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10c

    goto/16 :goto_38

    :cond_10c
    const/16 v6, 0x13

    goto/16 :goto_209

    :sswitch_110
    const-string v8, "wy"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11a

    goto/16 :goto_38

    :cond_11a
    const/16 v6, 0x12

    goto/16 :goto_209

    :sswitch_11e
    const-string v8, "wl"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_128

    goto/16 :goto_38

    :cond_128
    const/16 v6, 0x11

    goto/16 :goto_209

    :sswitch_12c
    const-string v8, "ly"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_136

    goto/16 :goto_38

    :cond_136
    const/16 v6, 0x10

    goto/16 :goto_209

    :sswitch_13a
    const-string v8, "lx"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_144

    goto/16 :goto_38

    :cond_144
    const/16 v6, 0xf

    goto/16 :goto_209

    :sswitch_148
    const-string v8, "ls"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_152

    goto/16 :goto_38

    :cond_152
    const/16 v6, 0xe

    goto/16 :goto_209

    :sswitch_156
    const-string v8, "lm"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_160

    goto/16 :goto_38

    :cond_160
    const/16 v6, 0xd

    goto/16 :goto_209

    :sswitch_164
    const-string v8, "id"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16e

    goto/16 :goto_38

    :cond_16e
    const/16 v6, 0xc

    goto/16 :goto_209

    :sswitch_172
    const-string v8, "fi"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17c

    goto/16 :goto_38

    :cond_17c
    const/16 v6, 0xb

    goto/16 :goto_209

    :sswitch_180
    const-string v8, "fd"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18a

    goto/16 :goto_38

    :cond_18a
    const/16 v6, 0xa

    goto/16 :goto_209

    :sswitch_18e
    const-string v8, "y"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_198

    goto/16 :goto_38

    :cond_198
    const/16 v6, 0x9

    goto/16 :goto_209

    :sswitch_19c
    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a6

    goto/16 :goto_38

    :cond_1a6
    const/16 v6, 0x8

    goto/16 :goto_209

    :sswitch_1aa
    const-string v8, "s"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b4

    goto/16 :goto_38

    :cond_1b4
    const/4 v6, 0x7

    goto :goto_209

    :sswitch_1b6
    const-string v8, "p"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c0

    goto/16 :goto_38

    :cond_1c0
    const/4 v6, 0x6

    goto :goto_209

    :sswitch_1c2
    const-string v8, "f"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1cc

    goto/16 :goto_38

    :cond_1cc
    const/4 v6, 0x5

    goto :goto_209

    :sswitch_1ce
    const-string v8, "d"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d8

    goto/16 :goto_38

    :cond_1d8
    const/4 v6, 0x4

    goto :goto_209

    :sswitch_1da
    const-string v8, "important"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e4

    goto/16 :goto_38

    :cond_1e4
    const/4 v6, 0x3

    goto :goto_209

    :sswitch_1e6
    const-string v8, "paused"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f0

    goto/16 :goto_38

    :cond_1f0
    move v6, v0

    goto :goto_209

    :sswitch_1f2
    const-string v8, "parent"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1fc

    goto/16 :goto_38

    :cond_1fc
    move v6, v2

    goto :goto_209

    :sswitch_1fe
    const-string v8, "last movement"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_208

    goto/16 :goto_38

    :cond_208
    move v6, v1

    :goto_209
    packed-switch v6, :pswitch_data_428

    .line 234
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_22

    .line 178
    :pswitch_211
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    goto/16 :goto_22

    .line 219
    :pswitch_219
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 221
    :try_start_21c
    new-instance v6, Linfo/flowersoft/theotown/city/objects/CarOwner;

    invoke-direct {v6, p0, p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;-><init>(Linfo/flowersoft/theotown/city/objects/Car;Lio/blueflower/stapel2d/util/json/JsonReader;)V

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->owner:Linfo/flowersoft/theotown/city/objects/CarOwner;
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_223} :catch_224

    goto :goto_232

    :catch_224
    move-exception v6

    .line 223
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    :goto_228
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_232

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_228

    .line 226
    :cond_232
    :goto_232
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_22

    .line 193
    :pswitch_237
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->data2:J

    goto/16 :goto_22

    .line 229
    :pswitch_23f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 230
    new-instance v6, Lio/blueflower/stapel2d/drawing/Color;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v7

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v8

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 231
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_22

    .line 210
    :pswitch_25a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->wealthLevel:I

    goto/16 :goto_22

    .line 161
    :pswitch_262
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    sub-int/2addr v6, v0

    int-to-short v6, v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    goto/16 :goto_22

    .line 164
    :pswitch_26c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    int-to-short v6, v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    goto/16 :goto_22

    .line 138
    :pswitch_275
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    goto/16 :goto_22

    .line 141
    :pswitch_27d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    goto/16 :goto_22

    .line 190
    :pswitch_285
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    goto/16 :goto_22

    .line 147
    :pswitch_28d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 148
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    :goto_295
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a8

    .line 150
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v7

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_295

    .line 152
    :cond_2a8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    .line 153
    new-instance v7, Linfo/flowersoft/theotown/city/objects/Way;

    invoke-direct {v7, v6}, Linfo/flowersoft/theotown/city/objects/Way;-><init>(Ljava/util/List;)V

    iput-object v7, p0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    goto/16 :goto_22

    .line 199
    :pswitch_2b4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    goto/16 :goto_22

    .line 129
    :pswitch_2bc
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    goto/16 :goto_22

    .line 156
    :pswitch_2c4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 157
    new-instance v6, Linfo/flowersoft/theotown/city/objects/Way;

    invoke-direct {v6, p1}, Linfo/flowersoft/theotown/city/objects/Way;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    .line 158
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_22

    .line 144
    :pswitch_2d3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    goto/16 :goto_22

    .line 135
    :pswitch_2d9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    goto/16 :goto_22

    .line 132
    :pswitch_2e1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    goto/16 :goto_22

    .line 196
    :pswitch_2e9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastSpeed:F

    goto/16 :goto_22

    .line 181
    :pswitch_2f3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->id:I

    goto/16 :goto_22

    .line 213
    :pswitch_2fb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->fadeIn:Z

    goto/16 :goto_22

    .line 216
    :pswitch_303
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->fadeOut:Z

    goto/16 :goto_22

    .line 126
    :pswitch_30b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    goto/16 :goto_22

    .line 123
    :pswitch_313
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    goto/16 :goto_22

    .line 207
    :pswitch_31b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->speed:F

    goto/16 :goto_22

    .line 171
    :pswitch_323
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v6

    div-float/2addr v6, v7

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    goto/16 :goto_22

    .line 168
    :pswitch_32c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iget-object v7, p0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object v8, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v8

    iget v7, v7, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v8, v7

    rem-int/2addr v6, v8

    int-to-short v6, v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    goto/16 :goto_22

    .line 116
    :pswitch_33e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/CarDraft;

    iput-object v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    if-nez v6, :cond_22

    .line 118
    :goto_34e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_399

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_34e

    .line 187
    :pswitch_358
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    goto/16 :goto_22

    .line 184
    :pswitch_360
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    goto/16 :goto_22

    .line 202
    :pswitch_368
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    .line 203
    invoke-interface {p2, v6}, Linfo/flowersoft/theotown/city/objects/Car$CarResolver;->get(I)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v6

    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/city/objects/Car;->setParent(Linfo/flowersoft/theotown/city/objects/Car;)V

    goto/16 :goto_22

    .line 175
    :pswitch_375
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastMovement:I

    goto/16 :goto_22

    .line 238
    :cond_37d
    iget p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    if-ne p1, v3, :cond_399

    .line 239
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    .line 240
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    .line 241
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    .line 242
    iget p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    iput p2, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    .line 243
    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    :cond_399
    return-void

    :sswitch_data_39a
    .sparse-switch
        -0x60062907 -> :sswitch_1fe
        -0x3b54f756 -> :sswitch_1f2
        -0x3b5366d2 -> :sswitch_1e6
        -0xc6dd7de -> :sswitch_1da
        0x64 -> :sswitch_1ce
        0x66 -> :sswitch_1c2
        0x70 -> :sswitch_1b6
        0x73 -> :sswitch_1aa
        0x78 -> :sswitch_19c
        0x79 -> :sswitch_18e
        0xcbe -> :sswitch_180
        0xcc3 -> :sswitch_172
        0xd1b -> :sswitch_164
        0xd81 -> :sswitch_156
        0xd87 -> :sswitch_148
        0xd8c -> :sswitch_13a
        0xd8d -> :sswitch_12c
        0xed5 -> :sswitch_11e
        0xee2 -> :sswitch_110
        0x1848d -> :sswitch_102
        0x1a422 -> :sswitch_f4
        0x1caef -> :sswitch_e6
        0x2eefaa -> :sswitch_d8
        0x329ca1 -> :sswitch_ca
        0x32bc36 -> :sswitch_bc
        0x34a22d -> :sswitch_af
        0x34a35a -> :sswitch_a2
        0x37bc4b -> :sswitch_95
        0x5a72f63 -> :sswitch_88
        0x5af05c8 -> :sswitch_7b
        0x5b679a1 -> :sswitch_6e
        0x5d2a96d -> :sswitch_61
        0x653f2b3 -> :sswitch_55
        0x6890047 -> :sswitch_48
        0x25fe639c -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_428
    .packed-switch 0x0
        :pswitch_375
        :pswitch_368
        :pswitch_360
        :pswitch_358
        :pswitch_33e
        :pswitch_32c
        :pswitch_323
        :pswitch_31b
        :pswitch_313
        :pswitch_30b
        :pswitch_303
        :pswitch_2fb
        :pswitch_2f3
        :pswitch_375
        :pswitch_2e9
        :pswitch_2e1
        :pswitch_2d9
        :pswitch_2d3
        :pswitch_2c4
        :pswitch_2bc
        :pswitch_2b4
        :pswitch_28d
        :pswitch_285
        :pswitch_27d
        :pswitch_275
        :pswitch_26c
        :pswitch_262
        :pswitch_25a
        :pswitch_23f
        :pswitch_237
        :pswitch_33e
        :pswitch_32c
        :pswitch_219
        :pswitch_31b
        :pswitch_211
    .end packed-switch
.end method


# virtual methods
.method public driveTo(Linfo/flowersoft/theotown/city/objects/Way;)V
    .registers 5

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v1

    if-eqz v1, :cond_2c

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Way;->getStartX()I

    move-result v2

    if-ne v1, v2, :cond_17

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Way;->getStartY()I

    move-result v2

    if-eq v1, v2, :cond_2c

    .line 450
    :cond_17
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    .line 451
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    .line 452
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    .line 453
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    if-eqz v1, :cond_28

    goto :goto_2a

    :cond_28
    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    :goto_2a
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    .line 456
    :cond_2c
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Way;->getStartX()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    .line 457
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Way;->getStartY()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    .line 458
    iput v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    const/4 v1, 0x0

    .line 459
    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    .line 460
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    .line 461
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Way;->getStartLevel()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    .line 462
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    return-void
.end method

.method public getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;
    .registers 3

    .line 317
    :goto_0
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->absParent:Linfo/flowersoft/theotown/city/objects/Car;

    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->parent:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v1, :cond_9

    .line 318
    iput-object v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->absParent:Linfo/flowersoft/theotown/city/objects/Car;

    goto :goto_0

    :cond_9
    return-object v0
.end method

.method public getCapacity()I
    .registers 4

    .line 341
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/CarDraft;->capacity:I

    .line 342
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    :goto_6
    if-eqz v1, :cond_10

    .line 344
    iget-object v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/CarDraft;->capacity:I

    add-int/2addr v0, v2

    .line 345
    iget-object v1, v1, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    goto :goto_6

    :cond_10
    return v0
.end method

.method public getChild()Linfo/flowersoft/theotown/city/objects/Car;
    .registers 2

    .line 327
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    return-object v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 470
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 466
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->id:I

    return v0
.end method

.method public getLastTail()Linfo/flowersoft/theotown/city/objects/Car;
    .registers 3

    move-object v0, p0

    .line 361
    :goto_1
    iget-object v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method public getOwner()Linfo/flowersoft/theotown/city/objects/CarOwner;
    .registers 2

    .line 441
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->owner:Linfo/flowersoft/theotown/city/objects/CarOwner;

    return-object v0
.end method

.method public getParent()Linfo/flowersoft/theotown/city/objects/Car;
    .registers 2

    .line 309
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->parent:Linfo/flowersoft/theotown/city/objects/Car;

    return-object v0
.end method

.method public getTail(I)Linfo/flowersoft/theotown/city/objects/Car;
    .registers 3

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    :goto_2
    if-eqz v0, :cond_b

    if-lez p1, :cond_b

    .line 353
    iget-object v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_b
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 483
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->id:I

    return v0
.end method

.method public isWaiting()Z
    .registers 3

    .line 478
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Way;->getDir(I)I

    move-result v0

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    const-string v0, "d"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 369
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 370
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 371
    const-string v0, "dir"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 372
    const-string v0, "lx"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastX:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 373
    const-string v0, "ly"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastY:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 374
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    if-eqz v0, :cond_53

    const-string v0, "llvl"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 375
    :cond_53
    const-string v0, "ldir"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastDir:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 377
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    if-eqz v0, :cond_72

    .line 378
    const-string v0, "wy"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 379
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 380
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Way;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 381
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 384
    :cond_72
    const-string v0, "prg2"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 385
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 387
    const-string v0, "f"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 388
    const-string v0, "p"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 389
    const-string v0, "lm"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastMovement:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 390
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    if-eqz v0, :cond_b0

    const-string v0, "controller"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->controller:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 391
    :cond_b0
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->id:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 392
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c9

    .line 393
    const-string v0, "paused"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 395
    :cond_c9
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-eqz v0, :cond_d6

    .line 396
    const-string v0, "important"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 398
    :cond_d6
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_e9

    .line 399
    const-string v0, "data"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v5, p0, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    invoke-interface {v0, v5, v6}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 401
    :cond_e9
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->data2:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_fa

    .line 402
    const-string v0, "data2"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v3, p0, Linfo/flowersoft/theotown/city/objects/Car;->data2:J

    invoke-interface {v0, v3, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 404
    :cond_fa
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastSpeed:F

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_113

    .line 405
    const-string v0, "ls"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->lastSpeed:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 407
    :cond_113
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    if-eqz v0, :cond_122

    .line 408
    const-string v0, "lvl"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 411
    :cond_122
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->parent:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v0, :cond_133

    .line 412
    const-string v0, "parent"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->parent:Linfo/flowersoft/theotown/city/objects/Car;

    iget v1, v1, Linfo/flowersoft/theotown/city/objects/Car;->id:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 415
    :cond_133
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_146

    .line 416
    const-string v0, "s"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->speed:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 419
    :cond_146
    iget v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->wealthLevel:I

    if-eqz v0, :cond_155

    const-string v0, "wlvl"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->wealthLevel:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 420
    :cond_155
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->fadeIn:Z

    if-nez v0, :cond_164

    const-string v0, "fi"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->fadeIn:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 421
    :cond_164
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->fadeOut:Z

    if-eqz v0, :cond_173

    const-string v0, "fd"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/city/objects/Car;->fadeOut:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 423
    :cond_173
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->owner:Linfo/flowersoft/theotown/city/objects/CarOwner;

    if-eqz v0, :cond_187

    .line 424
    const-string v0, "owner"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 425
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 426
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->owner:Linfo/flowersoft/theotown/city/objects/CarOwner;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 427
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 430
    :cond_187
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->color:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v0, :cond_1b1

    .line 431
    const-string v0, "color"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 432
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 433
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 434
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 435
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 436
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_1b1
    return-void
.end method

.method public setColor(Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 2

    .line 474
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public setOwner(Linfo/flowersoft/theotown/city/objects/CarOwner;)V
    .registers 2

    .line 445
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->owner:Linfo/flowersoft/theotown/city/objects/CarOwner;

    return-void
.end method

.method public setParent(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 4

    .line 284
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->parent:Linfo/flowersoft/theotown/city/objects/Car;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 285
    iput-object v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    :cond_7
    if-eqz p1, :cond_10

    .line 287
    iget-object v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v0, :cond_10

    .line 288
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Car;->setParent(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 290
    :cond_10
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->parent:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz p1, :cond_1b

    .line 292
    iput-object p0, p1, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    .line 293
    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->absParent:Linfo/flowersoft/theotown/city/objects/Car;

    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->absParent:Linfo/flowersoft/theotown/city/objects/Car;

    goto :goto_1d

    .line 295
    :cond_1b
    iput-object p0, p0, Linfo/flowersoft/theotown/city/objects/Car;->absParent:Linfo/flowersoft/theotown/city/objects/Car;

    .line 298
    :goto_1d
    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    :goto_1f
    if-eqz p1, :cond_28

    .line 300
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->absParent:Linfo/flowersoft/theotown/city/objects/Car;

    iput-object v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->absParent:Linfo/flowersoft/theotown/city/objects/Car;

    .line 301
    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    goto :goto_1f

    :cond_28
    return-void
.end method

.method public tailSize()I
    .registers 3

    .line 332
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    const/4 v1, 0x0

    :goto_3
    if-eqz v0, :cond_a

    add-int/lit8 v1, v1, 0x1

    .line 335
    iget-object v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->child:Linfo/flowersoft/theotown/city/objects/Car;

    goto :goto_3

    :cond_a
    return v1
.end method

###### Class info.flowersoft.theotown.city.objects.Car.CarResolver (info.flowersoft.theotown.city.objects.Car$CarResolver)
.class public interface abstract Linfo/flowersoft/theotown/city/objects/Car$CarResolver;
.super Ljava/lang/Object;
.source "Car.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/objects/Car;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarResolver"
.end annotation


# virtual methods
.method public abstract get(I)Linfo/flowersoft/theotown/city/objects/Car;
.end method
