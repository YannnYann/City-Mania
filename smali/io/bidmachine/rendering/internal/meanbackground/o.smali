###### Class io.bidmachine.rendering.internal.meanbackground.o (io.bidmachine.rendering.internal.meanbackground.o)
.class public final Lio/bidmachine/rendering/internal/meanbackground/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/o$a;,
        Lio/bidmachine/rendering/internal/meanbackground/o$b;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/meanbackground/o$a;

.field public final b:Lio/bidmachine/rendering/internal/j;

.field public final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/o$a;Lio/bidmachine/rendering/internal/j;Landroid/os/Handler;)V
    .registers 5

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatchers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/o;->a:Lio/bidmachine/rendering/internal/meanbackground/o$a;

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/o;->b:Lio/bidmachine/rendering/internal/j;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/o;->c:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/meanbackground/o;)Lio/bidmachine/rendering/internal/meanbackground/o$a;
    .registers 1

    .line 2
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/o;->a:Lio/bidmachine/rendering/internal/meanbackground/o$a;

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/meanbackground/o;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/o;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/meanbackground/o;)Lio/bidmachine/rendering/internal/j;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/o;->b:Lio/bidmachine/rendering/internal/j;

    return-object p0
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/meanbackground/o;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/o;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 3
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 9
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 10
    sget-object v1, Lio/bidmachine/rendering/internal/screenshot/a;->a:Lio/bidmachine/rendering/internal/screenshot/a;

    invoke-static {p0}, Lio/bidmachine/rendering/internal/meanbackground/o;->c(Lio/bidmachine/rendering/internal/meanbackground/o;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {p0}, Lio/bidmachine/rendering/internal/meanbackground/o;->a(Lio/bidmachine/rendering/internal/meanbackground/o;)Lio/bidmachine/rendering/internal/meanbackground/o$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/rendering/internal/meanbackground/o$a;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    new-instance v4, Lio/bidmachine/rendering/internal/meanbackground/o$c;

    invoke-direct {v4, v0}, Lio/bidmachine/rendering/internal/meanbackground/o$c;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lio/bidmachine/rendering/internal/screenshot/a;->a(Landroid/view/View;Landroid/os/Handler;Landroid/graphics/Bitmap$Config;Lio/bidmachine/rendering/internal/screenshot/b;)V

    .line 20
    sget-object p1, Lio/bidmachine/rendering/internal/meanbackground/o$d;->a:Lio/bidmachine/rendering/internal/meanbackground/o$d;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 117
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 118
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_35

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_35
    return-object p1
.end method

.method public final b(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/o;->b:Lio/bidmachine/rendering/internal/j;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/o$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/bidmachine/rendering/internal/meanbackground/o$e;-><init>(Lio/bidmachine/rendering/internal/meanbackground/o;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.o.a (io.bidmachine.rendering.internal.meanbackground.o$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/o$a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap$Config;

.field public final b:I

.field public final c:I

.field public final d:Lio/bidmachine/rendering/internal/meanbackground/o$a$a;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap$Config;IILio/bidmachine/rendering/internal/meanbackground/o$a$a;)V
    .registers 6

    const-string v0, "bitmapConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scalingStrategy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->a:Landroid/graphics/Bitmap$Config;

    .line 3
    iput p2, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->b:I

    .line 4
    iput p3, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->c:I

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->d:Lio/bidmachine/rendering/internal/meanbackground/o$a$a;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Bitmap$Config;IILio/bidmachine/rendering/internal/meanbackground/o$a$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    .line 6
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_c

    .line 9
    sget-object p4, Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;->a:Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;

    .line 10
    :cond_c
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/meanbackground/o$a;-><init>(Landroid/graphics/Bitmap$Config;IILio/bidmachine/rendering/internal/meanbackground/o$a$a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;II)I
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->d:Lio/bidmachine/rendering/internal/meanbackground/o$a$a;

    iget v5, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->b:I

    iget v6, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->c:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lio/bidmachine/rendering/internal/meanbackground/o$a$a;->a(Landroid/content/Context;IIII)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/View;)I
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/rendering/internal/meanbackground/o$a;->a(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public final a()Landroid/graphics/Bitmap$Config;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->a:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/bidmachine/rendering/internal/meanbackground/o$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/o$a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->a:Landroid/graphics/Bitmap$Config;

    iget-object v3, p1, Lio/bidmachine/rendering/internal/meanbackground/o$a;->a:Landroid/graphics/Bitmap$Config;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->b:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/o$a;->b:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->c:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/o$a;->c:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->d:Lio/bidmachine/rendering/internal/meanbackground/o$a$a;

    iget-object p1, p1, Lio/bidmachine/rendering/internal/meanbackground/o$a;->d:Lio/bidmachine/rendering/internal/meanbackground/o$a$a;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    return v2

    :cond_2c
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->a:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->d:Lio/bidmachine/rendering/internal/meanbackground/o$a$a;

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

    const-string v1, "Config(bitmapConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->a:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minDimensionPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxDimensionPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scalingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$a;->d:Lio/bidmachine/rendering/internal/meanbackground/o$a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.o.a.InterfaceC1200a (io.bidmachine.rendering.internal.meanbackground.o$a$a)
.class public interface abstract Lio/bidmachine/rendering/internal/meanbackground/o$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/o$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;,
        Lio/bidmachine/rendering/internal/meanbackground/o$a$a$b;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Context;IIII)I
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.o.a.InterfaceC1200a.C1201a (io.bidmachine.rendering.internal.meanbackground.o$a$a$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/meanbackground/o$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/o$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;->a:Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IIII)I
    .registers 6

    .line 0
    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return p4
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.o.a.InterfaceC1200a.b (io.bidmachine.rendering.internal.meanbackground.o$a$a$b)
.class public final Lio/bidmachine/rendering/internal/meanbackground/o$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/meanbackground/o$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/o$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/meanbackground/o$a$a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/o$a$a$b;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/meanbackground/o$a$a$b;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/o$a$a$b;->a:Lio/bidmachine/rendering/internal/meanbackground/o$a$a$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IIII)I
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p5

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p3, p4

    int-to-float p2, p2

    div-float p2, p1, p2

    .line 2
    invoke-static {p3, p1, p2}, Lio/bidmachine/util/MathUtils;->lerp(FFF)F

    move-result p1

    const/4 p2, 0x0

    .line 3
    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.o.b (io.bidmachine.rendering.internal.meanbackground.o$b)
.class public final Lio/bidmachine/rendering/internal/meanbackground/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$b;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/o$b;->b(Landroid/graphics/Bitmap;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    :cond_10
    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_15

    return-object p1

    :cond_15
    return-object v0
.end method

.method public final b(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .registers 6

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 5
    iget v2, p0, Lio/bidmachine/rendering/internal/meanbackground/o$b;->a:I

    if-gt v0, v2, :cond_17

    if-gt v1, v2, :cond_17

    .line 6
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_15
    move-exception p1

    goto :goto_39

    :cond_17
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v3, v2, v0

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 9
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x1

    .line 13
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createScaledBitmap(bitma\u2026idth, scaledHeight, true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v0, p1, :cond_34

    .line 15
    invoke-static {p1}, Lio/bidmachine/util/ImageUtilsKt;->recycleSafely(Landroid/graphics/Bitmap;)V

    .line 16
    :cond_34
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_15

    return-object p1

    :goto_39
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.o.c (io.bidmachine.rendering.internal.meanbackground.o$c)
.class public final Lio/bidmachine/rendering/internal/meanbackground/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/screenshot/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/o;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .registers 2

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$c;->a:Lkotlinx/coroutines/CancellableContinuation;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/o$c;->a:Lkotlinx/coroutines/CancellableContinuation;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/o$c;->a:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.o.d (io.bidmachine.rendering.internal.meanbackground.o$d)
.class public final Lio/bidmachine/rendering/internal/meanbackground/o$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/o;->a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/meanbackground/o$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/o$d;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/meanbackground/o$d;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/o$d;->a:Lio/bidmachine/rendering/internal/meanbackground/o$d;

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
.method public final a(Ljava/lang/Throwable;)V
    .registers 2

    .line 0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/meanbackground/o$d;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.o.e (io.bidmachine.rendering.internal.meanbackground.o$e)
.class public final Lio/bidmachine/rendering/internal/meanbackground/o$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/o;->b(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/meanbackground/o;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/o;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .registers 4

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->b:Lio/bidmachine/rendering/internal/meanbackground/o;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->c:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/o$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/o$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/o$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/o$e;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->b:Lio/bidmachine/rendering/internal/meanbackground/o;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->c:Landroid/view/View;

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/rendering/internal/meanbackground/o$e;-><init>(Lio/bidmachine/rendering/internal/meanbackground/o;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/o$e;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1f

    if-eq v1, v4, :cond_1b

    if-ne v1, v3, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3c

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->b:Lio/bidmachine/rendering/internal/meanbackground/o;

    invoke-static {p1}, Lio/bidmachine/rendering/internal/meanbackground/o;->b(Lio/bidmachine/rendering/internal/meanbackground/o;)Lio/bidmachine/rendering/internal/j;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/j;->d()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;

    iget-object v5, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->c:Landroid/view/View;

    invoke-direct {v1, v5, v2}, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;-><init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3c

    goto :goto_48

    .line 5
    :cond_3c
    :goto_3c
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->b:Lio/bidmachine/rendering/internal/meanbackground/o;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->c:Landroid/view/View;

    iput v3, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->a:I

    invoke-static {p1, v1, p0}, Lio/bidmachine/rendering/internal/meanbackground/o;->a(Lio/bidmachine/rendering/internal/meanbackground/o;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_49

    :goto_48
    return-object v0

    .line 6
    :cond_49
    :goto_49
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_63

    .line 11
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->b:Lio/bidmachine/rendering/internal/meanbackground/o;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e;->c:Landroid/view/View;

    new-instance v2, Lio/bidmachine/rendering/internal/meanbackground/o$b;

    invoke-static {v0}, Lio/bidmachine/rendering/internal/meanbackground/o;->a(Lio/bidmachine/rendering/internal/meanbackground/o;)Lio/bidmachine/rendering/internal/meanbackground/o$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/meanbackground/o$a;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {v2, v0}, Lio/bidmachine/rendering/internal/meanbackground/o$b;-><init>(I)V

    invoke-virtual {v2, p1}, Lio/bidmachine/rendering/internal/meanbackground/o$b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_63
    return-object v2
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.o.e.a (io.bidmachine.rendering.internal.meanbackground.o$e$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/o$e$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/o$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;->b:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;->b:Landroid/view/View;

    invoke-direct {p1, v0, p2}, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;-><init>(Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;->b:Landroid/view/View;

    iput v2, p0, Lio/bidmachine/rendering/internal/meanbackground/o$e$a;->a:I

    invoke-static {p1, p0}, Lio/bidmachine/util/ViewUtilsKt;->awaitLayout(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    :cond_25
    return-object p1
.end method
