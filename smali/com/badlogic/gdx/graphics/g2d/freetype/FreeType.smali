###### Class com.badlogic.gdx.graphics.g2d.freetype.FreeType (com.badlogic.gdx.graphics.g2d.freetype.FreeType)
.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.super Ljava/lang/Object;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
    }
.end annotation


# static fields
.field public static FT_ENCODING_ADOBE_CUSTOM:I = 0x0

.field public static FT_ENCODING_ADOBE_EXPERT:I = 0x0

.field public static FT_ENCODING_ADOBE_LATIN_1:I = 0x0

.field public static FT_ENCODING_ADOBE_STANDARD:I = 0x0

.field public static FT_ENCODING_APPLE_ROMAN:I = 0x0

.field public static FT_ENCODING_BIG5:I = 0x0

.field public static FT_ENCODING_GB2312:I = 0x0

.field public static FT_ENCODING_JOHAB:I = 0x0

.field public static FT_ENCODING_MS_SYMBOL:I = 0x0

.field public static FT_ENCODING_OLD_LATIN_2:I = 0x0

.field public static FT_ENCODING_SJIS:I = 0x0

.field public static FT_ENCODING_UNICODE:I = 0x0

.field public static FT_ENCODING_WANSUNG:I = 0x0

.field public static FT_FACE_FLAG_CID_KEYED:I = 0x0

.field public static FT_FACE_FLAG_EXTERNAL_STREAM:I = 0x0

.field public static FT_FACE_FLAG_FAST_GLYPHS:I = 0x0

.field public static FT_FACE_FLAG_FIXED_SIZES:I = 0x0

.field public static FT_FACE_FLAG_FIXED_WIDTH:I = 0x0

.field public static FT_FACE_FLAG_GLYPH_NAMES:I = 0x0

.field public static FT_FACE_FLAG_HINTER:I = 0x0

.field public static FT_FACE_FLAG_HORIZONTAL:I = 0x0

.field public static FT_FACE_FLAG_KERNING:I = 0x0

.field public static FT_FACE_FLAG_MULTIPLE_MASTERS:I = 0x0

.field public static FT_FACE_FLAG_SCALABLE:I = 0x0

.field public static FT_FACE_FLAG_SFNT:I = 0x0

.field public static FT_FACE_FLAG_TRICKY:I = 0x0

.field public static FT_FACE_FLAG_VERTICAL:I = 0x0

.field public static FT_KERNING_DEFAULT:I = 0x0

.field public static FT_KERNING_UNFITTED:I = 0x0

.field public static FT_KERNING_UNSCALED:I = 0x0

.field public static FT_LOAD_CROP_BITMAP:I = 0x0

.field public static FT_LOAD_DEFAULT:I = 0x0

.field public static FT_LOAD_FORCE_AUTOHINT:I = 0x0

.field public static FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH:I = 0x0

.field public static FT_LOAD_IGNORE_TRANSFORM:I = 0x0

.field public static FT_LOAD_LINEAR_DESIGN:I = 0x0

.field public static FT_LOAD_MONOCHROME:I = 0x0

.field public static FT_LOAD_NO_AUTOHINT:I = 0x0

.field public static FT_LOAD_NO_BITMAP:I = 0x0

.field public static FT_LOAD_NO_HINTING:I = 0x0

.field public static FT_LOAD_NO_RECURSE:I = 0x0

.field public static FT_LOAD_NO_SCALE:I = 0x0

.field public static FT_LOAD_PEDANTIC:I = 0x0

.field public static FT_LOAD_RENDER:I = 0x0

.field public static FT_LOAD_TARGET_LCD:I = 0x0

.field public static FT_LOAD_TARGET_LCD_V:I = 0x0

.field public static FT_LOAD_TARGET_LIGHT:I = 0x0

.field public static FT_LOAD_TARGET_MONO:I = 0x0

.field public static FT_LOAD_TARGET_NORMAL:I = 0x0

.field public static FT_LOAD_VERTICAL_LAYOUT:I = 0x0

.field public static FT_PIXEL_MODE_GRAY:I = 0x2

.field public static FT_PIXEL_MODE_MONO:I = 0x1

.field public static FT_RENDER_MODE_LCD:I

.field public static FT_RENDER_MODE_LCD_V:I

.field public static FT_RENDER_MODE_LIGHT:I

.field public static FT_RENDER_MODE_MAX:I

.field public static FT_RENDER_MODE_MONO:I

.field public static FT_RENDER_MODE_NORMAL:I

.field public static FT_STROKER_LINECAP_BUTT:I

.field public static FT_STROKER_LINECAP_ROUND:I

.field public static FT_STROKER_LINECAP_SQUARE:I

.field public static FT_STROKER_LINEJOIN_BEVEL:I

.field public static FT_STROKER_LINEJOIN_MITER:I

.field public static FT_STROKER_LINEJOIN_MITER_FIXED:I

.field public static FT_STROKER_LINEJOIN_MITER_VARIABLE:I

.field public static FT_STROKER_LINEJOIN_ROUND:I

.field public static FT_STYLE_FLAG_BOLD:I

.field public static FT_STYLE_FLAG_ITALIC:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v0, 0x73

    const/16 v1, 0x79

    const/16 v2, 0x6d

    const/16 v3, 0x62

    .line 848
    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v1

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_MS_SYMBOL:I

    const/16 v1, 0x63

    const/16 v4, 0x75

    const/16 v5, 0x6e

    const/16 v6, 0x69

    .line 849
    invoke-static {v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v1

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_UNICODE:I

    const/16 v1, 0x6a

    .line 850
    invoke-static {v0, v1, v6, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v4

    sput v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_SJIS:I

    const/16 v4, 0x67

    const/16 v7, 0x20

    .line 851
    invoke-static {v4, v3, v7, v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v8

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_GB2312:I

    const/16 v8, 0x35

    .line 852
    invoke-static {v3, v6, v4, v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v3

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_BIG5:I

    const/16 v3, 0x77

    const/16 v4, 0x61

    .line 853
    invoke-static {v3, v4, v5, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_WANSUNG:I

    const/16 v0, 0x6f

    const/16 v3, 0x68

    .line 854
    invoke-static {v1, v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_JOHAB:I

    const/16 v0, 0x41

    const/16 v1, 0x44

    const/16 v3, 0x4f

    const/16 v6, 0x42

    .line 855
    invoke-static {v0, v1, v3, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v3

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_STANDARD:I

    const/16 v3, 0x45

    .line 856
    invoke-static {v0, v1, v6, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v3

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_EXPERT:I

    const/16 v3, 0x43

    .line 857
    invoke-static {v0, v1, v6, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_CUSTOM:I

    const/16 v0, 0x31

    const/16 v1, 0x6c

    const/16 v3, 0x74

    .line 858
    invoke-static {v1, v4, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_LATIN_1:I

    const/16 v0, 0x32

    .line 859
    invoke-static {v1, v4, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_OLD_LATIN_2:I

    const/16 v0, 0x72

    .line 860
    invoke-static {v4, v0, v2, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_APPLE_ROMAN:I

    const/4 v0, 0x1

    .line 862
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_SCALABLE:I

    const/4 v1, 0x2

    .line 863
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_SIZES:I

    const/4 v2, 0x4

    .line 864
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_WIDTH:I

    const/16 v3, 0x8

    .line 865
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_SFNT:I

    const/16 v4, 0x10

    .line 866
    sput v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HORIZONTAL:I

    .line 867
    sput v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_VERTICAL:I

    const/16 v5, 0x40

    .line 868
    sput v5, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_KERNING:I

    const/16 v6, 0x80

    .line 869
    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FAST_GLYPHS:I

    const/16 v8, 0x100

    .line 870
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_MULTIPLE_MASTERS:I

    const/16 v8, 0x200

    .line 871
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_GLYPH_NAMES:I

    const/16 v8, 0x400

    .line 872
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_EXTERNAL_STREAM:I

    const/16 v8, 0x800

    .line 873
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HINTER:I

    const/16 v8, 0x1000

    .line 874
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_CID_KEYED:I

    const/16 v8, 0x2000

    .line 875
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_TRICKY:I

    .line 877
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STYLE_FLAG_ITALIC:I

    .line 878
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STYLE_FLAG_BOLD:I

    const/4 v8, 0x0

    .line 880
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_DEFAULT:I

    .line 881
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_SCALE:I

    .line 882
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_HINTING:I

    .line 883
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_RENDER:I

    .line 884
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_BITMAP:I

    .line 885
    sput v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_VERTICAL_LAYOUT:I

    .line 886
    sput v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    .line 887
    sput v5, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_CROP_BITMAP:I

    .line 888
    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_PEDANTIC:I

    const/16 v3, 0x200

    .line 889
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH:I

    const/16 v3, 0x400

    .line 890
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_RECURSE:I

    const/16 v3, 0x800

    .line 891
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_IGNORE_TRANSFORM:I

    const/16 v3, 0x1000

    .line 892
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_MONOCHROME:I

    const/16 v3, 0x2000

    .line 893
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_LINEAR_DESIGN:I

    const v3, 0x8000

    .line 894
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_AUTOHINT:I

    .line 896
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_NORMAL:I

    const/high16 v3, 0x10000

    .line 897
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LIGHT:I

    const/high16 v3, 0x20000

    .line 898
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_MONO:I

    const/high16 v3, 0x30000

    .line 899
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LCD:I

    const/high16 v3, 0x40000

    .line 900
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LCD_V:I

    .line 902
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    .line 903
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_LIGHT:I

    .line 904
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MONO:I

    const/4 v3, 0x3

    .line 905
    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_LCD:I

    .line 906
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_LCD_V:I

    const/4 v2, 0x5

    .line 907
    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MAX:I

    .line 909
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_KERNING_DEFAULT:I

    .line 910
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_KERNING_UNFITTED:I

    .line 911
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_KERNING_UNSCALED:I

    .line 913
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_BUTT:I

    .line 914
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_ROUND:I

    .line 915
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_SQUARE:I

    .line 917
    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_ROUND:I

    .line 918
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_BEVEL:I

    .line 919
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER_VARIABLE:I

    .line 920
    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER:I

    const/4 v0, 0x3

    .line 921
    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER_FIXED:I

    return-void
.end method

.method public static encode(CCCC)I
    .registers 4

    .line 0
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public static native getLastErrorCode()I
.end method

.method public static initFreeType()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;
    .registers 4

    .line 924
    new-instance v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;-><init>()V

    const-string v1, "gdx-freetype"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->load(Ljava/lang/String;)V

    .line 925
    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->initFreeTypeJni()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1a

    .line 929
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;-><init>(J)V

    return-object v2

    .line 927
    :cond_1a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t initialize FreeType library, FreeType error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native initFreeTypeJni()J
.end method

.method public static toInt(I)I
    .registers 1

    .line 0
    add-int/lit8 p0, p0, 0x3f

    and-int/lit8 p0, p0, -0x40

    shr-int/lit8 p0, p0, 0x6

    return p0
.end method

###### Class com.badlogic.gdx.graphics.g2d.freetype.FreeType.Bitmap (com.badlogic.gdx.graphics.g2d.freetype.FreeType$Bitmap)
.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bitmap"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    return-void
.end method

.method private static native getBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method private static native getPitch(J)I
.end method

.method private static native getPixelMode(J)I
.end method

.method private static native getRows(J)I
.end method

.method private static native getWidth(J)I
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 644
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 650
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 651
    :cond_c
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getPitch()I
    .registers 3

    .line 636
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch(J)I

    move-result v0

    return v0
.end method

.method public getPixelMode()I
    .registers 3

    .line 734
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixelMode(J)I

    move-result v0

    return v0
.end method

.method public getPixmap(Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 23

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v3

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixelMode()I

    move-result v5

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 666
    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x0

    move-object/from16 v9, p2

    if-ne v9, v7, :cond_47

    sget v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_GRAY:I

    if-ne v5, v7, :cond_47

    if-ne v6, v2, :cond_47

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v7

    if-nez v7, :cond_47

    .line 667
    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v3, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 668
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {v4, v2, v3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    goto/16 :goto_f1

    .line 670
    :cond_47
    new-instance v7, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v7, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 671
    invoke-static {v9}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(Lcom/badlogic/gdx/graphics/Color;)I

    move-result v9

    .line 672
    new-array v6, v6, [B

    .line 673
    new-array v10, v2, [I

    .line 674
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    .line 675
    sget v12, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_PIXEL_MODE_MONO:I

    if-ne v5, v12, :cond_9a

    move v1, v8

    :goto_63
    if-ge v1, v3, :cond_f0

    .line 678
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v5, v8

    move v12, v5

    :goto_6a
    if-ge v5, v2, :cond_94

    .line 680
    aget-byte v13, v6, v12

    sub-int v14, v2, v5

    const/16 v15, 0x8

    .line 681
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    move v15, v8

    :goto_77
    if-ge v15, v14, :cond_8f

    rsub-int/lit8 v16, v15, 0x7

    const/16 v17, 0x1

    shl-int v16, v17, v16

    and-int v16, v13, v16

    if-eqz v16, :cond_88

    add-int v16, v5, v15

    .line 683
    aput v9, v10, v16

    goto :goto_8c

    :cond_88
    add-int v16, v5, v15

    .line 685
    aput v8, v10, v16

    :goto_8c
    add-int/lit8 v15, v15, 0x1

    goto :goto_77

    :cond_8f
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v5, v5, 0x8

    goto :goto_6a

    .line 688
    :cond_94
    invoke-virtual {v11, v10}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_9a
    and-int/lit16 v5, v9, -0x100

    and-int/lit16 v12, v9, 0xff

    move v13, v8

    :goto_9f
    if-ge v13, v3, :cond_f0

    .line 695
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v14, v8

    :goto_a5
    if-ge v14, v2, :cond_e2

    .line 700
    aget-byte v15, v6, v14

    const/16 v8, 0xff

    and-int/2addr v15, v8

    if-nez v15, :cond_b8

    .line 702
    aput v5, v10, v14

    :goto_b0
    move/from16 v17, v2

    move/from16 v18, v3

    move-object v15, v4

    move/from16 p2, v5

    goto :goto_d7

    :cond_b8
    if-ne v15, v8, :cond_bd

    .line 704
    aput v9, v10, v14

    goto :goto_b0

    :cond_bd
    int-to-float v8, v12

    int-to-float v15, v15

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v15, v15, v17

    move/from16 v17, v2

    move/from16 v18, v3

    float-to-double v2, v15

    move-object v15, v4

    move/from16 p2, v5

    float-to-double v4, v1

    .line 706
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v8, v2

    float-to-int v2, v8

    or-int v2, p2, v2

    aput v2, v10, v14

    :goto_d7
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, p2

    move-object v4, v15

    move/from16 v2, v17

    move/from16 v3, v18

    const/4 v8, 0x0

    goto :goto_a5

    :cond_e2
    move/from16 v17, v2

    move/from16 v18, v3

    move-object v15, v4

    move/from16 p2, v5

    .line 708
    invoke-virtual {v11, v10}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    goto :goto_9f

    :cond_f0
    move-object v1, v7

    .line 714
    :goto_f1
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    if-eq v0, v2, :cond_116

    .line 715
    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 716
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    const/4 v0, 0x0

    .line 717
    invoke-virtual {v2, v1, v0, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    .line 718
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    .line 719
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    return-object v2

    :cond_116
    return-object v1
.end method

.method public getRows()I
    .registers 3

    .line 620
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows(J)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 628
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth(J)I

    move-result v0

    return v0
.end method

###### Class com.badlogic.gdx.graphics.g2d.freetype.FreeType.Face (com.badlogic.gdx.graphics.g2d.freetype.FreeType$Face)
.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;


# direct methods
.method public constructor <init>(JLcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;)V
    .registers 4

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    .line 163
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    return-void
.end method

.method private static native doneFace(J)V
.end method

.method private static native getCharIndex(JI)I
.end method

.method private static native getFaceFlags(J)I
.end method

.method private static native getGlyph(J)J
.end method

.method private static native getSize(J)J
.end method

.method private static native loadChar(JII)Z
.end method

.method private static native setPixelSizes(JII)Z
.end method


# virtual methods
.method public dispose()V
    .registers 5

    .line 168
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->doneFace(J)V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_25

    .line 171
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 172
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 173
    invoke-static {v0}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_25
    return-void
.end method

.method public getCharIndex(I)I
    .registers 4

    .line 337
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(JI)I

    move-result p1

    return p1
.end method

.method public getFaceFlags()I
    .registers 3

    .line 182
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getFaceFlags(J)I

    move-result v0

    return v0
.end method

.method public getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
    .registers 4

    .line 302
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;-><init>(J)V

    return-object v0
.end method

.method public getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;
    .registers 4

    .line 310
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;-><init>(J)V

    return-object v0
.end method

.method public loadChar(II)Z
    .registers 5

    .line 294
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->loadChar(JII)Z

    move-result p1

    return p1
.end method

.method public setPixelSizes(II)Z
    .registers 5

    .line 278
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->setPixelSizes(JII)Z

    move-result p1

    return p1
.end method

###### Class com.badlogic.gdx.graphics.g2d.freetype.FreeType.GlyphMetrics (com.badlogic.gdx.graphics.g2d.freetype.FreeType$GlyphMetrics)
.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlyphMetrics"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 744
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    return-void
.end method

.method private static native getHoriAdvance(J)I
.end method


# virtual methods
.method public getHoriAdvance()I
    .registers 3

    .line 780
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance(J)I

    move-result v0

    return v0
.end method

###### Class com.badlogic.gdx.graphics.g2d.freetype.FreeType.GlyphSlot (com.badlogic.gdx.graphics.g2d.freetype.FreeType$GlyphSlot)
.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlyphSlot"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    return-void
.end method

.method private static native getBitmap(J)J
.end method

.method private static native getBitmapLeft(J)I
.end method

.method private static native getBitmapTop(J)I
.end method

.method private static native getFormat(J)I
.end method

.method private static native getMetrics(J)J
.end method

.method private static native renderGlyph(JI)Z
.end method


# virtual methods
.method public getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;
    .registers 4

    .line 484
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmap(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;-><init>(J)V

    return-object v0
.end method

.method public getBitmapLeft()I
    .registers 3

    .line 493
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapLeft(J)I

    move-result v0

    return v0
.end method

.method public getBitmapTop()I
    .registers 3

    .line 501
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapTop(J)I

    move-result v0

    return v0
.end method

.method public getFormat()I
    .registers 3

    .line 476
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getFormat(J)I

    move-result v0

    return v0
.end method

.method public getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;
    .registers 4

    .line 436
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;-><init>(J)V

    return-object v0
.end method

.method public renderGlyph(I)Z
    .registers 4

    .line 509
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->renderGlyph(JI)Z

    move-result p1

    return p1
.end method

###### Class com.badlogic.gdx.graphics.g2d.freetype.FreeType.Library (com.badlogic.gdx.graphics.g2d.freetype.FreeType$Library)
.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Library"
.end annotation


# instance fields
.field public fontData:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    .line 63
    new-instance p1, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/LongMap;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    return-void
.end method

.method private static native doneFreeType(J)V
.end method

.method private static native newMemoryFace(JLjava/nio/ByteBuffer;II)J
.end method


# virtual methods
.method public dispose()V
    .registers 4

    .line 71
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->doneFreeType(J)V

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 73
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 74
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_f

    :cond_25
    return-void
.end method

.method public newFace(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .registers 7

    .line 85
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->map()Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_3f

    .line 90
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    .line 92
    :try_start_c
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v1

    long-to-int p1, v1

    if-nez p1, :cond_29

    const/16 p1, 0x4000

    .line 95
    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object p1

    .line 96
    array-length v1, p1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 97
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    move-object p1, v1

    goto :goto_30

    :catchall_25
    move-exception p1

    goto :goto_3b

    :catch_27
    move-exception p1

    goto :goto_35

    .line 100
    :cond_29
    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 101
    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_30} :catch_27
    .catchall {:try_start_c .. :try_end_30} :catchall_25

    .line 106
    :goto_30
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, p1

    goto :goto_3f

    .line 104
    :goto_35
    :try_start_35
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_25

    .line 106
    :goto_3b
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 107
    throw p1

    .line 109
    :cond_3f
    :goto_3f
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-result-object p1

    return-object p1
.end method

.method public newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .registers 7

    .line 119
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(JLjava/nio/ByteBuffer;II)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_34

    .line 121
    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 122
    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 123
    :cond_19
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t load font, FreeType error code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_34
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {p2, v0, v1, p1}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-direct {p1, v0, v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;-><init>(JLcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;)V

    return-object p1
.end method

###### Class com.badlogic.gdx.graphics.g2d.freetype.FreeType.Pointer (com.badlogic.gdx.graphics.g2d.freetype.FreeType$Pointer)
.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.super Ljava/lang/Object;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pointer"
.end annotation


# instance fields
.field public address:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    return-void
.end method

###### Class com.badlogic.gdx.graphics.g2d.freetype.FreeType.Size (com.badlogic.gdx.graphics.g2d.freetype.FreeType$Size)
.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    return-void
.end method

.method private static native getMetrics(J)J
.end method


# virtual methods
.method public getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;
    .registers 4

    .line 352
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    iget-wide v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;-><init>(J)V

    return-object v0
.end method

###### Class com.badlogic.gdx.graphics.g2d.freetype.FreeType.SizeMetrics (com.badlogic.gdx.graphics.g2d.freetype.FreeType$SizeMetrics)
.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeMetrics"
.end annotation


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    return-void
.end method

.method private static native getAscender(J)I
.end method


# virtual methods
.method public getAscender()I
    .registers 3

    .line 398
    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender(J)I

    move-result v0

    return v0
.end method
