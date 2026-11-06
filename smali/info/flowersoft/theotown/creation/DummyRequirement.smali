###### Class info.flowersoft.theotown.creation.DummyRequirement (info.flowersoft.theotown.creation.DummyRequirement)
.class public final Linfo/flowersoft/theotown/creation/DummyRequirement;
.super Linfo/flowersoft/theotown/city/components/Requirement;
.source "DummyRequirement.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Requirement;-><init>()V

    return-void
.end method


# virtual methods
.method public flushUnlocked()V
    .registers 1

    .line 0
    return-void
.end method

.method public getNewRank()Linfo/flowersoft/theotown/draft/RankDraft;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewUnlockedDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNewRank()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hasNewUnlockedDraft()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method
