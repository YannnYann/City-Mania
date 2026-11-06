###### Class info.flowersoft.theotown.ui.selectable.SelectableProtection (info.flowersoft.theotown.ui.selectable.SelectableProtection)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;
.source "SelectableProtection.java"


# instance fields
.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public static synthetic $r8$lambda$lDY_Yvn-gmuckEYQeKb5j6fPGzQ(Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;Linfo/flowersoft/theotown/city/components/Tool;IIII)V
    .registers 6

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 29
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 30
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    sget-object p2, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq p1, p2, :cond_23

    .line 31
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setUntouchable(Z)V

    :cond_23
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/ProtectedMarker;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/tools/marker/ProtectedMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 21
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-void
.end method


# virtual methods
.method public select()V
    .registers 3

    .line 26
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->select()V

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/tools/MarkTool;

    new-instance v1, Linfo/flowersoft/theotown/ui/selectable/SelectableProtection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableProtection$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/MarkTool;->setAction(Linfo/flowersoft/theotown/city/components/Tool$ClickListener;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableProtection$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.selectable.SelectableProtection$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/selectable/SelectableProtection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/Tool$ClickListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableProtection$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;

    return-void
.end method


# virtual methods
.method public final onClick(Linfo/flowersoft/theotown/city/components/Tool;IIII)V
    .registers 12

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableProtection$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;->$r8$lambda$lDY_Yvn-gmuckEYQeKb5j6fPGzQ(Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;Linfo/flowersoft/theotown/city/components/Tool;IIII)V

    return-void
.end method
