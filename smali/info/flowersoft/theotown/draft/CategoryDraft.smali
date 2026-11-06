###### Class info.flowersoft.theotown.draft.CategoryDraft (info.flowersoft.theotown.draft.CategoryDraft)
.class public Linfo/flowersoft/theotown/draft/CategoryDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "CategoryDraft.java"


# instance fields
.field public children:Linfo/flowersoft/theotown/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public hotkey:Linfo/flowersoft/theotown/input/KeyAction;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    .line 14
    new-instance v0, Linfo/flowersoft/theotown/util/SortedList;

    new-instance v1, Linfo/flowersoft/theotown/draft/CategoryDraft$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/draft/CategoryDraft$1;-><init>(Linfo/flowersoft/theotown/draft/CategoryDraft;)V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    return-void
.end method


# virtual methods
.method public addChild(Linfo/flowersoft/theotown/draft/Draft;)V
    .registers 3

    .line 22
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeChild(Linfo/flowersoft/theotown/draft/Draft;)V
    .registers 3

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/CategoryDraft;->children:Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SortedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class info.flowersoft.theotown.draft.CategoryDraft.AnonymousClass1 (info.flowersoft.theotown.draft.CategoryDraft$1)
.class Linfo/flowersoft/theotown/draft/CategoryDraft$1;
.super Ljava/lang/Object;
.source "CategoryDraft.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/SortedList$Interpreter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/CategoryDraft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/util/SortedList$Interpreter<",
        "Linfo/flowersoft/theotown/draft/Draft;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/draft/CategoryDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/CategoryDraft;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 14
    iput-object p1, p0, Linfo/flowersoft/theotown/draft/CategoryDraft$1;->this$0:Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interprete(Linfo/flowersoft/theotown/draft/Draft;)I
    .registers 2

    .line 17
    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    return p1
.end method

.method public bridge synthetic interprete(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 14
    check-cast p1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/draft/CategoryDraft$1;->interprete(Linfo/flowersoft/theotown/draft/Draft;)I

    move-result p1

    return p1
.end method
