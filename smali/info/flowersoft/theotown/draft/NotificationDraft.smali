###### Class info.flowersoft.theotown.draft.NotificationDraft (info.flowersoft.theotown.draft.NotificationDraft)
.class public Linfo/flowersoft/theotown/draft/NotificationDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "NotificationDraft.java"


# instance fields
.field public cancelFun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public closeable:Z

.field public immersive:Z

.field public important:Z

.field public okFun:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Transition;",
            ">;"
        }
    .end annotation
.end field

.field public question:Z

.field public showOnce:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    return-void
.end method
