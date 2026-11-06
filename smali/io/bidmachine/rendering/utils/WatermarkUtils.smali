###### Class io.bidmachine.rendering.utils.WatermarkUtils (io.bidmachine.rendering.utils.WatermarkUtils)
.class public final Lio/bidmachine/rendering/utils/WatermarkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/bidmachine/rendering/utils/WatermarkUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/utils/WatermarkUtils;

    invoke-direct {v0}, Lio/bidmachine/rendering/utils/WatermarkUtils;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/utils/WatermarkUtils;->INSTANCE:Lio/bidmachine/rendering/utils/WatermarkUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertToRepeatedDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_28

    .line 1
    :try_start_8
    invoke-static {p2}, Lio/bidmachine/util/UtilsKt;->notEmptyOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_28

    const/4 v1, 0x0

    .line 2
    invoke-static {p2, v1}, Lio/bidmachine/util/UtilsKt;->decodeBase64(Ljava/lang/String;I)[B

    move-result-object p2

    if-eqz p2, :cond_28

    const/4 v1, 0x1

    .line 3
    invoke-static {p2, v0, v1, v0}, Lio/bidmachine/util/ImageUtilsKt;->decodeBytesToBitmapSafely$default([BLandroid/graphics/BitmapFactory$Options;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 4
    invoke-static {p2, p1}, Lio/bidmachine/util/ImageUtilsKt;->toBitmapDrawable(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 6
    sget-object p2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, p2, p2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_28

    return-object p1

    :catchall_28
    :cond_28
    return-object v0
.end method
