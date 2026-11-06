###### Class info.flowersoft.theotown.city.components.SoundManager (info.flowersoft.theotown.city.components.SoundManager)
.class public abstract Linfo/flowersoft/theotown/city/components/SoundManager;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "SoundManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0xf

    return v0
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
