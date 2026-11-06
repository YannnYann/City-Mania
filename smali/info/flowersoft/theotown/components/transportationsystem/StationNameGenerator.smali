###### Class info.flowersoft.theotown.components.transportationsystem.StationNameGenerator (info.flowersoft.theotown.components.transportationsystem.StationNameGenerator)
.class Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;
.super Ljava/lang/Object;
.source "StationNameGenerator.java"


# instance fields
.field public final AIRPORT_NAMES:[I

.field public final COMMERCIAL_NAMES:[I

.field public final FARM_NAMES:[I

.field public final HARBOR_NAMES:[I

.field public final INDUSTRIAL_NAMES:[I

.field public final MILITARY_NAMES:[I

.field public final PARK_NAMES:[I

.field public final RESIDENTIAL_NAMES:[I

.field public final WATER_NAMES:[I

.field public final nameAvailablePredicate:Lio/blueflower/stapel2d/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final tileSampler:Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Predicate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Translator;",
            "Lio/blueflower/stapel2d/util/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d1

    const/16 v1, 0xb51

    const/16 v2, 0x324

    const/16 v3, 0xc09

    .line 24
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->RESIDENTIAL_NAMES:[I

    const/16 v0, 0x18a

    const/16 v1, 0xaeb

    const/16 v2, 0x868

    const/16 v3, 0x13f

    const/16 v4, 0x411

    .line 31
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->COMMERCIAL_NAMES:[I

    const/16 v0, 0xbad

    const/16 v1, 0x1f7

    const/16 v2, 0xb37

    const/16 v3, 0x16b

    const/16 v4, 0xd49

    .line 39
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->INDUSTRIAL_NAMES:[I

    const/16 v0, 0x85f

    const/16 v1, 0x4d4

    const/16 v2, 0x7bd

    const/16 v3, 0x82

    .line 47
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->HARBOR_NAMES:[I

    const/4 v0, 0x6

    .line 54
    new-array v0, v0, [I

    fill-array-data v0, :array_90

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->FARM_NAMES:[I

    const/16 v0, 0x341

    const/16 v1, 0xb1

    const/16 v2, 0xcd0

    .line 63
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->PARK_NAMES:[I

    const/16 v0, 0xd15

    const/16 v1, 0xbb3

    const/16 v2, 0x730

    const/16 v3, 0x8e6

    const/16 v4, 0x189

    .line 69
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->AIRPORT_NAMES:[I

    const/16 v0, 0xc51

    const/16 v1, 0x9f3

    const/16 v2, 0x1e7

    const/16 v3, 0xd5f

    const/16 v4, 0x8a2

    .line 77
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->MILITARY_NAMES:[I

    const/16 v0, 0x554

    const/16 v1, 0x5cb

    const/16 v2, 0xd4

    const/16 v3, 0x609

    const/16 v4, 0x1fc

    .line 85
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->WATER_NAMES:[I

    .line 106
    new-instance v0, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->tileSampler:Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;

    .line 110
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 111
    iput-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->nameAvailablePredicate:Lio/blueflower/stapel2d/util/Predicate;

    return-void

    nop

    :array_90
    .array-data 4
        0x3b
        0x5fd
        0x365
        0xc23
        0xd6a
        0xa23
    .end array-data
.end method


# virtual methods
.method public generate(Linfo/flowersoft/theotown/city/City;IILinfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)Ljava/lang/String;
    .registers 11

    const/16 v4, 0x8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 127
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->getClosestStation(Linfo/flowersoft/theotown/city/City;IIILinfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 128
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->isNameAvailable(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 129
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_26
    const/16 p1, 0x8

    .line 133
    invoke-virtual {p0, v1, v2, v3, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->getClosestLandmark(Linfo/flowersoft/theotown/city/City;III)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 135
    new-instance p2, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {p2, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->isNameAvailable(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_42

    return-object p1

    .line 140
    :cond_42
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->tileSampler:Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;

    const/4 p2, 0x6

    invoke-virtual {p1, v1, v2, v3, p2}, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->sample(Linfo/flowersoft/theotown/city/City;III)V

    .line 142
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->tileSampler:Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;

    iget p2, p1, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->harborZoneCount:I

    int-to-float p2, p2

    iget p3, p1, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->sampleCount:I

    int-to-float p4, p3

    div-float/2addr p2, p4

    const p4, 0x3e4ccccd    # 0.2f

    cmpl-float p2, p2, p4

    if-lez p2, :cond_60

    .line 143
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->HARBOR_NAMES:[I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->sample([I)I

    move-result p1

    goto/16 :goto_e8

    .line 144
    :cond_60
    iget p2, p1, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->farmZoneCount:I

    int-to-float p2, p2

    int-to-float p4, p3

    div-float/2addr p2, p4

    const p4, 0x3e99999a    # 0.3f

    cmpl-float p2, p2, p4

    if-lez p2, :cond_74

    .line 145
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->FARM_NAMES:[I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->sample([I)I

    move-result p1

    goto/16 :goto_e8

    .line 146
    :cond_74
    iget p2, p1, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->militaryZoneCount:I

    int-to-float p2, p2

    int-to-float v4, p3

    div-float/2addr p2, v4

    cmpl-float p2, p2, p4

    if-lez p2, :cond_84

    .line 147
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->MILITARY_NAMES:[I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->sample([I)I

    move-result p1

    goto :goto_e8

    .line 148
    :cond_84
    iget p2, p1, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->airportZoneCount:I

    int-to-float p2, p2

    int-to-float v4, p3

    div-float/2addr p2, v4

    cmpl-float p2, p2, p4

    if-lez p2, :cond_94

    .line 149
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->AIRPORT_NAMES:[I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->sample([I)I

    move-result p1

    goto :goto_e8

    .line 150
    :cond_94
    iget p2, p1, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->parkCount:I

    int-to-float p2, p2

    int-to-float v4, p3

    div-float/2addr p2, v4

    cmpl-float p2, p2, p4

    if-lez p2, :cond_a4

    .line 151
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->PARK_NAMES:[I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->sample([I)I

    move-result p1

    goto :goto_e8

    .line 152
    :cond_a4
    iget p2, p1, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->waterCount:I

    int-to-float p2, p2

    int-to-float v4, p3

    div-float/2addr p2, v4

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_b4

    .line 153
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->WATER_NAMES:[I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->sample([I)I

    move-result p1

    goto :goto_e8

    .line 154
    :cond_b4
    iget p2, p1, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->residentialZoneCount:I

    int-to-float p2, p2

    int-to-float p4, p3

    div-float/2addr p2, p4

    const p4, 0x3ecccccd    # 0.4f

    cmpl-float p2, p2, p4

    if-lez p2, :cond_c7

    .line 155
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->RESIDENTIAL_NAMES:[I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->sample([I)I

    move-result p1

    goto :goto_e8

    .line 156
    :cond_c7
    iget p2, p1, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->commercialZoneCount:I

    int-to-float p2, p2

    int-to-float v4, p3

    div-float/2addr p2, v4

    cmpl-float p2, p2, p4

    if-lez p2, :cond_d7

    .line 157
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->COMMERCIAL_NAMES:[I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->sample([I)I

    move-result p1

    goto :goto_e8

    .line 158
    :cond_d7
    iget p1, p1, Linfo/flowersoft/theotown/components/transportationsystem/CityTileSampler;->industrialZoneCount:I

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    cmpl-float p1, p1, p4

    if-lez p1, :cond_e7

    .line 159
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->INDUSTRIAL_NAMES:[I

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->sample([I)I

    move-result p1

    goto :goto_e8

    :cond_e7
    const/4 p1, 0x0

    :goto_e8
    if-lez p1, :cond_f7

    .line 163
    iget-object p2, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->isNameAvailable(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f7

    return-object p1

    .line 167
    :cond_f7
    iget-object p1, v0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {p0, v1, v2, v3}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->getLocationFormat(Linfo/flowersoft/theotown/city/City;II)I

    move-result p2

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_105

    .line 168
    const-string p1, "%s"

    .line 170
    :cond_105
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->isNameAvailable(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_118

    return-object p2

    .line 173
    :cond_118
    invoke-static {}, Linfo/flowersoft/theotown/util/NameGenerator;->generateFiltered()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getClosestLandmark(Linfo/flowersoft/theotown/city/City;III)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 13

    .line 244
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->LANDMARK:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 248
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 249
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    if-nez v3, :cond_1c

    goto :goto_58

    .line 255
    :cond_1c
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    .line 254
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 257
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    sub-int/2addr v5, p3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v6

    sub-int v6, p3, v6

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    .line 256
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, p4, :cond_55

    move-object v0, v3

    move p4, v4

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_58
    :goto_58
    return-object v0
.end method

.method public final getClosestStation(Linfo/flowersoft/theotown/city/City;IIILinfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 14

    const/16 v0, 0x16

    .line 211
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    .line 212
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->getSystems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 216
    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 217
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 218
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v4

    if-ne v4, p5, :cond_22

    goto :goto_57

    .line 222
    :cond_22
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStations()Ljava/util/List;

    move-result-object v3

    move v4, v1

    .line 223
    :goto_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_57

    .line 224
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    if-nez v5, :cond_36

    goto :goto_57

    .line 227
    :cond_36
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v6

    if-nez v6, :cond_3d

    goto :goto_54

    .line 231
    :cond_3d
    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v7

    sub-int/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result v6

    sub-int/2addr v6, p3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v7, v6

    if-ge v7, p4, :cond_54

    move-object v0, v5

    move p4, v7

    :cond_54
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_5a
    return-object v0
.end method

.method public final getLocationFormat(Linfo/flowersoft/theotown/city/City;II)I
    .registers 7

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    .line 183
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p2, v1

    int-to-float p3, p3

    mul-float/2addr p3, v0

    .line 184
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    sub-float/2addr p3, v1

    const/high16 p1, -0x41000000    # -0.5f

    cmpg-float v0, p2, p1

    if-gez v0, :cond_23

    cmpg-float v1, p3, p1

    if-gez v1, :cond_23

    const/16 p1, 0x1b8

    return p1

    :cond_23
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v2, p2, v1

    if-lez v2, :cond_30

    cmpg-float p1, p3, p1

    if-gez p1, :cond_30

    const/16 p1, 0x42

    return p1

    :cond_30
    if-gez v0, :cond_39

    cmpl-float p1, p3, v1

    if-lez p1, :cond_39

    const/16 p1, 0x1e

    return p1

    :cond_39
    if-lez v2, :cond_42

    cmpl-float p1, p3, v1

    if-lez p1, :cond_42

    const/16 p1, 0x26b

    return p1

    .line 195
    :cond_42
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const p2, 0x3e99999a    # 0.3f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_58

    const/16 p1, 0x129

    return p1

    :cond_58
    const p2, 0x3f19999a    # 0.6f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_62

    const/16 p1, 0x2f7

    return p1

    :cond_62
    const p2, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6c

    const/16 p1, 0xad0

    return p1

    :cond_6c
    const/16 p1, 0xdbe

    return p1
.end method

.method public final isNameAvailable(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_4
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/StationNameGenerator;->nameAvailablePredicate:Lio/blueflower/stapel2d/util/Predicate;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final sample([I)I
    .registers 4

    .line 120
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget p1, p1, v0

    return p1
.end method
