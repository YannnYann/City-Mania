###### Class info.flowersoft.theotown.drawing.TSMapStyle (info.flowersoft.theotown.drawing.TSMapStyle)
.class public final Linfo/flowersoft/theotown/drawing/TSMapStyle;
.super Ljava/lang/Object;
.source "TSMapStyle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTSMapStyle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TSMapStyle.kt\ninfo/flowersoft/theotown/drawing/TSMapStyle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;

.field public static final DARK:Linfo/flowersoft/theotown/drawing/TSMapStyle;

.field public static final LIGHT:Linfo/flowersoft/theotown/drawing/TSMapStyle;


# instance fields
.field public final backgroundColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final gridColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final landmarkTintColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final mapColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final mapTintColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final neighborColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final neighborInactiveColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final neighborNameColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final routeTintColor:Lio/blueflower/stapel2d/drawing/Color;

.field public routeTintFactor:F

.field public final stationColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final stationInactiveColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final waterColor:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    new-instance v0, Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->Companion:Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;

    .line 25
    new-instance v2, Linfo/flowersoft/theotown/drawing/TSMapStyle;

    const/16 v16, 0x1fff

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v2 .. v17}, Linfo/flowersoft/theotown/drawing/TSMapStyle;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Linfo/flowersoft/theotown/drawing/TSMapStyle;->LIGHT:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    .line 27
    new-instance v4, Lio/blueflower/stapel2d/drawing/Color;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v0, v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    .line 28
    new-instance v5, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v0, 0x12

    invoke-direct {v5, v0, v0, v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    .line 29
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    const/16 v0, 0x28

    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "apply(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v11, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v0, 0xff

    invoke-direct {v11, v0, v0, v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    .line 31
    new-instance v13, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v13, v0, v0, v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    .line 32
    new-instance v14, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v1, 0x14

    invoke-direct {v14, v0, v0, v0, v1}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    .line 33
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v0, v0, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    .line 26
    new-instance v3, Linfo/flowersoft/theotown/drawing/TSMapStyle;

    const/4 v12, 0x0

    const/16 v17, 0x974

    const/16 v18, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v3 .. v18}, Linfo/flowersoft/theotown/drawing/TSMapStyle;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Linfo/flowersoft/theotown/drawing/TSMapStyle;->DARK:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 15

    const-string v0, "backgroundColor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapColor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapTintColor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "waterColor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neighborColor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neighborInactiveColor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neighborNameColor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routeTintColor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stationColor"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stationInactiveColor"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landmarkTintColor"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gridColor"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->backgroundColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 11
    iput-object p2, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 12
    iput-object p3, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->mapTintColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 13
    iput-object p4, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->waterColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 14
    iput-object p5, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->neighborColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 15
    iput-object p6, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->neighborInactiveColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 16
    iput-object p7, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->neighborNameColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 17
    iput-object p8, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->routeTintColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 18
    iput p9, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->routeTintFactor:F

    .line 19
    iput-object p10, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->stationColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 20
    iput-object p11, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->stationInactiveColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 21
    iput-object p12, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->landmarkTintColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 22
    iput-object p13, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->gridColor:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public synthetic constructor <init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 32

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_e

    .line 10
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v2, 0x3c

    invoke-direct {v1, v2, v2, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    goto :goto_10

    :cond_e
    move-object/from16 v1, p1

    :goto_10
    and-int/lit8 v2, v0, 0x2

    const/16 v3, 0xff

    if-eqz v2, :cond_1c

    .line 11
    new-instance v2, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v2, v3, v3, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    goto :goto_1e

    :cond_1c
    move-object/from16 v2, p2

    :goto_1e
    and-int/lit8 v4, v0, 0x4

    const/16 v5, 0x1e

    if-eqz v4, :cond_2a

    .line 12
    new-instance v4, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v4, v3, v3, v3, v5}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    goto :goto_2c

    :cond_2a
    move-object/from16 v4, p3

    :goto_2c
    and-int/lit8 v6, v0, 0x8

    const/16 v7, 0x50

    if-eqz v6, :cond_41

    .line 13
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/drawing/Color;->setAlpha(I)V

    const-string v8, "apply(...)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_43

    :cond_41
    move-object/from16 v6, p4

    :goto_43
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4d

    .line 14
    new-instance v8, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v8, v3, v3, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    goto :goto_4f

    :cond_4d
    move-object/from16 v8, p5

    :goto_4f
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5b

    .line 15
    new-instance v9, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v10, 0x64

    invoke-direct {v9, v3, v3, v3, v10}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    goto :goto_5d

    :cond_5b
    move-object/from16 v9, p6

    :goto_5d
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_67

    .line 16
    new-instance v10, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v10, v3, v3, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    goto :goto_69

    :cond_67
    move-object/from16 v10, p7

    :goto_69
    and-int/lit16 v11, v0, 0x80

    const/4 v12, 0x0

    if-eqz v11, :cond_74

    .line 17
    new-instance v11, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v11, v12, v12, v12}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    goto :goto_76

    :cond_74
    move-object/from16 v11, p8

    :goto_76
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_7e

    const v13, 0x3e4ccccd    # 0.2f

    goto :goto_80

    :cond_7e
    move/from16 v13, p9

    :goto_80
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_8a

    .line 19
    new-instance v14, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v14, v12, v12, v12}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    goto :goto_8c

    :cond_8a
    move-object/from16 v14, p10

    :goto_8c
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_96

    .line 20
    new-instance v15, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v15, v12, v12, v12, v5}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    goto :goto_98

    :cond_96
    move-object/from16 v15, p11

    :goto_98
    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_a2

    .line 21
    new-instance v5, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v5, v3, v3, v3, v7}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    goto :goto_a4

    :cond_a2
    move-object/from16 v5, p12

    :goto_a4
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_cc

    .line 22
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v3, 0xa

    invoke-direct {v0, v12, v12, v12, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    move-object/from16 p14, v0

    :goto_b1
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p13, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move/from16 p10, v13

    move-object/from16 p11, v14

    move-object/from16 p12, v15

    goto :goto_cf

    :cond_cc
    move-object/from16 p14, p13

    goto :goto_b1

    .line 9
    :goto_cf
    invoke-direct/range {p1 .. p14}, Linfo/flowersoft/theotown/drawing/TSMapStyle;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public static final synthetic access$getDARK$cp()Linfo/flowersoft/theotown/drawing/TSMapStyle;
    .registers 1

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->DARK:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    return-object v0
.end method

.method public static final synthetic access$getLIGHT$cp()Linfo/flowersoft/theotown/drawing/TSMapStyle;
    .registers 1

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->LIGHT:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    return-object v0
.end method


# virtual methods
.method public final getBackgroundColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 10
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->backgroundColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getGridColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 22
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->gridColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getLandmarkTintColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 21
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->landmarkTintColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getMapColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 11
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getMapTintColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 12
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->mapTintColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getNeighborColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 14
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->neighborColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getNeighborInactiveColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->neighborInactiveColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getNeighborNameColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 16
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->neighborNameColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getRouteTintColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 17
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->routeTintColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getRouteTintFactor()F
    .registers 2

    .line 18
    iget v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->routeTintFactor:F

    return v0
.end method

.method public final getStationColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 19
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->stationColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getStationInactiveColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 20
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->stationInactiveColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public final getWaterColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 13
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapStyle;->waterColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

###### Class info.flowersoft.theotown.drawing.TSMapStyle.Companion (info.flowersoft.theotown.drawing.TSMapStyle$Companion)
.class public final Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;
.super Ljava/lang/Object;
.source "TSMapStyle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/drawing/TSMapStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/drawing/TSMapStyle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDARK()Linfo/flowersoft/theotown/drawing/TSMapStyle;
    .registers 2

    .line 26
    invoke-static {}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->access$getDARK$cp()Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v0

    return-object v0
.end method

.method public final getLIGHT()Linfo/flowersoft/theotown/drawing/TSMapStyle;
    .registers 2

    .line 25
    invoke-static {}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->access$getLIGHT$cp()Linfo/flowersoft/theotown/drawing/TSMapStyle;

    move-result-object v0

    return-object v0
.end method
