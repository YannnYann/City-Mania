###### Class info.flowersoft.theotown.ui.selectable.SelectableRawBuildingDraft (info.flowersoft.theotown.ui.selectable.SelectableRawBuildingDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;
.source "SelectableRawBuildingDraft.java"


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->text:Ljava/lang/String;

    return-void
.end method

.method public addText(Ljava/lang/String;I)V
    .registers 5

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->text:Ljava/lang/String;

    return-void
.end method

.method public clearText()V
    .registers 2

    .line 78
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->text:Ljava/lang/String;

    return-void
.end method

.method public getText()Ljava/lang/String;
    .registers 7

    .line 23
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->clearText()V

    const/16 v1, 0xad4

    .line 27
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    if-lez v1, :cond_41

    const/16 v1, 0xb8

    .line 31
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;)V

    .line 35
    :cond_41
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    if-lez v1, :cond_60

    const/16 v1, 0xc54

    .line 36
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;)V

    :cond_60
    const/16 v1, 0x7c8

    .line 40
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;)V

    .line 43
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v0, :cond_137

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v0

    .line 45
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v1, v0

    .line 47
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->type:Ljava/lang/String;

    const-string v3, "type"

    invoke-virtual {p0, v3, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    const-string v3, "build height"

    invoke-virtual {p0, v3, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;I)V

    .line 49
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    const-string v3, "build time"

    invoke-virtual {p0, v3, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;I)V

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->power:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "water/power"

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "habitants/workers"

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    const-string v4, "level/density"

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;I)V

    .line 53
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v2

    const-string v4, "frames"

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;I)V

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v5, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v5, v4

    div-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v3, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v3, v0

    div-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ppa/ppaph"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v0, :cond_137

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_137
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;->text:Ljava/lang/String;

    return-object v0
.end method
