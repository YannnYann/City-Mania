###### Class info.flowersoft.theotown.ui.CursorStyle (info.flowersoft.theotown.ui.CursorStyle)
.class public final enum Linfo/flowersoft/theotown/ui/CursorStyle;
.super Ljava/lang/Enum;
.source "CursorManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/ui/CursorStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/ui/CursorStyle;

.field public static final enum Aurora:Linfo/flowersoft/theotown/ui/CursorStyle;

.field public static final enum Blue:Linfo/flowersoft/theotown/ui/CursorStyle;

.field public static final enum CityLights:Linfo/flowersoft/theotown/ui/CursorStyle;

.field public static final enum Cyberpunk:Linfo/flowersoft/theotown/ui/CursorStyle;

.field public static final enum Dark:Linfo/flowersoft/theotown/ui/CursorStyle;

.field public static final enum Default:Linfo/flowersoft/theotown/ui/CursorStyle;

.field public static final enum Gold:Linfo/flowersoft/theotown/ui/CursorStyle;

.field public static final enum Steampunk:Linfo/flowersoft/theotown/ui/CursorStyle;


# instance fields
.field public final darkPalette:Linfo/flowersoft/theotown/ui/CursorPalette;

.field public final palette:Linfo/flowersoft/theotown/ui/CursorPalette;


# direct methods
.method public static final synthetic $values()[Linfo/flowersoft/theotown/ui/CursorStyle;
    .registers 8

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->Default:Linfo/flowersoft/theotown/ui/CursorStyle;

    sget-object v1, Linfo/flowersoft/theotown/ui/CursorStyle;->Dark:Linfo/flowersoft/theotown/ui/CursorStyle;

    sget-object v2, Linfo/flowersoft/theotown/ui/CursorStyle;->Blue:Linfo/flowersoft/theotown/ui/CursorStyle;

    sget-object v3, Linfo/flowersoft/theotown/ui/CursorStyle;->Gold:Linfo/flowersoft/theotown/ui/CursorStyle;

    sget-object v4, Linfo/flowersoft/theotown/ui/CursorStyle;->CityLights:Linfo/flowersoft/theotown/ui/CursorStyle;

    sget-object v5, Linfo/flowersoft/theotown/ui/CursorStyle;->Aurora:Linfo/flowersoft/theotown/ui/CursorStyle;

    sget-object v6, Linfo/flowersoft/theotown/ui/CursorStyle;->Steampunk:Linfo/flowersoft/theotown/ui/CursorStyle;

    sget-object v7, Linfo/flowersoft/theotown/ui/CursorStyle;->Cyberpunk:Linfo/flowersoft/theotown/ui/CursorStyle;

    filled-new-array/range {v0 .. v7}, [Linfo/flowersoft/theotown/ui/CursorStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 10

    .line 66
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorStyle;

    new-instance v1, Linfo/flowersoft/theotown/ui/CursorPalette;

    .line 67
    const-string v2, "000000"

    invoke-static {v2}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    const-string v4, "fromHexRGB(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-string v5, "cccccc"

    invoke-static {v5}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-string v7, "ffffff"

    invoke-static {v7}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v9, "7e858c"

    invoke-static {v9}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {v1, v3, v6, v8, v9}, Linfo/flowersoft/theotown/ui/CursorPalette;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    const-string v3, "Default"

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6, v1}, Linfo/flowersoft/theotown/ui/CursorStyle;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/ui/CursorPalette;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->Default:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorStyle;

    new-instance v1, Linfo/flowersoft/theotown/ui/CursorPalette;

    .line 73
    invoke-static {v2}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const-string v6, "333333"

    invoke-static {v6}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {v7}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {v5}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {v1, v3, v6, v7, v5}, Linfo/flowersoft/theotown/ui/CursorPalette;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    const-string v3, "Dark"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1}, Linfo/flowersoft/theotown/ui/CursorStyle;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/ui/CursorPalette;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->Dark:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 78
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorStyle;

    new-instance v1, Linfo/flowersoft/theotown/ui/CursorPalette;

    .line 79
    invoke-static {v2}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const-string v5, "1885B4"

    invoke-static {v5}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const-string v6, "8CFFFF"

    invoke-static {v6}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const-string v7, "001241"

    invoke-static {v7}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {v1, v3, v5, v6, v7}, Linfo/flowersoft/theotown/ui/CursorPalette;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    const-string v3, "Blue"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1}, Linfo/flowersoft/theotown/ui/CursorStyle;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/ui/CursorPalette;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->Blue:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 84
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorStyle;

    new-instance v1, Linfo/flowersoft/theotown/ui/CursorPalette;

    .line 85
    invoke-static {v2}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const-string v5, "FFE514"

    invoke-static {v5}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const-string v6, "FFFAB6"

    invoke-static {v6}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v7, "AA8B02"

    invoke-static {v7}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {v1, v3, v5, v6, v7}, Linfo/flowersoft/theotown/ui/CursorPalette;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    const-string v3, "Gold"

    const/4 v5, 0x3

    invoke-direct {v0, v3, v5, v1}, Linfo/flowersoft/theotown/ui/CursorStyle;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/ui/CursorPalette;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->Gold:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 90
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorStyle;

    new-instance v1, Linfo/flowersoft/theotown/ui/CursorPalette;

    .line 91
    invoke-static {v2}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-string v5, "FFD700"

    invoke-static {v5}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const-string v6, "FF4500"

    invoke-static {v6}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-string v7, "1E90FF"

    invoke-static {v7}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {v1, v3, v5, v6, v7}, Linfo/flowersoft/theotown/ui/CursorPalette;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    const-string v3, "CityLights"

    const/4 v5, 0x4

    invoke-direct {v0, v3, v5, v1}, Linfo/flowersoft/theotown/ui/CursorStyle;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/ui/CursorPalette;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->CityLights:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 96
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorStyle;

    new-instance v1, Linfo/flowersoft/theotown/ui/CursorPalette;

    .line 97
    invoke-static {v2}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const-string v5, "8A2BE2"

    invoke-static {v5}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    const-string v6, "00FF7F"

    invoke-static {v6}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const-string v7, "FF1493"

    invoke-static {v7}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {v1, v3, v5, v6, v7}, Linfo/flowersoft/theotown/ui/CursorPalette;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    const-string v3, "Aurora"

    const/4 v5, 0x5

    invoke-direct {v0, v3, v5, v1}, Linfo/flowersoft/theotown/ui/CursorStyle;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/ui/CursorPalette;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->Aurora:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 102
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorStyle;

    new-instance v1, Linfo/flowersoft/theotown/ui/CursorPalette;

    .line 103
    invoke-static {v2}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    const-string v5, "A0522D"

    invoke-static {v5}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const-string v6, "D2B48C"

    invoke-static {v6}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const-string v7, "708090"

    invoke-static {v7}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {v1, v3, v5, v6, v7}, Linfo/flowersoft/theotown/ui/CursorPalette;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    const-string v3, "Steampunk"

    const/4 v5, 0x6

    invoke-direct {v0, v3, v5, v1}, Linfo/flowersoft/theotown/ui/CursorStyle;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/ui/CursorPalette;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->Steampunk:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 108
    new-instance v0, Linfo/flowersoft/theotown/ui/CursorStyle;

    new-instance v1, Linfo/flowersoft/theotown/ui/CursorPalette;

    .line 109
    invoke-static {v2}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const-string v3, "00FFFF"

    invoke-static {v3}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    const-string v5, "FF00FF"

    invoke-static {v5}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const-string v6, "FFFF00"

    invoke-static {v6}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {v1, v2, v3, v5, v6}, Linfo/flowersoft/theotown/ui/CursorPalette;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    const-string v2, "Cyberpunk"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Linfo/flowersoft/theotown/ui/CursorStyle;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/ui/CursorPalette;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->Cyberpunk:Linfo/flowersoft/theotown/ui/CursorStyle;

    invoke-static {}, Linfo/flowersoft/theotown/ui/CursorStyle;->$values()[Linfo/flowersoft/theotown/ui/CursorStyle;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->$VALUES:[Linfo/flowersoft/theotown/ui/CursorStyle;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILinfo/flowersoft/theotown/ui/CursorPalette;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/CursorPalette;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/CursorStyle;->palette:Linfo/flowersoft/theotown/ui/CursorPalette;

    const p1, 0x3f333333    # 0.7f

    .line 115
    invoke-static {p1, p3}, Linfo/flowersoft/theotown/ui/CursorManagerKt;->times(FLinfo/flowersoft/theotown/ui/CursorPalette;)Linfo/flowersoft/theotown/ui/CursorPalette;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/CursorStyle;->darkPalette:Linfo/flowersoft/theotown/ui/CursorPalette;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Linfo/flowersoft/theotown/ui/CursorStyle;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/CursorStyle;
    .registers 2

    .line 0
    const-class v0, Linfo/flowersoft/theotown/ui/CursorStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/ui/CursorStyle;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/ui/CursorStyle;
    .registers 1

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->$VALUES:[Linfo/flowersoft/theotown/ui/CursorStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/ui/CursorStyle;

    return-object v0
.end method


# virtual methods
.method public final getDarkPalette()Linfo/flowersoft/theotown/ui/CursorPalette;
    .registers 2

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorStyle;->darkPalette:Linfo/flowersoft/theotown/ui/CursorPalette;

    return-object v0
.end method

.method public final getPalette()Linfo/flowersoft/theotown/ui/CursorPalette;
    .registers 2

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/CursorStyle;->palette:Linfo/flowersoft/theotown/ui/CursorPalette;

    return-object v0
.end method
