###### Class info.flowersoft.theotown.city.components.People (info.flowersoft.theotown.city.components.People)
.class public abstract Linfo/flowersoft/theotown/city/components/People;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "People.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getPeople()I
    .registers 3

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract getPeople(I)I
.end method

.method public abstract getPeopleNeededSpace(I)F
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0x9

    return v0
.end method
