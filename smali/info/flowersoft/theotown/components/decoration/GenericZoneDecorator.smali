###### Class info.flowersoft.theotown.components.decoration.GenericZoneDecorator (info.flowersoft.theotown.components.decoration.GenericZoneDecorator)
.class public Linfo/flowersoft/theotown/components/decoration/GenericZoneDecorator;
.super Linfo/flowersoft/theotown/components/decoration/Decorator;
.source "GenericZoneDecorator.java"


# instance fields
.field public final decoration:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final zones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/ZoneDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/ZoneDraft;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/decoration/Decorator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 22
    iput-object p2, p0, Linfo/flowersoft/theotown/components/decoration/GenericZoneDecorator;->decoration:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 23
    iput-object p3, p0, Linfo/flowersoft/theotown/components/decoration/GenericZoneDecorator;->zones:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public canDecorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/GenericZoneDecorator;->zones:Ljava/util/List;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public decorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 5

    .line 33
    new-instance v0, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/decoration/GenericZoneDecorator;->zones:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;)V

    .line 34
    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/GenericZoneDecorator;->decoration:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->addDecorationDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 35
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorate(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1

    return p1
.end method

.method public getProbability()F
    .registers 2

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/GenericZoneDecorator;->decoration:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    int-to-float v0, v0

    return v0
.end method
