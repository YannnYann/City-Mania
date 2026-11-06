###### Class info.flowersoft.theotown.stages.cityinfo.CityInfo (info.flowersoft.theotown.stages.cityinfo.CityInfo)
.class public abstract Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
.super Ljava/lang/Object;
.source "CityInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end method

.method public createIcon(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Z)Lio/blueflower/stapel2d/gui/Icon;
    .registers 11

    .line 20
    new-instance v0, Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getIcon()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 21
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
.end method

.method public getIcon()I
    .registers 2

    .line 16
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    return v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getTitleId(Linfo/flowersoft/theotown/city/City;)I
.end method

.method public isAvailable(Linfo/flowersoft/theotown/city/City;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method
