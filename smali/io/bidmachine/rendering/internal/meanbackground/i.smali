###### Class io.bidmachine.rendering.internal.meanbackground.i (io.bidmachine.rendering.internal.meanbackground.i)
.class public final Lio/bidmachine/rendering/internal/meanbackground/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/i$a;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/meanbackground/i$a;

.field public final b:Lio/bidmachine/rendering/internal/meanbackground/m;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/i$a;Lio/bidmachine/rendering/internal/meanbackground/m;)V
    .registers 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pixelsExtractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/i;->a:Lio/bidmachine/rendering/internal/meanbackground/i$a;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/i;->b:Lio/bidmachine/rendering/internal/meanbackground/m;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)I
    .registers 5

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/util/BitmapUtils;->INSTANCE:Lio/bidmachine/util/BitmapUtils;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/util/BitmapUtils;->clampRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_19

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/i;->a:Lio/bidmachine/rendering/internal/meanbackground/i$a;

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/meanbackground/i$a;->a()I

    move-result p1

    return p1

    .line 2
    :cond_19
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/i;->b:Lio/bidmachine/rendering/internal/meanbackground/m;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/m;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i;->a:Lio/bidmachine/rendering/internal/meanbackground/i$a;

    invoke-virtual {v1, p2}, Lio/bidmachine/rendering/internal/meanbackground/i$a;->a(Landroid/graphics/Rect;)I

    move-result p2

    .line 5
    sget-object v1, Lio/bidmachine/util/ColorUtils;->INSTANCE:Lio/bidmachine/util/ColorUtils;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p1

    invoke-virtual {v1, v0, p1, p2}, Lio/bidmachine/util/ColorUtils;->avg([IZI)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.i.a (io.bidmachine.rendering.internal.meanbackground.i$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/i$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lio/bidmachine/rendering/internal/meanbackground/i$a$a;


# direct methods
.method public constructor <init>(IIIILio/bidmachine/rendering/internal/meanbackground/i$a$a;)V
    .registers 7

    const-string v0, "samplingStrategy"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->a:I

    .line 3
    iput p2, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->b:I

    .line 4
    iput p3, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->c:I

    .line 5
    iput p4, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->d:I

    .line 6
    iput-object p5, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->e:Lio/bidmachine/rendering/internal/meanbackground/i$a$a;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->a:I

    return v0
.end method

.method public final a(Landroid/graphics/Rect;)I
    .registers 9

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->e:Lio/bidmachine/rendering/internal/meanbackground/i$a$a;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->b:I

    iget v5, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->c:I

    iget v6, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->d:I

    invoke-interface/range {v1 .. v6}, Lio/bidmachine/rendering/internal/meanbackground/i$a$a;->a(IIIII)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/internal/meanbackground/i$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/i$a;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->a:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/i$a;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->b:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/i$a;->b:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->c:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/i$a;->c:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->d:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/i$a;->d:I

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->e:Lio/bidmachine/rendering/internal/meanbackground/i$a$a;

    iget-object p1, p1, Lio/bidmachine/rendering/internal/meanbackground/i$a;->e:Lio/bidmachine/rendering/internal/meanbackground/i$a$a;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    return v2

    :cond_33
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->e:Lio/bidmachine/rendering/internal/meanbackground/i$a$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config(defaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxDimensionPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minSampleStepPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSampleStepPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/i$a;->e:Lio/bidmachine/rendering/internal/meanbackground/i$a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.i.a.InterfaceC1197a (io.bidmachine.rendering.internal.meanbackground.i$a$a)
.class public interface abstract Lio/bidmachine/rendering/internal/meanbackground/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/i$a$a$a;
    }
.end annotation


# virtual methods
.method public abstract a(IIIII)I
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.i.a.InterfaceC1197a.C1198a (io.bidmachine.rendering.internal.meanbackground.i$a$a$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/i$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/meanbackground/i$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/i$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/meanbackground/i$a$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/i$a$a$a;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/meanbackground/i$a$a$a;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/i$a$a$a;->a:Lio/bidmachine/rendering/internal/meanbackground/i$a$a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIII)I
    .registers 6

    mul-int/2addr p1, p2

    mul-int/2addr p3, p3

    int-to-float p2, p4

    int-to-float p4, p5

    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 1
    invoke-static {p2, p4, p1}, Lio/bidmachine/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 2
    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    return p1
.end method
