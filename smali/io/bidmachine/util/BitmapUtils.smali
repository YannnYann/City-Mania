###### Class io.bidmachine.util.BitmapUtils (io.bidmachine.util.BitmapUtils)
.class public final Lio/bidmachine/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.kt"


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/BitmapUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/BitmapUtils;

    invoke-direct {v0}, Lio/bidmachine/util/BitmapUtils;-><init>()V

    sput-object v0, Lio/bidmachine/util/BitmapUtils;->INSTANCE:Lio/bidmachine/util/BitmapUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clampRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_16

    .line 9
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {p2, v0, v0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2

    .line 10
    :cond_16
    new-instance v1, Landroid/graphics/Rect;

    .line 11
    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 12
    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    invoke-direct {v1, v2, v0, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x0

    return-object p1

    :cond_43
    return-object v1
.end method
