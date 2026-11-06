###### Class info.flowersoft.theotown.components.DefaultWeather (info.flowersoft.theotown.components.DefaultWeather)
.class public final Linfo/flowersoft/theotown/components/DefaultWeather;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultWeather.java"


# static fields
.field public static drawLightningFunc:Lvm2/LuaFunction;

.field public static lastThunder:I

.field public static nextThunder:I


# instance fields
.field public final cloudDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final defaultOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public downfallSpeed:F

.field public final firework:Linfo/flowersoft/theotown/components/firework/Firework;

.field public final flareOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final fogDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public fogEnabled:Z

.field public lastThunderTime:J

.field public loadedSoundId:I

.field public overlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public soundSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

.field public thunderX:I

.field public thunderY:I

.field public time:I

.field public timeLocked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 70
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 41
    const-string v0, "$anim_weather_fog00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->fogDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 42
    const-string v0, "$anim_weather_clouds00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->cloudDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 43
    const-string v0, "$anim_overlay00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->defaultOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 44
    const-string v2, "$anim_weather_flare00"

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->flareOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    iput v1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->downfallSpeed:F

    .line 71
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const v2, 0xf4240

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->time:I

    .line 72
    new-instance v1, Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/firework/Firework;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->firework:Linfo/flowersoft/theotown/components/firework/Firework;

    .line 74
    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->overlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 75
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getGlobals()Lvm2/Globals;

    move-result-object v0

    const-string v1, "TheoTown"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const-string v1, "drawLightning"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/DefaultWeather;->drawLightningFunc:Lvm2/LuaFunction;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultWeather;-><init>()V

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->defaultOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->overlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 83
    :goto_7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 84
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_84

    goto :goto_53

    :sswitch_1d
    const-string v2, "time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_53

    :cond_26
    const/4 v1, 0x4

    goto :goto_53

    :sswitch_28
    const-string v2, "fog"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_53

    :cond_31
    const/4 v1, 0x3

    goto :goto_53

    :sswitch_33
    const-string v2, "content_firework"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_53

    :cond_3c
    const/4 v1, 0x2

    goto :goto_53

    :sswitch_3e
    const-string v2, "overlay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_53

    :cond_47
    const/4 v1, 0x1

    goto :goto_53

    :sswitch_49
    const-string v2, "locked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    packed-switch v1, :pswitch_data_9a

    .line 103
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    goto :goto_7

    .line 86
    :pswitch_5a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->time:I

    goto :goto_7

    .line 92
    :pswitch_61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->fogEnabled:Z

    goto :goto_7

    .line 95
    :pswitch_68
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->firework:Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/firework/Firework;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 97
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_7

    .line 100
    :pswitch_74
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->setOverlay(Ljava/lang/String;)V

    goto :goto_7

    .line 89
    :pswitch_7c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->timeLocked:Z

    goto :goto_7

    :cond_83
    return-void

    :sswitch_data_84
    .sparse-switch
        -0x4169ccf6 -> :sswitch_49
        -0x410bbbb0 -> :sswitch_3e
        -0x154b58b3 -> :sswitch_33
        0x18cbe -> :sswitch_28
        0x3652cd -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_74
        :pswitch_68
        :pswitch_61
        :pswitch_5a
    .end packed-switch
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/DefaultWeather;)Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->soundSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    return-object p0
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 125
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->firework:Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/firework/Firework;->bind(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 222
    iget-object v2, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 223
    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 224
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v0

    const/16 v4, 0x18

    .line 225
    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 227
    iget-object v4, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getLod()Linfo/flowersoft/theotown/city/components/LODController;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/components/LODController;->drawWeather()Z

    move-result v4

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz v4, :cond_f9

    .line 228
    iget-object v4, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v4

    .line 230
    iget v5, v1, Linfo/flowersoft/theotown/components/DefaultWeather;->downfallSpeed:F

    float-to-double v5, v5

    iget-object v7, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v3

    int-to-double v7, v3

    mul-double/2addr v5, v7

    const-wide v7, 0x412e848000000000L    # 1000000.0

    rem-double/2addr v5, v7

    double-to-int v3, v5

    .line 231
    iget-object v5, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v5

    .line 233
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultWeather;->getRain()F

    move-result v6

    neg-float v7, v6

    const v8, 0x3ccccccd    # 0.025f

    mul-float/2addr v7, v8

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v8, v7, v13

    if-lez v8, :cond_5b

    move v14, v13

    goto :goto_5c

    :cond_5b
    move v14, v7

    :goto_5c
    const/4 v15, 0x0

    cmpl-float v7, v14, v15

    if-lez v7, :cond_78

    .line 238
    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v1, v2, v14, v7, v8}, Linfo/flowersoft/theotown/components/DefaultWeather;->drawHeat(Lio/blueflower/stapel2d/drawing/Engine;FII)V

    :cond_78
    cmpl-float v7, v6, v15

    if-gtz v7, :cond_80

    .line 241
    iget-boolean v7, v1, Linfo/flowersoft/theotown/components/DefaultWeather;->fogEnabled:Z

    if-eqz v7, :cond_eb

    :cond_80
    const/high16 v7, 0x40a00000    # 5.0f

    sub-float v8, v6, v13

    mul-float/2addr v8, v7

    .line 242
    invoke-static {v8, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    cmpl-float v8, v6, v13

    if-lez v8, :cond_8e

    move v6, v13

    :cond_8e
    const v8, 0x3e19999a    # 0.15f

    mul-float/2addr v8, v6

    .line 245
    iget-boolean v9, v1, Linfo/flowersoft/theotown/components/DefaultWeather;->fogEnabled:Z

    if-eqz v9, :cond_99

    const v8, 0x3ecccccd    # 0.4f

    .line 249
    :cond_99
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v9

    iget-object v10, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v10

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    .line 250
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v5

    iget-object v10, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v10

    mul-float/2addr v5, v10

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v10

    div-float/2addr v10, v12

    add-float/2addr v5, v10

    iget-object v10, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 251
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v10

    move-object v11, v4

    move v4, v9

    move v9, v10

    .line 252
    invoke-virtual {v11}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v10

    invoke-virtual {v11}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v11

    .line 247
    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/DefaultWeather;->drawDownfall(Lio/blueflower/stapel2d/drawing/Engine;IFFFFFFFF)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 254
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v4, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 255
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    iget-object v5, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 256
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 254
    invoke-virtual {v1, v4, v3}, Linfo/flowersoft/theotown/components/DefaultWeather;->spawnLightning(II)V

    :cond_eb
    mul-float/2addr v6, v12

    sub-float v3, v13, v6

    sub-float/2addr v13, v14

    .line 260
    invoke-static {v3, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v3, v3, v15

    if-lez v3, :cond_f9

    .line 261
    sget v3, Linfo/flowersoft/theotown/resources/Settings;->loadCounter:I

    :cond_f9
    int-to-long v3, v0

    .line 267
    iget-wide v5, v1, Linfo/flowersoft/theotown/components/DefaultWeather;->lastThunderTime:J

    sub-long v7, v3, v5

    const-wide/16 v9, 0xc8

    cmp-long v0, v7, v9

    if-gez v0, :cond_139

    cmp-long v0, v3, v5

    if-ltz v0, :cond_139

    .line 268
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultWeather;->drawLightningFunc:Lvm2/LuaFunction;

    if-eqz v0, :cond_139

    sub-long/2addr v3, v5

    long-to-float v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    .line 270
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v3

    .line 271
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v4

    .line 273
    :try_start_119
    sget-object v5, Linfo/flowersoft/theotown/components/DefaultWeather;->drawLightningFunc:Lvm2/LuaFunction;

    iget v6, v1, Linfo/flowersoft/theotown/components/DefaultWeather;->thunderX:I

    invoke-static {v6}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v6

    iget v7, v1, Linfo/flowersoft/theotown/components/DefaultWeather;->thunderY:I

    invoke-static {v7}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v7

    mul-float/2addr v0, v12

    rem-float/2addr v0, v12

    float-to-double v8, v0

    invoke-static {v8, v9}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_131} :catch_132

    goto :goto_136

    :catch_132
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    :goto_136
    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 281
    :cond_139
    iget-object v0, v1, Linfo/flowersoft/theotown/components/DefaultWeather;->firework:Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/firework/Firework;->draw(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 283
    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getLod()Linfo/flowersoft/theotown/city/components/LODController;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/LODController;->drawOverlay()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 284
    iget-object v0, v1, Linfo/flowersoft/theotown/components/DefaultWeather;->overlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-virtual {v1, v2, v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->drawOverlay(Lio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    :cond_14f
    return-void
.end method

.method public drawCloudShadows(Lio/blueflower/stapel2d/drawing/Engine;IFFF)V
    .registers 16

    .line 303
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v0

    .line 304
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    int-to-float p2, p2

    mul-float/2addr p2, v2

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr p2, v2

    mul-float/2addr p2, v0

    .line 306
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->cloudDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v3, 0x0

    aget v9, v2, v3

    .line 308
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr p5, v2

    float-to-int p5, p5

    .line 309
    invoke-virtual {p1, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 p5, 0x42000000    # 32.0f

    mul-float/2addr p5, v0

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    .line 310
    invoke-virtual {p1, p5, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 313
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-float/2addr p3, p2

    const/4 p2, 0x4

    int-to-float p2, p2

    mul-float p5, p2, v0

    add-float v7, p3, p5

    move-object v5, p1

    move v8, p4

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 314
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sub-float v7, p3, p5

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFI)V

    move p1, v8

    .line 315
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float/2addr p2, v1

    add-float v8, p1, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 316
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sub-float v8, p1, p2

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 319
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/16 p2, 0x8

    int-to-float p2, p2

    mul-float p4, p2, v0

    add-float v7, p3, p4

    move v8, p1

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 320
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sub-float v7, p3, p4

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 321
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float/2addr p2, v1

    add-float v8, p1, p2

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 322
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sub-float v8, p1, p2

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 323
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move v8, p1

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 325
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 326
    invoke-virtual {v5, v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 p1, 0xff

    .line 327
    invoke-virtual {v5, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public drawDownfall(Lio/blueflower/stapel2d/drawing/Engine;IFFFFFFFF)Z
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    const/4 v12, 0x0

    cmpg-float v1, p5, v12

    const/4 v13, 0x0

    if-gtz v1, :cond_15

    cmpg-float v3, p7, v12

    if-gtz v3, :cond_15

    cmpg-float v3, p6, v12

    if-gtz v3, :cond_15

    return v13

    :cond_15
    if-gez v1, :cond_19

    move v1, v12

    goto :goto_1b

    :cond_19
    move/from16 v1, p5

    :goto_1b
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v14

    if-lez v3, :cond_23

    move v15, v14

    goto :goto_24

    :cond_23
    move v15, v1

    .line 362
    :goto_24
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v1

    .line 363
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    int-to-float v5, v11

    mul-float/2addr v5, v4

    const/high16 v16, 0x43480000    # 200.0f

    div-float v17, v5, v16

    .line 369
    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    cmpl-float v5, p7, v12

    const/high16 v18, 0x3f000000    # 0.5f

    const/high16 v19, 0x437f0000    # 255.0f

    if-lez v5, :cond_bc

    mul-float v5, p7, v19

    float-to-int v5, v5

    .line 372
    invoke-virtual {v2, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v5, 0x41800000    # 16.0f

    mul-float v6, v1, v5

    mul-float/2addr v5, v3

    .line 373
    invoke-virtual {v2, v6, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move v5, v1

    .line 374
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    move v6, v3

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v7, 0x3e99999a    # 0.3f

    mul-float v7, v7, v17

    mul-float/2addr v7, v5

    add-float v7, p3, v7

    iget-object v8, v0, Linfo/flowersoft/theotown/components/DefaultWeather;->fogDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v8, v8, v13

    move-object v9, v4

    move v4, v7

    const/4 v7, 0x0

    move v10, v6

    move v6, v8

    const/4 v8, 0x0

    move-object/from16 v22, v9

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v9, p9

    move v12, v5

    move v13, v10

    move/from16 v5, p4

    move/from16 v10, p10

    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFIFFFF)V

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v3, v12, v1

    mul-float/2addr v1, v13

    .line 377
    invoke-virtual {v2, v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 378
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v4, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v17

    mul-float/2addr v4, v12

    add-float v4, p3, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultWeather;->fogDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v6, v5, v21

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFIFFFF)V

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v3, v12, v1

    mul-float/2addr v1, v13

    .line 381
    invoke-virtual {v2, v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 382
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float v4, v17, v18

    mul-float/2addr v4, v12

    add-float v4, p3, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultWeather;->fogDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v6, v5, v21

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFIFFFF)V

    goto :goto_c4

    :cond_bc
    move-object/from16 v22, v4

    move/from16 v20, v12

    move/from16 v21, v13

    move v12, v1

    move v13, v3

    :goto_c4
    cmpl-float v8, v15, v20

    const/16 v9, 0xff

    const/16 v23, 0x1

    if-lez v8, :cond_17c

    cmpl-float v1, p6, v20

    if-lez v1, :cond_17c

    .line 390
    invoke-virtual {v2, v14, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    mul-float v18, v18, p6

    mul-float v18, v18, v19

    .line 391
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 392
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 393
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v4, 0x0

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move-object v2, v1

    .line 395
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->weatherLightning:Z

    if-eqz v1, :cond_17c

    .line 397
    sget v1, Linfo/flowersoft/theotown/components/DefaultWeather;->nextThunder:I

    if-gt v11, v1, :cond_ff

    add-int/lit16 v3, v11, 0x2710

    if-le v1, v3, :cond_138

    :cond_ff
    sget v1, Linfo/flowersoft/theotown/components/DefaultWeather;->lastThunder:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0x12c

    if-lt v1, v3, :cond_138

    .line 398
    sput v11, Linfo/flowersoft/theotown/components/DefaultWeather;->lastThunder:I

    .line 399
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const v5, 0x3f19999a    # 0.6f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_11d

    move/from16 v4, v23

    goto :goto_11f

    :cond_11d
    move/from16 v4, v21

    :goto_11f
    const/high16 v5, 0x457a0000    # 4000.0f

    mul-float v5, v5, p6

    float-to-int v5, v5

    rsub-int v5, v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x7d0

    mul-int/2addr v4, v5

    add-int/2addr v4, v11

    const/16 v5, 0x2bc

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    sput v4, Linfo/flowersoft/theotown/components/DefaultWeather;->nextThunder:I

    .line 402
    :cond_138
    sget v1, Linfo/flowersoft/theotown/components/DefaultWeather;->lastThunder:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v1, v16

    .line 403
    sget v3, Linfo/flowersoft/theotown/components/DefaultWeather;->lastThunder:I

    if-gt v3, v11, :cond_17c

    cmpg-float v3, v1, v14

    if-gez v3, :cond_17c

    .line 404
    invoke-virtual {v2, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    move-object/from16 v10, v22

    .line 405
    invoke-virtual {v2, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    .line 406
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 407
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v4, 0x0

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move-object v2, v1

    move/from16 v1, v21

    .line 408
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 409
    sget v3, Linfo/flowersoft/theotown/components/DefaultWeather;->lastThunder:I

    if-ne v3, v11, :cond_178

    move/from16 v1, v23

    :cond_178
    :goto_178
    move v11, v1

    move/from16 v1, p8

    goto :goto_181

    :cond_17c
    move/from16 v1, v21

    move-object/from16 v10, v22

    goto :goto_178

    .line 414
    :goto_181
    invoke-virtual {v2, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 416
    invoke-virtual {v2, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-lez v8, :cond_1d2

    mul-float v15, v15, v19

    float-to-int v1, v15

    .line 419
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 421
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result v1

    if-eqz v1, :cond_19d

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v17, v17, v1

    .line 422
    :cond_19d
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-float v4, p3, v17

    const/high16 v5, 0x40e00000    # 7.0f

    add-float/2addr v4, v5

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v14, v17, v5

    add-float v5, p4, v14

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RAIN:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v10, p10

    move v15, v9

    move/from16 v9, p9

    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFIFFFF)V

    .line 428
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-float v4, p3, v14

    const/high16 v2, 0x40280000    # 2.625f

    mul-float v17, v17, v2

    add-float v5, p4, v17

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RAIN:I

    add-int/lit8 v6, v2, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFIFFFF)V

    goto :goto_1d3

    :cond_1d2
    move v15, v9

    .line 435
    :goto_1d3
    invoke-virtual {v2, v12, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 436
    invoke-virtual {v2, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return v11
.end method

.method public drawHeat(Lio/blueflower/stapel2d/drawing/Engine;FII)V
    .registers 16

    .line 331
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v7

    .line 332
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 334
    invoke-virtual {p1, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v1, 0xe6

    const/16 v2, 0xb4

    const/16 v9, 0xff

    .line 335
    invoke-virtual {p1, v9, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 336
    invoke-virtual {p1, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p2

    .line 337
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 338
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v4, p3

    move v2, p4

    int-to-float v5, v2

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 341
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->useLowColorDepth:Z

    const/4 v10, 0x0

    if-nez v1, :cond_52

    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v1, p2

    .line 342
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 343
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 344
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->flareOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v6, v2, v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 348
    :cond_52
    invoke-virtual {p1, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 349
    invoke-virtual {p1, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 350
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 352
    invoke-virtual {p1, v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public final drawOverlay(Lio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/draft/AnimationDraft;)V
    .registers 14

    if-nez p2, :cond_3

    goto :goto_38

    .line 290
    :cond_3
    iget-object p2, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz p2, :cond_38

    .line 291
    array-length v0, p2

    if-lez v0, :cond_38

    .line 292
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    .line 293
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v1

    .line 294
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 295
    invoke-virtual {p1, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v3, 0x19

    .line 296
    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 297
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v8

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v9

    const/4 v0, 0x0

    aget v10, p2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 298
    invoke-virtual {v4, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    :cond_38
    :goto_38
    return-void
.end method

.method public getFirework()Linfo/flowersoft/theotown/components/firework/Firework;
    .registers 2

    .line 442
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->firework:Linfo/flowersoft/theotown/components/firework/Firework;

    return-object v0
.end method

.method public getRain()F
    .registers 7

    .line 207
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->time:I

    int-to-float v0, v0

    const v1, 0x4700e800    # 33000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget v2, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->time:I

    int-to-float v2, v2

    const v3, 0x463b8000    # 12000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTime()I
    .registers 2

    .line 148
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->time:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0xc

    return v0
.end method

.method public isFogEnabled()Z
    .registers 2

    .line 140
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->fogEnabled:Z

    return v0
.end method

.method public isTimeLocked()Z
    .registers 2

    .line 156
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->timeLocked:Z

    return v0
.end method

.method public prepare()V
    .registers 2

    .line 131
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->prepare()V

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->firework:Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/firework/Firework;->prepare()V

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    const-string v0, "time"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->time:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 111
    const-string v0, "locked"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->timeLocked:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 112
    const-string v0, "fog"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->fogEnabled:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 114
    const-string v0, "content_firework"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->firework:Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/firework/Firework;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 116
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->overlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->defaultOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eq v0, v1, :cond_47

    if-eqz v0, :cond_47

    .line 119
    const-string v0, "overlay"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->overlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_47
    return-void
.end method

.method public setDownfallSpeed(F)V
    .registers 2

    .line 136
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->downfallSpeed:F

    return-void
.end method

.method public setFogEnabled(Z)V
    .registers 2

    .line 144
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->fogEnabled:Z

    return-void
.end method

.method public setOverlay(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_13

    .line 197
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/Draft;

    .line 198
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz v0, :cond_13

    .line 199
    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->overlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void

    .line 203
    :cond_13
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->defaultOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->overlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public setTime(I)V
    .registers 2

    .line 152
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->time:I

    return-void
.end method

.method public setTimeLocked(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->timeLocked:Z

    return-void
.end method

.method public spawnLightning(II)V
    .registers 10

    .line 211
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->thunderX:I

    .line 212
    iput p2, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->thunderY:I

    .line 213
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->lastThunderTime:J

    .line 215
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget p2, Linfo/flowersoft/theotown/resources/Resources;->SOUND_THUNDER:I

    sget-object v0, Linfo/flowersoft/theotown/resources/SoundType;->WEATHER:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v1, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget v3, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->thunderX:I

    add-int/lit8 v3, v3, -0x4

    iget v4, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->thunderY:I

    add-int/lit8 v4, v4, -0x4

    const/16 v5, 0x8

    const/16 v6, 0x8

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;IIII)V

    invoke-virtual {p1, p2, v0, v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void
.end method

.method public update()V
    .registers 5

    .line 165
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->update()V

    .line 166
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->timeLocked:Z

    if-nez v0, :cond_1e

    .line 167
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->time:I

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTimeDelta()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->time:I

    if-gez v0, :cond_1e

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->time:I

    .line 171
    :cond_1e
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_SNOW:I

    goto :goto_2d

    :cond_2b
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_RAIN:I

    .line 173
    :goto_2d
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultWeather;->getRain()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_5b

    .line 174
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->soundSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    if-nez v3, :cond_5b

    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->weather:Z

    if-eqz v3, :cond_5b

    .line 175
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultWeather$1;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/components/DefaultWeather$1;-><init>(Linfo/flowersoft/theotown/components/DefaultWeather;F)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->soundSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    .line 186
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->WEATHER:Linfo/flowersoft/theotown/resources/SoundType;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->soundSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    invoke-virtual {v1, v0, v2, v3}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    .line 187
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->loadedSoundId:I

    goto :goto_70

    .line 188
    :cond_5b
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->soundSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    if-eqz v3, :cond_70

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_6d

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->isValid()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget v1, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->loadedSoundId:I

    if-eq v1, v0, :cond_70

    :cond_6d
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->soundSource:Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    .line 192
    :cond_70
    :goto_70
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather;->firework:Linfo/flowersoft/theotown/components/firework/Firework;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/firework/Firework;->update()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultWeather.AnonymousClass1 (info.flowersoft.theotown.components.DefaultWeather$1)
.class public Linfo/flowersoft/theotown/components/DefaultWeather$1;
.super Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;
.source "DefaultWeather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/DefaultWeather;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultWeather;F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultWeather$1;->this$0:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;-><init>(F)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather$1;->this$0:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->access$000(Linfo/flowersoft/theotown/components/DefaultWeather;)Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;

    move-result-object v0

    if-ne v0, p0, :cond_e

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->weather:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .registers 3

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWeather$1;->this$0:Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;->getRain()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 179
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;->stream:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-virtual {v1, v0, v0}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->setVolume(FF)V

    return-void
.end method
