###### Class info.flowersoft.theotown.draft.ToolDraft (info.flowersoft.theotown.draft.ToolDraft)
.class public Linfo/flowersoft/theotown/draft/ToolDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "ToolDraft.java"


# instance fields
.field public cmdId:Ljava/lang/String;

.field public cmdText:Ljava/lang/String;

.field public onClickTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public price:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    return-void
.end method
