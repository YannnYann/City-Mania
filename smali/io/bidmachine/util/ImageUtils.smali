###### Class io.bidmachine.util.ImageUtils (io.bidmachine.util.ImageUtils)
.class public final Lio/bidmachine/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.kt"


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/ImageUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/ImageUtils;

    invoke-direct {v0}, Lio/bidmachine/util/ImageUtils;-><init>()V

    sput-object v0, Lio/bidmachine/util/ImageUtils;->INSTANCE:Lio/bidmachine/util/ImageUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createDefaultBitmapFactoryOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 2

    .line 20
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static final decodeBytesToBitmapSafely([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 3

    const-string v0, "byteImage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapFactoryOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p0, p1}, Lio/bidmachine/util/ImageUtilsKt;->decodeBytesToBitmapSafely([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
