###### Class info.flowersoft.theotown.stages.tiledialog.AbstractBuildingInformation (info.flowersoft.theotown.stages.tiledialog.AbstractBuildingInformation)
.class public abstract Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;
.source "AbstractBuildingInformation.java"


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;

.field public draft:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public setContext(Linfo/flowersoft/theotown/city/City;II)V
    .registers 4

    .line 18
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->setContext(Linfo/flowersoft/theotown/city/City;II)V

    .line 19
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz p1, :cond_14

    .line 20
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AbstractBuildingInformation;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-void
.end method
