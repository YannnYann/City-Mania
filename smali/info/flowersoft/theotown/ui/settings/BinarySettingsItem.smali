###### Class info.flowersoft.theotown.ui.settings.BinarySettingsItem (info.flowersoft.theotown.ui.settings.BinarySettingsItem)
.class public Linfo/flowersoft/theotown/ui/settings/BinarySettingsItem;
.super Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;
.source "BinarySettingsItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;)V
    .registers 15

    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0, v1}, [Ljava/lang/Boolean;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;ZLinfo/flowersoft/theotown/ui/settings/SettingsListbox;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 12

    .line 16
    invoke-super/range {p0 .. p7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    move-object p1, p0

    .line 18
    iget p2, p1, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    if-lez p2, :cond_b

    iget p2, p7, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    goto :goto_d

    :cond_b
    iget p2, p7, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    .line 19
    :goto_d
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 20
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, p2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 21
    iget-object v2, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v3, p7, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    add-int/2addr p3, p5

    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, -0x5

    int-to-float p3, p3

    sub-int/2addr p6, v1

    div-int/lit8 p6, p6, 0x2

    add-int/2addr p4, p6

    int-to-float p4, p4

    invoke-virtual {v2, v3, p3, p4, p2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 23
    iget-object p2, p7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getPaddingRight()I
    .registers 3

    .line 28
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 40
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public onClick(II)V
    .registers 4

    .line 33
    iget v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->selectedValue:I

    .line 35
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox$SettingsItem;->onClick(II)V

    return-void
.end method
