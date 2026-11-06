###### Class io.bidmachine.rendering.internal.meanbackground.a (io.bidmachine.rendering.internal.meanbackground.a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/meanbackground/a$c;,
        Lio/bidmachine/rendering/internal/meanbackground/a$b;,
        Lio/bidmachine/rendering/internal/meanbackground/a$a;,
        Lio/bidmachine/rendering/internal/meanbackground/a$d;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/meanbackground/a$a;

.field public final b:Lio/bidmachine/rendering/internal/meanbackground/c;

.field public final c:Lio/bidmachine/rendering/internal/meanbackground/m;

.field public final d:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lio/bidmachine/rendering/internal/meanbackground/a$a;Lio/bidmachine/rendering/internal/meanbackground/c;Lio/bidmachine/rendering/internal/meanbackground/m;)V
    .registers 6

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detector"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pixelsExtractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/a;->a:Lio/bidmachine/rendering/internal/meanbackground/a$a;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/a;->b:Lio/bidmachine/rendering/internal/meanbackground/c;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/a;->c:Lio/bidmachine/rendering/internal/meanbackground/m;

    .line 8
    sget-object p2, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/j;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/a;->d:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/meanbackground/a;)Lio/bidmachine/rendering/internal/meanbackground/a$a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/a;->a:Lio/bidmachine/rendering/internal/meanbackground/a$a;

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLkotlin/ranges/IntProgression;)Ljava/lang/Integer;
    .registers 6

    .line 2
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/rendering/internal/meanbackground/a;->a(Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLkotlin/ranges/IntProgression;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLkotlin/ranges/IntProgression;ILjava/lang/Object;)Ljava/lang/Integer;
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/rendering/internal/meanbackground/a;->a(Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLkotlin/ranges/IntProgression;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lio/bidmachine/rendering/internal/meanbackground/a;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_12

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/meanbackground/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/meanbackground/a;)Lio/bidmachine/rendering/internal/meanbackground/m;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/a;->c:Lio/bidmachine/rendering/internal/meanbackground/m;

    return-object p0
.end method

.method public static final synthetic c(Lio/bidmachine/rendering/internal/meanbackground/a;)Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/meanbackground/a;->d:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method


# virtual methods
.method public final a(Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLkotlin/ranges/IntProgression;)Ljava/lang/Integer;
    .registers 18

    move-object/from16 v0, p5

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/rendering/internal/meanbackground/a;->a(Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;Lkotlin/ranges/IntProgression;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/ranges/IntProgression;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntProgression;

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v4

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-lez v1, :cond_26

    if-le v3, v4, :cond_2a

    :cond_26
    if-gez v1, :cond_93

    if-gt v4, v3, :cond_93

    .line 11
    :cond_2a
    :goto_2a
    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v6

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v7

    if-lez v7, :cond_3a

    if-le v5, v6, :cond_3e

    :cond_3a
    if-gez v7, :cond_8d

    if-gt v6, v5, :cond_8d

    .line 12
    :cond_3e
    :goto_3e
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/meanbackground/a$c;->b()Lio/bidmachine/rendering/internal/meanbackground/a$b;

    move-result-object v8

    sget-object v9, Lio/bidmachine/rendering/internal/meanbackground/a$b;->a:Lio/bidmachine/rendering/internal/meanbackground/a$b;

    if-ne v8, v9, :cond_53

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_4e
    invoke-static {v8, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    goto :goto_5c

    :cond_53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_4e

    :goto_5c
    invoke-virtual {v8}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v8}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 13
    iget-object v10, p0, Lio/bidmachine/rendering/internal/meanbackground/a;->b:Lio/bidmachine/rendering/internal/meanbackground/c;

    iget v11, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v11

    mul-int/2addr v8, v2

    iget v11, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v11

    add-int/2addr v8, v9

    aget v8, p3, v8

    move/from16 v9, p4

    invoke-virtual {v10, v8, v9}, Lio/bidmachine/rendering/internal/meanbackground/c;->a(IZ)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_89
    if-eq v5, v6, :cond_8f

    add-int/2addr v5, v7

    goto :goto_3e

    :cond_8d
    move/from16 v9, p4

    :cond_8f
    if-eq v3, v4, :cond_93

    add-int/2addr v3, v1

    goto :goto_2a

    :cond_93
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 5
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/a;->d:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/a$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/bidmachine/rendering/internal/meanbackground/a$e;-><init>(Lio/bidmachine/rendering/internal/meanbackground/a;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;Lkotlin/ranges/IntProgression;)Lkotlin/Pair;
    .registers 6

    .line 15
    sget-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$d;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_62

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_33

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2d

    .line 31
    new-instance p1, Lkotlin/Pair;

    .line 32
    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v0

    if-nez p3, :cond_29

    .line 33
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p3, p2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p3

    .line 34
    :cond_29
    invoke-direct {p1, v0, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 31
    :cond_2d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 35
    :cond_33
    new-instance p1, Lkotlin/Pair;

    .line 36
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    if-nez p3, :cond_47

    .line 37
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p3, p2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p3

    .line 38
    :cond_47
    invoke-direct {p1, v0, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 39
    :cond_4b
    new-instance p1, Lkotlin/Pair;

    .line 40
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt___RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object p3

    .line 41
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    .line 42
    invoke-direct {p1, p3, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 43
    :cond_62
    new-instance p1, Lkotlin/Pair;

    .line 44
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p3

    .line 45
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    .line 46
    invoke-direct {p1, p3, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.a.C1193a (io.bidmachine.rendering.internal.meanbackground.a$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lio/bidmachine/rendering/internal/meanbackground/d;


# direct methods
.method public constructor <init>(ILio/bidmachine/rendering/internal/meanbackground/d;)V
    .registers 4

    const-string v0, "samplingStrategy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$a;->a:I

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/a$a;->b:Lio/bidmachine/rendering/internal/meanbackground/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)I
    .registers 5

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/a$a;->b:Lio/bidmachine/rendering/internal/meanbackground/d;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v2, p0, Lio/bidmachine/rendering/internal/meanbackground/a$a;->a:I

    invoke-interface {v0, v1, p1, v2}, Lio/bidmachine/rendering/internal/meanbackground/d;->a(III)I

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
    instance-of v1, p1, Lio/bidmachine/rendering/internal/meanbackground/a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/a$a;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$a;->a:I

    iget v3, p1, Lio/bidmachine/rendering/internal/meanbackground/a$a;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$a;->b:Lio/bidmachine/rendering/internal/meanbackground/d;

    iget-object p1, p1, Lio/bidmachine/rendering/internal/meanbackground/a$a;->b:Lio/bidmachine/rendering/internal/meanbackground/d;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/a$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$a;->b:Lio/bidmachine/rendering/internal/meanbackground/d;

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

    const-string v1, "Config(minContentDimensionPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$a;->b:Lio/bidmachine/rendering/internal/meanbackground/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.a.b (io.bidmachine.rendering.internal.meanbackground.a$b)
.class public final enum Lio/bidmachine/rendering/internal/meanbackground/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lio/bidmachine/rendering/internal/meanbackground/a$b;

.field public static final enum b:Lio/bidmachine/rendering/internal/meanbackground/a$b;

.field public static final synthetic c:[Lio/bidmachine/rendering/internal/meanbackground/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/a$b;

    const-string v1, "Horizontal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/meanbackground/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$b;->a:Lio/bidmachine/rendering/internal/meanbackground/a$b;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/a$b;

    const-string v1, "Vertical"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/meanbackground/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$b;->b:Lio/bidmachine/rendering/internal/meanbackground/a$b;

    invoke-static {}, Lio/bidmachine/rendering/internal/meanbackground/a$b;->a()[Lio/bidmachine/rendering/internal/meanbackground/a$b;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$b;->c:[Lio/bidmachine/rendering/internal/meanbackground/a$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/internal/meanbackground/a$b;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$b;->a:Lio/bidmachine/rendering/internal/meanbackground/a$b;

    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/a$b;->b:Lio/bidmachine/rendering/internal/meanbackground/a$b;

    filled-new-array {v0, v1}, [Lio/bidmachine/rendering/internal/meanbackground/a$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/internal/meanbackground/a$b;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/internal/meanbackground/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/internal/meanbackground/a$b;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/internal/meanbackground/a$b;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$b;->c:[Lio/bidmachine/rendering/internal/meanbackground/a$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/internal/meanbackground/a$b;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.a.c (io.bidmachine.rendering.internal.meanbackground.a$c)
.class public final enum Lio/bidmachine/rendering/internal/meanbackground/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum b:Lio/bidmachine/rendering/internal/meanbackground/a$c;

.field public static final enum c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

.field public static final enum d:Lio/bidmachine/rendering/internal/meanbackground/a$c;

.field public static final enum e:Lio/bidmachine/rendering/internal/meanbackground/a$c;

.field public static final synthetic f:[Lio/bidmachine/rendering/internal/meanbackground/a$c;


# instance fields
.field public final a:Lio/bidmachine/rendering/internal/meanbackground/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;

    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/a$b;->a:Lio/bidmachine/rendering/internal/meanbackground/a$b;

    const-string v2, "Left"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lio/bidmachine/rendering/internal/meanbackground/a$c;-><init>(Ljava/lang/String;ILio/bidmachine/rendering/internal/meanbackground/a$b;)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;->b:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;

    sget-object v2, Lio/bidmachine/rendering/internal/meanbackground/a$b;->b:Lio/bidmachine/rendering/internal/meanbackground/a$b;

    const-string v3, "Top"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lio/bidmachine/rendering/internal/meanbackground/a$c;-><init>(Ljava/lang/String;ILio/bidmachine/rendering/internal/meanbackground/a$b;)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;->c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;

    const-string v3, "Right"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1}, Lio/bidmachine/rendering/internal/meanbackground/a$c;-><init>(Ljava/lang/String;ILio/bidmachine/rendering/internal/meanbackground/a$b;)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;->d:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;

    const-string v1, "Bottom"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lio/bidmachine/rendering/internal/meanbackground/a$c;-><init>(Ljava/lang/String;ILio/bidmachine/rendering/internal/meanbackground/a$b;)V

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;->e:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    invoke-static {}, Lio/bidmachine/rendering/internal/meanbackground/a$c;->a()[Lio/bidmachine/rendering/internal/meanbackground/a$c;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;->f:[Lio/bidmachine/rendering/internal/meanbackground/a$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILio/bidmachine/rendering/internal/meanbackground/a$b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/internal/meanbackground/a$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/a$c;->a:Lio/bidmachine/rendering/internal/meanbackground/a$b;

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/internal/meanbackground/a$c;
    .registers 4

    .line 0
    sget-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;->b:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/a$c;->c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    sget-object v2, Lio/bidmachine/rendering/internal/meanbackground/a$c;->d:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    sget-object v3, Lio/bidmachine/rendering/internal/meanbackground/a$c;->e:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/rendering/internal/meanbackground/a$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/internal/meanbackground/a$c;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/internal/meanbackground/a$c;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/internal/meanbackground/a$c;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$c;->f:[Lio/bidmachine/rendering/internal/meanbackground/a$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/internal/meanbackground/a$c;

    return-object v0
.end method


# virtual methods
.method public final b()Lio/bidmachine/rendering/internal/meanbackground/a$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/a$c;->a:Lio/bidmachine/rendering/internal/meanbackground/a$b;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.a.d (io.bidmachine.rendering.internal.meanbackground.a$d)
.class public abstract synthetic Lio/bidmachine/rendering/internal/meanbackground/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/meanbackground/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "d"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lio/bidmachine/rendering/internal/meanbackground/a$c;->values()[Lio/bidmachine/rendering/internal/meanbackground/a$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/a$c;->c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/a$c;->e:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/a$c;->b:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lio/bidmachine/rendering/internal/meanbackground/a$c;->d:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lio/bidmachine/rendering/internal/meanbackground/a$d;->$EnumSwitchMapping$0:[I

    return-void
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.a.e (io.bidmachine.rendering.internal.meanbackground.a$e)
.class public final Lio/bidmachine/rendering/internal/meanbackground/a$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Z

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lio/bidmachine/rendering/internal/meanbackground/a;

.field public final synthetic f:Landroid/graphics/Bitmap;

.field public final synthetic g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/a;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->e:Lio/bidmachine/rendering/internal/meanbackground/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->f:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->g:Landroid/graphics/Rect;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/a$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/a$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->e:Lio/bidmachine/rendering/internal/meanbackground/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->f:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->g:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/bidmachine/rendering/internal/meanbackground/a$e;-><init>(Lio/bidmachine/rendering/internal/meanbackground/a;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/a$e;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->c:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_38

    if-eq v2, v6, :cond_24

    if-ne v2, v5, :cond_1c

    iget-object v1, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_100

    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    iget-boolean v2, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->b:Z

    iget-object v7, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->a:Ljava/lang/Object;

    check-cast v7, [I

    iget-object v8, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->d:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v12, v2

    move-object v11, v7

    move-object v4, v8

    move-object/from16 v2, p1

    goto/16 :goto_a3

    :cond_38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->d:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object v2, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->e:Lio/bidmachine/rendering/internal/meanbackground/a;

    invoke-static {v2}, Lio/bidmachine/rendering/internal/meanbackground/a;->b(Lio/bidmachine/rendering/internal/meanbackground/a;)Lio/bidmachine/rendering/internal/meanbackground/m;

    move-result-object v2

    iget-object v8, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->f:Landroid/graphics/Bitmap;

    iget-object v9, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->g:Landroid/graphics/Rect;

    invoke-interface {v2, v8, v9}, Lio/bidmachine/rendering/internal/meanbackground/m;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[I

    move-result-object v14

    .line 3
    iget-object v2, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v15

    .line 5
    sget-object v2, Lio/bidmachine/rendering/internal/meanbackground/a$c;->c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    sget-object v8, Lio/bidmachine/rendering/internal/meanbackground/a$c;->e:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    filled-new-array {v2, v8}, [Lio/bidmachine/rendering/internal/meanbackground/a$c;

    move-result-object v2

    .line 6
    iget-object v11, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->e:Lio/bidmachine/rendering/internal/meanbackground/a;

    iget-object v13, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->g:Landroid/graphics/Rect;

    .line 109
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_66
    if-ge v9, v5, :cond_8f

    .line 110
    aget-object v12, v2, v9

    move-object/from16 v17, v8

    .line 111
    invoke-static {v11}, Lio/bidmachine/rendering/internal/meanbackground/a;->c(Lio/bidmachine/rendering/internal/meanbackground/a;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    new-instance v10, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v16}, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;-><init>(Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v13

    move-object v13, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    move/from16 v18, v9

    const/4 v9, 0x0

    move-object/from16 v4, v17

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v8

    .line 215
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v18, 0x1

    move-object v8, v4

    move-object v11, v13

    move-object/from16 v13, v16

    goto :goto_66

    :cond_8f
    move-object v4, v8

    .line 216
    iput-object v7, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->d:Ljava/lang/Object;

    iput-object v14, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->a:Ljava/lang/Object;

    iput-boolean v15, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->b:Z

    iput v6, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->c:I

    invoke-static {v4, v0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a0

    goto/16 :goto_fe

    :cond_a0
    move-object v4, v7

    move-object v11, v14

    move v12, v15

    .line 217
    :goto_a3
    check-cast v2, Ljava/lang/Iterable;

    .line 228
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v13

    .line 229
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v5, :cond_b0

    return-object v3

    .line 233
    :cond_b0
    sget-object v2, Lio/bidmachine/rendering/internal/meanbackground/a$c;->b:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    sget-object v7, Lio/bidmachine/rendering/internal/meanbackground/a$c;->d:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    filled-new-array {v2, v7}, [Lio/bidmachine/rendering/internal/meanbackground/a$c;

    move-result-object v2

    .line 234
    iget-object v8, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->e:Lio/bidmachine/rendering/internal/meanbackground/a;

    iget-object v10, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->g:Landroid/graphics/Rect;

    .line 329
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_c2
    if-ge v7, v5, :cond_f0

    .line 330
    aget-object v9, v2, v7

    .line 331
    invoke-static {v8}, Lio/bidmachine/rendering/internal/meanbackground/a;->c(Lio/bidmachine/rendering/internal/meanbackground/a;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v16

    move v14, v7

    new-instance v7, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;

    move/from16 v17, v14

    const/4 v14, 0x0

    move/from16 v19, v17

    invoke-direct/range {v7 .. v14}, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;-><init>(Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLjava/util/List;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v14, v16

    move-object/from16 v16, v7

    move-object v7, v13

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object v9, v15

    const/4 v15, 0x0

    move-object v13, v4

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v4

    .line 427
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v19, 0x1

    move-object v15, v7

    move v7, v4

    move-object v4, v13

    move-object v13, v15

    move-object v15, v9

    goto :goto_c2

    :cond_f0
    move-object v7, v13

    move-object v9, v15

    .line 428
    iput-object v7, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->d:Ljava/lang/Object;

    iput-object v3, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->a:Ljava/lang/Object;

    iput v5, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->c:I

    invoke-static {v9, v0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_ff

    :goto_fe
    return-object v1

    :cond_ff
    move-object v1, v7

    .line 429
    :goto_100
    check-cast v2, Ljava/lang/Iterable;

    .line 452
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 453
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v5, :cond_10d

    return-object v3

    .line 457
    :cond_10d
    iget-object v4, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->e:Lio/bidmachine/rendering/internal/meanbackground/a;

    invoke-static {v4}, Lio/bidmachine/rendering/internal/meanbackground/a;->a(Lio/bidmachine/rendering/internal/meanbackground/a;)Lio/bidmachine/rendering/internal/meanbackground/a$a;

    move-result-object v4

    iget-object v5, v0, Lio/bidmachine/rendering/internal/meanbackground/a$e;->g:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lio/bidmachine/rendering/internal/meanbackground/a$a;->a(Landroid/graphics/Rect;)I

    move-result v4

    .line 458
    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v2, v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, v6

    invoke-direct {v5, v8, v7, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 459
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, v4, :cond_156

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, v4, :cond_156

    return-object v5

    :cond_156
    return-object v3
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.a.e.C1194a (io.bidmachine.rendering.internal.meanbackground.a$e$a)
.class public final Lio/bidmachine/rendering/internal/meanbackground/a$e$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/meanbackground/a;

.field public final synthetic c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:[I

.field public final synthetic f:Z

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLjava/util/List;Lkotlin/coroutines/Continuation;)V
    .registers 8

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->b:Lio/bidmachine/rendering/internal/meanbackground/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->d:Landroid/graphics/Rect;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->e:[I

    iput-boolean p5, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->f:Z

    iput-object p6, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->g:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->b:Lio/bidmachine/rendering/internal/meanbackground/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->e:[I

    iget-boolean v5, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->f:Z

    iget-object v6, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->g:Ljava/util/List;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;-><init>(Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLjava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->a:I

    if-nez v0, :cond_38

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->b:Lio/bidmachine/rendering/internal/meanbackground/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->e:[I

    iget-boolean v5, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->f:Z

    new-instance v6, Lkotlin/ranges/IntRange;

    iget-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->g:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$a;->g:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {v6, p1, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static/range {v1 .. v6}, Lio/bidmachine/rendering/internal/meanbackground/a;->a(Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLkotlin/ranges/IntProgression;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.meanbackground.a.e.b (io.bidmachine.rendering.internal.meanbackground.a$e$b)
.class public final Lio/bidmachine/rendering/internal/meanbackground/a$e$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/meanbackground/a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/meanbackground/a;

.field public final synthetic c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

.field public final synthetic d:Landroid/graphics/Rect;

.field public final synthetic e:[I

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLkotlin/coroutines/Continuation;)V
    .registers 7

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->b:Lio/bidmachine/rendering/internal/meanbackground/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->d:Landroid/graphics/Rect;

    iput-object p4, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->e:[I

    iput-boolean p5, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->b:Lio/bidmachine/rendering/internal/meanbackground/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->e:[I

    iget-boolean v5, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->f:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;-><init>(Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->a:I

    if-nez v0, :cond_1d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->b:Lio/bidmachine/rendering/internal/meanbackground/a;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->c:Lio/bidmachine/rendering/internal/meanbackground/a$c;

    iget-object v3, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->d:Landroid/graphics/Rect;

    iget-object v4, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->e:[I

    iget-boolean v5, p0, Lio/bidmachine/rendering/internal/meanbackground/a$e$b;->f:Z

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lio/bidmachine/rendering/internal/meanbackground/a;->a(Lio/bidmachine/rendering/internal/meanbackground/a;Lio/bidmachine/rendering/internal/meanbackground/a$c;Landroid/graphics/Rect;[IZLkotlin/ranges/IntProgression;ILjava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
