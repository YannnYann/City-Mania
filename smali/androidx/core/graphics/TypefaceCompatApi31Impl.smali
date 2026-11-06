###### Class androidx.core.graphics.TypefaceCompatApi31Impl (androidx.core.graphics.TypefaceCompatApi31Impl)
.class public Landroidx/core/graphics/TypefaceCompatApi31Impl;
.super Landroidx/core/graphics/TypefaceCompatApi29Impl;
.source "TypefaceCompatApi31Impl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi29Impl;-><init>()V

    return-void
.end method

.method public static getSystemFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 3

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 42
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p0, :cond_14

    .line 43
    invoke-virtual {p0, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getFontFromSystemFont(Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/fonts/Font;
    .registers 5

    .line 49
    invoke-virtual {p1}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getSystemFont()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 54
    :cond_8
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompatApi31Impl;->getSystemFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_f

    return-object v1

    .line 59
    :cond_f
    invoke-static {v0}, Landroidx/core/graphics/TypefaceCompat;->guessPrimaryFont(Landroid/graphics/Typeface;)Landroid/graphics/fonts/Font;

    move-result-object v0

    if-nez v0, :cond_16

    return-object v1

    .line 64
    :cond_16
    invoke-virtual {p1}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getVariationSettings()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    return-object v0

    .line 68
    :cond_21
    :try_start_21
    new-instance v2, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v2, v0}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 69
    invoke-virtual {p1}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getVariationSettings()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object p1
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_32} :catch_33

    return-object p1

    .line 73
    :catch_33
    const-string p1, "TypefaceCompatApi31Impl"

    const-string v0, "Failed to clone Font instance. Fall back to provider font."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
