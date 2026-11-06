###### Class info.flowersoft.theotown.stages.tiledialog.BusStopInformation (info.flowersoft.theotown.stages.tiledialog.BusStopInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;
.source "BusStopInformation.java"


# instance fields
.field public busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

.field public draft:Linfo/flowersoft/theotown/draft/BusStopDraft;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 2

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;->busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()I
    .registers 2

    .line 42
    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->PASSENGER_BUS:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getIconId()I

    move-result v0

    return v0
.end method

.method public getInfluenceVector()[I
    .registers 2

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->influenceInduceVector:[I

    return-object v0
.end method

.method public getSound()I
    .registers 3

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->soundClick:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return v0

    .line 73
    :cond_8
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_ROAD:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x3f5

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;->busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 57
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/BusStop;->getOverallUsage()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;->busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 58
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/BusStop;->getWaiting()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;->busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 59
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v4

    iget v4, v4, Linfo/flowersoft/theotown/draft/BusStopDraft;->capacity:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 56
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x288

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public setContext(Linfo/flowersoft/theotown/city/City;II)V
    .registers 4

    .line 24
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->setContext(Linfo/flowersoft/theotown/city/City;II)V

    .line 25
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_13

    .line 26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p1

    goto :goto_14

    :cond_13
    move-object p1, p2

    :goto_14
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;->busStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    if-eqz p1, :cond_1c

    .line 27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object p2

    :cond_1c
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/BusStopInformation;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    return-void
.end method
