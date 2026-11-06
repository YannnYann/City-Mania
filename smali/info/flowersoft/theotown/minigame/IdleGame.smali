###### Class info.flowersoft.theotown.minigame.IdleGame (info.flowersoft.theotown.minigame.IdleGame)
.class public abstract Linfo/flowersoft/theotown/minigame/IdleGame;
.super Ljava/lang/Object;
.source "IdleGame.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/minigame/IdleGame$Spec;,
        Linfo/flowersoft/theotown/minigame/IdleGame$Property;
    }
.end annotation


# static fields
.field public static idleConfig:Linfo/flowersoft/theotown/util/json/JSONObject;


# instance fields
.field public active:Z

.field public currency:Linfo/flowersoft/theotown/minigame/Currency;

.field public id:I

.field public levels:Lio/blueflower/stapel2d/util/IntList;

.field public properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/minigame/IdleGame$Property;",
            ">;"
        }
    .end annotation
.end field

.field public rank:I

.field public specs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/minigame/IdleGame$Spec;",
            ">;"
        }
    .end annotation
.end field

.field public stageLock:Linfo/flowersoft/theotown/util/TimeUnlockable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-string v0, "idle game"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/minigame/IdleGame;->idleConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/minigame/Currency;)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->specs:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->properties:Ljava/util/List;

    .line 50
    iput-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    .line 51
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->updateLock()V

    return-void
.end method


# virtual methods
.method public addProperty(Linfo/flowersoft/theotown/minigame/IdleGame$Property;)V
    .registers 3

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSpec(Linfo/flowersoft/theotown/minigame/IdleGame$Spec;)V
    .registers 3

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->specs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStage()V
    .registers 3

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 161
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->updateLock()V

    return-void
.end method

.method public countProperties()I
    .registers 2

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public countSpecs()I
    .registers 2

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->specs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public countStages()I
    .registers 2

    .line 229
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public abstract drawStageIcon(Lio/blueflower/stapel2d/drawing/Engine;IIIII)V
.end method

.method public getCurrency()Linfo/flowersoft/theotown/minigame/Currency;
    .registers 2

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 249
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANDOM:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 108
    iget v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->id:I

    return v0
.end method

.method public getIncomeTitle()Ljava/lang/String;
    .registers 2

    .line 274
    const-string v0, "INCOME"

    return-object v0
.end method

.method public getLevel(I)I
    .registers 3

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getMajorLevel(II)I
    .registers 4

    const/4 p1, 0x1

    add-int/2addr p2, p1

    const/4 v0, 0x5

    if-ge p2, v0, :cond_7

    const/4 p1, 0x0

    return p1

    :cond_7
    const/16 v0, 0xa

    if-ge p2, v0, :cond_c

    return p1

    :cond_c
    const/16 p1, 0x19

    if-ge p2, p1, :cond_12

    const/4 p1, 0x2

    return p1

    :cond_12
    const/16 p1, 0x32

    if-ge p2, p1, :cond_18

    const/4 p1, 0x3

    return p1

    :cond_18
    const/4 p1, 0x4

    const/16 v0, 0x64

    if-ge p2, v0, :cond_1e

    return p1

    .line 216
    :cond_1e
    div-int/2addr p2, v0

    add-int/2addr p2, p1

    return p2
.end method

.method public getMajorLevelRange(II[I)V
    .registers 8

    const/4 p1, 0x1

    add-int/2addr p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ge p2, v1, :cond_c

    .line 181
    aput p1, p3, v0

    const/4 p2, 0x4

    .line 182
    aput p2, p3, p1

    goto :goto_3f

    :cond_c
    const/16 v2, 0xa

    if-ge p2, v2, :cond_17

    .line 184
    aput v1, p3, v0

    const/16 p2, 0x9

    .line 185
    aput p2, p3, p1

    goto :goto_3f

    :cond_17
    const/16 v1, 0x19

    if-ge p2, v1, :cond_22

    .line 187
    aput v2, p3, v0

    const/16 p2, 0x18

    .line 188
    aput p2, p3, p1

    goto :goto_3f

    :cond_22
    const/16 v2, 0x32

    if-ge p2, v2, :cond_2d

    .line 190
    aput v1, p3, v0

    const/16 p2, 0x31

    .line 191
    aput p2, p3, p1

    goto :goto_3f

    :cond_2d
    const/16 v1, 0x63

    const/16 v3, 0x64

    if-ge p2, v3, :cond_38

    .line 193
    aput v2, p3, v0

    .line 194
    aput v1, p3, p1

    goto :goto_3f

    .line 196
    :cond_38
    div-int/2addr p2, v3

    mul-int/2addr p2, v3

    aput p2, p3, v0

    add-int/2addr p2, v1

    .line 197
    aput p2, p3, p1

    .line 199
    :goto_3f
    aget p2, p3, v0

    sub-int/2addr p2, p1

    aput p2, p3, v0

    .line 200
    aget p2, p3, p1

    sub-int/2addr p2, p1

    aput p2, p3, p1

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 245
    const-string v0, "MY IDLE GAME"

    return-object v0
.end method

.method public getOverallIncome()D
    .registers 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 301
    :goto_3
    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 302
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/minigame/IdleGame;->propertiesFulfilled(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/minigame/IdleGame;->income(II)D

    move-result-wide v3

    add-double/2addr v0, v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1f
    return-wide v0
.end method

.method public getProperty(I)Linfo/flowersoft/theotown/minigame/IdleGame$Property;
    .registers 3

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->properties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/minigame/IdleGame$Property;

    return-object p1
.end method

.method public getRank()I
    .registers 2

    .line 116
    iget v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->rank:I

    return v0
.end method

.method public getSpec(I)Linfo/flowersoft/theotown/minigame/IdleGame$Spec;
    .registers 3

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->specs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/minigame/IdleGame$Spec;

    return-object p1
.end method

.method public getStageLock()Linfo/flowersoft/theotown/util/TimeUnlockable;
    .registers 2

    .line 225
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->stageLock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    return-object v0
.end method

.method public getStageSubTitle(I)Ljava/lang/String;
    .registers 5

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/minigame/IdleGame;->income(II)D

    move-result-wide v1

    const/4 p1, 0x1

    invoke-static {v1, v2, p1}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->currency:Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {p1}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStageTitle(I)Ljava/lang/String;
    .registers 4

    .line 253
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/minigame/IdleGame;->getLevel(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LEVEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStageWaitingTimeMinutes(I)I
    .registers 5

    .line 221
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_13

    const/4 v0, 0x3

    if-le p1, v0, :cond_13

    sget-object v0, Linfo/flowersoft/theotown/minigame/IdleGame;->idleConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "min per stage"

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/2addr v0, p1

    return v0

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public getUnlockImmediatelyText()Ljava/lang/String;
    .registers 2

    .line 282
    const-string v0, "ARE YOU SURE?!"

    return-object v0
.end method

.method public getUnlockImmediatelyTitle()Ljava/lang/String;
    .registers 2

    .line 278
    const-string v0, "UNLOCK IMMEDIATELY"

    return-object v0
.end method

.method public getUnlockSubTitle(I)Ljava/lang/String;
    .registers 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADD YOUR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "TH LANE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnlockTitle(I)Ljava/lang/String;
    .registers 2

    .line 262
    const-string p1, "UNLOCK"

    return-object p1
.end method

.method public getUpgradeTitle(I)Ljava/lang/String;
    .registers 2

    .line 270
    const-string p1, "UPGRADE"

    return-object p1
.end method

.method public income(II)D
    .registers 3

    .line 0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1
.end method

.method public isActive()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->active:Z

    if-eqz v0, :cond_c

    invoke-static {}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->isActive()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->stageLock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->active:Z

    .line 59
    :goto_6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_88

    goto :goto_47

    :sswitch_1c
    const-string v3, "lock"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_47

    :cond_25
    const/4 v2, 0x3

    goto :goto_47

    :sswitch_27
    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_47

    :cond_30
    const/4 v2, 0x2

    goto :goto_47

    :sswitch_32
    const-string v3, "levels"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_47

    :cond_3b
    move v2, v0

    goto :goto_47

    :sswitch_3d
    const-string v3, "active"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    :goto_47
    packed-switch v2, :pswitch_data_9a

    .line 82
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_6

    .line 74
    :pswitch_4e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 75
    new-instance v1, Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/util/TimeUnlockable;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->stageLock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    .line 76
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_6

    .line 71
    :pswitch_5c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->id:I

    goto :goto_6

    .line 63
    :pswitch_63
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 65
    :goto_6b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 66
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_6b

    .line 68
    :cond_7b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_6

    .line 79
    :pswitch_7f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v1

    iput-boolean v1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->active:Z

    goto :goto_6

    :cond_86
    return-void

    nop

    :sswitch_data_88
    .sparse-switch
        -0x54d080fa -> :sswitch_3d
        -0x41ee2a91 -> :sswitch_32
        0xd1b -> :sswitch_27
        0x32c52b -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_63
        :pswitch_5c
        :pswitch_4e
    .end packed-switch
.end method

.method public maxStageCount()I
    .registers 2

    .line 0
    const/16 v0, 0x14

    return v0
.end method

.method public priceOfStage(I)D
    .registers 6

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    int-to-double v2, p1

    .line 233
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public priceOfUpgrade(II)D
    .registers 3

    .line 0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public propertiesFulfilled(I)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 290
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 291
    iget-object v2, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->properties:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/minigame/IdleGame$Property;

    .line 292
    invoke-interface {v2, p1}, Linfo/flowersoft/theotown/minigame/IdleGame$Property;->isNeeded(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2, p1}, Linfo/flowersoft/theotown/minigame/IdleGame$Property;->isReady(I)Z

    move-result v2

    if-nez v2, :cond_1f

    return v0

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    const/4 p1, 0x1

    return p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const-string v0, "levels"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 91
    :goto_a
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 92
    iget-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 94
    :cond_1e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 96
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->id:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->stageLock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    if-eqz v0, :cond_41

    .line 99
    const-string v0, "lock"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->stageLock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 101
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 104
    :cond_41
    const-string v0, "active"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-boolean v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->active:Z

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setActive(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->active:Z

    return-void
.end method

.method public abstract setBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
.end method

.method public setId(I)V
    .registers 2

    .line 112
    iput p1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->id:I

    return-void
.end method

.method public setRank(I)V
    .registers 2

    .line 120
    iput p1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->rank:I

    return-void
.end method

.method public final updateLock()V
    .registers 5

    .line 165
    invoke-virtual {p0}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->getStageWaitingTimeMinutes(I)I

    move-result v0

    if-lez v0, :cond_1e

    .line 166
    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v1, :cond_1e

    .line 167
    new-instance v1, Linfo/flowersoft/theotown/util/TimeUnlockable;

    const v2, 0xea60

    mul-int/2addr v0, v2

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/util/TimeUnlockable;-><init>(J)V

    iput-object v1, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->stageLock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    .line 168
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->pause()V

    return-void

    :cond_1e
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->stageLock:Linfo/flowersoft/theotown/util/TimeUnlockable;

    return-void
.end method

.method public upgrade(II)V
    .registers 5

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/minigame/IdleGame;->levels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.minigame.IdleGame.Property (info.flowersoft.theotown.minigame.IdleGame$Property)
.class public interface abstract Linfo/flowersoft/theotown/minigame/IdleGame$Property;
.super Ljava/lang/Object;
.source "IdleGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/minigame/IdleGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Property"
.end annotation


# virtual methods
.method public abstract getIcon()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isNeeded(I)Z
.end method

.method public abstract isReady(I)Z
.end method

.method public abstract onClick(ILio/blueflower/stapel2d/util/Setter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

###### Class info.flowersoft.theotown.minigame.IdleGame.Spec (info.flowersoft.theotown.minigame.IdleGame$Spec)
.class public interface abstract Linfo/flowersoft/theotown/minigame/IdleGame$Spec;
.super Ljava/lang/Object;
.source "IdleGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/minigame/IdleGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Spec"
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getUnit()Ljava/lang/String;
.end method

.method public abstract getValue(III)D
.end method

.method public abstract isInt()Z
.end method
