###### Class info.flowersoft.theotown.cityloader.GroundLoader (info.flowersoft.theotown.cityloader.GroundLoader)
.class public Linfo/flowersoft/theotown/cityloader/GroundLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "GroundLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 29
    const-string v0, "ground"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    .line 217
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ground must be provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x4

    const/4 v4, 0x1

    .line 34
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v10

    .line 35
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getZoneCounter()[I

    move-result-object v11

    const/4 v12, 0x0

    .line 36
    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([II)V

    .line 37
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 38
    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v6, "$ground00"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 42
    new-instance v14, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v14}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    move v5, v12

    .line 43
    :goto_26
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->ZONES:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3d

    .line 44
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->ZONES:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 45
    iget v8, v6, Linfo/flowersoft/theotown/draft/ZoneDraft;->oldId:I

    invoke-virtual {v14, v8, v6}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v5, v4

    goto :goto_26

    .line 48
    :cond_3d
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v5

    if-ne v5, v4, :cond_90

    .line 50
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v9, v12

    .line 52
    :goto_4a
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    if-ge v9, v1, :cond_8b

    move v8, v12

    .line 53
    :goto_51
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    if-ge v8, v1, :cond_89

    .line 54
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 55
    new-instance v5, Linfo/flowersoft/theotown/city/objects/Ground;

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;Ljava/util/List;IILinfo/flowersoft/theotown/city/Tiles;)V

    .line 56
    invoke-virtual {v10, v8, v9, v5}, Linfo/flowersoft/theotown/city/Tiles;->setGround(IILinfo/flowersoft/theotown/city/objects/Ground;)V

    .line 57
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 59
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v1

    invoke-static {v1}, Lio/blueflower/stapel2d/util/json/JsonToken;->isNumber(I)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 60
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    .line 61
    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v1, :cond_87

    .line 64
    invoke-virtual {v10, v8, v9, v1}, Linfo/flowersoft/theotown/city/Tiles;->setZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 65
    iget v1, v1, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    aget v2, v11, v1

    add-int/2addr v2, v4

    aput v2, v11, v1

    :cond_87
    add-int/2addr v8, v4

    goto :goto_51

    :cond_89
    add-int/2addr v9, v4

    goto :goto_4a

    .line 70
    :cond_8b
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_2b7

    .line 74
    :cond_90
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    const/4 v15, 0x0

    move-object v5, v15

    .line 75
    :goto_95
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b4

    .line 76
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_2d2

    :goto_a9
    const/4 v6, -0x1

    goto :goto_f7

    :sswitch_ab
    const-string v8, "ground type arr"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b4

    goto :goto_a9

    :cond_b4
    const/4 v6, 0x6

    goto :goto_f7

    :sswitch_b6
    const-string v8, "ground arr"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bf

    goto :goto_a9

    :cond_bf
    const/4 v6, 0x5

    goto :goto_f7

    :sswitch_c1
    const-string v8, "heights"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ca

    goto :goto_a9

    :cond_ca
    move v6, v1

    goto :goto_f7

    :sswitch_cc
    const-string v8, "zone mapping"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5

    goto :goto_a9

    :cond_d5
    const/4 v6, 0x3

    goto :goto_f7

    :sswitch_d7
    const-string v8, "fences"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e0

    goto :goto_a9

    :cond_e0
    const/4 v6, 0x2

    goto :goto_f7

    :sswitch_e2
    const-string v8, "heightsDY"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_eb

    goto :goto_a9

    :cond_eb
    move v6, v4

    goto :goto_f7

    :sswitch_ed
    const-string v8, "heightsDX"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f6

    goto :goto_a9

    :cond_f6
    move v6, v12

    :goto_f7
    packed-switch v6, :pswitch_data_2f0

    .line 199
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    :goto_fd
    move-object v2, v5

    goto/16 :goto_2b1

    .line 91
    :pswitch_100
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 92
    :goto_103
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 93
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 94
    const-class v8, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v6, v8}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz v6, :cond_11b

    .line 96
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 98
    :cond_11b
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_103

    .line 101
    :cond_11f
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_fd

    .line 104
    :pswitch_123
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v9, v12

    .line 105
    :goto_127
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v6

    if-ge v9, v6, :cond_179

    move v8, v12

    .line 106
    :goto_12e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v6

    if-ge v8, v6, :cond_176

    .line 107
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    move-object v6, v5

    .line 108
    new-instance v5, Linfo/flowersoft/theotown/city/objects/Ground;

    move-object v2, v6

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/city/objects/Ground;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;Ljava/util/List;IILinfo/flowersoft/theotown/city/Tiles;)V

    .line 109
    invoke-virtual {v10, v8, v9, v5}, Linfo/flowersoft/theotown/city/Tiles;->setGround(IILinfo/flowersoft/theotown/city/objects/Ground;)V

    .line 110
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 112
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v5

    invoke-static {v5}, Lio/blueflower/stapel2d/util/json/JsonToken;->isNumber(I)Z

    move-result v5

    if-eqz v5, :cond_173

    if-eqz v2, :cond_15d

    .line 116
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/ZoneDraft;

    goto :goto_167

    .line 118
    :cond_15d
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/ZoneDraft;

    :goto_167
    if-eqz v5, :cond_173

    .line 122
    invoke-virtual {v10, v8, v9, v5}, Linfo/flowersoft/theotown/city/Tiles;->setZone(IILinfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 123
    iget v5, v5, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    aget v6, v11, v5

    add-int/2addr v6, v4

    aput v6, v11, v5

    :cond_173
    add-int/2addr v8, v4

    move-object v5, v2

    goto :goto_12e

    :cond_176
    move-object v2, v5

    add-int/2addr v9, v4

    goto :goto_127

    :cond_179
    move-object v2, v5

    .line 128
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_2b1

    :pswitch_17f
    move-object v2, v5

    .line 171
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v5, v12

    move v6, v5

    .line 173
    :goto_185
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v8

    if-ge v5, v8, :cond_1a2

    move v8, v12

    .line 174
    :goto_18c
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_1a0

    .line 175
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v9

    add-int/2addr v6, v9

    .line 176
    invoke-virtual {v10, v8, v5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v9

    int-to-short v3, v6

    .line 177
    iput-short v3, v9, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    add-int/2addr v8, v4

    goto :goto_18c

    :cond_1a0
    add-int/2addr v5, v4

    goto :goto_185

    .line 179
    :cond_1a2
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_2b1

    .line 78
    :pswitch_1a7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 80
    :goto_1af
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d1

    .line 81
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 82
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1cd

    .line 83
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1af

    .line 85
    :cond_1cd
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1af

    .line 88
    :cond_1d1
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_95

    :pswitch_1d6
    move-object v2, v5

    .line 131
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 132
    :goto_1da
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_260

    .line 133
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    move v3, v12

    move v5, v3

    .line 136
    :goto_1e5
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25b

    .line 137
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_302

    :goto_1f9
    const/4 v6, -0x1

    goto :goto_21b

    :sswitch_1fb
    const-string v8, "y"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_204

    goto :goto_1f9

    :cond_204
    const/4 v6, 0x2

    goto :goto_21b

    :sswitch_206
    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20f

    goto :goto_1f9

    :cond_20f
    move v6, v4

    goto :goto_21b

    :sswitch_211
    const-string v8, "f"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21a

    goto :goto_1f9

    :cond_21a
    move v6, v12

    :goto_21b
    packed-switch v6, :pswitch_data_310

    .line 164
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_1e5

    .line 142
    :pswitch_222
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    goto :goto_1e5

    .line 139
    :pswitch_227
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    goto :goto_1e5

    .line 145
    :pswitch_22c
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v6, v12

    .line 147
    :goto_230
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_257

    .line 148
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_242

    .line 149
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_255

    .line 151
    :cond_242
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    if-ge v6, v1, :cond_255

    .line 153
    const-class v9, Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-static {v8, v9}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/draft/FenceDraft;

    if-eqz v8, :cond_255

    .line 155
    invoke-virtual {v10, v3, v5, v6, v8}, Linfo/flowersoft/theotown/city/Tiles;->setFence(IIILinfo/flowersoft/theotown/draft/FenceDraft;)V

    :cond_255
    :goto_255
    add-int/2addr v6, v4

    goto :goto_230

    .line 161
    :cond_257
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_1e5

    .line 167
    :cond_25b
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_1da

    .line 169
    :cond_260
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_2b1

    :pswitch_264
    move-object v2, v5

    .line 189
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v3, v12

    move v5, v3

    .line 191
    :goto_26a
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v6

    if-ge v3, v6, :cond_287

    move v6, v12

    .line 192
    :goto_271
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v8

    if-ge v6, v8, :cond_285

    .line 193
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v8

    add-int/2addr v5, v8

    .line 194
    invoke-virtual {v10, v6, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v8

    int-to-byte v9, v5

    .line 195
    iput-byte v9, v8, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    add-int/2addr v6, v4

    goto :goto_271

    :cond_285
    add-int/2addr v3, v4

    goto :goto_26a

    .line 197
    :cond_287
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_2b1

    :pswitch_28b
    move-object v2, v5

    .line 180
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v3, v12

    move v5, v3

    .line 182
    :goto_291
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v6

    if-ge v3, v6, :cond_2ae

    move v6, v12

    .line 183
    :goto_298
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v8

    if-ge v6, v8, :cond_2ac

    .line 184
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v8

    add-int/2addr v5, v8

    .line 185
    invoke-virtual {v10, v3, v6}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v8

    int-to-byte v9, v5

    .line 186
    iput-byte v9, v8, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    add-int/2addr v6, v4

    goto :goto_298

    :cond_2ac
    add-int/2addr v3, v4

    goto :goto_291

    .line 188
    :cond_2ae
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    :goto_2b1
    move-object v5, v2

    goto/16 :goto_95

    .line 202
    :cond_2b4
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 205
    :goto_2b7
    new-instance v1, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-direct {v1, v0, v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    move v2, v12

    .line 206
    :goto_2bd
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2d1

    move v3, v12

    .line 207
    :goto_2c4
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_2cf

    .line 208
    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->adjustGroundWaterBorder(II)V

    add-int/2addr v3, v4

    goto :goto_2c4

    :cond_2cf
    add-int/2addr v2, v4

    goto :goto_2bd

    :cond_2d1
    return-object v0

    :sswitch_data_2d2
    .sparse-switch
        -0x603abe40 -> :sswitch_ed
        -0x603abe3f -> :sswitch_e2
        -0x4c2ee99e -> :sswitch_d7
        -0x218d93a6 -> :sswitch_cc
        0x2fd9942c -> :sswitch_c1
        0x4927c448 -> :sswitch_b6
        0x722736f4 -> :sswitch_ab
    .end sparse-switch

    :pswitch_data_2f0
    .packed-switch 0x0
        :pswitch_28b
        :pswitch_264
        :pswitch_1d6
        :pswitch_1a7
        :pswitch_17f
        :pswitch_123
        :pswitch_100
    .end packed-switch

    :sswitch_data_302
    .sparse-switch
        0x66 -> :sswitch_211
        0x78 -> :sswitch_206
        0x79 -> :sswitch_1fb
    .end sparse-switch

    :pswitch_data_310
    .packed-switch 0x0
        :pswitch_22c
        :pswitch_227
        :pswitch_222
    .end packed-switch
.end method

.method public saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 224
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 226
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ZONES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_191

    .line 227
    const-string v1, "zone mapping"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v1

    invoke-interface {v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 228
    :goto_1a
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ZONES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 229
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ZONES:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 231
    :cond_32
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 233
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ZONES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_189

    .line 234
    const-string v2, "ground type arr"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v2, v1

    .line 235
    :goto_47
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->GROUNDS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_61

    .line 236
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->GROUNDS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 237
    iget-object v4, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 238
    iput v2, v3, Linfo/flowersoft/theotown/draft/GroundDraft;->index:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 240
    :cond_61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 242
    const-string v2, "ground arr"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v2, v1

    .line 243
    :goto_6e
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_99

    move v3, v1

    .line 244
    :goto_75
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_96

    .line 245
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 246
    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 247
    invoke-virtual {v4, p1, v3, v2, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;IILinfo/flowersoft/theotown/city/Tiles;)V

    .line 248
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 250
    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v4

    if-eqz v4, :cond_93

    .line 252
    iget v4, v4, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 256
    :cond_99
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 258
    const-string v2, "fences"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v2, v1

    .line 259
    :goto_a6
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_f9

    move v3, v1

    .line 260
    :goto_ad
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_f6

    .line 261
    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v4

    if-eqz v4, :cond_f3

    .line 262
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 263
    const-string v4, "x"

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 264
    const-string v4, "y"

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-interface {v4, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 265
    const-string v4, "f"

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-interface {v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v4, v1

    :goto_d8
    const/4 v5, 0x4

    if-ge v4, v5, :cond_ed

    .line 267
    invoke-virtual {v0, v3, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v5

    if-eqz v5, :cond_e7

    .line 269
    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_ea

    .line 271
    :cond_e7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->nullValue()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :goto_ea
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    .line 274
    :cond_ed
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 275
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_f3
    add-int/lit8 v3, v3, 0x1

    goto :goto_ad

    :cond_f6
    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 279
    :cond_f9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 281
    const-string v2, "heights"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v2, v1

    move v3, v2

    .line 283
    :goto_107
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_126

    move v4, v1

    .line 284
    :goto_10e
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_123

    .line 285
    invoke-virtual {v0, v4, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 286
    iget-short v5, v5, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    sub-int v3, v5, v3

    .line 287
    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_10e

    :cond_123
    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    .line 291
    :cond_126
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 293
    const-string v2, "heightsDX"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v2, v1

    move v3, v2

    .line 295
    :goto_134
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    if-ge v2, v4, :cond_154

    move v4, v1

    .line 296
    :goto_13b
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_151

    .line 297
    invoke-virtual {v0, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 298
    iget-byte v5, v5, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    int-to-short v5, v5

    sub-int v3, v5, v3

    .line 299
    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_13b

    :cond_151
    add-int/lit8 v2, v2, 0x1

    goto :goto_134

    .line 303
    :cond_154
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 305
    const-string v2, "heightsDY"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-interface {v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v2, v1

    move v3, v2

    .line 307
    :goto_162
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_182

    move v4, v1

    .line 308
    :goto_169
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_17f

    .line 309
    invoke-virtual {v0, v4, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 310
    iget-byte v5, v5, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    int-to-short v5, v5

    sub-int v3, v5, v3

    .line 311
    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_169

    :cond_17f
    add-int/lit8 v2, v2, 0x1

    goto :goto_162

    .line 315
    :cond_182
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 317
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void

    .line 233
    :cond_189
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No ground types defined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_191
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No zones defined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
