###### Class info.flowersoft.theotown.ui.selectable.SelectableTerrainTool (info.flowersoft.theotown.ui.selectable.SelectableTerrainTool)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableTerrainTool;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableTerrainTool.java"


# instance fields
.field public final draft:Linfo/flowersoft/theotown/draft/ToolDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ToolDraft;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 14
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrainTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrainTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    return-object v0
.end method

.method public getPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public select()V
    .registers 4

    .line 29
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/TerrainHillTool;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrainTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/TerrainHillTool;-><init>(Linfo/flowersoft/theotown/draft/ToolDraft;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
