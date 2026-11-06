###### Class info.flowersoft.theotown.cityloader.CityLoader (info.flowersoft.theotown.cityloader.CityLoader)
.class public final Linfo/flowersoft/theotown/cityloader/CityLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "CityLoader.java"


# instance fields
.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;-><init>()V

    .line 37
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/CityLoader;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-void
.end method


# virtual methods
.method public afterLoad(Linfo/flowersoft/theotown/city/City;)V
    .registers 10

    .line 334
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->afterLoad(Linfo/flowersoft/theotown/city/City;)V

    const/4 v0, 0x1

    .line 336
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    .line 337
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRankUpgradeAbsDay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    .line 339
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    const-wide/16 v6, 0x1e

    sub-long/2addr v0, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->setRank(Linfo/flowersoft/theotown/draft/RankDraft;J)V

    return-void

    .line 341
    :cond_27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRankUpgradeAbsDay()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_36

    .line 343
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->setRank(Linfo/flowersoft/theotown/draft/RankDraft;J)V

    :cond_36
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 42
    const-string v0, "general"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 2

    .line 0
    return-object p1
.end method

.method public loadRaw(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 47
    iget-object v5, v0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result v5

    .line 48
    iget-object v6, v0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHeight()I

    move-result v6

    .line 49
    iget-object v7, v0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 50
    iget-object v8, v0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getAuthor()Ljava/lang/String;

    move-result-object v8

    .line 51
    iget-object v9, v0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getSeed()Ljava/lang/String;

    move-result-object v9

    .line 52
    sget-object v10, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    .line 57
    sget-object v11, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Linfo/flowersoft/theotown/draft/RankDraft;

    .line 63
    new-instance v13, Linfo/flowersoft/theotown/city/CityInfo;

    invoke-direct {v13}, Linfo/flowersoft/theotown/city/CityInfo;-><init>()V

    .line 65
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 69
    sget-boolean v15, Linfo/flowersoft/theotown/resources/Settings;->leftSideTrafficOriginal:Z

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v26, v12

    move/from16 v27, v26

    move/from16 v31, v27

    move/from16 v32, v31

    move/from16 v2, v16

    move v4, v2

    move/from16 v21, v17

    move-wide/from16 v22, v18

    move-wide/from16 v24, v22

    move-object/from16 v18, v20

    move-object/from16 v28, v18

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    const/16 p2, 0x10

    const/16 v16, 0x1

    move/from16 v17, v32

    .line 73
    :goto_60
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_35e

    if-nez v17, :cond_35e

    .line 74
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v33, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v34

    sparse-switch v34, :sswitch_data_3d0

    goto/16 :goto_1b3

    :sswitch_7a
    const-string v12, "shift y"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    goto/16 :goto_1b3

    :cond_84
    const/16 v3, 0x17

    goto/16 :goto_199

    :sswitch_88
    const-string v12, "shift x"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_92

    goto/16 :goto_1b3

    :cond_92
    const/16 v3, 0x16

    goto/16 :goto_199

    :sswitch_96
    const-string v12, "scale x"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a0

    goto/16 :goto_1b3

    :cond_a0
    const/16 v3, 0x15

    goto/16 :goto_199

    :sswitch_a4
    const-string v12, "last simulation timestamp"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ae

    goto/16 :goto_1b3

    :cond_ae
    const/16 v3, 0x14

    goto/16 :goto_199

    :sswitch_b2
    const-string v12, "left side traffic"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bc

    goto/16 :goto_1b3

    :cond_bc
    const/16 v3, 0x13

    goto/16 :goto_199

    :sswitch_c0
    const-string v12, "rank lvl"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ca

    goto/16 :goto_1b3

    :cond_ca
    const/16 v3, 0x12

    goto/16 :goto_199

    :sswitch_ce
    const-string v12, "rank day"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d8

    goto/16 :goto_1b3

    :cond_d8
    const/16 v3, 0x11

    goto/16 :goto_199

    :sswitch_dc
    const-string v12, "width"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e6

    goto/16 :goto_1b3

    :cond_e6
    move/from16 v33, p2

    goto/16 :goto_1b3

    :sswitch_ea
    const-string v12, "uber"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f4

    goto/16 :goto_1b3

    :cond_f4
    const/16 v3, 0xf

    goto/16 :goto_199

    :sswitch_f8
    const-string v12, "seed"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_102

    goto/16 :goto_1b3

    :cond_102
    const/16 v3, 0xe

    goto/16 :goto_199

    :sswitch_106
    const-string v12, "rank"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_110

    goto/16 :goto_1b3

    :cond_110
    const/16 v3, 0xd

    goto/16 :goto_199

    :sswitch_114
    const-string v12, "name"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11e

    goto/16 :goto_1b3

    :cond_11e
    const/16 v33, 0xc

    goto/16 :goto_1b3

    :sswitch_122
    const-string v12, "info"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12c

    goto/16 :goto_1b3

    :cond_12c
    const/16 v3, 0xb

    goto/16 :goto_199

    :sswitch_130
    const-string v12, "lua"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13a

    goto/16 :goto_1b3

    :cond_13a
    const/16 v3, 0xa

    goto/16 :goto_199

    :sswitch_13e
    const-string v12, "cxp"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_148

    goto/16 :goto_1b3

    :cond_148
    const/16 v3, 0x9

    goto :goto_199

    :sswitch_14b
    const-string v12, "xp"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_155

    goto/16 :goto_1b3

    :cond_155
    const/16 v3, 0x8

    goto :goto_199

    :sswitch_158
    const-string v12, "id"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_161

    goto :goto_1b3

    :cond_161
    const/4 v3, 0x7

    goto :goto_199

    :sswitch_163
    const-string v12, "rotation"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16c

    goto :goto_1b3

    :cond_16c
    const/4 v3, 0x6

    goto :goto_199

    :sswitch_16e
    const-string v12, "scenario"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_177

    goto :goto_1b3

    :cond_177
    const/4 v3, 0x5

    goto :goto_199

    :sswitch_179
    const-string v12, "height"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_182

    goto :goto_1b3

    :cond_182
    const/4 v3, 0x4

    goto :goto_199

    :sswitch_184
    const-string v12, "background"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18d

    goto :goto_1b3

    :cond_18d
    const/4 v3, 0x3

    goto :goto_199

    :sswitch_18f
    const-string v12, "author"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_198

    goto :goto_1b3

    :cond_198
    const/4 v3, 0x2

    :goto_199
    move/from16 v33, v3

    goto :goto_1b3

    :sswitch_19c
    const-string v12, "gamemode"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a5

    goto :goto_1b3

    :cond_1a5
    move/from16 v33, v16

    goto :goto_1b3

    :sswitch_1a8
    const-string v12, "transition vars"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b1

    goto :goto_1b3

    :cond_1b1
    const/16 v33, 0x0

    :goto_1b3
    packed-switch v33, :pswitch_data_432

    .line 228
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_1bf

    .line 114
    :pswitch_1ba
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v3

    move v4, v3

    :cond_1bf
    :goto_1bf
    const/16 v12, 0xc

    goto/16 :goto_359

    .line 110
    :pswitch_1c3
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v2

    goto :goto_1bf

    .line 118
    :pswitch_1c8
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v3

    move/from16 v21, v3

    goto :goto_1bf

    .line 147
    :pswitch_1cf
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v24

    goto :goto_1bf

    .line 219
    :pswitch_1d4
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v3

    move v15, v3

    goto :goto_1bf

    .line 129
    :pswitch_1da
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    .line 130
    sget-object v11, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v33, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    add-int/lit8 v12, v33, -0x1

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/RankDraft;

    :goto_1f7
    move-object v11, v3

    goto :goto_1bf

    .line 134
    :pswitch_1f9
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v22

    goto :goto_1bf

    .line 76
    :pswitch_1fe
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    move v5, v3

    goto :goto_1bf

    .line 215
    :pswitch_204
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v31

    goto :goto_1bf

    .line 88
    :pswitch_209
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v3

    const/16 v9, 0xc

    if-ne v3, v9, :cond_217

    .line 89
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextNull()V

    move-object/from16 v9, v20

    goto :goto_1bf

    .line 92
    :cond_217
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_1bf

    .line 122
    :pswitch_21d
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 123
    sget-object v12, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1bf

    sget-object v12, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Linfo/flowersoft/theotown/draft/RankDraft;

    if-eqz v12, :cond_1bf

    .line 124
    sget-object v11, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/RankDraft;

    goto :goto_1f7

    .line 84
    :pswitch_23c
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto/16 :goto_1bf

    .line 160
    :pswitch_243
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 161
    invoke-virtual {v13, v1}, Linfo/flowersoft/theotown/city/CityInfo;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 162
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_1bf

    .line 206
    :pswitch_24e
    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;)Lvm2/LuaTable;

    move-result-object v29

    goto/16 :goto_1bf

    .line 156
    :pswitch_254
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v27

    goto/16 :goto_1bf

    .line 151
    :pswitch_25a
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v26

    move/from16 v27, v26

    goto/16 :goto_1bf

    .line 138
    :pswitch_262
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v3

    const/16 v12, 0xc

    if-ne v3, v12, :cond_271

    .line 139
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextNull()V

    move-object/from16 v18, v20

    goto/16 :goto_1bf

    .line 142
    :cond_271
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1bf

    .line 223
    :pswitch_277
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v32

    move/from16 v17, v16

    goto/16 :goto_1bf

    .line 166
    :pswitch_27f
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 167
    new-instance v3, Linfo/flowersoft/theotown/city/ScenarioInfo;

    invoke-direct {v3}, Linfo/flowersoft/theotown/city/ScenarioInfo;-><init>()V

    .line 168
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 169
    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 173
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getMinVersion()I

    move-result v12

    if-lez v12, :cond_2a2

    sget v12, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    .line 174
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getMinVersion()I

    move-result v1

    if-lt v12, v1, :cond_29c

    goto :goto_2a2

    .line 175
    :cond_29c
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 179
    :cond_2a2
    :goto_2a2
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v1

    .line 181
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getRequiredStorePlugins()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v1, v12}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getMissingPlugins(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2f4

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    .line 184
    :goto_2ba
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_2dd

    .line 185
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v12, v3, :cond_2da

    .line 187
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2da
    add-int/lit8 v12, v12, 0x1

    goto :goto_2ba

    .line 190
    :cond_2dd
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing plugins: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f4
    move-object/from16 v28, v3

    goto/16 :goto_1bf

    .line 80
    :pswitch_2f8
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    move v6, v1

    goto/16 :goto_1bf

    .line 210
    :pswitch_2ff
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 211
    const-class v3, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v1, v3}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Linfo/flowersoft/theotown/draft/AnimationDraft;

    goto/16 :goto_1bf

    .line 97
    :pswitch_30f
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v1

    const/16 v12, 0xc

    if-eq v1, v12, :cond_31d

    .line 98
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_359

    .line 100
    :cond_31d
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextNull()V

    goto :goto_359

    :pswitch_321
    const/16 v12, 0xc

    .line 105
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/city/GameMode;->valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    .line 106
    iget-object v3, v0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getVersion()I

    move-result v3

    const/16 v10, 0x90

    if-ge v3, v10, :cond_339

    move-object v10, v1

    move/from16 v17, v16

    goto :goto_359

    :cond_339
    move-object v10, v1

    goto :goto_359

    :pswitch_33b
    const/16 v12, 0xc

    .line 196
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 197
    :goto_340
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_356

    .line 198
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v35

    .line 200
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v14, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_340

    .line 202
    :cond_356
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    :goto_359
    move-object/from16 v1, p1

    const/4 v12, 0x0

    goto/16 :goto_60

    :cond_35e
    if-nez v18, :cond_364

    .line 234
    invoke-static/range {p2 .. p2}, Linfo/flowersoft/theotown/util/IdGenerator;->generateId(I)Ljava/lang/String;

    move-result-object v18

    :cond_364
    move-object/from16 v1, v18

    if-nez v9, :cond_36a

    .line 237
    const-string v9, ""

    .line 244
    :cond_36a
    new-instance v3, Linfo/flowersoft/theotown/city/City;

    iget-object v12, v0, Linfo/flowersoft/theotown/cityloader/CityLoader;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {v3, v5, v6, v10, v12}, Linfo/flowersoft/theotown/city/City;-><init>(IILinfo/flowersoft/theotown/city/GameMode;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 245
    invoke-virtual {v3, v7}, Linfo/flowersoft/theotown/city/City;->setName(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3, v8}, Linfo/flowersoft/theotown/city/City;->setAuthor(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3, v9}, Linfo/flowersoft/theotown/city/City;->setSeed(Ljava/lang/String;)V

    move-wide/from16 v5, v22

    .line 248
    invoke-virtual {v3, v11, v5, v6}, Linfo/flowersoft/theotown/city/City;->setRank(Linfo/flowersoft/theotown/draft/RankDraft;J)V

    .line 249
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/City;->setId(Ljava/lang/String;)V

    move-wide/from16 v5, v24

    .line 250
    invoke-virtual {v3, v5, v6}, Linfo/flowersoft/theotown/city/City;->setLastSimulationTimestamp(J)V

    move/from16 v12, v26

    .line 251
    invoke-virtual {v3, v12}, Linfo/flowersoft/theotown/city/City;->setTargetXp(I)V

    move/from16 v12, v27

    .line 252
    invoke-virtual {v3, v12}, Linfo/flowersoft/theotown/city/City;->setCurrentXp(I)V

    .line 253
    invoke-virtual {v3, v13}, Linfo/flowersoft/theotown/city/City;->setCityInfo(Linfo/flowersoft/theotown/city/CityInfo;)V

    move-object/from16 v1, v28

    .line 254
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/City;->setScenarioInfo(Linfo/flowersoft/theotown/city/ScenarioInfo;)V

    .line 255
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTransitionVars()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v1, v29

    if-eqz v1, :cond_3a7

    .line 256
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/City;->setLuaStorage(Lvm2/LuaTable;)V

    :cond_3a7
    move-object/from16 v1, v30

    if-eqz v1, :cond_3ae

    .line 257
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/City;->setBackground(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    :cond_3ae
    move/from16 v12, v31

    .line 258
    invoke-virtual {v3, v12}, Linfo/flowersoft/theotown/city/City;->setUber(Z)V

    .line 260
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    move/from16 v1, v21

    .line 261
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/City;->setScale(F)V

    .line 263
    invoke-virtual {v3, v15}, Linfo/flowersoft/theotown/city/City;->setLeftSideTraffic(Z)V

    move/from16 v12, v32

    .line 264
    invoke-virtual {v3, v12}, Linfo/flowersoft/theotown/city/City;->setRotationRaw(I)V

    .line 267
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/Drafts;->setLeftSideTraffic(Z)V

    return-object v3

    nop

    :sswitch_data_3d0
    .sparse-switch
        -0x791951e9 -> :sswitch_1a8
        -0x6967c36b -> :sswitch_19c
        -0x53d2de75 -> :sswitch_18f
        -0x4f67aad2 -> :sswitch_184
        -0x48c76ed9 -> :sswitch_179
        -0x2e3a8c70 -> :sswitch_16e
        -0x266f082 -> :sswitch_163
        0xd1b -> :sswitch_158
        0xef8 -> :sswitch_14b
        0x1829b -> :sswitch_13e
        0x1a3f8 -> :sswitch_130
        0x3164ae -> :sswitch_122
        0x337a8b -> :sswitch_114
        0x354c2c -> :sswitch_106
        0x35ce71 -> :sswitch_f8
        0x36abfa -> :sswitch_ea
        0x6be2dc6 -> :sswitch_dc
        0xf2b65a8 -> :sswitch_ce
        0xf2b862e -> :sswitch_c0
        0x2b5507ad -> :sswitch_b2
        0x53f88d87 -> :sswitch_a4
        0x71e5e322 -> :sswitch_96
        0x7adc585a -> :sswitch_88
        0x7adc585b -> :sswitch_7a
    .end sparse-switch

    :pswitch_data_432
    .packed-switch 0x0
        :pswitch_33b
        :pswitch_321
        :pswitch_30f
        :pswitch_2ff
        :pswitch_2f8
        :pswitch_27f
        :pswitch_277
        :pswitch_262
        :pswitch_25a
        :pswitch_254
        :pswitch_24e
        :pswitch_243
        :pswitch_23c
        :pswitch_21d
        :pswitch_209
        :pswitch_204
        :pswitch_1fe
        :pswitch_1f9
        :pswitch_1da
        :pswitch_1d4
        :pswitch_1cf
        :pswitch_1c8
        :pswitch_1c3
        :pswitch_1ba
    .end packed-switch
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 321
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 322
    :cond_d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    return-object p2
.end method

.method public saveRaw(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    const-string v0, "width"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 275
    const-string v0, "height"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 276
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 277
    const-string v0, "seed"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getSeed()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 278
    const-string v0, "gamemode"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 279
    const-string v0, "shift x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 280
    const-string v0, "shift y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 281
    const-string v0, "scale x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 282
    const-string v0, "rank lvl"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v1

    iget v1, v1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 283
    const-string v0, "rank day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRankUpgradeAbsDay()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 284
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 285
    const-string v0, "last simulation timestamp"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getLastSimulationTimestamp()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 286
    const-string v0, "xp"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTargetXp()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 287
    const-string v0, "cxp"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getCurrentXp()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 288
    const-string v0, "info"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 289
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/CityInfo;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 290
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 291
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_f0

    .line 292
    const-string v0, "scenario"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 293
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 294
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 296
    :cond_f0
    const-string v0, "transition vars"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 297
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTransitionVars()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_105
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_129

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_105

    .line 300
    :cond_129
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 302
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRawLuaStorage()Lvm2/LuaTable;

    move-result-object v0

    if-eqz v0, :cond_13a

    .line 304
    const-string v1, "lua"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 305
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 308
    :cond_13a
    const-string v0, "background"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 309
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getBackground()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 310
    const-string v0, "uber"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 312
    const-string v0, "left side traffic"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 314
    const-string v0, "rotation"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result p2

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 350
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/cityloader/CityLoader;->saveRaw(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V

    .line 351
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
