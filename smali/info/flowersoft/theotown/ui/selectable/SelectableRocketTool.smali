###### Class info.flowersoft.theotown.ui.selectable.SelectableRocketTool (info.flowersoft.theotown.ui.selectable.SelectableRocketTool)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableRocketTool;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableRocketTool.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/Draft;

.field public launcherDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 26
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$mltry_rocketlauncher00"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRocketTool;->launcherDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 28
    new-instance p1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-direct {p1}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRocketTool;->draft:Linfo/flowersoft/theotown/draft/Draft;

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRocketTool;->launcherDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRocketTool;->draft:Linfo/flowersoft/theotown/draft/Draft;

    return-object v0
.end method

.method public getPreviewFrame()I
    .registers 2

    .line 75
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROCKETAIMTOOL:I

    return v0
.end method

.method public getPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectIcon()I
    .registers 2

    .line 44
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_RED_BUTTON:I

    return v0
.end method

.method public getSelectText()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const-string v1, "launch_rocket"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasRequirement()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isUnlocked()Z
    .registers 3

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRocketTool;->launcherDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public select()V
    .registers 5

    .line 54
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 56
    new-instance v0, Linfo/flowersoft/theotown/tools/RocketAimTool;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tools/RocketAimTool;-><init>()V

    .line 57
    new-instance v1, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRocketTool;->launcherDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 58
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/tools/RocketAimTool;->addLauncher(Linfo/flowersoft/theotown/city/objects/Building;)V

    goto :goto_1d

    .line 60
    :cond_2d
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
