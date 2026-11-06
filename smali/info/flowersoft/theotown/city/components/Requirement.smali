###### Class info.flowersoft.theotown.city.components.Requirement (info.flowersoft.theotown.city.components.Requirement)
.class public abstract Linfo/flowersoft/theotown/city/components/Requirement;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "Requirement.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract flushUnlocked()V
.end method

.method public abstract getNewRank()Linfo/flowersoft/theotown/draft/RankDraft;
.end method

.method public abstract getNewUnlockedDraft()Linfo/flowersoft/theotown/draft/Draft;
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0xb

    return v0
.end method

.method public abstract hasNewRank()Z
.end method

.method public abstract hasNewUnlockedDraft()Z
.end method
