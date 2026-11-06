###### Class io.bidmachine.rendering.view.SdkWatermarkView (io.bidmachine.rendering.view.SdkWatermarkView)
.class public final Lio/bidmachine/rendering/view/SdkWatermarkView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/view/SdkWatermarkView$WhenMappings;
    }
.end annotation


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public final b:Landroid/graphics/Paint;

.field public c:I

.field public d:Lio/bidmachine/rendering/model/WatermarkParams$Location;

.field public e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, -0x1000000

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iput-object p1, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->b:Landroid/graphics/Paint;

    .line 11
    iput v0, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->c:I

    .line 24
    sget-object p1, Lio/bidmachine/rendering/model/WatermarkParams$Location;->TOP_LEFT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    iput-object p1, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->d:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    .line 30
    sget-object p1, Lio/bidmachine/rendering/view/SdkWatermarkView$a;->a:Lio/bidmachine/rendering/view/SdkWatermarkView$a;

    iput-object p1, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->e:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final a(CIII)I
    .registers 6

    if-ltz p1, :cond_18

    const/16 v0, 0x100

    if-ge p1, v0, :cond_18

    .line 29
    rem-int/lit8 v0, p1, 0x9

    add-int/2addr p2, v0

    .line 30
    div-int/lit8 v0, p1, 0x9

    rem-int/lit8 v0, v0, 0x9

    add-int/2addr p3, v0

    .line 31
    div-int/lit8 p1, p1, 0x51

    rem-int/lit8 p1, p1, 0x9

    add-int/2addr p4, p1

    .line 32
    invoke-static {p2, p3, p4}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1

    :cond_18
    const/high16 p1, -0x1000000

    return p1
.end method

.method public final a()Landroid/graphics/Bitmap;
    .registers 10

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    return-object v0

    .line 5
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    if-gez v0, :cond_11

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->a:Landroid/graphics/Bitmap;

    return-object v0

    .line 14
    :cond_11
    iget-object v1, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->e:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v0, :cond_24

    goto :goto_38

    .line 18
    :cond_24
    invoke-static {v1}, Lkotlin/text/StringsKt___StringsKt;->reversed(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/text/StringsKt___StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt___StringsKt;->reversed(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bmc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":cmb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(watermark.l\u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget v2, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->c:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 23
    iget v3, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->c:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 24
    iget v4, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->c:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_76
    if-ge v7, v5, :cond_86

    .line 26
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p0, v8, v2, v3, v4}, Lio/bidmachine/rendering/view/SdkWatermarkView;->a(CIII)I

    move-result v8

    invoke-virtual {v1, v7, v6, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    .line 28
    :cond_86
    iput-object v1, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->a:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public final clearCache()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final getBaseColor()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->c:I

    return v0
.end method

.method public final getLocation()Lio/bidmachine/rendering/model/WatermarkParams$Location;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->d:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    return-object v0
.end method

.method public final getPayloadProvider()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->e:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final invalidateWatermark()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/SdkWatermarkView;->clearCache()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/SdkWatermarkView;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 3
    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v1, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->d:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    sget-object v2, Lio/bidmachine/rendering/view/SdkWatermarkView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_71

    const/4 v4, 0x3

    if-eq v1, v4, :cond_63

    const/4 v4, 0x4

    if-eq v1, v4, :cond_58

    const/4 v4, 0x5

    if-eq v1, v4, :cond_42

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2d

    goto :goto_7f

    .line 26
    :cond_2d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7f

    .line 27
    :cond_42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7f

    .line 28
    :cond_58
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7f

    .line 29
    :cond_63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7f

    .line 30
    :cond_71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_7f
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_8

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/SdkWatermarkView;->invalidateWatermark()V

    :cond_8
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/SdkWatermarkView;->clearCache()V

    :cond_a
    return-void
.end method

.method public final setBaseColor(I)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xf5

    invoke-static {v0, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v3

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    .line 4
    invoke-static {v0, v3, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 5
    iget v0, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->c:I

    if-eq v0, p1, :cond_26

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/SdkWatermarkView;->invalidateWatermark()V

    .line 8
    :cond_26
    iget-object v0, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iput p1, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->c:I

    return-void
.end method

.method public final setLocation(Lio/bidmachine/rendering/model/WatermarkParams$Location;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->d:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setPayloadProvider(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->e:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/view/SdkWatermarkView;->invalidateWatermark()V

    .line 4
    :cond_10
    iput-object p1, p0, Lio/bidmachine/rendering/view/SdkWatermarkView;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method

###### Class io.bidmachine.rendering.view.SdkWatermarkView.WhenMappings (io.bidmachine.rendering.view.SdkWatermarkView$WhenMappings)
.class public final synthetic Lio/bidmachine/rendering/view/SdkWatermarkView$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/view/SdkWatermarkView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/model/WatermarkParams$Location;->values()[Lio/bidmachine/rendering/model/WatermarkParams$Location;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/model/WatermarkParams$Location;->TOP_LEFT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/model/WatermarkParams$Location;->TOP_CENTER:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/rendering/model/WatermarkParams$Location;->TOP_RIGHT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/rendering/model/WatermarkParams$Location;->BOTTOM_LEFT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lio/bidmachine/rendering/model/WatermarkParams$Location;->BOTTOM_CENTER:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lio/bidmachine/rendering/model/WatermarkParams$Location;->BOTTOM_RIGHT:Lio/bidmachine/rendering/model/WatermarkParams$Location;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    sput-object v0, Lio/bidmachine/rendering/view/SdkWatermarkView$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.rendering.view.SdkWatermarkView.a (io.bidmachine.rendering.view.SdkWatermarkView$a)
.class public final Lio/bidmachine/rendering/view/SdkWatermarkView$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/view/SdkWatermarkView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/view/SdkWatermarkView$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/view/SdkWatermarkView$a;

    invoke-direct {v0}, Lio/bidmachine/rendering/view/SdkWatermarkView$a;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/view/SdkWatermarkView$a;->a:Lio/bidmachine/rendering/view/SdkWatermarkView$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .registers 2

    .line 1
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/view/SdkWatermarkView$a;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
