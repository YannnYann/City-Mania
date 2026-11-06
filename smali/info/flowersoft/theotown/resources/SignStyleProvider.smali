###### Class info.flowersoft.theotown.resources.SignStyleProvider (info.flowersoft.theotown.resources.SignStyleProvider)
.class public Linfo/flowersoft/theotown/resources/SignStyleProvider;
.super Ljava/lang/Object;
.source "SignStyleProvider.java"


# static fields
.field public static final COLORS:[Lio/blueflower/stapel2d/drawing/Color;

.field public static final FONTS:[Lio/blueflower/stapel2d/drawing/Font;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    filled-new-array {v1, v2, v0}, [Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/SignStyleProvider;->FONTS:[Lio/blueflower/stapel2d/drawing/Font;

    .line 15
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    const/16 v2, 0x64

    .line 17
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Color;->enlighted(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->PURPLE:Lio/blueflower/stapel2d/drawing/Color;

    .line 18
    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/drawing/Color;->enlighted(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    .line 19
    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/drawing/Color;->enlighted(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v4

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->TURQUOISE:Lio/blueflower/stapel2d/drawing/Color;

    .line 20
    invoke-virtual {v5, v2}, Lio/blueflower/stapel2d/drawing/Color;->enlighted(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    .line 21
    invoke-virtual {v6, v2}, Lio/blueflower/stapel2d/drawing/Color;->enlighted(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    move-object v2, v0

    filled-new-array/range {v1 .. v7}, [Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/SignStyleProvider;->COLORS:[Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method
