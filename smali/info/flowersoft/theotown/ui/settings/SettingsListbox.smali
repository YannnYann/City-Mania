###### Class info.flowersoft.theotown.ui.settings.SettingsListbox (info.flowersoft.theotown.ui.settings.SettingsListbox)
.class public Linfo/flowersoft/theotown/ui/settings/SettingsListbox;
.super Lio/blueflower/stapel2d/gui/ListBox;
.source "SettingsListbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;,
        Linfo/flowersoft/theotown/ui/settings/SettingsListbox$EmptyListItem;,
        Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;
    }
.end annotation


# instance fields
.field public rebuildRunner:Ljava/lang/Runnable;

.field public final rtl:Z

.field public targetObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ZIIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 13

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 29
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 30
    iput-boolean p1, v0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->rtl:Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;)Lio/blueflower/stapel2d/gui/Skin;
    .registers 1

    .line 21
    iget-object p0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    return-object p0
.end method


# virtual methods
.method public addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V
    .registers 13

    .line 238
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$2;

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->targetObject:Ljava/lang/Object;

    move-object v5, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$2;-><init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addCategory(ILjava/lang/String;)V
    .registers 9

    .line 203
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;

    const/4 v4, 0x0

    iget-boolean v5, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->rtl:Z

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/settings/CategoryItem;-><init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;ILjava/lang/String;ZZ)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 204
    new-instance p1, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$EmptyListItem;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$EmptyListItem;-><init>(I)V

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addChoiceSettingsItem(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 190
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/ChoiceSettingsItem;

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->targetObject:Ljava/lang/Object;

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->rebuildRunner:Ljava/lang/Runnable;

    move-object v4, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/settings/ChoiceSettingsItem;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addEditableTextItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 177
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addEditableTextItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public addEditableTextItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V
    .registers 17

    .line 181
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$1;

    iget-object v7, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->targetObject:Ljava/lang/Object;

    move-object v6, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$1;-><init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addHotkeyItem(Linfo/flowersoft/theotown/input/KeyAction;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 5

    .line 161
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;

    invoke-direct {v0, p0, p1, p2, p3}, Linfo/flowersoft/theotown/ui/settings/HotkeySettingsItem;-><init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Linfo/flowersoft/theotown/input/KeyAction;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addLink(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 173
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->targetObject:Ljava/lang/Object;

    invoke-direct {v0, p1, p0, v1, p2}, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addSettingsInfoItem(Ljava/lang/String;)V
    .registers 5

    .line 165
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->targetObject:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addSettingsInfoItem(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 9

    .line 169
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->targetObject:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/settings/SettingsInfoItem;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Ljava/lang/Runnable;Lio/blueflower/stapel2d/drawing/Color;)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;ZLinfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z",
            "Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;",
            ")V"
        }
    .end annotation

    .line 262
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;

    const/4 v4, 0x0

    iget-object v7, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->targetObject:Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v6, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[TT;",
            "Ljava/lang/reflect/Field;",
            "Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 248
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[TT;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 252
    new-instance v0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$3;

    iget-object v8, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->targetObject:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v7, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$3;-><init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public closeCategories()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_2
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 127
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v2

    .line 128
    instance-of v3, v2, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;

    if-eqz v3, :cond_13

    .line 129
    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/gui/ListItem;->setVisible(Z)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    return-void
.end method

.method public getTargetObject()Ljava/lang/Object;
    .registers 2

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->targetObject:Ljava/lang/Object;

    return-object v0
.end method

.method public mergeItems()V
    .registers 13

    .line 34
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 35
    :goto_6
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v3

    if-ge v2, v3, :cond_88

    .line 36
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 37
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1e

    invoke-virtual {p0, v4}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v5

    goto :goto_1f

    :cond_1e
    move-object v5, v6

    .line 38
    :goto_1f
    instance-of v7, v3, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;

    if-eqz v7, :cond_85

    .line 39
    move-object v7, v3

    check-cast v7, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;

    .line 40
    instance-of v8, v5, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;

    if-eqz v8, :cond_2e

    move-object v8, v5

    check-cast v8, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;

    goto :goto_2f

    :cond_2e
    move-object v8, v6

    .line 42
    :goto_2f
    invoke-interface {v7}, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;->getWidth()I

    move-result v9

    div-int/lit8 v10, v0, 0x2

    if-gt v9, v10, :cond_39

    if-eqz v8, :cond_53

    :cond_39
    invoke-interface {v7}, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;->getWidth()I

    move-result v9

    if-gt v9, v10, :cond_5f

    if-eqz v8, :cond_5f

    invoke-interface {v8}, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-gt v9, v0, :cond_53

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v9

    invoke-virtual {v5, v1}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v11

    if-eq v9, v11, :cond_5f

    .line 43
    :cond_53
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->removeItemIndex(I)V

    .line 45
    new-instance v5, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;

    invoke-direct {v5, v3, v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;-><init>(Lio/blueflower/stapel2d/gui/ListItem;Lio/blueflower/stapel2d/gui/ListItem;)V

    invoke-super {p0, v5, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;I)V

    goto :goto_85

    .line 46
    :cond_5f
    invoke-interface {v7}, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;->getWidth()I

    move-result v6

    if-gt v6, v10, :cond_85

    if-eqz v8, :cond_85

    invoke-interface {v8}, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;->getWidth()I

    move-result v6

    if-gt v6, v10, :cond_85

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v6

    invoke-virtual {v5, v1}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result v7

    if-ne v6, v7, :cond_85

    .line 47
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->removeItemIndex(I)V

    .line 48
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->removeItemIndex(I)V

    .line 50
    new-instance v6, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;

    invoke-direct {v6, v3, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;-><init>(Lio/blueflower/stapel2d/gui/ListItem;Lio/blueflower/stapel2d/gui/ListItem;)V

    invoke-super {p0, v6, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;I)V

    :cond_85
    :goto_85
    move v2, v4

    goto/16 :goto_6

    :cond_88
    const/4 v0, -0x1

    move v3, v0

    move v2, v1

    .line 56
    :goto_8b
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v4

    if-ge v2, v4, :cond_bd

    .line 57
    invoke-virtual {p0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v4

    instance-of v4, v4, Linfo/flowersoft/theotown/ui/settings/CategoryItem;

    if-eqz v4, :cond_ba

    if-le v3, v0, :cond_b9

    .line 59
    new-instance v4, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$EmptyListItem;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$EmptyListItem;-><init>(I)V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;I)V

    .line 60
    rem-int/lit8 v3, v3, 0x2

    rem-int/lit8 v4, v5, 0x2

    if-ne v3, v4, :cond_b8

    .line 61
    new-instance v3, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$EmptyListItem;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$EmptyListItem;-><init>(I)V

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v3, v5}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;I)V

    goto :goto_b9

    :cond_b8
    move v2, v5

    :cond_b9
    :goto_b9
    move v3, v2

    :cond_ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    :cond_bd
    return-void
.end method

.method public rebuild()V
    .registers 2

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->rebuildRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public restoreCategories([Z)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_2f

    :cond_3
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 137
    :goto_5
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 138
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v2

    .line 139
    instance-of v3, v2, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;

    if-eqz v3, :cond_1c

    .line 140
    array-length v3, p1

    if-ge v0, v3, :cond_2c

    .line 141
    aget-boolean v3, p1, v0

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/ListItem;->setVisible(Z)V

    goto :goto_2c

    .line 143
    :cond_1c
    instance-of v3, v2, Linfo/flowersoft/theotown/ui/settings/CategoryItem;

    if-eqz v3, :cond_2c

    add-int/lit8 v0, v0, 0x1

    .line 145
    array-length v3, p1

    if-ge v0, v3, :cond_2c

    .line 146
    check-cast v2, Linfo/flowersoft/theotown/ui/settings/CategoryItem;

    aget-boolean v3, p1, v0

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->setOpen(Z)V

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    :goto_2f
    return-void
.end method

.method public setRebuildFunction(Ljava/lang/Runnable;)V
    .registers 2

    .line 195
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->rebuildRunner:Ljava/lang/Runnable;

    return-void
.end method

.method public setTargetObject(Ljava/lang/Object;)V
    .registers 2

    .line 157
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->targetObject:Ljava/lang/Object;

    return-void
.end method

.method public storeCategories()[Z
    .registers 4

    .line 114
    new-instance v0, Lcom/badlogic/gdx/utils/BooleanArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/BooleanArray;-><init>()V

    const/4 v1, 0x0

    .line 116
    :goto_6
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 117
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v2

    instance-of v2, v2, Linfo/flowersoft/theotown/ui/settings/CategoryItem;

    if-eqz v2, :cond_21

    .line 118
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/ui/settings/CategoryItem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->isOpen()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/BooleanArray;->add(Z)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 122
    :cond_24
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/BooleanArray;->toArray()[Z

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.settings.SettingsListbox.AnonymousClass1 (info.flowersoft.theotown.ui.settings.SettingsListbox$1)
.class Linfo/flowersoft/theotown/ui/settings/SettingsListbox$1;
.super Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;
.source "SettingsListbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addEditableTextItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

.field public final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 181
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$1;->this$0:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$1;->val$onClick:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/settings/EditableTextSettingsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 2

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$1;->val$onClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.SettingsListbox.AnonymousClass2 (info.flowersoft.theotown.ui.settings.SettingsListbox$2)
.class Linfo/flowersoft/theotown/ui/settings/SettingsListbox$2;
.super Linfo/flowersoft/theotown/ui/settings/BinarySettingsItem;
.source "SettingsListbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

.field public final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 238
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$2;->this$0:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$2;->val$onClick:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/settings/BinarySettingsItem;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .registers 3

    .line 241
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/settings/BinarySettingsItem;->onClick(II)V

    .line 242
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$2;->val$onClick:Ljava/lang/Runnable;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.SettingsListbox.AnonymousClass3 (info.flowersoft.theotown.ui.settings.SettingsListbox$3)
.class Linfo/flowersoft/theotown/ui/settings/SettingsListbox$3;
.super Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;
.source "SettingsListbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

.field public final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;Ljava/lang/Runnable;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 252
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$3;->this$0:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$3;->val$onClick:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem$Selection;)V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .registers 3

    .line 255
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/settings/ValueSettingsItem;->onClick(II)V

    .line 256
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$3;->val$onClick:Ljava/lang/Runnable;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.SettingsListbox.EmptyListItem (info.flowersoft.theotown.ui.settings.SettingsListbox$EmptyListItem)
.class Linfo/flowersoft/theotown/ui/settings/SettingsListbox$EmptyListItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "SettingsListbox.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/settings/SettingsListbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyListItem"
.end annotation


# instance fields
.field public final height:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 212
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 213
    iput p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$EmptyListItem;->height:I

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 8

    .line 0
    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 224
    iget p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$EmptyListItem;->height:I

    return p1
.end method

.method public getWidth()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.ui.settings.SettingsListbox.MergedItem (info.flowersoft.theotown.ui.settings.SettingsListbox$MergedItem)
.class Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "SettingsListbox.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/settings/SettingsListbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MergedItem"
.end annotation


# instance fields
.field public item0:Lio/blueflower/stapel2d/gui/ListItem;

.field public item1:Lio/blueflower/stapel2d/gui/ListItem;

.field public lastWidth:I


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gui/ListItem;Lio/blueflower/stapel2d/gui/ListItem;)V
    .registers 4

    .line 74
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;->item0:Lio/blueflower/stapel2d/gui/ListItem;

    .line 76
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;->item1:Lio/blueflower/stapel2d/gui/ListItem;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 18

    .line 81
    iput p5, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;->lastWidth:I

    .line 83
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;->item0:Lio/blueflower/stapel2d/gui/ListItem;

    div-int/lit8 v9, p5, 0x2

    sub-int v2, p5, v9

    add-int/lit8 v6, v2, -0x5

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lio/blueflower/stapel2d/gui/ListItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    add-int/lit8 v2, p2, 0x1

    add-int/2addr p3, p5

    sub-int/2addr p3, v9

    add-int/lit8 v3, p3, -0x5

    const/4 v5, 0x5

    const/4 v1, 0x0

    move-object v0, p0

    move v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 84
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 86
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;->item1:Lio/blueflower/stapel2d/gui/ListItem;

    if-eqz v2, :cond_37

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p6

    move v7, v9

    move-object/from16 v9, p7

    .line 87
    invoke-virtual/range {v2 .. v9}, Lio/blueflower/stapel2d/gui/ListItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    return-void

    :cond_37
    move v5, p3

    move v7, v9

    const/4 v3, 0x0

    move-object v2, p0

    move v4, p2

    move v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 89
    invoke-virtual/range {v2 .. v9}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 3

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;->item0:Lio/blueflower/stapel2d/gui/ListItem;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/ListItem;->getHeight(Z)I

    move-result p1

    return p1
.end method

.method public getWidth()I
    .registers 2

    .line 0
    const v0, 0x7fffffff

    return v0
.end method

.method public onClick(II)V
    .registers 5

    .line 95
    iget v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;->lastWidth:I

    div-int/lit8 v1, v0, 0x2

    if-gt p1, v1, :cond_c

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;->item0:Lio/blueflower/stapel2d/gui/ListItem;

    invoke-virtual {v0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    return-void

    .line 97
    :cond_c
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$MergedItem;->item1:Lio/blueflower/stapel2d/gui/ListItem;

    if-eqz v1, :cond_16

    .line 98
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    :cond_16
    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.SettingsListbox.SettingsItem (info.flowersoft.theotown.ui.settings.SettingsListbox$SettingsItem)
.class public abstract Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "SettingsListbox.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/settings/SettingsListbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SettingsItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/blueflower/stapel2d/gui/ListItem;",
        "Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;"
    }
.end annotation


# instance fields
.field public attribute:Ljava/lang/reflect/Field;

.field public lastSelectedValue:I

.field public listbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

.field public needsRebuild:Z

.field public selectedValue:I

.field public final targetObject:Ljava/lang/Object;

.field public values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[TT;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Linfo/flowersoft/theotown/ui/settings/SettingsListbox;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 282
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 283
    iput-object p5, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->listbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    .line 284
    iput-object p6, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->targetObject:Ljava/lang/Object;

    .line 285
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->attribute:Ljava/lang/reflect/Field;

    const/4 p1, 0x0

    .line 287
    iput p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    .line 288
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p2, :cond_23

    .line 290
    :goto_12
    array-length p5, p2

    if-ge p1, p5, :cond_23

    .line 291
    aget-object p5, p2, p1

    invoke-static {p5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_20

    .line 292
    iput p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    goto :goto_23

    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 297
    :cond_23
    :goto_23
    iget p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    iput p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->lastSelectedValue:I

    .line 299
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->values:[Ljava/lang/Object;

    .line 300
    iput-boolean p4, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->needsRebuild:Z

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 16

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 305
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 307
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p2, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 308
    iget-object p2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 309
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->getPaddingLeft()I

    move-result p3

    add-int/2addr p3, v3

    sub-int p6, v6, p2

    .line 310
    div-int/lit8 p6, p6, 0x2

    add-int p4, v4, p6

    .line 311
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->getPaddingLeft()I

    move-result p2

    sub-int p5, v5, p2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->getPaddingRight()I

    move-result p2

    sub-int/2addr p5, p2

    .line 312
    iget-object p2, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 313
    iget-object p6, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2, p6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-gt p1, p5, :cond_4a

    .line 316
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p5, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {p2, p1, p5, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    goto :goto_5e

    :cond_4a
    int-to-float p5, p5

    int-to-float p1, p1

    div-float/2addr p5, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 318
    invoke-virtual {p2, p5, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 319
    iget-object p5, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p6, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {p2, p5, p6, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 320
    invoke-virtual {p2, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 323
    :goto_5e
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->attribute:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 373
    :cond_6
    :try_start_6
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->targetObject:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x14

    return p1
.end method

.method public getPaddingLeft()I
    .registers 2

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 341
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->listbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->access$000(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;)Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onClick(II)V
    .registers 5

    .line 346
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 348
    iget p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    iput p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->lastSelectedValue:I

    .line 349
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->listbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gui/Master;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->listbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Master;->informAboutClickOn(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 351
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->values:[Ljava/lang/Object;

    if-eqz p1, :cond_1f

    .line 352
    iget p2, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->set(Ljava/lang/Object;)V

    .line 355
    :cond_1f
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->attribute:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_41

    .line 356
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-interface {p2, v1, p1, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_41
    iget-boolean p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->needsRebuild:Z

    if-eqz p1, :cond_4a

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->listbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->rebuild()V

    :cond_4a
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->attribute:Ljava/lang/reflect/Field;

    if-nez v0, :cond_5

    goto :goto_f

    .line 364
    :cond_5
    :try_start_5
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->targetObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    return-void
.end method
