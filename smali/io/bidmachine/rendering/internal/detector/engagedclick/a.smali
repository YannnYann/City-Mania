###### Class io.bidmachine.rendering.internal.detector.engagedclick.a (io.bidmachine.rendering.internal.detector.engagedclick.a)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/detector/engagedclick/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/detector/engagedclick/a$a;
    }
.end annotation


# static fields
.field public static final d:Lio/bidmachine/rendering/internal/detector/engagedclick/a$a;


# instance fields
.field public final a:I

.field public final b:Lkotlin/Lazy;

.field public final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->d:Lio/bidmachine/rendering/internal/detector/engagedclick/a$a;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)V
    .registers 3

    const-string v0, "engagedClickParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;->getVisualConfig()Lio/bidmachine/rendering/model/engagedclick/VisualConfig;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lio/bidmachine/rendering/model/engagedclick/VisualConfig;->getDownscaleMaxSidePx()I

    move-result p1

    goto :goto_15

    :cond_13
    const/16 p1, 0x80

    .line 4
    :goto_15
    iput p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->a:I

    .line 6
    sget-object p1, Lio/bidmachine/rendering/internal/detector/engagedclick/a$c;->a:Lio/bidmachine/rendering/internal/detector/engagedclick/a$c;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->b:Lkotlin/Lazy;

    .line 9
    new-instance p1, Lio/bidmachine/rendering/internal/detector/engagedclick/a$d;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$d;-><init>(Lio/bidmachine/rendering/internal/detector/engagedclick/a;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/engagedclick/a;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)D
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic a(Lio/bidmachine/rendering/internal/detector/engagedclick/a;)Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;
    .registers 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->a()Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lio/bidmachine/rendering/internal/detector/engagedclick/a;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->a:I

    return p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)D
    .registers 8

    .line 6
    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->a(Landroid/graphics/Bitmap;)[F

    move-result-object p1

    .line 7
    invoke-virtual {p0, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->a(Landroid/graphics/Bitmap;)[F

    move-result-object p2

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v1, v0, :cond_22

    .line 10
    aget v3, p1, v1

    aget v4, p2, v1

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c808081

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1f

    add-int/lit8 v2, v2, 0x1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_22
    int-to-double v0, v2

    .line 14
    array-length p1, p1

    int-to-double p1, p1

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public final a()Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;
    .registers 2

    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 7

    .line 5
    sget-object v0, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;-><init>(Lio/bidmachine/rendering/internal/detector/engagedclick/a;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->b()Lio/bidmachine/rendering/internal/meanbackground/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/meanbackground/o;->b(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/graphics/Bitmap;)[F
    .registers 19

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/16 v8, 0x40

    .line 18
    new-array v9, v8, [F

    if-lez v3, :cond_79

    if-gtz v7, :cond_11

    goto :goto_79

    :cond_11
    mul-int v0, v3, v7

    .line 22
    new-array v1, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object/from16 v0, p1

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 24
    new-array v0, v8, [F

    .line 25
    new-array v2, v8, [I

    move v5, v4

    :goto_23
    if-ge v5, v7, :cond_68

    mul-int/lit8 v6, v5, 0x8

    .line 27
    div-int/2addr v6, v7

    mul-int v10, v5, v3

    move v11, v4

    :goto_2b
    if-ge v11, v3, :cond_65

    mul-int/lit8 v12, v11, 0x8

    .line 30
    div-int/2addr v12, v3

    add-int v13, v10, v11

    .line 31
    aget v13, v1, v13

    shr-int/lit8 v14, v13, 0x10

    and-int/lit16 v14, v14, 0xff

    shr-int/lit8 v15, v13, 0x8

    and-int/lit16 v15, v15, 0xff

    and-int/lit16 v13, v13, 0xff

    int-to-float v14, v14

    const v16, 0x3e991687    # 0.299f

    mul-float v14, v14, v16

    int-to-float v15, v15

    const v16, 0x3f1645a2    # 0.587f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    int-to-float v13, v13

    const v15, 0x3de978d5    # 0.114f

    mul-float/2addr v13, v15

    add-float/2addr v14, v13

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v14, v13

    mul-int/lit8 v13, v6, 0x8

    add-int/2addr v13, v12

    .line 37
    aget v12, v0, v13

    add-float/2addr v12, v14

    aput v12, v0, v13

    .line 38
    aget v12, v2, v13

    add-int/lit8 v12, v12, 0x1

    aput v12, v2, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_2b

    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_68
    :goto_68
    if-ge v4, v8, :cond_79

    .line 42
    aget v1, v2, v4

    if-lez v1, :cond_73

    aget v3, v0, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    :goto_74
    aput v3, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_68

    :cond_79
    :goto_79
    return-object v9
.end method

.method public final b()Lio/bidmachine/rendering/internal/meanbackground/o;
    .registers 2

    .line 2
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/meanbackground/o;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.a.C1185a (io.bidmachine.rendering.internal.detector.engagedclick.a$a)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$a;-><init>()V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.a.b (io.bidmachine.rendering.internal.detector.engagedclick.a$b)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/bidmachine/rendering/internal/detector/engagedclick/a;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/engagedclick/a;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .registers 5

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/a;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->d:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6

    .line 0
    new-instance p1, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/a;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->d:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;-><init>(Lio/bidmachine/rendering/internal/detector/engagedclick/a;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->a:I

    if-nez v0, :cond_19

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->b:Lio/bidmachine/rendering/internal/detector/engagedclick/a;

    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$b;->d:Landroid/graphics/Bitmap;

    invoke-static {p1, v0, v1}, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->a(Lio/bidmachine/rendering/internal/detector/engagedclick/a;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 3
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.a.c (io.bidmachine.rendering.internal.detector.engagedclick.a$c)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/a$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/a;-><init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/detector/engagedclick/a$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$c;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$c;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$c;->a:Lio/bidmachine/rendering/internal/detector/engagedclick/a$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/taskmanager/handler/BackgroundHandlerTaskManager;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/util/taskmanager/handler/BackgroundHandlerTaskManager;

    invoke-direct {v0}, Lio/bidmachine/util/taskmanager/handler/BackgroundHandlerTaskManager;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$c;->a()Lio/bidmachine/util/taskmanager/handler/BackgroundHandlerTaskManager;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.detector.engagedclick.a.d (io.bidmachine.rendering.internal.detector.engagedclick.a$d)
.class public final Lio/bidmachine/rendering/internal/detector/engagedclick/a$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/detector/engagedclick/a;-><init>(Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/detector/engagedclick/a;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/detector/engagedclick/a;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$d;->a:Lio/bidmachine/rendering/internal/detector/engagedclick/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/internal/meanbackground/o;
    .registers 9

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/meanbackground/o;

    .line 2
    new-instance v1, Lio/bidmachine/rendering/internal/meanbackground/o$a;

    .line 3
    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$d;->a:Lio/bidmachine/rendering/internal/detector/engagedclick/a;

    invoke-static {v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->b(Lio/bidmachine/rendering/internal/detector/engagedclick/a;)I

    move-result v3

    .line 4
    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$d;->a:Lio/bidmachine/rendering/internal/detector/engagedclick/a;

    invoke-static {v2}, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->b(Lio/bidmachine/rendering/internal/detector/engagedclick/a;)I

    move-result v4

    .line 5
    sget-object v5, Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;->a:Lio/bidmachine/rendering/internal/meanbackground/o$a$a$a;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 6
    invoke-direct/range {v1 .. v7}, Lio/bidmachine/rendering/internal/meanbackground/o$a;-><init>(Landroid/graphics/Bitmap$Config;IILio/bidmachine/rendering/internal/meanbackground/o$a$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    sget-object v2, Lio/bidmachine/rendering/internal/j;->i:Lio/bidmachine/rendering/internal/j$e;

    invoke-virtual {v2}, Lio/bidmachine/rendering/internal/j$e;->a()Lio/bidmachine/rendering/internal/j;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/engagedclick/a$d;->a:Lio/bidmachine/rendering/internal/detector/engagedclick/a;

    invoke-static {v3}, Lio/bidmachine/rendering/internal/detector/engagedclick/a;->a(Lio/bidmachine/rendering/internal/detector/engagedclick/a;)Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/util/taskmanager/handler/HandlerTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 13
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/rendering/internal/meanbackground/o;-><init>(Lio/bidmachine/rendering/internal/meanbackground/o$a;Lio/bidmachine/rendering/internal/j;Landroid/os/Handler;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/detector/engagedclick/a$d;->a()Lio/bidmachine/rendering/internal/meanbackground/o;

    move-result-object v0

    return-object v0
.end method
