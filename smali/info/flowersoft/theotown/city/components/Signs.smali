###### Class info.flowersoft.theotown.city.components.Signs (info.flowersoft.theotown.city.components.Signs)
.class public abstract Linfo/flowersoft/theotown/city/components/Signs;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "Signs.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addSign(Linfo/flowersoft/theotown/city/objects/Sign;)V
.end method

.method public abstract drawSigns(Lio/blueflower/stapel2d/drawing/Engine;Z)V
.end method

.method public abstract getSignAt(II)Linfo/flowersoft/theotown/city/objects/Sign;
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0x12

    return v0
.end method

.method public abstract removeSign(Linfo/flowersoft/theotown/city/objects/Sign;)V
.end method
