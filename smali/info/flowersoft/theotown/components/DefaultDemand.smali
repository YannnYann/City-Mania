###### Class info.flowersoft.theotown.components.DefaultDemand (info.flowersoft.theotown.components.DefaultDemand)
.class public final Linfo/flowersoft/theotown/components/DefaultDemand;
.super Linfo/flowersoft/theotown/city/components/Demand;
.source "DefaultDemand.java"


# static fields
.field public static final VAR_OFFSET_NAMES:[Ljava/lang/String;


# instance fields
.field public final amount:[F

.field public final badHappinessFactors:[F

.field public final comBuilding:[F

.field public final commercial:[F

.field public final happinesses:[F

.field public final indBuilding:[F

.field public final industrial:[F

.field public final multiplier:[I

.field public final newDemands:[F

.field public final offset:[I

.field public final resBuilding:[F

.field public final residential:[F

.field public survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 21
    const-string v7, "demand_ind1_offset"

    const-string v8, "demand_ind2_offset"

    const-string v0, "demand_res0_offset"

    const-string v1, "demand_res1_offset"

    const-string v2, "demand_res2_offset"

    const-string v3, "demand_com0_offset"

    const-string v4, "demand_com1_offset"

    const-string v5, "demand_com2_offset"

    const-string v6, "demand_ind0_offset"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/DefaultDemand;->VAR_OFFSET_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 87
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Demand;-><init>()V

    const/4 v0, 0x3

    .line 33
    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->residential:[F

    .line 35
    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->commercial:[F

    .line 37
    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->industrial:[F

    .line 39
    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->resBuilding:[F

    .line 41
    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->comBuilding:[F

    .line 43
    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->indBuilding:[F

    const/16 v0, 0x9

    .line 45
    new-array v1, v0, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->offset:[I

    .line 47
    new-array v1, v0, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->multiplier:[I

    .line 49
    new-array v2, v0, [F

    iput-object v2, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->happinesses:[F

    .line 50
    new-array v2, v0, [F

    iput-object v2, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->amount:[F

    .line 51
    new-array v2, v0, [F

    iput-object v2, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->newDemands:[F

    .line 52
    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->badHappinessFactors:[F

    const/4 v0, 0x1

    .line 88
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultDemand;-><init>()V

    .line 59
    :goto_5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x9

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_bc

    goto :goto_3d

    :sswitch_1d
    const-string v5, "demands"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_3d

    :cond_26
    const/4 v4, 0x2

    goto :goto_3d

    :sswitch_28
    const-string v5, "multiplier"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_3d

    :cond_31
    move v4, v1

    goto :goto_3d

    :sswitch_33
    const-string v5, "offset"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_3d

    :cond_3c
    move v4, v0

    :goto_3d
    packed-switch v4, :pswitch_data_ca

    .line 82
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_5

    .line 62
    :pswitch_44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v2, v0

    :goto_48
    const/4 v3, 0x3

    if-ge v2, v3, :cond_55

    .line 63
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->residential:[F

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v4

    aput v4, v3, v2

    add-int/2addr v2, v1

    goto :goto_48

    :cond_55
    move v2, v0

    :goto_56
    if-ge v2, v3, :cond_62

    .line 64
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->commercial:[F

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v5

    aput v5, v4, v2

    add-int/2addr v2, v1

    goto :goto_56

    :cond_62
    move v2, v0

    :goto_63
    if-ge v2, v3, :cond_6f

    .line 65
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->industrial:[F

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v5

    aput v5, v4, v2

    add-int/2addr v2, v1

    goto :goto_63

    .line 66
    :cond_6f
    :goto_6f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_6f

    .line 67
    :cond_79
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_5

    .line 76
    :pswitch_7d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v2, v0

    :goto_81
    if-ge v2, v3, :cond_8d

    .line 77
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->multiplier:[I

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    aput v5, v4, v2

    add-int/2addr v2, v1

    goto :goto_81

    .line 78
    :cond_8d
    :goto_8d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_8d

    .line 79
    :cond_97
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5

    .line 70
    :pswitch_9c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    move v2, v0

    :goto_a0
    if-ge v2, v3, :cond_ac

    .line 71
    iget-object v4, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->offset:[I

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    aput v5, v4, v2

    add-int/2addr v2, v1

    goto :goto_a0

    .line 72
    :cond_ac
    :goto_ac
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_ac

    .line 73
    :cond_b6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5

    :cond_bb
    return-void

    :sswitch_data_bc
    .sparse-switch
        -0x3cc89b6d -> :sswitch_33
        0x4b677dc1 -> :sswitch_28
        0x5c765f88 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_7d
        :pswitch_44
    .end packed-switch
.end method


# virtual methods
.method public final applyExternalTargets([F)V
    .registers 7

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 213
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->countActivePassengerTransport()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 214
    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getIndex(II)I

    move-result v1

    aget v3, p1, v1

    int-to-float v0, v0

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    aput v3, p1, v1

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 217
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->CULTURE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getGeneralInfluence(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getIndex(II)I

    move-result v1

    aget v2, p1, v1

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v0, v3

    add-float/2addr v2, v0

    aput v2, p1, v1

    return-void
.end method

.method public calculate()V
    .registers 2

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultDemand;->calculate(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)V

    :cond_7
    return-void
.end method

.method public calculate(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 122
    iput-object v1, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 123
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/People;

    const/4 v7, 0x0

    move v3, v7

    :goto_12
    const/4 v8, 0x3

    if-ge v3, v8, :cond_62

    .line 126
    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->happinesses:[F

    mul-int/lit8 v8, v3, 0x3

    const/high16 v9, 0x3f000000    # 0.5f

    if-nez v3, :cond_20

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_21

    :cond_20
    move v10, v9

    :goto_21
    invoke-virtual {v1, v3, v10}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getResidentialBuildingHappiness(IF)F

    move-result v10

    sub-float/2addr v10, v9

    aput v10, v5, v8

    .line 127
    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->happinesses:[F

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v3, v9}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getCommercialBuildingHappiness(IF)F

    move-result v11

    sub-float/2addr v11, v9

    aput v11, v5, v10

    .line 128
    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->happinesses:[F

    add-int/lit8 v11, v8, 0x2

    if-nez v3, :cond_3c

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3d

    :cond_3c
    move v4, v9

    :goto_3d
    invoke-virtual {v1, v3, v4}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getIndustrialBuildingHappiness(IF)F

    move-result v4

    sub-float/2addr v4, v9

    aput v4, v5, v11

    .line 129
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->amount:[F

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v8

    .line 130
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->amount:[F

    invoke-virtual {v1, v3, v7}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getCommercialJobs(II)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v10

    .line 131
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->amount:[F

    invoke-virtual {v1, v3, v7}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getIndustrialJobs(II)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_62
    move v3, v7

    .line 134
    :goto_63
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v5

    if-ge v3, v5, :cond_c6

    .line 135
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v5

    if-eqz v5, :cond_c1

    .line 137
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v10

    .line 138
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->hasInfinityMoney()Z

    move-result v11

    if-nez v11, :cond_c1

    move v11, v7

    :goto_7e
    if-ge v11, v8, :cond_c1

    .line 140
    iget-object v12, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->amount:[F

    mul-int/lit8 v13, v11, 0x3

    add-int/lit8 v14, v13, 0x1

    aget v15, v12, v14

    invoke-virtual {v10, v11, v7}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getCommercialJobs(II)I

    move-result v16

    invoke-virtual {v5, v11}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants(I)I

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    sub-int v4, v16, v17

    const/16 v16, 0x2

    const/16 v9, -0x64

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const v17, 0x3dcccccd    # 0.1f

    mul-float v4, v4, v17

    add-float/2addr v15, v4

    aput v15, v12, v14

    .line 141
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->amount:[F

    add-int/lit8 v13, v13, 0x2

    aget v12, v4, v13

    invoke-virtual {v10, v11, v7}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getIndustrialJobs(II)I

    move-result v14

    invoke-virtual {v5, v11}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants(I)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v17

    add-float/2addr v12, v9

    aput v12, v4, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_7e

    :cond_c1
    const/high16 v18, 0x3f800000    # 1.0f

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_c6
    const/16 v16, 0x2

    const/high16 v18, 0x3f800000    # 1.0f

    move v3, v7

    :goto_cb
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v9, 0x0

    if-ge v3, v6, :cond_e5

    .line 148
    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->badHappinessFactors:[F

    iget-object v10, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->happinesses:[F

    aget v10, v10, v3

    cmpg-float v9, v10, v9

    if-gez v9, :cond_de

    mul-float/2addr v10, v4

    add-float v10, v10, v18

    goto :goto_e0

    :cond_de
    move/from16 v10, v18

    :goto_e0
    aput v10, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    .line 151
    :cond_e5
    new-array v10, v6, [F

    .line 152
    new-array v11, v6, [F

    move v3, v7

    :goto_ea
    const/4 v5, 0x1

    if-ge v3, v8, :cond_149

    mul-int/lit8 v12, v3, 0x3

    .line 154
    invoke-virtual {v1, v3, v5}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getResidentialSpace(II)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/components/People;->getPeopleNeededSpace(I)F

    move-result v14

    add-float/2addr v13, v14

    aput v13, v10, v12

    .line 155
    invoke-virtual {v1, v3, v5}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getResidentialSpace(II)I

    move-result v13

    int-to-float v13, v13

    aput v13, v11, v12

    add-int/lit8 v13, v12, 0x1

    .line 157
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v14

    int-to-float v14, v14

    move/from16 v15, v16

    if-ge v3, v15, :cond_114

    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v2, v15}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v15

    goto :goto_115

    :cond_114
    move v15, v7

    :goto_115
    int-to-float v15, v15

    move/from16 v17, v4

    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->badHappinessFactors:[F

    aget v4, v4, v13

    mul-float/2addr v15, v4

    add-float/2addr v14, v15

    const v4, 0x3eaaaa3b    # 0.33333f

    mul-float/2addr v14, v4

    aput v14, v10, v13

    .line 158
    invoke-virtual {v1, v3, v5}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v4

    int-to-float v4, v4

    aput v4, v11, v13

    add-int/lit8 v12, v12, 0x2

    .line 160
    invoke-virtual {v1, v3, v5}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getShoppingPlaces(II)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v17

    iget-object v13, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->badHappinessFactors:[F

    aget v13, v13, v12

    mul-float/2addr v4, v13

    aput v4, v10, v12

    .line 161
    invoke-virtual {v1, v3, v5}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getProducers(II)I

    move-result v4

    int-to-float v4, v4

    aput v4, v11, v12

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v17

    const/16 v16, 0x2

    goto :goto_ea

    .line 164
    :cond_149
    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/components/DefaultDemand;->applyExternalTargets([F)V

    move v1, v7

    :goto_14d
    if-ge v1, v6, :cond_15b

    .line 167
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->newDemands:[F

    aget v3, v10, v1

    aget v4, v11, v1

    sub-float/2addr v3, v4

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14d

    :cond_15b
    move v1, v7

    .line 170
    :goto_15c
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->newDemands:[F

    array-length v3, v2

    if-ge v1, v3, :cond_185

    .line 171
    rem-int/lit8 v3, v1, 0x3

    if-lez v3, :cond_17a

    .line 172
    aget v3, v2, v1

    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->happinesses:[F

    aget v4, v4, v1

    iget-object v12, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->amount:[F

    aget v12, v12, v1

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    const/high16 v13, 0x41200000    # 10.0f

    add-float/2addr v12, v13

    mul-float/2addr v4, v12

    add-float/2addr v3, v4

    aput v3, v2, v1

    .line 174
    :cond_17a
    aget v3, v2, v1

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/components/DefaultDemand;->relax(F)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15c

    .line 177
    :cond_185
    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v1

    if-eqz v1, :cond_1a2

    move v1, v7

    .line 178
    :goto_192
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->newDemands:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1a2

    .line 179
    aget v3, v2, v1

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_192

    .line 183
    :cond_1a2
    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v3

    move v1, v7

    :goto_1af
    if-ge v1, v8, :cond_1e0

    .line 185
    iget-object v12, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->newDemands:[F

    mul-int/lit8 v13, v1, 0x3

    aget v5, v12, v13

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/DefaultDemand;->getFactor(IIJF)F

    move-result v2

    mul-float/2addr v5, v2

    aput v5, v12, v13

    .line 186
    iget-object v12, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->newDemands:[F

    add-int/lit8 v14, v13, 0x1

    aget v5, v12, v14

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/DefaultDemand;->getFactor(IIJF)F

    move-result v2

    mul-float/2addr v5, v2

    aput v5, v12, v14

    .line 187
    iget-object v12, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->newDemands:[F

    const/16 v16, 0x2

    add-int/lit8 v13, v13, 0x2

    aget v5, v12, v13

    const/4 v2, 0x2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/DefaultDemand;->getFactor(IIJF)F

    move-result v2

    mul-float/2addr v5, v2

    aput v5, v12, v13

    add-int/lit8 v1, v1, 0x1

    goto :goto_1af

    :cond_1e0
    move v1, v7

    :goto_1e1
    if-ge v1, v6, :cond_207

    .line 191
    div-int/lit8 v2, v1, 0x3

    rem-int/lit8 v3, v1, 0x3

    mul-int/2addr v3, v8

    add-int/2addr v2, v3

    .line 192
    iget-object v3, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->newDemands:[F

    aget v4, v3, v1

    iget-object v5, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->multiplier:[I

    aget v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v4, v2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getOverallOffset(I)J

    move-result-wide v12

    long-to-float v2, v12

    add-float/2addr v4, v2

    aput v4, v3, v1

    .line 193
    aget v2, v11, v1

    iget-object v3, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->newDemands:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    aput v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e1

    :cond_207
    :goto_207
    if-ge v7, v8, :cond_26c

    .line 197
    iget-object v1, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->residential:[F

    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->newDemands:[F

    mul-int/lit8 v3, v7, 0x3

    aget v4, v2, v3

    aput v4, v1, v7

    .line 198
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->commercial:[F

    add-int/lit8 v5, v3, 0x1

    aget v6, v2, v5

    aput v6, v4, v7

    .line 199
    iget-object v4, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->industrial:[F

    add-int/lit8 v6, v3, 0x2

    aget v2, v2, v6

    aput v2, v4, v7

    .line 201
    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->resBuilding:[F

    aget v1, v1, v7

    cmpl-float v4, v1, v9

    const v12, 0x3f4ccccd    # 0.8f

    if-ltz v4, :cond_22f

    goto :goto_239

    :cond_22f
    aget v1, v10, v3

    aget v3, v11, v3

    mul-float/2addr v3, v12

    sub-float/2addr v1, v3

    invoke-static {v9, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_239
    aput v1, v2, v7

    .line 202
    iget-object v1, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->comBuilding:[F

    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->commercial:[F

    aget v2, v2, v7

    cmpl-float v3, v2, v9

    if-ltz v3, :cond_246

    goto :goto_250

    :cond_246
    aget v2, v10, v5

    aget v3, v11, v5

    mul-float/2addr v3, v12

    sub-float/2addr v2, v3

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_250
    aput v2, v1, v7

    .line 203
    iget-object v1, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->indBuilding:[F

    iget-object v2, v0, Linfo/flowersoft/theotown/components/DefaultDemand;->industrial:[F

    aget v2, v2, v7

    cmpl-float v3, v2, v9

    if-ltz v3, :cond_25d

    goto :goto_267

    :cond_25d
    aget v2, v10, v6

    aget v3, v11, v6

    mul-float/2addr v3, v12

    sub-float/2addr v2, v3

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_267
    aput v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_207

    :cond_26c
    return-void
.end method

.method public getBuildingDemand(II)F
    .registers 5

    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 259
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->indBuilding:[F

    aget p1, p1, p2

    return p1

    .line 261
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is unknown"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 257
    :cond_29
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->comBuilding:[F

    aget p1, p1, p2

    return p1

    .line 255
    :cond_2e
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->resBuilding:[F

    aget p1, p1, p2

    return p1
.end method

.method public getCommercial(I)F
    .registers 3

    .line 243
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->commercial:[F

    aget p1, v0, p1

    return p1
.end method

.method public final getFactor(IIJF)F
    .registers 10

    .line 286
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_d
    mul-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0x3c

    mul-int/lit8 p1, p1, 0xa

    int-to-long v2, p2

    .line 290
    rem-long/2addr p3, v2

    int-to-long v2, p1

    sub-long/2addr p3, v2

    long-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    const p2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, p2

    float-to-double p1, p1

    .line 291
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    add-float/2addr p1, p2

    mul-float/2addr p1, p1

    .line 294
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr p2, v1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p2, p3

    mul-float/2addr p1, p2

    .line 295
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr v1, p2

    add-float/2addr p1, v1

    return p1
.end method

.method public final getIndex(II)I
    .registers 3

    .line 0
    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    return p1
.end method

.method public getIndustrial(I)F
    .registers 3

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->industrial:[F

    aget p1, v0, p1

    return p1
.end method

.method public getMultiplier(I)I
    .registers 3

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->multiplier:[I

    aget p1, v0, p1

    return p1
.end method

.method public getOffset(I)I
    .registers 3

    .line 269
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->offset:[I

    aget p1, v0, p1

    return p1
.end method

.method public getOverallOffset(I)J
    .registers 6

    .line 223
    div-int/lit8 v0, p1, 0x3

    rem-int/lit8 v1, p1, 0x3

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 224
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->offset:[I

    aget v0, v1, v0

    int-to-long v0, v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getVarOffset(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getResidential(I)F
    .registers 3

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->residential:[F

    aget p1, v0, p1

    return p1
.end method

.method public final getVarOffset(I)J
    .registers 4

    .line 228
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultDemand;->VAR_OFFSET_NAMES:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultDemand;->getVarValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVarValue(Ljava/lang/String;)J
    .registers 4

    .line 232
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTransitionVars()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_13

    .line 233
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public prepare()V
    .registers 1

    .line 93
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->prepare()V

    return-void
.end method

.method public final relax(F)F
    .registers 5

    .line 282
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const-string v0, "demands"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 98
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->residential:[F

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->commercial:[F

    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->industrial:[F

    filled-new-array {v0, v1, v2}, [[F

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    const/4 v3, 0x3

    if-ge v2, v3, :cond_27

    aget-object v4, v0, v2

    move v5, v1

    :goto_1a
    if-ge v5, v3, :cond_24

    .line 101
    aget v6, v4, v5

    invoke-interface {p1, v6}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 104
    :cond_27
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 106
    const-string v0, "offset"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 107
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move v0, v1

    :goto_33
    const/16 v2, 0x9

    if-ge v0, v2, :cond_41

    .line 108
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->offset:[I

    aget v2, v2, v0

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 109
    :cond_41
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 111
    const-string v0, "multiplier"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 112
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :goto_4c
    if-ge v1, v2, :cond_58

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->multiplier:[I

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 114
    :cond_58
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setMultiplier(II)V
    .registers 4

    .line 273
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->multiplier:[I

    aput p2, v0, p1

    return-void
.end method

.method public setOffset(II)V
    .registers 4

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultDemand;->offset:[I

    aput p2, v0, p1

    return-void
.end method
