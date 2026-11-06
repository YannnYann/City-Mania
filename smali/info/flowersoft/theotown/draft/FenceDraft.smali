###### Class info.flowersoft.theotown.draft.FenceDraft (info.flowersoft.theotown.draft.FenceDraft)
.class public Linfo/flowersoft/theotown/draft/FenceDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "FenceDraft.java"


# instance fields
.field public animationSpotIndices:[[I

.field public animationSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public price:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    return-void
.end method
