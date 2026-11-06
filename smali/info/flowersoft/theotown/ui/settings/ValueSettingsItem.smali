###### Class info.flowersoft.theotown.ui.settings.ValueSettingsItem (info.flowersoft.theotown.ui.settings.ValueSettingsItem)
.class public Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;
.super Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;
.source "ValueSettingsItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final names:[Ljava/lang/String;

.field public rows:[[I

.field public selection:Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;

.field public final startX:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[TT;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Linfo/flowersoft/theotown/ui/settings/SettingsListbox;",
            "Ljava/lang/Object;",
            "Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 36
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;)V

    .line 37
    iput-object p2, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->names:[Ljava/lang/String;

    .line 38
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->startX:[I

    if-eqz p8, :cond_16

    .line 40
    iput-object p8, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->selection:Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;

    return-void

    .line 42
    :cond_16
    new-instance p1, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$1;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$1;-><init>(Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;)V

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->selection:Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;

    return-void
.end method


# virtual methods
.method public final buildRows(Lio/blueflower/stapel2d/drawing/Font;I)V
    .registers 11

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, -0x10

    .line 59
    new-instance v2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move v4, v3

    .line 61
    :goto_1a
    iget-object v5, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->names:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_44

    .line 62
    aget-object v5, v5, v4

    int-to-float v6, v1

    .line 63
    invoke-virtual {p1, v5}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_34

    .line 64
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    move v1, p2

    :cond_34
    int-to-float v1, v1

    .line 68
    invoke-virtual {p1, v5}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    float-to-int v1, v1

    .line 69
    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 72
    :cond_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[I

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->rows:[[I

    .line 73
    :goto_4c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_63

    .line 74
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->rows:[[I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/IntList;->toArray()[I

    move-result-object p2

    aput-object p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_63
    return-void
.end method

.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 24

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 80
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 81
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 83
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 84
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->rows:[[I

    if-nez v3, :cond_1d

    invoke-virtual {v0, v2, v5}, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->buildRows(Lio/blueflower/stapel2d/drawing/Font;I)V

    .line 86
    :cond_1d
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/lit8 v4, p3, 0x5

    rsub-int/lit8 v3, v3, 0x14

    .line 88
    div-int/lit8 v3, v3, 0x2

    add-int v3, p4, v3

    .line 89
    iget-object v6, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 90
    iget-object v6, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float v4, v4

    int-to-float v8, v3

    invoke-virtual {v1, v2, v6, v4, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    const/4 v4, 0x0

    move v6, v4

    .line 92
    :goto_3b
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->rows:[[I

    array-length v8, v8

    if-ge v6, v8, :cond_a4

    move v8, v4

    move v9, v8

    .line 95
    :goto_42
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->rows:[[I

    aget-object v10, v10, v6

    array-length v11, v10

    if-ge v8, v11, :cond_59

    int-to-float v9, v9

    iget-object v11, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->names:[Ljava/lang/String;

    aget v10, v10, v8

    aget-object v10, v11, v10

    invoke-virtual {v2, v10}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 96
    :cond_59
    array-length v8, v10

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    const/16 v10, 0x8

    mul-int/2addr v8, v10

    add-int/2addr v9, v8

    add-int v8, p3, v5

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x6

    mul-int/lit8 v9, v6, 0x14

    add-int/2addr v9, v3

    move v11, v4

    .line 99
    :goto_6b
    iget-object v12, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->rows:[[I

    aget-object v12, v12, v6

    array-length v13, v12

    if-ge v11, v13, :cond_a1

    .line 100
    aget v12, v12, v11

    .line 101
    iget-object v13, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->names:[Ljava/lang/String;

    aget-object v13, v13, v12

    .line 102
    iget-object v14, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->startX:[I

    sub-int v15, v8, p3

    aput v15, v14, v12

    add-int/2addr v8, v10

    .line 105
    iget-object v14, v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->selection:Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;

    invoke-interface {v14, v12}, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;->isSelected(I)Z

    move-result v12

    if-eqz v12, :cond_8a

    iget-object v12, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_8c

    :cond_8a
    iget-object v12, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    :goto_8c
    invoke-virtual {v1, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 106
    iget-object v12, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    int-to-float v8, v8

    int-to-float v14, v9

    invoke-virtual {v1, v12, v13, v8, v14}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 107
    invoke-virtual {v2, v13}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v12

    int-to-float v13, v10

    add-float/2addr v12, v13

    add-float/2addr v8, v12

    float-to-int v8, v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_6b

    :cond_a1
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 111
    :cond_a4
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 3

    .line 136
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->rows:[[I

    const/16 v0, 0x14

    if-eqz p1, :cond_9

    array-length p1, p1

    mul-int/2addr p1, v0

    return p1

    :cond_9
    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 0
    const v0, 0x7fffffff

    return v0
.end method

.method public onClick(II)V
    .registers 8

    .line 116
    div-int/lit8 v0, p2, 0x14

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->rows:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 117
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->rows:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    .line 118
    :goto_16
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->rows:[[I

    aget-object v3, v3, v0

    array-length v4, v3

    if-ge v1, v4, :cond_2a

    .line 119
    aget v3, v3, v1

    .line 120
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->startX:[I

    aget v4, v4, v3

    if-le v4, p1, :cond_26

    goto :goto_2a

    :cond_26
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_16

    .line 123
    :cond_2a
    :goto_2a
    iput v2, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->selection:Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;

    invoke-interface {v0, v2}, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;->select(I)V

    .line 126
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->onClick(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.ValueSettingsItem.AnonymousClass1 (info.flowersoft.theotown.ui.settings.ValueSettingsItem$1)
.class Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$1;
.super Ljava/lang/Object;
.source "ValueSettingsItem.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$1;->this$0:Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSelected(I)Z
    .registers 3

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$1;->this$0:Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;

    iget v0, v0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public select(I)V
    .registers 3

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$1;->this$0:Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;

    iput p1, v0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.ValueSettingsItem.Selection (info.flowersoft.theotown.ui.settings.ValueSettingsItem$Selection)
.class public interface abstract Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;
.super Ljava/lang/Object;
.source "ValueSettingsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Selection"
.end annotation


# virtual methods
.method public abstract isSelected(I)Z
.end method

.method public abstract select(I)V
.end method
