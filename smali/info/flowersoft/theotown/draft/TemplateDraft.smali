###### Class info.flowersoft.theotown.draft.TemplateDraft (info.flowersoft.theotown.draft.TemplateDraft)
.class public Linfo/flowersoft/theotown/draft/TemplateDraft;
.super Linfo/flowersoft/theotown/draft/Draft;
.source "TemplateDraft.java"


# instance fields
.field public additive:Z

.field public content:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/TemplateDraft;->additive:Z

    return-void
.end method
