###### Class info.flowersoft.theotown.ui.selectable.SelectableWireDraft (info.flowersoft.theotown.ui.selectable.SelectableWireDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableWireDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableWireDraft.java"


# instance fields
.field public budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public draft:Linfo/flowersoft/theotown/draft/WireDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/WireDraft;)V
    .registers 4

    .line 19
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableWireDraft;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 21
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableWireDraft;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableWireDraft;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    return-object v0
.end method

.method public getPrice()J
    .registers 4

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableWireDraft;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableWireDraft;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/WireDraft;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public select()V
    .registers 4

    .line 36
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/WireTool;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableWireDraft;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/WireTool;-><init>(Linfo/flowersoft/theotown/draft/WireDraft;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
