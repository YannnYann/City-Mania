###### Class info.flowersoft.theotown.stages.tiledialog.EnergyInformation (info.flowersoft.theotown.stages.tiledialog.EnergyInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/EnergyInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;
.source "EnergyInformation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 5

    .line 19
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public getCityInfos()[Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
    .registers 4

    .line 43
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public final getPowerUsage(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 4

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultPower;

    .line 48
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultPower;->getNetwork(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result p1

    .line 49
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultPower;->usageRatio(I)F

    move-result p1

    return p1
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x956

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 31
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/tiledialog/EnergyInformation;->getPowerUsage(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xdc5

    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method
