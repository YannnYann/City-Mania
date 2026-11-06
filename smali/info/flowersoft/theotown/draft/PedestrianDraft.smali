###### Class info.flowersoft.theotown.draft.PedestrianDraft (info.flowersoft.theotown.draft.PedestrianDraft)
.class public Linfo/flowersoft/theotown/draft/PedestrianDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "PedestrianDraft.java"


# instance fields
.field public autoSpawn:Z

.field public com:F

.field public flags:J

.field public ind:F

.field public lvl1:F

.field public lvl2:F

.field public lvl3:F

.field public res:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    const-wide/32 v0, 0xc000e4

    .line 5
    iput-wide v0, p0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->flags:J

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/PedestrianDraft;->autoSpawn:Z

    return-void
.end method
