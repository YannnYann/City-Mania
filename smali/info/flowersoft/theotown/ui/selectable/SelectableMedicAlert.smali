###### Class info.flowersoft.theotown.ui.selectable.SelectableMedicAlert (info.flowersoft.theotown.ui.selectable.SelectableMedicAlert)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableMedicAlert;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableAlert;
.source "SelectableMedicAlert.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableAlert;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 17
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableAlert;->draft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {}, Linfo/flowersoft/theotown/tools/MedicAlertTool;->getAlertId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlertTool()Linfo/flowersoft/theotown/tools/AlertTool;
    .registers 2

    .line 32
    new-instance v0, Linfo/flowersoft/theotown/tools/MedicAlertTool;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tools/MedicAlertTool;-><init>()V

    return-object v0
.end method

.method public getPreviewFrame()I
    .registers 2

    .line 22
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->FRAME_LOCATE_MEDIC_ALERT:I

    return v0
.end method

.method public isUnlocked()Z
    .registers 3

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
