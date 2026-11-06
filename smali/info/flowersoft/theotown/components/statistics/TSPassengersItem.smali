###### Class info.flowersoft.theotown.components.statistics.TSPassengersItem (info.flowersoft.theotown.components.statistics.TSPassengersItem)
.class public Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;
.super Ljava/lang/Object;
.source "TSPassengersItem.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/statistics/StatisticsItem;


# instance fields
.field public final color:Lio/blueflower/stapel2d/drawing/Color;

.field public final draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

.field public system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    .line 22
    iput-object p2, p0, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ts_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    const/16 v0, 0x16

    .line 34
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->getSystemObjectById(Ljava/lang/String;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    return-void
.end method

.method public evaluate()I
    .registers 2

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->queryPassengers()I

    move-result v0

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getName(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/DraftLocalizer;)Ljava/lang/String;
    .registers 3

    .line 45
    iget-object p1, p0, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;->tag:Ljava/lang/String;

    return-object v0
.end method
