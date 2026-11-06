###### Class info.flowersoft.theotown.city.components.BuildingProperty (info.flowersoft.theotown.city.components.BuildingProperty)
.class public Linfo/flowersoft/theotown/city/components/BuildingProperty;
.super Ljava/lang/Object;
.source "BuildingProperty.java"


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;

.field public isSet:Z

.field public value:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->isSet:Z

    return-void
.end method


# virtual methods
.method public assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z
    .registers 4

    .line 21
    iget v0, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->value:F

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_d

    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->isSet:Z

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    .line 22
    :cond_d
    :goto_d
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 23
    iput p2, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->value:F

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->isSet:Z

    return p1
.end method

.method public getBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public getValue()F
    .registers 2

    .line 40
    iget v0, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->value:F

    return v0
.end method

.method public isSet()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->isSet:Z

    return v0
.end method

.method public setTo(Linfo/flowersoft/theotown/city/components/BuildingProperty;)V
    .registers 3

    .line 44
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/components/BuildingProperty;->isSet:Z

    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->isSet:Z

    if-eqz v0, :cond_e

    .line 46
    iget-object v0, p1, Linfo/flowersoft/theotown/city/components/BuildingProperty;->building:Linfo/flowersoft/theotown/city/objects/Building;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 47
    iget p1, p1, Linfo/flowersoft/theotown/city/components/BuildingProperty;->value:F

    iput p1, p0, Linfo/flowersoft/theotown/city/components/BuildingProperty;->value:F

    :cond_e
    return-void
.end method
