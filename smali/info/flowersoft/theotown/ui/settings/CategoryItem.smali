###### Class info.flowersoft.theotown.ui.settings.CategoryItem (info.flowersoft.theotown.ui.settings.CategoryItem)
.class public Linfo/flowersoft/theotown/ui/settings/CategoryItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "CategoryItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;
    }
.end annotation


# instance fields
.field public final icon:I

.field public open:Z

.field public rtl:Z

.field public final settingsListbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/settings/SettingsListbox;ILjava/lang/String;ZZ)V
    .registers 6

    .line 17
    invoke-direct {p0, p3}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 18
    iput p2, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->icon:I

    .line 19
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->settingsListbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    .line 20
    iput-boolean p4, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->open:Z

    .line 21
    iput-boolean p5, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->rtl:Z

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 18

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 34
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 36
    iget-object v2, v7, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 37
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 39
    iget-boolean p1, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->rtl:Z

    if-eqz p1, :cond_23

    .line 40
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    add-int p2, p3, p5

    add-int/lit8 p2, p2, -0x1a

    int-to-float p2, p2

    int-to-float v5, p4

    iget v8, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->icon:I

    invoke-virtual {v1, p1, p2, v5, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_2c

    .line 42
    :cond_23
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float p2, p3

    int-to-float v5, p4

    iget v8, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->icon:I

    invoke-virtual {v1, p1, p2, v5, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 45
    :goto_2c
    iget-boolean p1, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->open:Z

    if-eqz p1, :cond_33

    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_35

    :cond_33
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    :goto_35
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 47
    iget-object v3, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    add-int/2addr p3, v6

    add-int/lit8 p3, p3, 0x5

    int-to-float p1, p3

    int-to-float v5, p4

    mul-int/lit8 p2, v6, 0x2

    sub-int p2, p5, p2

    add-int/lit8 p2, p2, -0xa

    int-to-float p2, p2

    int-to-float v7, v6

    .line 51
    iget-boolean p3, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->rtl:Z

    if-eqz p3, :cond_4f

    const/high16 p3, 0x3f800000    # 1.0f

    :goto_4d
    move v8, p3

    goto :goto_51

    :cond_4f
    const/4 p3, 0x0

    goto :goto_4d

    :goto_51
    const/high16 v9, 0x3f000000    # 0.5f

    move v4, p1

    move v6, p2

    .line 47
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 54
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x1a

    return p1
.end method

.method public isOpen()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->open:Z

    return v0
.end method

.method public onClick(II)V
    .registers 6

    .line 64
    iget-boolean p1, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->open:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->open:Z

    const/4 p1, 0x0

    move v0, p1

    .line 66
    :goto_8
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->settingsListbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v1

    if-ge p1, v1, :cond_28

    .line 67
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->settingsListbox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v1

    if-eqz v0, :cond_21

    .line 69
    instance-of v2, v1, Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;

    if-eqz v2, :cond_28

    .line 70
    iget-boolean v2, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->open:Z

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/ListItem;->setVisible(Z)V

    :cond_21
    if-ne v1, p0, :cond_26

    add-int/lit8 p1, p1, 0x1

    move v0, p2

    :cond_26
    add-int/2addr p1, p2

    goto :goto_8

    :cond_28
    return-void
.end method

.method public setOpen(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/settings/CategoryItem;->open:Z

    return-void
.end method

###### Class info.flowersoft.theotown.ui.settings.CategoryItem.CollapsableSettingsItem (info.flowersoft.theotown.ui.settings.CategoryItem$CollapsableSettingsItem)
.class public interface abstract Linfo/flowersoft/theotown/ui/settings/CategoryItem$CollapsableSettingsItem;
.super Ljava/lang/Object;
.source "CategoryItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/settings/CategoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CollapsableSettingsItem"
.end annotation


# virtual methods
.method public abstract getWidth()I
.end method
