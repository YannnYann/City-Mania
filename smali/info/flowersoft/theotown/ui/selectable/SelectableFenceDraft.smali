###### Class info.flowersoft.theotown.ui.selectable.SelectableFenceDraft (info.flowersoft.theotown.ui.selectable.SelectableFenceDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableFenceDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableFenceDraft.java"


# instance fields
.field public final draft:Linfo/flowersoft/theotown/draft/FenceDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/FenceDraft;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 15
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFenceDraft;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 25
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFenceDraft;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    return-object v0
.end method

.method public getPrice()J
    .registers 3

    .line 20
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFenceDraft;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/FenceDraft;->price:J

    return-wide v0
.end method

.method public select()V
    .registers 3

    .line 30
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 31
    new-instance v0, Linfo/flowersoft/theotown/tools/FenceTool;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableFenceDraft;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/FenceTool;-><init>(Linfo/flowersoft/theotown/draft/FenceDraft;)V

    .line 32
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
