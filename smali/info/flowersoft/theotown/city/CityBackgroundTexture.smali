###### Class info.flowersoft.theotown.city.CityBackgroundTexture (info.flowersoft.theotown.city.CityBackgroundTexture)
.class public final Linfo/flowersoft/theotown/city/CityBackgroundTexture;
.super Ljava/lang/Object;
.source "CityBackgroundTexture.kt"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/city/CityBackgroundTexture;

.field public static builtDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public static pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field public static texture:Lio/blueflower/stapel2d/drawing/Texture;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/city/CityBackgroundTexture;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/CityBackgroundTexture;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->INSTANCE:Linfo/flowersoft/theotown/city/CityBackgroundTexture;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 68
    sget-object v0, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Texture;->release()V

    .line 69
    :cond_7
    sget-object v0, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    :cond_e
    const/4 v0, 0x0

    .line 70
    sput-object v0, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 71
    sput-object v0, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 72
    sput-object v0, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->builtDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public final downloadFrame(Lio/blueflower/stapel2d/drawing/Engine;I)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 12

    .line 53
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 54
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Image;->getTextureId(I)I

    move-result v1

    .line 55
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Image;->getX(I)F

    move-result v2

    float-to-int v6, v2

    .line 56
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Image;->getY(I)F

    move-result v2

    float-to-int v7, v2

    .line 57
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v2

    float-to-int v2, v2

    .line 58
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result p2

    float-to-int p2, p2

    .line 59
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v0

    .line 61
    new-instance v5, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v2, p2, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 62
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Texture;->getSource()Lio/blueflower/stapel2d/drawing/TextureSource;

    move-result-object v3

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lio/blueflower/stapel2d/drawing/TextureSource;->download(Lio/blueflower/stapel2d/drawing/Engine;Lcom/badlogic/gdx/graphics/Pixmap;III)V

    return-object v5
.end method

.method public final getTexture(Lio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/draft/AnimationDraft;)Lio/blueflower/stapel2d/drawing/Texture;
    .registers 8

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->builtDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-ne p2, v0, :cond_f

    .line 21
    sget-object p1, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1

    .line 25
    :cond_f
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->dispose()V

    if-nez p2, :cond_16

    const/4 p1, 0x0

    return-object p1

    .line 31
    :cond_16
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-le v1, v2, :cond_20

    aget v0, v0, v2

    goto :goto_22

    :cond_20
    aget v0, v0, v3

    .line 32
    :goto_22
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->downloadFrame(Lio/blueflower/stapel2d/drawing/Engine;I)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    .line 36
    sput-object p2, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->builtDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 37
    new-instance p2, Lcom/badlogic/gdx/graphics/Pixmap;

    div-int/lit8 v1, v0, 0x2

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {p2, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 38
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 39
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    neg-int v2, v0

    .line 40
    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {p2, p1, v4, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 41
    invoke-virtual {p2, p1, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 42
    invoke-virtual {p2, p1, v3, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 43
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, p1, v4, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 44
    invoke-virtual {p2, p1, v1, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 37
    sput-object p2, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 46
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 47
    new-instance p1, Lio/blueflower/stapel2d/drawing/Texture;

    new-instance p2, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;

    sget-object v0, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {p2, v0, v3}, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    invoke-direct {p1, p2}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    sput-object p1, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 48
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p2, 0x2601

    const/16 v0, 0x2600

    invoke-virtual {p1, p2, v0}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 49
    sget-object p1, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
