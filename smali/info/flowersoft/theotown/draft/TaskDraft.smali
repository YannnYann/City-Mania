###### Class info.flowersoft.theotown.draft.TaskDraft (info.flowersoft.theotown.draft.TaskDraft)
.class public Linfo/flowersoft/theotown/draft/TaskDraft;
.super Linfo/flowersoft/theotown/draft/Draft;
.source "TaskDraft.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/draft/TaskDraft$Action;,
        Linfo/flowersoft/theotown/draft/TaskDraft$Command;
    }
.end annotation


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/TaskDraft$Action;",
            ">;"
        }
    .end annotation
.end field

.field public commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/TaskDraft$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.draft.TaskDraft.Action (info.flowersoft.theotown.draft.TaskDraft$Action)
.class public Linfo/flowersoft/theotown/draft/TaskDraft$Action;
.super Ljava/lang/Object;
.source "TaskDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/TaskDraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public requirement:Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

.field public task:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.draft.TaskDraft.Command (info.flowersoft.theotown.draft.TaskDraft$Command)
.class public Linfo/flowersoft/theotown/draft/TaskDraft$Command;
.super Ljava/lang/Object;
.source "TaskDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/TaskDraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public task:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
