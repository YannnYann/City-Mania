###### Class io.bidmachine.util.gradient.BilinearGradientHolder (io.bidmachine.util.gradient.BilinearGradientHolder)
.class public final Lio/bidmachine/util/gradient/BilinearGradientHolder;
.super Ljava/lang/Object;
.source "BilinearGradientHolder.kt"

# interfaces
.implements Lio/bidmachine/util/gradient/ShaderHolder;


# instance fields
.field public final bitmapShader:Landroid/graphics/Shader;

.field public final runtimeShader:Landroid/graphics/Shader;

.field public final useRuntimeInitially:Z


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;[ILandroid/graphics/Bitmap$Config;Z)V
    .registers 6

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p4, p0, Lio/bidmachine/util/gradient/BilinearGradientHolder;->useRuntimeInitially:Z

    .line 18
    new-instance v0, Lio/bidmachine/util/gradient/BilinearGradientApi01;

    invoke-direct {v0, p1, p2, p3}, Lio/bidmachine/util/gradient/BilinearGradientApi01;-><init>(Landroid/graphics/RectF;[ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lio/bidmachine/util/gradient/BilinearGradientHolder;->bitmapShader:Landroid/graphics/Shader;

    if-eqz p4, :cond_29

    .line 22
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x21

    if-lt p3, p4, :cond_29

    .line 23
    new-instance p3, Lio/bidmachine/util/gradient/BilinearGradientApi33;

    invoke-direct {p3, p1, p2}, Lio/bidmachine/util/gradient/BilinearGradientApi33;-><init>(Landroid/graphics/RectF;[I)V

    goto :goto_2a

    :cond_29
    const/4 p3, 0x0

    .line 22
    :goto_2a
    iput-object p3, p0, Lio/bidmachine/util/gradient/BilinearGradientHolder;->runtimeShader:Landroid/graphics/Shader;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/RectF;[ILandroid/graphics/Bitmap$Config;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_6

    .line 13
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_13

    .line 14
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x21

    if-lt p4, p5, :cond_12

    const/4 p4, 0x1

    goto :goto_13

    :cond_12
    const/4 p4, 0x0

    .line 10
    :cond_13
    :goto_13
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/util/gradient/BilinearGradientHolder;-><init>(Landroid/graphics/RectF;[ILandroid/graphics/Bitmap$Config;Z)V

    return-void
.end method


# virtual methods
.method public getShader(Z)Landroid/graphics/Shader;
    .registers 3

    .line 30
    iget-boolean v0, p0, Lio/bidmachine/util/gradient/BilinearGradientHolder;->useRuntimeInitially:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/bidmachine/util/gradient/BilinearGradientHolder;->runtimeShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    return-object v0

    .line 33
    :cond_b
    iget-object p1, p0, Lio/bidmachine/util/gradient/BilinearGradientHolder;->bitmapShader:Landroid/graphics/Shader;

    return-object p1
.end method
