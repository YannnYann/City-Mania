###### Class info.flowersoft.theotown.stages.gameuibuilder.collectors.ViewMarkerCollector (info.flowersoft.theotown.stages.gameuibuilder.collectors.ViewMarkerCollector)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector;
.super Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;
.source "ViewMarkerCollector.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public collect(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableFollowCar;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableFollowCar;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v2, Linfo/flowersoft/theotown/tools/marker/PowerMarker;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/tools/marker/PowerMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v2, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_3f
    if-ge v3, v1, :cond_5a

    aget-object v4, v0, v3

    .line 65
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_4d

    sget-boolean v5, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v5, :cond_57

    .line 66
    :cond_4d
    new-instance v5, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v5, v6, v4}, Linfo/flowersoft/theotown/ui/selectable/SelectableInfluence;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 70
    :cond_5a
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v3, Linfo/flowersoft/theotown/tools/marker/HappinessMarker;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/tools/marker/HappinessMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {v0, v1, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v3, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {v0, v1, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v3, Linfo/flowersoft/theotown/tools/marker/LevelMarker;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/tools/marker/LevelMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {v0, v1, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v3, Linfo/flowersoft/theotown/tools/marker/DensityMarker;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/tools/marker/DensityMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {v0, v1, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableProtection;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v0, :cond_131

    .line 83
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v3, Linfo/flowersoft/theotown/tools/marker/InfoGridMarker;

    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    const/4 v5, 0x3

    .line 86
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getPeopleInfoGrid()Linfo/flowersoft/theotown/util/InfoGrid;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Linfo/flowersoft/theotown/tools/marker/InfoGridMarker;-><init>(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/util/InfoGrid;)V

    invoke-direct {v0, v1, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v3, Linfo/flowersoft/theotown/tools/marker/TicketMarker;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/tools/marker/TicketMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {v0, v1, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v0

    .line 93
    :goto_eb
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_131

    .line 94
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 95
    new-instance v3, Linfo/flowersoft/theotown/tools/marker/AttributeMarker;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, v4, v2}, Linfo/flowersoft/theotown/tools/marker/AttributeMarker;-><init>(Linfo/flowersoft/theotown/city/City;I)V

    .line 96
    new-instance v4, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v4, v5, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "draft_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getTag(Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->setDraftId(Ljava/lang/String;)V

    .line 99
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector$1;

    invoke-direct {v3, p0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/ui/selectable/SelectableMarker;->setName(Lio/blueflower/stapel2d/util/Getter;)V

    .line 106
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_eb

    :cond_131
    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 50
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    return v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0xcff

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 114
    const-string v0, "ViewMarkerCollector"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.collectors.ViewMarkerCollector.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.collectors.ViewMarkerCollector$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector$1;
.super Ljava/lang/Object;
.source "ViewMarkerCollector.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector;->collect(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector;

.field public final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 99
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 3

    .line 102
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/ViewMarkerCollector$1;->val$id:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
