###### Class info.flowersoft.theotown.components.DefaultPeople (info.flowersoft.theotown.components.DefaultPeople)
.class public final Linfo/flowersoft/theotown/components/DefaultPeople;
.super Linfo/flowersoft/theotown/city/components/People;
.source "DefaultPeople.java"


# instance fields
.field public coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

.field public management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

.field public final people:[F

.field public final peopleNeededSpace:[F

.field public peopleUponRestart:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/People;-><init>()V

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleUponRestart:J

    const/4 v0, 0x3

    .line 34
    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    .line 35
    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleNeededSpace:[F

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 39
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultPeople;-><init>()V

    .line 41
    :goto_7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 42
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_ac

    goto :goto_54

    :sswitch_1e
    const-string v7, "needed space"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_54

    :cond_27
    const/4 v6, 0x4

    goto :goto_54

    :sswitch_29
    const-string v7, "p0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    goto :goto_54

    :cond_32
    move v6, v0

    goto :goto_54

    :sswitch_34
    const-string v7, "level2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_54

    :cond_3d
    move v6, v1

    goto :goto_54

    :sswitch_3f
    const-string v7, "level1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    goto :goto_54

    :cond_48
    move v6, v3

    goto :goto_54

    :sswitch_4a
    const-string v7, "level0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto :goto_54

    :cond_53
    move v6, v2

    :goto_54
    packed-switch v6, :pswitch_data_c2

    .line 64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_7

    .line 53
    :pswitch_5b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v4, v2

    :goto_5f
    if-ge v4, v0, :cond_6b

    .line 55
    iget-object v5, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleNeededSpace:[F

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v6

    aput v6, v5, v4

    add-int/2addr v4, v3

    goto :goto_5f

    .line 57
    :cond_6b
    :goto_6b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_6b

    .line 58
    :cond_75
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_7

    .line 61
    :pswitch_79
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleUponRestart:J

    goto :goto_7

    .line 50
    :pswitch_80
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v4, v1

    goto/16 :goto_7

    .line 47
    :pswitch_8e
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v4, v3

    goto/16 :goto_7

    .line 44
    :pswitch_9c
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v4, v2

    goto/16 :goto_7

    :cond_aa
    return-void

    nop

    :sswitch_data_ac
    .sparse-switch
        -0x41ee2ad4 -> :sswitch_4a
        -0x41ee2ad3 -> :sswitch_3f
        -0x41ee2ad2 -> :sswitch_34
        0xdc0 -> :sswitch_29
        0x3b2e70db -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_8e
        :pswitch_80
        :pswitch_79
        :pswitch_5b
    .end packed-switch
.end method

.method private relax(F)F
    .registers 3

    .line 0
    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public addPeople(II)V
    .registers 5

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v1, v0, p1

    int-to-float p2, p2

    add-float/2addr v1, p2

    aput v1, v0, p1

    return-void
.end method

.method public calculate(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 128
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultDemand;

    const/4 v3, 0x0

    .line 129
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/DefaultDemand;->getOffset(I)I

    const/4 v4, 0x3

    .line 131
    new-array v5, v4, [F

    .line 132
    new-array v6, v4, [F

    .line 133
    new-array v7, v4, [F

    move v8, v3

    :goto_1a
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v8, v4, :cond_41

    .line 135
    invoke-virtual {v1, v8, v3}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getResidentialSpace(II)I

    move-result v12

    if-lez v12, :cond_29

    invoke-virtual {v1, v8, v10}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getResidentialBuildingHappiness(IF)F

    move-result v9

    goto :goto_2b

    :cond_29
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_2b
    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v9, v10

    aput v9, v5, v8

    .line 136
    invoke-virtual {v1, v8, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getResidentialSpace(II)I

    move-result v9

    int-to-float v9, v9

    aput v9, v6, v8

    .line 137
    invoke-virtual {v1, v8, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getResidentialSpace(II)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    .line 141
    :cond_41
    new-array v8, v4, [F

    .line 142
    invoke-virtual {v1, v3, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v12

    invoke-virtual {v1, v11, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    iget-object v13, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v13, v13, v11

    sub-float/2addr v12, v13

    aput v12, v8, v3

    .line 143
    invoke-virtual {v1, v11, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v12

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v14

    add-int/2addr v12, v14

    int-to-float v12, v12

    iget-object v14, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v14, v14, v13

    sub-float/2addr v12, v14

    aput v12, v8, v11

    .line 144
    invoke-virtual {v1, v13, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v1

    int-to-float v1, v1

    aput v1, v8, v13

    move v1, v3

    .line 146
    :goto_6e
    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v12

    if-ge v1, v12, :cond_fa

    .line 147
    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12, v1}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v12

    if-eqz v12, :cond_f0

    .line 149
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v14

    .line 150
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->hasInfinityMoney()Z

    move-result v15

    if-nez v15, :cond_f0

    .line 151
    aget v15, v8, v3

    invoke-virtual {v14, v3, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v16

    invoke-virtual {v14, v11, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v17

    add-int v16, v16, v17

    .line 152
    invoke-virtual {v12, v11}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants(I)I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual {v12, v3}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants(I)I

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    sub-int v9, v16, v17

    move/from16 v16, v10

    const/16 v10, -0x64

    .line 151
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    const v17, 0x3dcccccd    # 0.1f

    mul-float v9, v9, v17

    add-float/2addr v15, v9

    aput v15, v8, v3

    .line 153
    aget v9, v8, v11

    invoke-virtual {v14, v11, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v15

    invoke-virtual {v14, v13, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v17

    add-int v15, v15, v17

    .line 154
    invoke-virtual {v12, v13}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants(I)I

    move-result v17

    sub-int v15, v15, v17

    invoke-virtual {v12, v11}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants(I)I

    move-result v17

    sub-int v15, v15, v17

    .line 153
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    int-to-float v15, v15

    const v17, 0x3d4ccccd    # 0.05f

    mul-float v15, v15, v17

    add-float/2addr v9, v15

    aput v9, v8, v11

    .line 155
    aget v9, v8, v13

    invoke-virtual {v14, v13, v11}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v14

    invoke-virtual {v12, v13}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants(I)I

    move-result v12

    sub-int/2addr v14, v12

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    const v12, 0x3ccccccd    # 0.025f

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    aput v9, v8, v13

    goto :goto_f4

    :cond_f0
    move/from16 v16, v10

    const/high16 v18, 0x3f800000    # 1.0f

    :goto_f4
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v16

    goto/16 :goto_6e

    :cond_fa
    move/from16 v16, v10

    const/high16 v18, 0x3f800000    # 1.0f

    move v1, v3

    :goto_ff
    if-ge v1, v4, :cond_114

    .line 161
    aget v9, v5, v1

    cmpg-float v10, v9, v16

    if-gez v10, :cond_111

    aget v10, v8, v3

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v9, v12

    add-float v9, v9, v18

    mul-float/2addr v10, v9

    aput v10, v8, v3

    :cond_111
    add-int/lit8 v1, v1, 0x1

    goto :goto_ff

    .line 164
    :cond_114
    new-array v1, v4, [F

    .line 166
    aget v9, v8, v3

    aget v10, v5, v3

    iget-object v12, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v12, v12, v3

    const v14, 0x3c23d70a    # 0.01f

    mul-float v15, v12, v14

    const/high16 v17, 0x41200000    # 10.0f

    add-float v15, v15, v17

    mul-float/2addr v10, v15

    add-float/2addr v9, v10

    const/high16 v10, 0x41a00000    # 20.0f

    add-float/2addr v10, v12

    const v15, 0x37d1b717    # 2.5E-5f

    mul-float/2addr v15, v12

    mul-float/2addr v15, v12

    add-float v15, v15, v18

    div-float/2addr v10, v15

    add-float/2addr v9, v10

    move/from16 p1, v14

    .line 169
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/DefaultDemand;->getOverallOffset(I)J

    move-result-wide v14

    long-to-float v2, v14

    add-float/2addr v9, v2

    aput v9, v1, v3

    move/from16 v2, v16

    .line 170
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v1, v3

    .line 171
    iget-object v10, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleNeededSpace:[F

    aget v12, v7, v3

    sub-float/2addr v9, v12

    aput v9, v10, v3

    .line 172
    aget v9, v1, v3

    aget v10, v6, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v1, v3

    .line 173
    iget-object v10, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v10, v10, v3

    sub-float/2addr v9, v10

    invoke-direct {v0, v9}, Linfo/flowersoft/theotown/components/DefaultPeople;->relax(F)F

    move-result v9

    add-float/2addr v10, v9

    aput v10, v1, v3

    .line 176
    aget v9, v6, v3

    cmpl-float v9, v9, v2

    if-nez v9, :cond_170

    aput v2, v1, v3

    :cond_170
    move v2, v11

    :goto_171
    if-ge v2, v4, :cond_1e5

    .line 179
    aget v9, v8, v2

    .line 180
    iget-object v10, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    invoke-virtual {v0, v10, v3}, Linfo/flowersoft/theotown/components/DefaultPeople;->getReachedEducationAmount(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;I)I

    move-result v10

    int-to-float v10, v10

    if-ne v2, v13, :cond_189

    .line 182
    iget-object v12, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    .line 183
    invoke-virtual {v0, v12, v11}, Linfo/flowersoft/theotown/components/DefaultPeople;->getReachedEducationAmount(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;I)I

    move-result v12

    int-to-float v12, v12

    .line 182
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    :cond_189
    const/high16 v12, 0x41600000    # 14.0f

    mul-float/2addr v10, v12

    .line 187
    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v12

    if-eqz v12, :cond_195

    move v10, v9

    .line 192
    :cond_195
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 194
    iget-object v10, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v10, v10, v2

    sub-float v12, v9, v10

    aget v14, v5, v2

    mul-float v14, v14, p1

    mul-float/2addr v14, v10

    add-float/2addr v12, v14

    add-int/lit8 v10, v2, -0x1

    .line 195
    aget v14, v1, v10

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 196
    iget-object v14, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleNeededSpace:[F

    add-float/2addr v9, v12

    aget v15, v7, v2

    sub-float/2addr v9, v15

    aput v9, v14, v2

    .line 197
    iget-object v9, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v9, v9, v2

    add-float/2addr v9, v12

    aget v12, v6, v2

    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v12, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v12, v12, v2

    sub-float/2addr v9, v12

    .line 198
    invoke-direct {v0, v9}, Linfo/flowersoft/theotown/components/DefaultPeople;->relax(F)F

    move-result v9

    .line 199
    aget v12, v1, v10

    sub-float/2addr v12, v9

    aput v12, v1, v10

    .line 200
    iget-object v10, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v10, v10, v2

    add-float/2addr v10, v9

    const/4 v9, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v1, v2

    .line 203
    aget v10, v6, v2

    cmpl-float v10, v10, v9

    if-nez v10, :cond_1e2

    aput v9, v1, v2

    :cond_1e2
    add-int/lit8 v2, v2, 0x1

    goto :goto_171

    .line 206
    :cond_1e5
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTargetXp()I

    move-result v2

    .line 207
    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    .line 208
    aget v5, v1, v11

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v6, v6, v11

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v2, v5

    .line 209
    aget v4, v1, v13

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v5, v5, v13

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    add-int/2addr v2, v4

    .line 210
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v5, v4, v3

    mul-float v5, v5, v18

    aget v6, v4, v11

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aget v4, v4, v13

    const/high16 v6, 0x41100000    # 9.0f

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    const v4, 0x3a83126f    # 0.001f

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v2, v4

    .line 211
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/City;->setTargetXp(I)V

    .line 213
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v4, v1, v3

    aput v4, v2, v3

    .line 214
    aget v3, v1, v11

    aput v3, v2, v11

    .line 215
    aget v1, v1, v13

    aput v1, v2, v13

    return-void
.end method

.method public countPeopleInBuilding(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 7

    .line 108
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    if-nez v0, :cond_15

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 112
    :cond_15
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v1

    .line 115
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2e

    .line 116
    invoke-virtual {v0, v1, v4}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getResidentialSpace(II)I

    move-result v0

    :goto_2c
    int-to-float v0, v0

    goto :goto_33

    .line 118
    :cond_2e
    invoke-virtual {v0, v1, v4}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getJobs(II)I

    move-result v0

    goto :goto_2c

    .line 120
    :goto_33
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget v1, v2, v1

    .line 121
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallPeople()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p1, v0

    return p1

    :cond_45
    const/4 p1, 0x0

    return p1
.end method

.method public getPeople(I)I
    .registers 3

    .line 229
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getPeopleNeededSpace(I)F
    .registers 3

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleNeededSpace:[F

    aget p1, v0, p1

    return p1
.end method

.method public getPeopleUponRestart()J
    .registers 3

    .line 94
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleUponRestart:J

    return-wide v0
.end method

.method public final getReachedEducationAmount(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;I)I
    .registers 4

    .line 219
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getReachedAmount(I)I

    move-result v0

    .line 220
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getProvidedAmount(I)I

    move-result p1

    .line 219
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public prepare()V
    .registers 3

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 100
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    .line 102
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->prepare()V

    .line 104
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->nextDay()V

    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultPeople;->getPeople(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/DefaultPeople;->getPeople(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/DefaultPeople;->getPeople(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleUponRestart:J

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const-string v0, "level0"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 72
    const-string v0, "level1"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 73
    const-string v0, "level2"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->people:[F

    const/4 v3, 0x2

    aget v1, v1, v3

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 75
    const-string v0, "needed space"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :goto_33
    const/4 v0, 0x3

    if-ge v2, v0, :cond_40

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleNeededSpace:[F

    aget v0, v0, v2

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 79
    :cond_40
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 81
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleUponRestart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_56

    .line 82
    const-string v0, "p0"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultPeople;->peopleUponRestart:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_56
    return-void
.end method
