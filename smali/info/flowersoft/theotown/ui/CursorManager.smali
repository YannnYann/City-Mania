###### Class info.flowersoft.theotown.ui.CursorManager (info.flowersoft.theotown.ui.CursorManager)
.class public final Linfo/flowersoft/theotown/ui/CursorManager;
.super Ljava/lang/Object;
.source "CursorManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCursorManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CursorManager.kt\ninfo/flowersoft/theotown/ui/CursorManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 PackedUtils.kt\ninfo/flowersoft/theotown/util/PackedUtils\n+ 6 Hashing.kt\ninfo/flowersoft/theotown/util/Hashing\n*L\n1#1,317:1\n1#2:318\n221#3,2:319\n221#3,2:321\n296#4,2:323\n47#5:325\n48#5,5:343\n22#6:326\n74#6,16:327\n*S KotlinDebug\n*F\n+ 1 CursorManager.kt\ninfo/flowersoft/theotown/ui/CursorManager\n*L\n188#1:319,2\n189#1:321,2\n263#1:323,2\n306#1:325\n306#1:343,5\n306#1:326\n306#1:327,16\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/ui/CursorManager;

.field public static cursorsByType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/ui/CursorType;",
            "+",
            "Lcom/badlogic/gdx/graphics/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field public static darkCursorsByType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/ui/CursorType;",
            "+",
            "Lcom/badlogic/gdx/graphics/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field public static final isSupported:Z

.field public static loadedScaling:I

.field public static loadedStyle:Linfo/flowersoft/theotown/ui/CursorStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Linfo/flowersoft/theotown/ui/CursorManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/CursorManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->INSTANCE:Linfo/flowersoft/theotown/ui/CursorManager;

    .line 135
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/CursorManager;->probeCursorSupport()Z

    move-result v0

    sput-boolean v0, Linfo/flowersoft/theotown/ui/CursorManager;->isSupported:Z

    const/4 v0, 0x1

    .line 145
    sput v0, Linfo/flowersoft/theotown/ui/CursorManager;->loadedScaling:I

    .line 150
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->cursorsByType:Ljava/util/Map;

    .line 155
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->darkCursorsByType:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyPalette(Lcom/badlogic/gdx/graphics/Pixmap;Linfo/flowersoft/theotown/ui/CursorPalette;)V
    .registers 11

    .line 223
    invoke-virtual {p2}, Linfo/flowersoft/theotown/ui/CursorPalette;->getOutline()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->toRGBA()I

    move-result v0

    .line 224
    invoke-virtual {p2}, Linfo/flowersoft/theotown/ui/CursorPalette;->getArea()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->toRGBA()I

    move-result v1

    .line 225
    invoke-virtual {p2}, Linfo/flowersoft/theotown/ui/CursorPalette;->getHighlight()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->toRGBA()I

    move-result v2

    .line 226
    invoke-virtual {p2}, Linfo/flowersoft/theotown/ui/CursorPalette;->getShadow()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->toRGBA()I

    move-result p2

    .line 227
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_56

    .line 230
    invoke-virtual {p1, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    .line 231
    invoke-static {v5}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v6

    const v7, -0x33333301

    if-eq v6, v7, :cond_4f

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4d

    const/16 v7, 0xff

    if-eq v6, v7, :cond_4b

    const v7, 0x7e858cff

    if-eq v6, v7, :cond_49

    goto :goto_50

    :cond_49
    move v5, p2

    goto :goto_50

    :cond_4b
    move v5, v0

    goto :goto_50

    :cond_4d
    move v5, v2

    goto :goto_50

    :cond_4f
    move v5, v1

    :goto_50
    invoke-virtual {p1, v4, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_56
    return-void
.end method

.method public final extractCursor(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)Lcom/badlogic/gdx/graphics/Cursor;
    .registers 19

    .line 286
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    mul-int v8, p4, p8

    .line 287
    invoke-static {v8}, Lio/blueflower/stapel2d/util/MathUtil;->nextPowerOfTwo(I)I

    move-result v1

    mul-int v9, p5, p8

    .line 288
    invoke-static {v9}, Lio/blueflower/stapel2d/util/MathUtil;->nextPowerOfTwo(I)I

    move-result v2

    .line 289
    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 286
    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 291
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->NearestNeighbour:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setFilter(Lcom/badlogic/gdx/graphics/Pixmap$Filter;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 292
    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V

    .line 295
    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    mul-int p2, p6, p8

    mul-int p3, p7, p8

    invoke-interface {p1, v0, p2, p3}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object p1

    .line 298
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    return-object p1
.end method

.method public final extractCursors(Lcom/badlogic/gdx/graphics/Pixmap;I)Ljava/util/Map;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            "I)",
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/ui/CursorType;",
            "Lcom/badlogic/gdx/graphics/Cursor;",
            ">;"
        }
    .end annotation

    .line 245
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Normal:Linfo/flowersoft/theotown/ui/CursorType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x30

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/ui/CursorManager;->extractCursor(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 246
    sget-object v1, Linfo/flowersoft/theotown/ui/CursorType;->Delete:Linfo/flowersoft/theotown/ui/CursorType;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v6, 0x30

    const/16 v7, 0x18

    const/16 v8, 0x10

    const/16 v9, 0x18

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v12, p2

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/CursorManager;->extractCursor(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 247
    sget-object v2, Linfo/flowersoft/theotown/ui/CursorType;->Build:Linfo/flowersoft/theotown/ui/CursorType;

    const/16 v6, 0x58

    const/16 v8, 0x18

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/CursorManager;->extractCursor(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 248
    sget-object v3, Linfo/flowersoft/theotown/ui/CursorType;->Crosshair:Linfo/flowersoft/theotown/ui/CursorType;

    const/16 v10, 0x18

    const/16 v11, 0x18

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/16 v9, 0x30

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/CursorManager;->extractCursor(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 249
    sget-object v13, Linfo/flowersoft/theotown/ui/CursorType;->Hand:Linfo/flowersoft/theotown/ui/CursorType;

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/16 v6, 0x40

    const/16 v7, 0x18

    const/16 v8, 0x18

    const/16 v9, 0x18

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/CursorManager;->extractCursor(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v6

    invoke-static {v13, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    .line 250
    sget-object v14, Linfo/flowersoft/theotown/ui/CursorType;->Move:Linfo/flowersoft/theotown/ui/CursorType;

    const/16 v10, 0xc

    const/16 v11, 0xc

    const/16 v6, 0x40

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/CursorManager;->extractCursor(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v6

    invoke-static {v14, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    .line 251
    sget-object v15, Linfo/flowersoft/theotown/ui/CursorType;->NotAllowed:Linfo/flowersoft/theotown/ui/CursorType;

    const/16 v6, 0x58

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/CursorManager;->extractCursor(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v6

    invoke-static {v15, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    .line 252
    sget-object v4, Linfo/flowersoft/theotown/ui/CursorType;->Wait:Linfo/flowersoft/theotown/ui/CursorType;

    const/16 v6, 0x70

    move-object/from16 v16, v0

    move-object v0, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/CursorManager;->extractCursor(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v6

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 253
    sget-object v4, Linfo/flowersoft/theotown/ui/CursorType;->NoMoney:Linfo/flowersoft/theotown/ui/CursorType;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v6, 0x70

    const/16 v7, 0x18

    move-object/from16 v17, v0

    move-object v0, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/ui/CursorManager;->extractCursor(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIII)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v4, v16

    move-object/from16 v11, v17

    filled-new-array/range {v4 .. v12}, [Lkotlin/Pair;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedScaling()I
    .registers 4

    .line 271
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->cursorScaling:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v0

    return v0
.end method

.method public final getSelectedStyle()Linfo/flowersoft/theotown/ui/CursorStyle;
    .registers 6

    .line 259
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->cursorStyle:Ljava/lang/String;

    if-eqz v0, :cond_4a

    .line 261
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4a

    .line 262
    :cond_b
    sget-object v1, Linfo/flowersoft/theotown/ui/CursorManager;->loadedStyle:Linfo/flowersoft/theotown/ui/CursorStyle;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_15
    move-object v1, v2

    :goto_16
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    sget-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->loadedStyle:Linfo/flowersoft/theotown/ui/CursorStyle;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 263
    :cond_22
    invoke-static {}, Linfo/flowersoft/theotown/ui/CursorStyle;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    .line 296
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 263
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object v2, v3

    :cond_42
    check-cast v2, Linfo/flowersoft/theotown/ui/CursorStyle;

    if-nez v2, :cond_49

    sget-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->Default:Linfo/flowersoft/theotown/ui/CursorStyle;

    return-object v0

    :cond_49
    return-object v2

    .line 261
    :cond_4a
    :goto_4a
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorStyle;->Default:Linfo/flowersoft/theotown/ui/CursorStyle;

    return-object v0
.end method

.method public final isSupported()Z
    .registers 2

    .line 135
    sget-boolean v0, Linfo/flowersoft/theotown/ui/CursorManager;->isSupported:Z

    return v0
.end method

.method public final load(Linfo/flowersoft/theotown/ui/CursorStyle;I)V
    .registers 5

    .line 185
    sget-boolean v0, Linfo/flowersoft/theotown/ui/CursorManager;->isSupported:Z

    if-nez v0, :cond_5

    return-void

    .line 187
    :cond_5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setSystemCursor(Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V

    .line 188
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->cursorsByType:Ljava/util/Map;

    .line 221
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    goto :goto_16

    .line 189
    :cond_2e
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->darkCursorsByType:Ljava/util/Map;

    .line 221
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Cursor;

    if-eqz v1, :cond_38

    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    goto :goto_38

    .line 191
    :cond_50
    sput-object p1, Linfo/flowersoft/theotown/ui/CursorManager;->loadedStyle:Linfo/flowersoft/theotown/ui/CursorStyle;

    .line 192
    sput p2, Linfo/flowersoft/theotown/ui/CursorManager;->loadedScaling:I

    .line 193
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/CursorStyle;->getPalette()Linfo/flowersoft/theotown/ui/CursorPalette;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/ui/CursorManager;->loadCursorsWithPalette(Linfo/flowersoft/theotown/ui/CursorPalette;I)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->cursorsByType:Ljava/util/Map;

    .line 194
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/CursorStyle;->getDarkPalette()Linfo/flowersoft/theotown/ui/CursorPalette;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/CursorManager;->loadCursorsWithPalette(Linfo/flowersoft/theotown/ui/CursorPalette;I)Ljava/util/Map;

    move-result-object p1

    sput-object p1, Linfo/flowersoft/theotown/ui/CursorManager;->darkCursorsByType:Ljava/util/Map;

    return-void
.end method

.method public final loadCursorsWithPalette(Linfo/flowersoft/theotown/ui/CursorPalette;I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/CursorPalette;",
            "I)",
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/ui/CursorType;",
            "Lcom/badlogic/gdx/graphics/Cursor;",
            ">;"
        }
    .end annotation

    .line 203
    const-string v0, "cursor.lby"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/CursorManager;->readPixmap(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 204
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/ui/CursorManager;->applyPalette(Lcom/badlogic/gdx/graphics/Pixmap;Linfo/flowersoft/theotown/ui/CursorPalette;)V

    .line 205
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/ui/CursorManager;->extractCursors(Lcom/badlogic/gdx/graphics/Pixmap;I)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    return-object p1

    .line 203
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final probeCursorSupport()Z
    .registers 4

    .line 212
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    const/16 v1, 0x20

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 213
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 214
    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    .line 215
    :cond_15
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    return v2
.end method

.method public final readPixmap(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 6

    .line 306
    sget-object v0, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    .line 47
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    :try_start_1a
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "forName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_2e} :catch_3e

    .line 85
    :try_start_2e
    const-string v2, "md5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const-string v2, "digest(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_3d} :catch_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_3d} :catch_3e

    goto :goto_47

    :catch_3e
    move-exception v1

    goto :goto_51

    :catch_40
    move-exception v1

    .line 88
    :try_start_41
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    .line 89
    new-array v1, v1, [B

    .line 75
    :goto_47
    invoke-static {v1}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bin2hex(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_50} :catch_3e

    goto :goto_56

    .line 77
    :goto_51
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const-string v1, ""

    .line 47
    :goto_56
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 48
    new-instance v1, Linfo/flowersoft/theotown/util/FileDecoder;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/FileDecoder;-><init>()V

    .line 49
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "read(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v0, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_6f

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_77

    :cond_6f
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v2

    .line 50
    :goto_77
    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/util/FileDecoder;->decode(Ljava/io/InputStream;Ljava/lang/String;)Linfo/flowersoft/theotown/util/BytesCallbackFunction;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getPaddingPrefix()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 52
    new-instance v1, Linfo/flowersoft/theotown/util/BoundedXorInputStream;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getMaskBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getLen()I

    move-result p1

    invoke-direct {v1, v0, v2, p1}, Linfo/flowersoft/theotown/util/BoundedXorInputStream;-><init>(Ljava/io/InputStream;[BI)V

    .line 308
    :try_start_90
    new-instance p1, Lcom/badlogic/gdx/graphics/Pixmap;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V

    .line 309
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 310
    invoke-static {p1}, Linfo/flowersoft/theotown/util/PixmapUtil;->premultiplyAlpha(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_a1} :catch_a2

    return-object p1

    :catch_a2
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final setCursor(Linfo/flowersoft/theotown/ui/CursorType;Z)V
    .registers 6

    const-string v0, "cursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-boolean v0, Linfo/flowersoft/theotown/ui/CursorManager;->isSupported:Z

    if-nez v0, :cond_a

    goto :goto_35

    .line 169
    :cond_a
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->modifyCursor:Z

    if-eqz v0, :cond_36

    .line 170
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/CursorManager;->getSelectedStyle()Linfo/flowersoft/theotown/ui/CursorStyle;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/CursorManager;->getSelectedScaling()I

    move-result v1

    .line 172
    sget-object v2, Linfo/flowersoft/theotown/ui/CursorManager;->loadedStyle:Linfo/flowersoft/theotown/ui/CursorStyle;

    if-ne v0, v2, :cond_1e

    sget v2, Linfo/flowersoft/theotown/ui/CursorManager;->loadedScaling:I

    if-eq v1, v2, :cond_21

    :cond_1e
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/ui/CursorManager;->load(Linfo/flowersoft/theotown/ui/CursorStyle;I)V

    :cond_21
    if-eqz p2, :cond_26

    .line 174
    sget-object p2, Linfo/flowersoft/theotown/ui/CursorManager;->darkCursorsByType:Ljava/util/Map;

    goto :goto_28

    :cond_26
    sget-object p2, Linfo/flowersoft/theotown/ui/CursorManager;->cursorsByType:Ljava/util/Map;

    :goto_28
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Cursor;

    if-eqz p1, :cond_35

    .line 175
    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2, p1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    :cond_35
    :goto_35
    return-void

    .line 177
    :cond_36
    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object p2, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/Graphics;->setSystemCursor(Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V

    return-void
.end method
