###### Class info.flowersoft.theotown.city.components.Tool (info.flowersoft.theotown.city.components.Tool)
.class public abstract Linfo/flowersoft/theotown/city/components/Tool;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "Tool.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/components/Tool$ClickListener;
    }
.end annotation


# instance fields
.field public actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

.field public diamondNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

.field public final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/Tool$ClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

.field public questionListener:Linfo/flowersoft/theotown/city/components/QuestionListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 16
    new-instance v0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public allowMapMovement()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public beginMove(IIFF)V
    .registers 5

    .line 0
    return-void
.end method

.method public canBeginMove(FFIIFF)Z
    .registers 7

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract cancelMouse()V
.end method

.method public cancelMove()V
    .registers 1

    .line 0
    return-void
.end method

.method public final click(IIFFII)V
    .registers 15

    const/4 v0, 0x0

    .line 70
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Tool;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 71
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Tool;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Linfo/flowersoft/theotown/city/components/Tool$ClickListener;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p5

    move v7, p6

    invoke-interface/range {v2 .. v7}, Linfo/flowersoft/theotown/city/components/Tool$ClickListener;->onClick(Linfo/flowersoft/theotown/city/components/Tool;IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_1d
    invoke-virtual/range {p0 .. p6}, Linfo/flowersoft/theotown/city/components/Tool;->onClick(IIFFII)V

    return-void
.end method

.method public close()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract draw(IILinfo/flowersoft/theotown/city/Drawer;)V
.end method

.method public abstract drawEdge(IILinfo/flowersoft/theotown/city/Drawer;I)V
.end method

.method public endMove()V
    .registers 1

    .line 0
    return-void
.end method

.method public ensureValidPosition()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public finishMove()V
    .registers 1

    .line 0
    return-void
.end method

.method public getActions()Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;
    .registers 2

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    return-object v0
.end method

.method public getCursorType()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIcon()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0xd

    return v0
.end method

.method public abstract mouseMove(IIFFFFZ)V
.end method

.method public moveImmediate()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onClick(IIFFII)V
.end method

.method public registerClickListener(Linfo/flowersoft/theotown/city/components/Tool$ClickListener;)V
    .registers 3

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reversedMovement()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setDiamondNeededListener(Linfo/flowersoft/theotown/city/components/ResourceNeededListener;)V
    .registers 2

    .line 118
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->diamondNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    return-void
.end method

.method public setMoneyNeededListener(Linfo/flowersoft/theotown/city/components/ResourceNeededListener;)V
    .registers 2

    .line 114
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    return-void
.end method

.method public setQuestionListener(Linfo/flowersoft/theotown/city/components/QuestionListener;)V
    .registers 2

    .line 110
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->questionListener:Linfo/flowersoft/theotown/city/components/QuestionListener;

    return-void
.end method

.method public unregisterClickListener(Linfo/flowersoft/theotown/city/components/Tool$ClickListener;)V
    .registers 3

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract update()V
.end method

.method public updateMove(FFFFIIFF)Z
    .registers 9

    .line 0
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.city.components.Tool.ClickListener (info.flowersoft.theotown.city.components.Tool$ClickListener)
.class public interface abstract Linfo/flowersoft/theotown/city/components/Tool$ClickListener;
.super Ljava/lang/Object;
.source "Tool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/components/Tool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClickListener"
.end annotation


# virtual methods
.method public abstract onClick(Linfo/flowersoft/theotown/city/components/Tool;IIII)V
.end method
