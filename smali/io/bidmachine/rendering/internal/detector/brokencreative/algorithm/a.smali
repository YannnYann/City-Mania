###### Class io.bidmachine.rendering.internal.detector.brokencreative.algorithm.a (io.bidmachine.rendering.internal.detector.brokencreative.algorithm.a)
.class public abstract Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;)V
    .registers 3

    const-string v0, "algorithmParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    return-void
.end method


# virtual methods
.method public final a(I)F
    .registers 5

    .line 10
    invoke-static {p1}, Lio/bidmachine/util/ColorUtils;->redToRatio(I)F

    move-result v0

    const v1, 0x3e991687    # 0.299f

    mul-float/2addr v0, v1

    invoke-static {p1}, Lio/bidmachine/util/ColorUtils;->greenToRatio(I)F

    move-result v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1}, Lio/bidmachine/util/ColorUtils;->blueToRatio(I)F

    move-result p1

    const v1, 0x3de978d5    # 0.114f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public final a(Landroid/graphics/Bitmap;II)I
    .registers 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->b(I)I

    move-result p1

    return p1
.end method

.method public final a()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    return-object v0
.end method

.method public abstract a(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
.end method

.method public final a(Ljava/lang/Float;Ljava/lang/Boolean;)V
    .registers 5

    .line 2
    invoke-static {}, Lio/bidmachine/rendering/internal/t;->b()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;

    invoke-virtual {v1}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmParams;->getType()Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (isBroken - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 9
    const-string v0, "BrokenCreativeDetector"

    invoke-static {v0, p1, p2}, Lio/bidmachine/rendering/internal/t;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(I)I
    .registers 5

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e991687    # 0.299f

    mul-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3de978d5    # 0.114f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public final b(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/detector/brokencreative/algorithm/a;->a(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    return-object p1

    :catchall_a
    const/4 p1, 0x0

    return-object p1
.end method
