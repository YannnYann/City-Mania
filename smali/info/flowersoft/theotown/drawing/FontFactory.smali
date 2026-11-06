###### Class info.flowersoft.theotown.drawing.FontFactory (info.flowersoft.theotown.drawing.FontFactory)
.class public Linfo/flowersoft/theotown/drawing/FontFactory;
.super Ljava/lang/Object;
.source "FontFactory.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;,
        Linfo/flowersoft/theotown/drawing/FontFactory$Font;,
        Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;,
        Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;,
        Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;
    }
.end annotation


# static fields
.field public static final DEFAULT_AFFINITY:Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;


# instance fields
.field public final fonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/drawing/FontFactory$Font;",
            ">;"
        }
    .end annotation
.end field

.field public locale:Ljava/util/Locale;

.field public missingCharListener:Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;

.field public orderedFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/drawing/FontFactory$Font;",
            ">;"
        }
    .end annotation
.end field

.field public final replacementChars:Lcom/badlogic/gdx/utils/IntIntMap;

.field public requiredChars:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4JkKyi1nkTf_zA0N-Qxn840ysUM(Ljava/lang/String;Ljava/util/Locale;)I
    .registers 3

    if-eqz p1, :cond_14

    .line 28
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ou1BwFHLwHy9FI5w78BIeOMCG7w(Ljava/util/Locale;)I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Linfo/flowersoft/theotown/drawing/FontFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/drawing/FontFactory$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/drawing/FontFactory;->DEFAULT_AFFINITY:Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->fonts:Ljava/util/List;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->requiredChars:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->replacementChars:Lcom/badlogic/gdx/utils/IntIntMap;

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/drawing/FontFactory;)Ljava/util/Locale;
    .registers 1

    .line 23
    iget-object p0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/drawing/FontFactory;II)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;
    .registers 3

    .line 23
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/drawing/FontFactory;->getGlyphAndBitmap(II)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/drawing/FontFactory;)Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;
    .registers 1

    .line 23
    iget-object p0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->missingCharListener:Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;

    return-object p0
.end method

.method public static getLanguageAffinity(Ljava/lang/String;)Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;
    .registers 2

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/drawing/FontFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/drawing/FontFactory$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addFont(Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 3

    .line 50
    sget-object v0, Linfo/flowersoft/theotown/drawing/FontFactory;->DEFAULT_AFFINITY:Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/drawing/FontFactory;->addFont(Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;)V

    return-void
.end method

.method public addFont(Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;)V
    .registers 4

    .line 55
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Linfo/flowersoft/theotown/drawing/FontFactory;->addFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;F)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public addFont(Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;F)V
    .registers 5

    .line 63
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-virtual {p0, v0, p2, p3}, Linfo/flowersoft/theotown/drawing/FontFactory;->addFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;F)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public addFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;F)V
    .registers 6

    .line 70
    new-instance v0, Linfo/flowersoft/theotown/drawing/FontFactory$Font;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/drawing/FontFactory$Font;-><init>(Linfo/flowersoft/theotown/drawing/FontFactory$1;)V

    .line 71
    iput-object p1, v0, Linfo/flowersoft/theotown/drawing/FontFactory$Font;->generator:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    .line 72
    iput-object p2, v0, Linfo/flowersoft/theotown/drawing/FontFactory$Font;->affinity:Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

    .line 73
    iput p3, v0, Linfo/flowersoft/theotown/drawing/FontFactory$Font;->baseline:F

    .line 74
    iget-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->fonts:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPreloadedChars(Ljava/lang/String;)V
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->requiredChars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->requiredChars:Ljava/lang/String;

    return-void
.end method

.method public addReplacement(II)V
    .registers 4

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->replacementChars:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    return-void
.end method

.method public dispose()V
    .registers 3

    const/4 v0, 0x0

    .line 335
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->fonts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 336
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->fonts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/drawing/FontFactory$Font;

    iget-object v1, v1, Linfo/flowersoft/theotown/drawing/FontFactory$Font;->generator:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->fonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->orderedFonts:Ljava/util/List;

    return-void
.end method

.method public generate(IIIFILinfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;)Lio/blueflower/stapel2d/drawing/Image;
    .registers 15

    .line 91
    new-instance v0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;

    move-object v1, p0

    move v4, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;-><init>(Linfo/flowersoft/theotown/drawing/FontFactory;IIIFILinfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;)V

    const/4 p1, 0x0

    .line 92
    :goto_d
    iget-object p2, v1, Linfo/flowersoft/theotown/drawing/FontFactory;->requiredChars:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_21

    .line 93
    iget-object p2, v1, Linfo/flowersoft/theotown/drawing/FontFactory;->requiredChars:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->handle(I)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 95
    :cond_21
    iget-object p1, v0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    return-object p1
.end method

.method public final generateOrderedFontGenerators()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/drawing/FontFactory$Font;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->fonts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    new-instance v1, Linfo/flowersoft/theotown/drawing/FontFactory$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/drawing/FontFactory$1;-><init>(Linfo/flowersoft/theotown/drawing/FontFactory;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final getGlyphAndBitmap(II)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;
    .registers 8

    .line 120
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->orderedFonts:Ljava/util/List;

    if-nez v0, :cond_d

    .line 122
    invoke-virtual {p0}, Linfo/flowersoft/theotown/drawing/FontFactory;->generateOrderedFontGenerators()Ljava/util/List;

    move-result-object v0

    .line 123
    iput-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->orderedFonts:Ljava/util/List;

    goto :goto_d

    :catch_b
    move-exception v0

    goto :goto_33

    :cond_d
    :goto_d
    const/4 v1, 0x0

    .line 126
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/drawing/FontFactory$Font;

    .line 128
    iget-object v3, v2, Linfo/flowersoft/theotown/drawing/FontFactory$Font;->generator:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateGlyphAndBitmap(IIZ)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 130
    iget-object v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->glyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    iget v2, v2, Linfo/flowersoft/theotown/drawing/FontFactory$Font;->baseline:F

    int-to-float v4, p2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_b

    return-object v3

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 135
    :goto_33
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception"

    invoke-interface {v1, v3, v0, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_4f
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->replacementChars:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v0

    if-eq v0, p1, :cond_5c

    .line 139
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/drawing/FontFactory;->getGlyphAndBitmap(II)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;

    move-result-object p1

    return-object p1

    :cond_5c
    const/4 p1, 0x0

    return-object p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    return-void

    .line 100
    :cond_c
    :goto_c
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->locale:Ljava/util/Locale;

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->orderedFonts:Ljava/util/List;

    return-void
.end method

.method public setMissingCharListener(Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;)V
    .registers 2

    .line 87
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory;->missingCharListener:Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;

    return-void
.end method

###### Class info.flowersoft.theotown.drawing.FontFactory.AnonymousClass1 (info.flowersoft.theotown.drawing.FontFactory$1)
.class public Linfo/flowersoft/theotown/drawing/FontFactory$1;
.super Ljava/lang/Object;
.source "FontFactory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/drawing/FontFactory;->generateOrderedFontGenerators()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linfo/flowersoft/theotown/drawing/FontFactory$Font;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/drawing/FontFactory;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/drawing/FontFactory;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$1;->this$0:Linfo/flowersoft/theotown/drawing/FontFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linfo/flowersoft/theotown/drawing/FontFactory$Font;Linfo/flowersoft/theotown/drawing/FontFactory$Font;)I
    .registers 4

    .line 112
    iget-object p2, p2, Linfo/flowersoft/theotown/drawing/FontFactory$Font;->affinity:Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$1;->this$0:Linfo/flowersoft/theotown/drawing/FontFactory;

    invoke-static {v0}, Linfo/flowersoft/theotown/drawing/FontFactory;->access$100(Linfo/flowersoft/theotown/drawing/FontFactory;)Ljava/util/Locale;

    move-result-object v0

    invoke-interface {p2, v0}, Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;->get(Ljava/util/Locale;)I

    move-result p2

    iget-object p1, p1, Linfo/flowersoft/theotown/drawing/FontFactory$Font;->affinity:Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$1;->this$0:Linfo/flowersoft/theotown/drawing/FontFactory;

    invoke-static {v0}, Linfo/flowersoft/theotown/drawing/FontFactory;->access$100(Linfo/flowersoft/theotown/drawing/FontFactory;)Ljava/util/Locale;

    move-result-object v0

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;->get(Ljava/util/Locale;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 109
    check-cast p1, Linfo/flowersoft/theotown/drawing/FontFactory$Font;

    check-cast p2, Linfo/flowersoft/theotown/drawing/FontFactory$Font;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/drawing/FontFactory$1;->compare(Linfo/flowersoft/theotown/drawing/FontFactory$Font;Linfo/flowersoft/theotown/drawing/FontFactory$Font;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.drawing.FontFactory.Font (info.flowersoft.theotown.drawing.FontFactory$Font)
.class public Linfo/flowersoft/theotown/drawing/FontFactory$Font;
.super Ljava/lang/Object;
.source "FontFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/drawing/FontFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation


# instance fields
.field public affinity:Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;

.field public baseline:F

.field public generator:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/drawing/FontFactory$1;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Linfo/flowersoft/theotown/drawing/FontFactory$Font;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.drawing.FontFactory.FontRenderer (info.flowersoft.theotown.drawing.FontFactory$FontRenderer)
.class public Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;
.super Lio/blueflower/stapel2d/drawing/TextureSource;
.source "FontFactory.java"

# interfaces
.implements Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/drawing/FontFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FontRenderer"
.end annotation


# instance fields
.field public fontSize:I

.field public glyphModifier:Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;

.field public glyphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;",
            ">;"
        }
    .end annotation
.end field

.field public image:Lio/blueflower/stapel2d/drawing/Image;

.field public lineHeight:I

.field public nextX:I

.field public nextY:I

.field public originalSize:I

.field public renderedChars:I

.field public renderedContext:I

.field public scale:F

.field public texture:Lio/blueflower/stapel2d/drawing/Texture;

.field public textureHeight:I

.field public textureWidth:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/drawing/FontFactory;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/drawing/FontFactory;IIIFILinfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
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

    .line 163
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->this$0:Linfo/flowersoft/theotown/drawing/FontFactory;

    invoke-direct {p0}, Lio/blueflower/stapel2d/drawing/TextureSource;-><init>()V

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphs:Ljava/util/List;

    const/4 p1, -0x1

    .line 155
    iput p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->renderedContext:I

    const/4 p1, 0x0

    .line 159
    iput p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->lineHeight:I

    .line 164
    iput p2, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->textureWidth:I

    .line 165
    iput p3, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->textureHeight:I

    .line 166
    iput p4, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->fontSize:I

    .line 167
    iput p4, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->originalSize:I

    .line 168
    iput p5, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->scale:F

    .line 169
    iput-object p7, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphModifier:Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;

    .line 171
    new-instance p1, Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {p1, p0}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    const/16 p2, 0x2601

    .line 172
    invoke-virtual {p1, p2, p2}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 174
    new-instance p1, Lio/blueflower/stapel2d/drawing/Image;

    iget-object p2, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {p1, p2}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    .line 175
    invoke-virtual {p1, p0}, Lio/blueflower/stapel2d/drawing/Image;->setMissingCharListener(Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;)V

    .line 176
    iget-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p1, p6}, Lio/blueflower/stapel2d/drawing/Image;->setType(I)V

    .line 177
    iget-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    if-eqz p7, :cond_46

    invoke-interface {p7}, Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;->getPadding()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p5, p2

    goto :goto_47

    :cond_46
    const/4 p5, 0x0

    :goto_47
    invoke-virtual {p1, p5}, Lio/blueflower/stapel2d/drawing/Image;->setFontPadding(F)V

    .line 178
    invoke-virtual {p0}, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->clear()V

    return-void
.end method


# virtual methods
.method public final addZeroFrame()V
    .registers 4

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    iget v1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->scale:F

    iget v2, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->fontSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    return-void
.end method

.method public declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    const/4 v0, -0x1

    .line 322
    :try_start_2
    iput v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->renderedContext:I

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->renderedChars:I

    .line 324
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 325
    iget-object v1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Image;->clear()V

    .line 326
    invoke-virtual {p0}, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->addZeroFrame()V

    .line 327
    iput v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->nextX:I

    .line 328
    iput v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->nextY:I

    .line 329
    iput v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->lineHeight:I
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    .line 330
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public getHeight()I
    .registers 2

    .line 205
    iget v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->textureHeight:I

    return v0
.end method

.method public getOriginalSize()I
    .registers 2

    .line 191
    iget v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->originalSize:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 200
    iget v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->textureWidth:I

    return v0
.end method

.method public declared-synchronized handle(I)Z
    .registers 18

    move-object/from16 v1, p0

    move/from16 v7, p1

    monitor-enter p0

    .line 260
    :try_start_5
    iget-object v0, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->this$0:Linfo/flowersoft/theotown/drawing/FontFactory;

    iget v2, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->fontSize:I

    invoke-static {v0, v7, v2}, Linfo/flowersoft/theotown/drawing/FontFactory;->access$200(Linfo/flowersoft/theotown/drawing/FontFactory;II)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;

    move-result-object v0

    const/4 v9, 0x1

    if-eqz v0, :cond_bd

    .line 262
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->glyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    if-eqz v2, :cond_bd

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->bitmap:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    if-nez v3, :cond_1a

    goto/16 :goto_bd

    .line 277
    :cond_1a
    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 278
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->glyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->bitmap:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 279
    iget v4, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->nextX:I

    .line 280
    iget v5, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->nextY:I

    .line 281
    iget-object v6, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphModifier:Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;

    const/4 v8, 0x0

    if-eqz v6, :cond_44

    invoke-interface {v6}, Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;->getPadding()I

    move-result v6

    move v10, v6

    goto :goto_45

    :catchall_41
    move-exception v0

    goto/16 :goto_104

    :cond_44
    move v10, v8

    :goto_45
    mul-int/lit8 v6, v10, 0x2

    add-int v11, v2, v6

    add-int/2addr v3, v6

    add-int v2, v4, v11

    .line 285
    iget v6, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->textureWidth:I

    if-lt v2, v6, :cond_56

    .line 287
    iget v2, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->lineHeight:I

    add-int/2addr v5, v2

    .line 288
    iput v8, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->lineHeight:I

    move v4, v8

    :cond_56
    add-int v2, v5, v3

    .line 291
    iget v6, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->textureHeight:I

    if-lt v2, v6, :cond_62

    .line 292
    invoke-virtual {v1}, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->handleOverflow()V

    move v12, v8

    move v13, v12

    goto :goto_64

    :cond_62
    move v12, v4

    move v13, v5

    .line 297
    :goto_64
    iget v2, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->lineHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->lineHeight:I

    add-int v2, v12, v11

    add-int/2addr v2, v9

    .line 299
    iput v2, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->nextX:I

    .line 300
    iput v13, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->nextY:I

    .line 302
    iget-object v2, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v4, v12

    move v5, v4

    int-to-float v4, v13

    move v6, v5

    int-to-float v5, v11

    int-to-float v3, v3

    iget v8, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->scale:F

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->glyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v14, v14, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v14, v14

    mul-float/2addr v8, v14

    float-to-int v8, v8

    move v15, v6

    move v6, v3

    move v3, v15

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Image;->addChar(FFFFII)I

    move-result v2

    .line 303
    iget-object v3, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->glyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    neg-int v4, v4

    add-int/2addr v4, v10

    int-to-float v4, v4

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    neg-int v0, v0

    add-int/2addr v0, v10

    int-to-float v0, v0

    invoke-virtual {v3, v2, v4, v0}, Lio/blueflower/stapel2d/drawing/Image;->setHandle(IFF)V

    .line 304
    iget-object v0, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->scale:F

    invoke-virtual {v0, v2, v3, v3}, Lio/blueflower/stapel2d/drawing/Image;->scale(IFF)V

    .line 306
    new-instance v0, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;-><init>(Linfo/flowersoft/theotown/drawing/FontFactory$1;)V

    .line 307
    iput v12, v0, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;->x:I

    .line 308
    iput v13, v0, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;->y:I

    .line 309
    iput v11, v0, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;->width:I

    .line 310
    iput v7, v0, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;->c:I

    .line 311
    iget-object v2, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Texture;->setDirty()V
    :try_end_bb
    .catchall {:try_start_5 .. :try_end_bb} :catchall_41

    .line 314
    monitor-exit p0

    return v9

    :cond_bd
    :goto_bd
    const/16 v0, 0x3f

    if-eq v7, v0, :cond_fc

    .line 271
    :try_start_c1
    iget-object v2, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Image;->charToFrame(I)I

    move-result v3

    iget-object v4, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->image:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v4, v0}, Lio/blueflower/stapel2d/drawing/Image;->charToXAdvance(I)I

    move-result v0

    invoke-virtual {v2, v7, v3, v0}, Lio/blueflower/stapel2d/drawing/Image;->addChar(III)V

    .line 272
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "FontFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Didn\'t find char "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->this$0:Linfo/flowersoft/theotown/drawing/FontFactory;

    invoke-static {v0}, Linfo/flowersoft/theotown/drawing/FontFactory;->access$300(Linfo/flowersoft/theotown/drawing/FontFactory;)Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;

    move-result-object v0

    if-eqz v0, :cond_fa

    iget-object v0, v1, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->this$0:Linfo/flowersoft/theotown/drawing/FontFactory;

    invoke-static {v0}, Linfo/flowersoft/theotown/drawing/FontFactory;->access$300(Linfo/flowersoft/theotown/drawing/FontFactory;)Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;

    move-result-object v0

    invoke-interface {v0, v7}, Lio/blueflower/stapel2d/drawing/Image$MissingCharListener;->handle(I)Z
    :try_end_fa
    .catchall {:try_start_c1 .. :try_end_fa} :catchall_41

    .line 274
    :cond_fa
    monitor-exit p0

    return v9

    .line 267
    :cond_fc
    :try_start_fc
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not resolve `?` which is sus"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :goto_104
    monitor-exit p0
    :try_end_105
    .catchall {:try_start_fc .. :try_end_105} :catchall_41

    throw v0
.end method

.method public final declared-synchronized handleOverflow()V
    .registers 2

    monitor-enter p0

    .line 318
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->clear()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 319
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized load(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 11

    monitor-enter p0

    .line 210
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphModifier:Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;->getPadding()I

    move-result v0

    goto :goto_f

    :catchall_b
    move-exception p1

    goto/16 :goto_a8

    :cond_e
    move v0, v1

    .line 212
    :goto_f
    iget v2, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->renderedContext:I

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Texture;->getCurrentContext()I

    move-result v3

    if-eq v2, v3, :cond_1f

    .line 213
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Texture;->getCurrentContext()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->renderedContext:I

    .line 214
    iput v1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->renderedChars:I

    .line 216
    :cond_1f
    iget p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->renderedChars:I

    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_a6

    .line 217
    iget p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->renderedChars:I

    if-nez p1, :cond_3e

    .line 218
    new-instance p1, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v2, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->textureWidth:I

    iget v3, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->textureHeight:I

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {p1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 219
    invoke-virtual {p0, p1, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/TextureSource;->upload(Lcom/badlogic/gdx/graphics/Pixmap;III)V

    .line 220
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 223
    :cond_3e
    iget p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->renderedChars:I

    :goto_40
    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_9e

    .line 224
    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphs:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;

    .line 225
    iget-object v3, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->this$0:Linfo/flowersoft/theotown/drawing/FontFactory;

    iget v4, v2, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;->c:I

    iget v5, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->fontSize:I

    invoke-static {v3, v4, v5}, Linfo/flowersoft/theotown/drawing/FontFactory;->access$200(Linfo/flowersoft/theotown/drawing/FontFactory;II)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;

    move-result-object v3

    if-eqz v3, :cond_9b

    .line 227
    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->bitmap:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_b

    if-eqz v3, :cond_9b

    .line 230
    :try_start_60
    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixmap(Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    .line 232
    iget-object v5, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphModifier:Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;

    if-eqz v5, :cond_8d

    .line 233
    new-instance v5, Lcom/badlogic/gdx/graphics/Pixmap;

    .line 234
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    .line 235
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v8

    add-int/2addr v8, v7

    invoke-direct {v5, v6, v8, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 237
    iget-object v4, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphModifier:Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;

    iget v6, v2, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;->c:I

    invoke-interface {v4, v6, v3, v5}, Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;->modify(ILcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 238
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object v3, v5

    goto :goto_8d

    :catch_8b
    move-exception v2

    goto :goto_98

    .line 242
    :cond_8d
    :goto_8d
    iget v4, v2, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;->x:I

    iget v2, v2, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;->y:I

    invoke-virtual {p0, v3, v4, v2, v1}, Lio/blueflower/stapel2d/drawing/TextureSource;->upload(Lcom/badlogic/gdx/graphics/Pixmap;III)V

    .line 243
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_97} :catch_8b
    .catchall {:try_start_60 .. :try_end_97} :catchall_b

    goto :goto_9b

    .line 245
    :goto_98
    :try_start_98
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9b
    :goto_9b
    add-int/lit8 p1, p1, 0x1

    goto :goto_40

    .line 250
    :cond_9e
    iget-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->glyphs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->renderedChars:I
    :try_end_a6
    .catchall {:try_start_98 .. :try_end_a6} :catchall_b

    .line 252
    :cond_a6
    monitor-exit p0

    return-void

    :goto_a8
    :try_start_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_b

    throw p1
.end method

.method public release(Lio/blueflower/stapel2d/drawing/Texture;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setFontSize(I)V
    .registers 2

    .line 186
    iput p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->fontSize:I

    .line 187
    invoke-virtual {p0}, Linfo/flowersoft/theotown/drawing/FontFactory$FontRenderer;->clear()V

    return-void
.end method

###### Class info.flowersoft.theotown.drawing.FontFactory.Glyph (info.flowersoft.theotown.drawing.FontFactory$Glyph)
.class public Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;
.super Ljava/lang/Object;
.source "FontFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/drawing/FontFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Glyph"
.end annotation


# instance fields
.field public c:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/drawing/FontFactory$1;)V
    .registers 2

    .line 342
    invoke-direct {p0}, Linfo/flowersoft/theotown/drawing/FontFactory$Glyph;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.drawing.FontFactory.GlyphModifier (info.flowersoft.theotown.drawing.FontFactory$GlyphModifier)
.class public interface abstract Linfo/flowersoft/theotown/drawing/FontFactory$GlyphModifier;
.super Ljava/lang/Object;
.source "FontFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/drawing/FontFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GlyphModifier"
.end annotation


# virtual methods
.method public abstract getPadding()I
.end method

.method public abstract modify(ILcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;)V
.end method

###### Class info.flowersoft.theotown.drawing.FontFactory.LocaleAffinity (info.flowersoft.theotown.drawing.FontFactory$LocaleAffinity)
.class public interface abstract Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;
.super Ljava/lang/Object;
.source "FontFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/drawing/FontFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocaleAffinity"
.end annotation


# virtual methods
.method public abstract get(Ljava/util/Locale;)I
.end method

###### Class info.flowersoft.theotown.drawing.FontFactory$$ExternalSyntheticLambda0 (info.flowersoft.theotown.drawing.FontFactory$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/drawing/FontFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/util/Locale;)I
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/drawing/FontFactory;->$r8$lambda$ou1BwFHLwHy9FI5w78BIeOMCG7w(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.drawing.FontFactory$$ExternalSyntheticLambda1 (info.flowersoft.theotown.drawing.FontFactory$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/drawing/FontFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/drawing/FontFactory$LocaleAffinity;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/FontFactory$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get(Ljava/util/Locale;)I
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/FontFactory$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/drawing/FontFactory;->$r8$lambda$4JkKyi1nkTf_zA0N-Qxn840ysUM(Ljava/lang/String;Ljava/util/Locale;)I

    move-result p1

    return p1
.end method
