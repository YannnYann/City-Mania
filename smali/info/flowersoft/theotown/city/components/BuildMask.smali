###### Class info.flowersoft.theotown.city.components.BuildMask (info.flowersoft.theotown.city.components.BuildMask)
.class public abstract Linfo/flowersoft/theotown/city/components/BuildMask;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "BuildMask.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accessGranted(II)Z
.end method

.method public abstract correct(II)[I
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0xe

    return v0
.end method

.method public abstract isClickable(II)Z
.end method
