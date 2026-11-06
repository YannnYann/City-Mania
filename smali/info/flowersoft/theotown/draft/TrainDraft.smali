###### Class info.flowersoft.theotown.draft.TrainDraft (info.flowersoft.theotown.draft.TrainDraft)
.class public Linfo/flowersoft/theotown/draft/TrainDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "TrainDraft.java"


# instance fields
.field public animationSpots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarAnimationSpot;",
            ">;"
        }
    .end annotation
.end field

.field public capacity:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    return-void
.end method
