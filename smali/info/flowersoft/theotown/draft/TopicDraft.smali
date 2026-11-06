###### Class info.flowersoft.theotown.draft.TopicDraft (info.flowersoft.theotown.draft.TopicDraft)
.class public Linfo/flowersoft/theotown/draft/TopicDraft;
.super Linfo/flowersoft/theotown/draft/Draft;
.source "TopicDraft.java"


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public helpful:Z

.field public url:Ljava/lang/String;

.field public weight:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    iput v0, p0, Linfo/flowersoft/theotown/draft/TopicDraft;->weight:F

    return-void
.end method
