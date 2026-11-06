###### Class info.flowersoft.theotown.ui.listitem.GroupItem (info.flowersoft.theotown.ui.listitem.GroupItem)
.class public Linfo/flowersoft/theotown/ui/listitem/GroupItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "GroupItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;
    }
.end annotation


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/blueflower/stapel2d/gui/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field public lastWidth:I

.field public final space:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->space:I

    return-void
.end method


# virtual methods
.method public add(Lio/blueflower/stapel2d/gui/ListItem;)V
    .registers 3

    .line 25
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public countItems()I
    .registers 2

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    .line 33
    :goto_8
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v4, v6, :cond_2a

    .line 34
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/ListItem;

    .line 35
    instance-of v8, v6, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;

    if-eqz v8, :cond_26

    .line 36
    check-cast v6, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;

    .line 37
    invoke-interface {v6}, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;->getWidthRatio()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_27

    :cond_26
    add-float/2addr v5, v7

    :goto_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_2a
    move v4, v2

    .line 43
    :goto_2b
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_78

    .line 44
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lio/blueflower/stapel2d/gui/ListItem;

    .line 47
    instance-of v6, v8, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;

    if-eqz v6, :cond_48

    .line 48
    move-object v6, v8

    check-cast v6, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;

    .line 49
    invoke-interface {v6}, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;->getWidthRatio()F

    move-result v6

    goto :goto_49

    :cond_48
    move v6, v7

    :goto_49
    int-to-float v9, v1

    div-float/2addr v9, v5

    mul-float/2addr v9, v6

    .line 52
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 54
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_5e

    sub-int v9, v1, v4

    :cond_5e
    move v13, v9

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_72

    add-int v11, p3, v4

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v12, p4

    move/from16 v14, p6

    move-object/from16 v15, p7

    .line 59
    invoke-virtual/range {v8 .. v15}, Lio/blueflower/stapel2d/gui/ListItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    :cond_72
    add-int/lit8 v13, v13, 0x1

    add-int/2addr v4, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 65
    :cond_78
    iput v1, v0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->lastWidth:I

    return-void
.end method

.method public getHeight(Z)I
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 71
    :goto_3
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1e

    .line 72
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/ListItem;

    invoke-virtual {v3, p1}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const/4 p1, 0x0

    move v3, p1

    move v1, v0

    .line 76
    :goto_21
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_43

    .line 77
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/ListItem;

    .line 78
    instance-of v5, v4, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;

    if-eqz v5, :cond_3d

    .line 79
    check-cast v4, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;

    .line 80
    invoke-interface {v4}, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;->getWidthRatio()F

    move-result v4

    :goto_3b
    add-float/2addr v3, v4

    goto :goto_40

    :cond_3d
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3b

    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_43
    cmpl-float p1, v3, p1

    if-nez p1, :cond_48

    return v0

    :cond_48
    return v2
.end method

.method public onClick(II)V
    .registers 10

    .line 92
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 97
    :goto_6
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_28

    .line 98
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/ListItem;

    .line 99
    instance-of v5, v3, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;

    if-eqz v5, :cond_24

    .line 100
    check-cast v3, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;

    .line 101
    invoke-interface {v3}, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;->getWidthRatio()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_25

    :cond_24
    add-float/2addr v1, v4

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_28
    move v2, v0

    .line 107
    :goto_29
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6f

    .line 108
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/ListItem;

    .line 111
    instance-of v5, v3, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;

    if-eqz v5, :cond_45

    .line 112
    move-object v5, v3

    check-cast v5, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;

    .line 113
    invoke-interface {v5}, Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;->getWidthRatio()F

    move-result v5

    goto :goto_46

    :cond_45
    move v5, v4

    .line 116
    :goto_46
    iget v6, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->lastWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 117
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_5e

    iget v5, p0, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->lastWidth:I

    sub-int/2addr v5, v2

    :cond_5e
    if-lt p1, v2, :cond_69

    add-int v6, v2, v5

    if-ge p1, v6, :cond_69

    sub-int v6, p1, v2

    .line 119
    invoke-virtual {v3, v6, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    :cond_69
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_6f
    return-void
.end method

###### Class info.flowersoft.theotown.ui.listitem.GroupItem.Item (info.flowersoft.theotown.ui.listitem.GroupItem$Item)
.class public interface abstract Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;
.super Ljava/lang/Object;
.source "GroupItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/listitem/GroupItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Item"
.end annotation


# virtual methods
.method public abstract getWidthRatio()F
.end method
