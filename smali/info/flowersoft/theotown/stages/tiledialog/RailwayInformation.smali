###### Class info.flowersoft.theotown.stages.tiledialog.RailwayInformation (info.flowersoft.theotown.stages.tiledialog.RailwayInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/RailwayInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;
.source "RailwayInformation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 3

    .line 14
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RAILWAY_STATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xc5b

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 25
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallUsage()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 26
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getWaiting()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 27
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    iget v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->capacity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getTotalTransferred()I

    move-result v1

    if-lez v1, :cond_69

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x838

    .line 31
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 32
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getTotalTransferred()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_69
    return-object v0
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method
