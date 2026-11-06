###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary (info.flowersoft.theotown.scripting.libraries.DrawingLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "DrawingLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# static fields
.field public static final tempColor:Lio/blueflower/stapel2d/drawing/Color;


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public cursorX:F

.field public cursorY:F

.field public defaultFont:Lio/blueflower/stapel2d/drawing/Font;

.field public drawer:Linfo/flowersoft/theotown/city/Drawer;

.field public flowHeight:F

.field public iso:Linfo/flowersoft/theotown/city/IsoConverter;

.field public originX:F

.field public originY:F

.field public rtl:Z

.field public final textFrameRect:Lcom/badlogic/gdx/math/Rectangle;

.field public tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    .line 61
    const-string v0, "libs/Drawing.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->textFrameRect:Lcom/badlogic/gdx/math/Rectangle;

    .line 62
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 63
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    invoke-interface {p1}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result p1

    iput-boolean p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->rtl:Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Drawer;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 1

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->assertCity()V

    return-void
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F
    .registers 1

    .line 34
    iget p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->cursorX:F

    return p0
.end method

.method public static synthetic access$1002(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F
    .registers 2

    .line 34
    iput p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->cursorX:F

    return p1
.end method

.method public static synthetic access$1016(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F
    .registers 3

    .line 34
    iget v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->cursorX:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->cursorX:F

    return v0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F
    .registers 1

    .line 34
    iget p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->cursorY:F

    return p0
.end method

.method public static synthetic access$1102(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F
    .registers 2

    .line 34
    iput p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->cursorY:F

    return p1
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F
    .registers 1

    .line 34
    iget p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->flowHeight:F

    return p0
.end method

.method public static synthetic access$1202(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F
    .registers 2

    .line 34
    iput p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->flowHeight:F

    return p1
.end method

.method public static synthetic access$1216(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F
    .registers 3

    .line 34
    iget v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->flowHeight:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->flowHeight:F

    return v0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->rtl:Z

    return p0
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lvm2/LuaValue;I)I
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->resolveFrameOpt(Lvm2/LuaValue;I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(FFF)F
    .registers 3

    .line 34
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->map(FFF)F

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/IsoConverter;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F
    .registers 1

    .line 34
    iget p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->originX:F

    return p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F
    .registers 2

    .line 34
    iput p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->originX:F

    return p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F
    .registers 1

    .line 34
    iget p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->originY:F

    return p0
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F
    .registers 2

    .line 34
    iput p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->originY:F

    return p1
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lio/blueflower/stapel2d/drawing/Font;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->defaultFont:Lio/blueflower/stapel2d/drawing/Font;

    return-object p0
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/drawing/Font;
    .registers 2

    .line 34
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->defaultFont:Lio/blueflower/stapel2d/drawing/Font;

    return-object p1
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lvm2/LuaValue;)I
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->resolveFrame(Lvm2/LuaValue;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->textFrameRect:Lcom/badlogic/gdx/math/Rectangle;

    return-object p0
.end method

.method public static map(FFF)F
    .registers 4

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float/2addr p0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static parseColor(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 711
    invoke-virtual {p0}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 712
    invoke-virtual {p0}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p0

    .line 713
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    sget-object p2, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {p0, p1, p2}, Lio/blueflower/stapel2d/drawing/Color;->fromHex(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_2f

    .line 715
    :cond_1e
    sget-object v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0}, Lvm2/LuaValue;->checkint()I

    move-result p0

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lio/blueflower/stapel2d/drawing/Color;->setTo(III)Lio/blueflower/stapel2d/drawing/Color;

    .line 717
    :goto_2f
    sget-object p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0
.end method


# virtual methods
.method public final assertCity()V
    .registers 3

    .line 706
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_5

    return-void

    .line 707
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not allowed to use Drawing library here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 5

    .line 87
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object p2

    .line 89
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$1;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string v0, "getDaytime"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 96
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$2;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string v0, "getDaytimeColor"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 107
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$3;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "getSize"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 116
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$4;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "setScale"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 126
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$5;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "getScale"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 135
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "setTile"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 166
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$7;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "reset"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 177
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$8;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "resetClipping"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 185
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$9;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "setClipping"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 197
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$10;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "setColor"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 205
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$11;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "addColor"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 217
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$12;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "getColor"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 227
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$13;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "setAlpha"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 235
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$14;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "getAlpha"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 242
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$15;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "setAdditive"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 250
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$16;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "getAdditive"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 257
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$17;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$17;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string v0, "getTextSize"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 276
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$18;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$18;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string v0, "getImageSize"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 286
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$19;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$19;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string v0, "getImageHandle"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 296
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "drawText"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 331
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$21;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$21;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string v0, "setFont"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 343
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$22;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$22;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string v0, "setTextFrame"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 358
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "flowText"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 397
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "flowImage"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 427
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$25;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$25;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string v0, "nl"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 440
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$26;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$26;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string v0, "getFlowHeight"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 447
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$27;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$27;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "drawImage"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 458
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$28;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$28;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "getFrameType"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 465
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$29;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$29;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "setFrameType"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 474
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$30;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$30;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string v0, "drawTileFrame"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 485
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$31;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$31;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "drawImageRect"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 498
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$32;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$32;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "drawNinePatch"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 516
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$33;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$33;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "drawRect"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 529
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$34;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$34;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "drawCircle"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 549
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$35;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$35;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "drawLine"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 564
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "drawTriangle"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 600
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "drawQuad"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 634
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$38;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$38;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string v0, "setUniform"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 663
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$39;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$39;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V

    const-string p2, "flush"

    invoke-virtual {p1, p2, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 671
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$40;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$40;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const-string p3, "adjustColor"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public final resolveFrame(Lvm2/LuaValue;)I
    .registers 4

    .line 686
    invoke-virtual {p1}, Lvm2/LuaValue;->istable()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_36

    .line 687
    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1, v0}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 688
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, p1

    if-eqz v0, :cond_2e

    .line 689
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget v0, v0, Linfo/flowersoft/theotown/city/Drawer;->time:I

    div-int/lit16 v0, v0, 0xc8

    array-length v1, p1

    rem-int/2addr v0, v1

    aget p1, p1, v0

    return p1

    .line 688
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Draft has no frames"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 691
    :cond_36
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    return p1
.end method

.method public final resolveFrameOpt(Lvm2/LuaValue;I)I
    .registers 5

    .line 696
    invoke-virtual {p1}, Lvm2/LuaValue;->istable()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_36

    .line 697
    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const-class p2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1, p2}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 698
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p2, p1

    if-eqz p2, :cond_2e

    .line 699
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget p2, p2, Linfo/flowersoft/theotown/city/Drawer;->time:I

    div-int/lit16 p2, p2, 0xc8

    array-length v0, p1

    rem-int/2addr p2, v0

    aget p1, p1, p2

    return p1

    .line 698
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Draft has no frames"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 701
    :cond_36
    invoke-virtual {p1, p2}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    return p1
.end method

.method public setCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 67
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz p1, :cond_16

    .line 69
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 70
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getDrawer()Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    .line 71
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    :cond_16
    const/4 p1, 0x0

    .line 73
    iput p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->originX:F

    .line 74
    iput p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->originY:F

    .line 75
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->defaultFont:Lio/blueflower/stapel2d/drawing/Font;

    .line 77
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    invoke-interface {p1}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result p1

    iput-boolean p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->rtl:Z

    return-void
.end method

.method public unload(Lvm2/Globals;)V
    .registers 2

    .line 82
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->unload(Lvm2/Globals;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$1;
.super Lvm2/lib/ZeroArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$10;
.super Lvm2/lib/ThreeArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 197
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$10;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$10;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-static {p1, p2, p3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->parseColor(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 201
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass11 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$11)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$11;
.super Lvm2/lib/ThreeArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$11;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 208
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 209
    invoke-virtual {p2, p1}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 210
    invoke-virtual {p2, p3}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    .line 211
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$11;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 212
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v1

    add-int/2addr v1, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$11;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result p1

    add-int/2addr p1, p3

    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$11;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result p3

    add-int/2addr p3, p2

    .line 211
    invoke-virtual {v0, v1, p1, p3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass12 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$12)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$12;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 217
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$12;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 220
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$12;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 221
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$12;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 222
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$12;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 223
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    .line 220
    invoke-static {p1, v0, v1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass13 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$13)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$13;
.super Lvm2/lib/OneArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 227
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$13;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 230
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$13;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v1

    double-to-float p1, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 231
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass14 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$14)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$14;
.super Lvm2/lib/ZeroArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$14;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$14;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass15 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$15)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$15;
.super Lvm2/lib/OneArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$15;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 245
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$15;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v1

    double-to-float p1, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 246
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass16 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$16)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$16;
.super Lvm2/lib/ZeroArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 250
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$16;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 253
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$16;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getAdditive()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass17 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$17)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$17;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 257
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 260
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 261
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 265
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lio/blueflower/stapel2d/drawing/Font;

    move-result-object p1

    goto :goto_1f

    .line 267
    :cond_17
    const-class v1, Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {p1, v1}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/drawing/Font;

    .line 271
    :goto_1f
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v1

    .line 272
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    .line 270
    invoke-static {v1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass18 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$18)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$18;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 276
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 279
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lvm2/LuaValue;)I

    move-result p1

    .line 280
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 281
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 282
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    .line 280
    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass19 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$19)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$19;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 286
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 289
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lvm2/LuaValue;)I

    move-result p1

    .line 290
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 291
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 292
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    .line 290
    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$2;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 99
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    .line 100
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Drawer;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/city/Drawer;->shadingRed:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    .line 101
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/city/Drawer;->shadingGreen:I

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    .line 102
    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v1

    iget v1, v1, Linfo/flowersoft/theotown/city/Drawer;->shadingBlue:I

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    .line 99
    invoke-static {p1, v0, v1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass20 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$20)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 296
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 12

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    .line 300
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v1

    add-float v4, v0, v1

    const/4 v0, 0x3

    .line 301
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v1

    add-float v5, v0, v1

    const/4 v0, 0x4

    .line 302
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v6, 0x0

    .line 303
    invoke-virtual {p1, v1, v6, v7}, Lvm2/Varargs;->optdouble(ID)D

    move-result-wide v1

    double-to-float v8, v1

    const/4 v1, 0x6

    .line 304
    invoke-virtual {p1, v1, v6, v7}, Lvm2/Varargs;->optdouble(ID)D

    move-result-wide v1

    double-to-float v9, v1

    .line 308
    invoke-virtual {v0}, Lvm2/LuaValue;->isnil()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 309
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lio/blueflower/stapel2d/drawing/Font;

    move-result-object p1

    if-nez p1, :cond_4b

    .line 310
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$702(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/drawing/Font;

    .line 312
    :cond_4b
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lio/blueflower/stapel2d/drawing/Font;

    move-result-object p1

    :goto_51
    move-object v2, p1

    goto :goto_5c

    .line 314
    :cond_53
    const-class p1, Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {v0, p1}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/drawing/Font;

    goto :goto_51

    :goto_5c
    if-nez v2, :cond_61

    .line 318
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :cond_61
    const/4 p1, 0x0

    cmpl-float v0, v8, p1

    if-nez v0, :cond_70

    cmpl-float p1, v9, p1

    if-nez p1, :cond_70

    .line 322
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1, v2, v3, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    goto :goto_77

    .line 324
    :cond_70
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$20;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 327
    :goto_77
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass21 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$21)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$21;
.super Lvm2/lib/OneArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 331
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 334
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 335
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$702(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/drawing/Font;

    return-object v1

    .line 338
    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    const-class v2, Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {p1, v2}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$702(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/drawing/Font;

    return-object v1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass22 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$22)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$22;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 346
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    const/4 v1, 0x1

    .line 347
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v2

    add-float/2addr v1, v2

    const/4 v2, 0x2

    .line 348
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x3

    .line 349
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x4

    .line 350
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v4

    double-to-float p1, v4

    .line 346
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 351
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1002(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 352
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1102(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 353
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1202(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 354
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass23 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$23)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;
.super Lvm2/lib/OneArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 358
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 8

    .line 361
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 362
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    .line 363
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 364
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v2

    .line 365
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1100(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1202(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 368
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_69

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    add-float/2addr v3, v1

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_69

    .line 369
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1002(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 370
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1102(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 371
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1216(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 374
    :cond_69
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    add-float/2addr v2, v3

    .line 375
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1100(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v4

    add-float/2addr v3, v4

    .line 376
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4, v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1016(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 378
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1300(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 380
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v4

    sub-float/2addr v2, v4

    :cond_ac
    cmpg-float v4, v1, v0

    if-gez v4, :cond_d5

    .line 385
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v4

    .line 386
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    div-float/2addr v1, v0

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v0

    invoke-virtual {v5, v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 387
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 388
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v0

    invoke-virtual {p1, v4, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    goto :goto_e0

    .line 390
    :cond_d5
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    :goto_e0
    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass24 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$24)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;
.super Lvm2/lib/OneArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 397
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 10

    .line 400
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lvm2/LuaValue;)I

    move-result v7

    .line 401
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lio/blueflower/stapel2d/drawing/Font;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v6

    .line 402
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p1, v7}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result p1

    mul-float/2addr p1, v6

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 403
    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    div-float v5, p1, v0

    .line 404
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1100(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v1

    add-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1202(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 407
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_64

    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result p1

    add-float/2addr p1, v5

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_64

    .line 408
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1002(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 409
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1102(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 410
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1, v6}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1216(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 413
    :cond_64
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v0

    add-float/2addr p1, v0

    .line 414
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1100(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v1

    add-float v4, v0, v1

    .line 415
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0, v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1016(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 417
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1300(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 419
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr p1, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v0

    sub-float/2addr p1, v0

    :cond_a8
    move v3, p1

    .line 422
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$24;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass25 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$25)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$25;
.super Lvm2/lib/OneArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 427
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 430
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Lio/blueflower/stapel2d/drawing/Font;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v0

    .line 431
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1100(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const-wide/16 v2, 0x0

    .line 432
    invoke-virtual {p1, v2, v3}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v2

    double-to-float p1, v2

    add-float/2addr v0, p1

    .line 431
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1202(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 434
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1002(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 435
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1102(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass26 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$26)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$26;
.super Lvm2/lib/ZeroArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 440
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 443
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass27 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$27)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$27;
.super Lvm2/lib/ThreeArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 447
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$27;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 8

    .line 450
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lvm2/LuaValue;)I

    move-result p1

    const-wide/16 v0, 0x0

    .line 451
    invoke-virtual {p2, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v2

    double-to-float p2, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v2

    add-float/2addr p2, v2

    .line 452
    invoke-virtual {p3, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    double-to-float p3, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v0

    add-float/2addr p3, v0

    .line 453
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$27;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, v1, p2, p3, p1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 454
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass28 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$28)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$28;
.super Lvm2/lib/ZeroArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 458
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$28;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 461
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$28;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getType()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass29 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$29)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$29;
.super Lvm2/lib/OneArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 465
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$29;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 468
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$29;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getType()I

    move-result v0

    .line 469
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$29;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 470
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$3;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$3;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 110
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$3;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 111
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$3;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 112
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    .line 110
    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass30 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$30)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$30;
.super Lvm2/lib/OneArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 474
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 477
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 478
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 479
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFrameOnSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;I)V

    .line 481
    :cond_1f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass31 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$31)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$31;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 485
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$31;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    .line 488
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lvm2/LuaValue;)I

    move-result v8

    const/4 v0, 0x2

    .line 489
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v3

    double-to-float v0, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    add-float v4, v0, v3

    const/4 v0, 0x3

    .line 490
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float v0, v5

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    add-float v5, v0, v3

    const/4 v0, 0x4

    .line 491
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v0, 0x5

    .line 492
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    double-to-float v7, v0

    .line 493
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$31;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 494
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass32 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$32)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$32;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 498
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$32;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    .line 501
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lvm2/LuaValue;)I

    move-result v8

    const/4 v0, 0x2

    .line 502
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v3

    double-to-float v0, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    add-float v4, v0, v3

    const/4 v0, 0x3

    .line 503
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float v0, v5

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    add-float v5, v0, v3

    const/4 v0, 0x4

    .line 504
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v0, 0x5

    .line 505
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    double-to-float v7, v0

    const/4 v0, 0x6

    .line 506
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 508
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$32;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawSparseNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    goto :goto_60

    .line 510
    :cond_59
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$32;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 512
    :goto_60
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass33 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$33)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$33;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 516
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$33;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 13

    const/4 v0, 0x1

    .line 519
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v3

    double-to-float v0, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    add-float v6, v0, v3

    const/4 v0, 0x2

    .line 520
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v3

    double-to-float v0, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    add-float v7, v0, v3

    const/4 v0, 0x3

    .line 521
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v3

    double-to-float v8, v3

    const/4 v0, 0x4

    .line 522
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    double-to-float v9, v0

    .line 523
    sget v10, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    .line 524
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$33;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual/range {v4 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 525
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass34 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$34)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$34;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 529
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$34;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 532
    invoke-virtual {v1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float v2, v5

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float/2addr v2, v5

    const/4 v5, 0x2

    .line 533
    invoke-virtual {v1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float v5, v5

    iget-object v6, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v6

    add-float/2addr v5, v6

    const/4 v6, 0x3

    .line 534
    invoke-virtual {v1, v6}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v7, 0x4

    .line 535
    invoke-virtual {v1, v7}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/4 v8, 0x5

    .line 536
    invoke-virtual {v1, v8}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v8

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v8, v9, v10}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x6

    .line 537
    invoke-virtual {v1, v9}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v3

    double-to-float v14, v3

    const/4 v3, 0x7

    .line 538
    invoke-virtual {v1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual {v1, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v3

    double-to-float v15, v3

    .line 539
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v9

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v16, v6, v1

    add-float v10, v2, v16

    mul-float v17, v7, v1

    add-float v11, v5, v17

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v12, v1, v8

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v1, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$34;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    move-object/from16 v18, v1

    invoke-virtual/range {v9 .. v18}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 545
    sget-object v1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass35 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$35)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$35;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 549
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$35;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    const/4 v0, 0x1

    .line 552
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v1

    add-float v3, v0, v1

    const/4 v0, 0x2

    .line 553
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v1

    add-float v4, v0, v1

    const/4 v0, 0x3

    .line 554
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v1

    add-float v5, v0, v1

    const/4 v0, 0x4

    .line 555
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v1

    add-float v6, v0, v1

    const/4 v0, 0x5

    .line 556
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    double-to-float v7, v0

    .line 558
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    iget-object v8, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$35;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 560
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass36 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$36)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 564
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 567
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v3, 0x1

    .line 568
    invoke-virtual {v1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v4

    add-float v7, v3, v4

    const/4 v3, 0x2

    .line 569
    invoke-virtual {v1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v4

    add-float v8, v3, v4

    const/4 v3, 0x3

    .line 570
    invoke-virtual {v1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float v9, v4, v5

    const/4 v4, 0x4

    .line 571
    invoke-virtual {v1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float v10, v4, v5

    const/4 v4, 0x5

    .line 572
    invoke-virtual {v1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float v11, v4, v5

    const/4 v4, 0x6

    .line 573
    invoke-virtual {v1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float v12, v4, v5

    .line 575
    iget-object v4, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-static {v4, v5, v6}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1400(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lvm2/LuaValue;I)I

    move-result v4

    .line 577
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Image;->getUVStream()[F

    move-result-object v5

    .line 578
    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Image;->getUVStreamPos(I)I

    move-result v6

    .line 580
    aget v13, v5, v6

    add-int/lit8 v14, v6, 0x1

    .line 581
    aget v14, v5, v14

    add-int/lit8 v15, v6, 0x2

    .line 582
    aget v15, v5, v15

    add-int/2addr v6, v3

    .line 583
    aget v3, v5, v6

    const/16 v5, 0x8

    .line 585
    invoke-virtual {v1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    move/from16 v16, v7

    const-wide/16 v6, 0x0

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-virtual {v5, v6, v7}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v8

    double-to-float v5, v8

    invoke-static {v5, v13, v15}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1500(FFF)F

    move-result v5

    const/16 v8, 0x9

    .line 586
    invoke-virtual {v1, v8}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8, v14, v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1500(FFF)F

    move-result v8

    const/16 v9, 0xa

    .line 587
    invoke-virtual {v1, v9}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v9

    move/from16 v19, v8

    invoke-virtual {v9, v6, v7}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8, v13, v15}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1500(FFF)F

    move-result v8

    const/16 v9, 0xb

    .line 588
    invoke-virtual {v1, v9}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v9

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move/from16 v20, v8

    invoke-virtual {v9, v6, v7}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8, v14, v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1500(FFF)F

    move-result v8

    const/16 v9, 0xc

    .line 589
    invoke-virtual {v1, v9}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6, v13, v15}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1500(FFF)F

    move-result v6

    const/16 v7, 0xd

    .line 590
    invoke-virtual {v1, v7}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    move v13, v5

    move v7, v6

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float v1, v5

    invoke-static {v1, v14, v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1500(FFF)F

    move-result v1

    .line 592
    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$36;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 593
    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v6

    move/from16 v14, v19

    const/16 v19, 0x0

    move/from16 v9, v17

    move/from16 v17, v7

    move/from16 v7, v16

    move/from16 v16, v8

    move v8, v9

    move/from16 v9, v18

    move/from16 v15, v20

    move/from16 v18, v1

    .line 592
    invoke-virtual/range {v5 .. v19}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    .line 596
    sget-object v1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass37 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$37)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 600
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 603
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v3, 0x1

    .line 604
    invoke-virtual {v1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v4

    add-float v7, v3, v4

    const/4 v3, 0x2

    .line 605
    invoke-virtual {v1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v4

    add-float v8, v3, v4

    const/4 v3, 0x3

    .line 606
    invoke-virtual {v1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float v9, v4, v5

    const/4 v4, 0x4

    .line 607
    invoke-virtual {v1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float v10, v4, v5

    const/4 v4, 0x5

    .line 608
    invoke-virtual {v1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float v11, v4, v5

    const/4 v4, 0x6

    .line 609
    invoke-virtual {v1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float v12, v4, v5

    const/4 v4, 0x7

    .line 610
    invoke-virtual {v1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float v13, v4, v5

    const/16 v4, 0x8

    .line 611
    invoke-virtual {v1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v5

    add-float v14, v4, v5

    .line 613
    iget-object v4, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-static {v4, v5, v6}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1400(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lvm2/LuaValue;I)I

    move-result v4

    .line 615
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Image;->getUVStream()[F

    move-result-object v5

    .line 616
    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Image;->getUVStreamPos(I)I

    move-result v6

    .line 617
    aget v15, v5, v6

    add-int/lit8 v16, v6, 0x1

    move/from16 v17, v3

    .line 618
    aget v3, v5, v16

    add-int/lit8 v16, v6, 0x2

    move-object/from16 v18, v5

    .line 619
    aget v5, v18, v16

    add-int/lit8 v6, v6, 0x3

    .line 620
    aget v6, v18, v6

    move/from16 v16, v7

    const/16 v7, 0xa

    .line 623
    invoke-virtual {v1, v7}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v7

    move/from16 v17, v8

    move/from16 v18, v9

    const-wide/16 v8, 0x0

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-virtual {v7, v8, v9}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v10

    double-to-float v7, v10

    invoke-static {v7, v15, v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1500(FFF)F

    move-result v7

    const/16 v10, 0xb

    .line 624
    invoke-virtual {v1, v10}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v8, v3, v6}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1500(FFF)F

    move-result v8

    const/16 v9, 0xc

    .line 625
    invoke-virtual {v1, v9}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v9

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-virtual {v9, v10, v11}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7, v15, v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1500(FFF)F

    move-result v5

    const/16 v7, 0xd

    .line 626
    invoke-virtual {v1, v7}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v7

    double-to-float v1, v7

    invoke-static {v1, v3, v6}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$1500(FFF)F

    move-result v1

    move/from16 v8, v17

    move/from16 v17, v5

    .line 628
    iget-object v5, v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$37;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v6

    move/from16 v10, v19

    const/16 v19, 0x0

    move/from16 v7, v16

    move/from16 v9, v18

    move/from16 v11, v20

    move/from16 v15, v21

    move/from16 v16, v22

    move/from16 v18, v1

    invoke-virtual/range {v5 .. v19}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    .line 630
    sget-object v1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass38 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$38)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$38;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 634
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$38;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    const/4 v0, 0x1

    .line 637
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    .line 638
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isnumber(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 639
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x3

    .line 640
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isnumber(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 641
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x4

    .line 642
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isnumber(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 643
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v0

    double-to-float v5, v0

    const/4 v0, 0x5

    .line 644
    invoke-virtual {p1, v0}, Lvm2/Varargs;->isnumber(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 645
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v0

    double-to-float v6, v0

    .line 646
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$38;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual/range {v1 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->setUniform(Ljava/lang/String;FFFF)V

    goto :goto_4c

    .line 648
    :cond_3b
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$38;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1, v2, v3, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setUniform(Ljava/lang/String;FFF)V

    goto :goto_4c

    .line 651
    :cond_41
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$38;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1, v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setUniform(Ljava/lang/String;FF)V

    goto :goto_4c

    .line 654
    :cond_47
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$38;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1, v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setUniform(Ljava/lang/String;F)V

    .line 659
    :goto_4c
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 657
    :cond_4f
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$38;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->removeUniform(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass39 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$39)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$39;
.super Lvm2/lib/ZeroArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 663
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$39;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 666
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$39;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 667
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$4;
.super Lvm2/lib/TwoArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$4;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 119
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p1

    .line 120
    invoke-virtual {p2, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$4;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 122
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass40 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$40)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$40;
.super Lvm2/lib/ThreeArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 671
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 674
    invoke-static {p1, p2, p3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->parseColor(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    .line 675
    sget-object p2, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/ThemeManager;->transformColorInplace(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 676
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->toHexRGB()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$5;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$5;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 129
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$5;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 130
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$5;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 131
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    .line 129
    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)V

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 141
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    .line 142
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    const/4 v2, 0x3

    .line 143
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float v2, v5

    const/4 v5, 0x4

    .line 144
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 145
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 146
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    if-eqz v4, :cond_57

    .line 149
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v4

    :goto_52
    mul-int/lit8 v4, v4, 0xc

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto :goto_66

    .line 151
    :cond_57
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v4

    goto :goto_52

    :cond_66
    :goto_66
    const/4 v4, 0x5

    .line 154
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v5, v6}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v7

    double-to-float v4, v7

    const/4 v7, 0x6

    .line 155
    invoke-virtual {p1, v7}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float p1, v5

    .line 156
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v5

    .line 157
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v6

    .line 158
    iget-object v7, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v7}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v7

    .line 159
    iget-object v8, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v8}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v0

    .line 160
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v8

    int-to-float v7, v7

    int-to-float v0, v0

    invoke-virtual {v8, v7, v0}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v8

    mul-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v8, v2

    invoke-static {v1, v8}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$502(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 161
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v0

    mul-float/2addr p1, v6

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$602(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$6;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v4, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 163
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$7;
.super Lvm2/lib/ZeroArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$7;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$7;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$502(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 171
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$602(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;F)F

    .line 172
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$702(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Font;)Lio/blueflower/stapel2d/drawing/Font;

    .line 173
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$8;
.super Lvm2/lib/ZeroArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 177
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$8;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$8;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    .line 181
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DrawingLibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.DrawingLibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$9;
.super Lvm2/lib/VarArgFunction;
.source "DrawingLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

.field public final synthetic val$engine:Lio/blueflower/stapel2d/drawing/Engine;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$9;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 188
    invoke-virtual {p1, v0, v1, v2}, Lvm2/Varargs;->optdouble(ID)D

    move-result-wide v3

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v0

    float-to-double v5, v0

    add-double/2addr v3, v5

    double-to-int v0, v3

    const/4 v3, 0x2

    .line 189
    invoke-virtual {p1, v3, v1, v2}, Lvm2/Varargs;->optdouble(ID)D

    move-result-wide v1

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;)F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x3

    .line 190
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$9;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x4

    .line 191
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$9;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v3

    mul-float/2addr p1, v3

    float-to-int p1, p1

    .line 192
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary$9;->val$engine:Lio/blueflower/stapel2d/drawing/Engine;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float p1, p1

    invoke-virtual {v3, v0, v1, v2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 193
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method
