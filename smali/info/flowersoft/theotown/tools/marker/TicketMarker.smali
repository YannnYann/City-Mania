###### Class info.flowersoft.theotown.tools.marker.TicketMarker (info.flowersoft.theotown.tools.marker.TicketMarker)
.class public Linfo/flowersoft/theotown/tools/marker/TicketMarker;
.super Linfo/flowersoft/theotown/tools/marker/BuildingMarker;
.source "TicketMarker.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public buildingIsInvolved(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 2

    .line 17
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentPeople()I

    move-result p1

    if-lez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public getInvolvedIntensity(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 2

    .line 22
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getReachability()F

    move-result p1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 27
    const-string v0, "TicketMarker"

    return-object v0
.end method
