###### Class info.flowersoft.theotown.draft.RankDraft (info.flowersoft.theotown.draft.RankDraft)
.class public Linfo/flowersoft/theotown/draft/RankDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "RankDraft.java"


# instance fields
.field public achievementId:Ljava/lang/String;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public award:Linfo/flowersoft/theotown/util/SpecialInt;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public awardDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field

.field public xp:Linfo/flowersoft/theotown/util/SpecialInt;
    .annotation runtime Lvm2/NoLuaAccess;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/RankDraft;->xp:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 15
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/RankDraft;->award:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 18
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/RankDraft;->awardDiamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    return-void
.end method
