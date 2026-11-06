###### Class io.bidmachine.util.gradient.BilinearGradientApi01 (io.bidmachine.util.gradient.BilinearGradientApi01)
.class public final Lio/bidmachine/util/gradient/BilinearGradientApi01;
.super Landroid/graphics/BitmapShader;
.source "BilinearGradientApi01.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/util/gradient/BilinearGradientApi01;->Companion:Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;[ILandroid/graphics/Bitmap$Config;)V
    .registers 5

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lio/bidmachine/util/gradient/BilinearGradientApi01;->Companion:Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;

    invoke-static {v0, p1, p2, p3}, Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;->access$createBitmap(Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;Landroid/graphics/RectF;[ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 17
    sget-object p2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 15
    invoke-direct {p0, p1, p2, p2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

###### Class io.bidmachine.util.gradient.BilinearGradientApi01.Companion (io.bidmachine.util.gradient.BilinearGradientApi01$Companion)
.class public final Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;
.super Ljava/lang/Object;
.source "BilinearGradientApi01.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/util/gradient/BilinearGradientApi01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBilinearGradientApi01.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BilinearGradientApi01.kt\nio/bidmachine/util/gradient/BilinearGradientApi01$Companion\n+ 2 Utils.kt\nio/bidmachine/util/UtilsKt\n*L\n1#1,58:1\n846#2,4:59\n*S KotlinDebug\n*F\n+ 1 BilinearGradientApi01.kt\nio/bidmachine/util/gradient/BilinearGradientApi01$Companion\n*L\n28#1:59,4\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createBitmap(Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;Landroid/graphics/RectF;[ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;->createBitmap(Landroid/graphics/RectF;[ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bilinearGradient(Landroid/graphics/RectF;[IZ)[I
    .registers 21

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    mul-int v2, v0, v1

    .line 45
    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v1, :cond_49

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_18

    move v14, v5

    goto :goto_1e

    :cond_18
    int-to-float v7, v4

    add-int/lit8 v8, v1, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v14, v7

    :goto_1e
    move v7, v3

    :goto_1f
    if-ge v7, v0, :cond_46

    if-ne v0, v6, :cond_25

    move v13, v5

    goto :goto_2b

    :cond_25
    int-to-float v8, v7

    add-int/lit8 v9, v0, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v13, v8

    :goto_2b
    mul-int v8, v4, v0

    add-int v16, v8, v7

    .line 51
    sget-object v8, Lio/bidmachine/util/ColorUtils;->INSTANCE:Lio/bidmachine/util/ColorUtils;

    aget v9, p2, v3

    aget v10, p2, v6

    const/4 v11, 0x2

    aget v11, p2, v11

    const/4 v12, 0x3

    aget v12, p2, v12

    move/from16 v15, p3

    invoke-virtual/range {v8 .. v15}, Lio/bidmachine/util/ColorUtils;->blerp(IIIIFFZ)I

    move-result v8

    aput v8, v2, v16

    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_49
    return-object v2
.end method

.method public final createBitmap(Landroid/graphics/RectF;[ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseKtx"
        }
    .end annotation

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v4, v0

    .line 30
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v8, v0

    .line 31
    invoke-static {v4, v8, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 32
    sget-object v0, Lio/bidmachine/util/gradient/BilinearGradientApi01;->Companion:Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lio/bidmachine/util/gradient/BilinearGradientApi01$Companion;->bilinearGradient(Landroid/graphics/RectF;[IZ)[I

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    .line 33
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    goto :goto_21

    :catchall_20
    const/4 v1, 0x0

    :goto_21
    if-nez v1, :cond_2d

    const/4 p1, 0x1

    .line 35
    invoke-static {p1, p1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string p1, "createBitmap(1, 1, config)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2d
    return-object v1
.end method
