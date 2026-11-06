###### Class io.blueflower.stapel2d.gui.GUICache (io.blueflower.stapel2d.gui.GUICache)
.class public Lio/blueflower/stapel2d/gui/GUICache;
.super Ljava/lang/Object;
.source "GUICache.java"


# static fields
.field public static final validCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/gui/GUICache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            ">;"
        }
    .end annotation
.end field

.field public final filter:Lio/blueflower/stapel2d/gui/GadgetFilter;

.field public invalid:Z

.field public final targetClientHeight:I

.field public final targetClientWidth:I

.field public final targetHeight:I

.field public final targetPaddingLeft:I

.field public final targetPaddingTop:I

.field public final targetWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/blueflower/stapel2d/gui/GUICache;->validCaches:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gui/Master;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetWidth:I

    .line 31
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetHeight:I

    .line 32
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetPaddingLeft:I

    .line 33
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetPaddingTop:I

    .line 34
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetClientWidth:I

    .line 35
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    iput v0, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetClientHeight:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/blueflower/stapel2d/gui/GUICache;->elements:Ljava/util/List;

    const/4 v0, 0x0

    .line 38
    :goto_2f
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 39
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lio/blueflower/stapel2d/gui/GUICache;->elements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 42
    :cond_41
    iget-object v0, p1, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getFilter()Lio/blueflower/stapel2d/gui/GadgetFilter;

    move-result-object p1

    iput-object p1, p0, Lio/blueflower/stapel2d/gui/GUICache;->filter:Lio/blueflower/stapel2d/gui/GadgetFilter;

    .line 46
    sget-object p1, Lio/blueflower/stapel2d/gui/GUICache;->validCaches:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static invalidateAllCaches()V
    .registers 4

    .line 13
    :goto_0
    sget-object v0, Lio/blueflower/stapel2d/gui/GUICache;->validCaches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/GUICache;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lio/blueflower/stapel2d/gui/GUICache;->invalid:Z

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/GUICache;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/GUICache;->free()V

    goto :goto_0

    :cond_1c
    return-void
.end method


# virtual methods
.method public apply(Lio/blueflower/stapel2d/gui/Master;)V
    .registers 5

    .line 59
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/GUICache;->filter:Lio/blueflower/stapel2d/gui/GadgetFilter;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setFilter(Lio/blueflower/stapel2d/gui/GadgetFilter;)V

    const/4 v0, 0x0

    .line 61
    :goto_6
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/GUICache;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 62
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/GUICache;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    .line 63
    iput-object p1, v1, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    .line 64
    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0, v1, p1}, Lio/blueflower/stapel2d/gui/GUICache;->setMaster(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gui/Master;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 67
    :cond_23
    sget-object p1, Lio/blueflower/stapel2d/gui/GUICache;->validCaches:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public canApply(Lio/blueflower/stapel2d/gui/Master;)Z
    .registers 4

    .line 50
    iget-boolean v0, p0, Lio/blueflower/stapel2d/gui/GUICache;->invalid:Z

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    iget v1, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetWidth:I

    if-ne v0, v1, :cond_3e

    .line 51
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    iget v1, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetHeight:I

    if-ne v0, v1, :cond_3e

    .line 52
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetPaddingLeft:I

    if-ne v0, v1, :cond_3e

    .line 53
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetPaddingTop:I

    if-ne v0, v1, :cond_3e

    .line 54
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    iget v1, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetClientWidth:I

    if-ne v0, v1, :cond_3e

    .line 55
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p1

    iget v0, p0, Lio/blueflower/stapel2d/gui/GUICache;->targetClientHeight:I

    if-ne p1, v0, :cond_3e

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/GUICache;->elements:Ljava/util/List;

    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3e

    const/4 p1, 0x1

    return p1

    :cond_3e
    const/4 p1, 0x0

    return p1
.end method

.method public free()V
    .registers 3

    const/4 v0, 0x0

    .line 79
    :goto_1
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/GUICache;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 80
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/GUICache;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_17
    sget-object v0, Lio/blueflower/stapel2d/gui/GUICache;->validCaches:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setMaster(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 5

    .line 71
    iput-object p2, p1, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    const/4 v0, 0x0

    .line 73
    :goto_3
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 74
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lio/blueflower/stapel2d/gui/GUICache;->setMaster(Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gui/Master;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    return-void
.end method
