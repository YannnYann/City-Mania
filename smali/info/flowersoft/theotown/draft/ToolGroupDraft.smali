###### Class info.flowersoft.theotown.draft.ToolGroupDraft (info.flowersoft.theotown.draft.ToolGroupDraft)
.class public Linfo/flowersoft/theotown/draft/ToolGroupDraft;
.super Linfo/flowersoft/theotown/draft/Draft;
.source "ToolGroupDraft.java"


# instance fields
.field public drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/ToolGroupDraft;->drafts:Ljava/util/List;

    return-void
.end method
