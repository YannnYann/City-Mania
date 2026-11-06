###### Class com.vungle.ads.internal.util.j (com.vungle.ads.internal.util.j)
.class public final Lcom/vungle/ads/internal/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;DID)I
    .registers 18

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v0

    mul-double/2addr v2, p1

    double-to-int v8, v2

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v9, v2

    mul-int/lit8 v2, v8, 0x2

    sub-int v7, v0, v2

    mul-int/lit8 v0, v9, 0x2

    sub-int v11, v1, v0

    const/4 v0, -0x1

    if-lez v7, :cond_9a

    if-gtz v11, :cond_1d

    goto/16 :goto_9a

    :cond_1d
    int-to-long v1, v7

    int-to-long v3, v11

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_39

    cmpl-double v1, p1, p4

    if-ltz v1, :cond_2c

    return v0

    :cond_2c
    const/4 v0, 0x2

    int-to-double v0, v0

    mul-double v3, p1, v0

    move-object v2, p0

    move v5, p3

    move-wide/from16 v6, p4

    .line 162
    invoke-static/range {v2 .. v7}, Lcom/vungle/ads/internal/util/j;->a(Landroid/graphics/Bitmap;DID)I

    move-result p0

    return p0

    :cond_39
    long-to-int p2, v1

    .line 166
    new-array v5, p2, [I

    const/4 v6, 0x0

    move v10, v7

    move-object v4, p0

    .line 167
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/2addr p2, v0

    if-lez p3, :cond_7e

    const/4 p0, 0x0

    .line 172
    invoke-static {p0, p2, p3}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result p2

    if-ltz p2, :cond_71

    move v0, p0

    move v1, v0

    move v2, v1

    :goto_4f
    add-int/lit8 v1, v1, 0x1

    .line 174
    aget v3, v5, v0

    shr-int/lit8 v4, v3, 0x18

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v3, v3, 0xff

    if-lez v4, :cond_6d

    const/16 v4, 0xa

    if-ge v6, v4, :cond_6d

    if-ge v7, v4, :cond_6d

    if-ge v3, v4, :cond_6d

    add-int/lit8 v2, v2, 0x1

    :cond_6d
    if-eq v0, p2, :cond_73

    add-int/2addr v0, p3

    goto :goto_4f

    :cond_71
    move v1, p0

    move v2, v1

    :cond_73
    if-lez v1, :cond_7d

    int-to-long p0, v2

    const/16 p2, 0x64

    int-to-long p2, p2

    mul-long/2addr p0, p2

    int-to-long p2, v1

    .line 187
    div-long/2addr p0, p2

    long-to-int p0, p0

    :cond_7d
    return p0

    .line 188
    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step must be positive, was: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9a
    :goto_9a
    return v0
.end method

.method public static final a(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;
    .registers 1

    .line 97
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/a;

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Lkotlin/Pair;
    .registers 9

    const/4 v0, -0x1

    if-eqz p0, :cond_21

    const-wide v2, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    move-object v1, p0

    move v4, p1

    .line 136
    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/internal/util/j;->a(Landroid/graphics/Bitmap;DID)I

    move-result p0

    if-ne p0, v0, :cond_15

    .line 137
    const-string p1, "Internal calculation error"

    goto :goto_17

    :cond_15
    const-string p1, ""

    .line 138
    :goto_17
    new-instance v0, Lkotlin/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 140
    :cond_21
    sget-boolean p0, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p0, "BlackScreenDetector"

    const-string p1, "Black screen detection failed: Snapshot capture failure"

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance p0, Lkotlin/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Snapshot capture failure"

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/util/j;)Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/vungle/ads/internal/util/j;->a:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static a(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;)V
    .registers 7

    .line 98
    :try_start_0
    new-instance v0, Lcom/vungle/ads/internal/util/j$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p2}, Lcom/vungle/ads/internal/util/j$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;)V

    .line 111
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    invoke-static {p0, p1, p2, v0, v1}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception p0

    .line 128
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "BlackScreenDetector"

    const-string v0, "PixelCopy request failed"

    invoke-static {p1, v0, p0}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p0, 0x0

    .line 130
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Lcom/vungle/ads/internal/util/j;Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4}, Lcom/vungle/ads/internal/util/j;->a(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;I)V
    .registers 5

    const-string v0, "$onComplete"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_10

    .line 131
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 133
    :cond_10
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PixelCopy failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BlackScreenDetector"

    invoke-static {v0, p2}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 135
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lcom/vungle/ads/internal/util/j;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/vungle/ads/internal/util/j;->a:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;ILcom/vungle/ads/internal/ui/q;)V
    .registers 11

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p3, p0, Lcom/vungle/ads/internal/util/j;->a:Lkotlin/jvm/functions/Function2;

    const-string p3, "BlackScreenDetector"

    const/4 v0, 0x0

    if-nez p1, :cond_24

    .line 6
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "Black screen detection failed: View not available"

    invoke-static {p3, p1}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/vungle/ads/internal/util/j;->a:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_21

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "View not available"

    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_21
    iput-object v0, p0, Lcom/vungle/ads/internal/util/j;->a:Lkotlin/jvm/functions/Function2;

    return-void

    .line 12
    :cond_24
    new-instance v6, Lcom/vungle/ads/internal/util/i;

    invoke-direct {v6, p1, p0, p2}, Lcom/vungle/ads/internal/util/i;-><init>(Landroid/webkit/WebView;Lcom/vungle/ads/internal/util/j;I)V

    .line 13
    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "onComplete"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/vungle/ads/internal/util/j;->a:Lkotlin/jvm/functions/Function2;

    if-nez p2, :cond_38

    return-void

    .line 82
    :cond_38
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_8c

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 84
    :goto_42
    instance-of v1, p2, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_54

    .line 85
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_4d

    .line 86
    check-cast p2, Landroid/app/Activity;

    goto :goto_55

    .line 88
    :cond_4d
    check-cast p2, Landroid/content/ContextWrapper;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    goto :goto_42

    :cond_54
    move-object p2, v0

    :goto_55
    if-eqz p2, :cond_5d

    .line 89
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    move-object v5, p2

    goto :goto_5e

    :cond_5d
    move-object v5, v0

    :goto_5e
    if-nez v5, :cond_6b

    .line 91
    sget-boolean p1, Lcom/vungle/ads/internal/util/v;->a:Z

    const-string p1, "Activity/Window not found for PixelCopy"

    invoke-static {p3, p1}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v6, v0}, Lcom/vungle/ads/internal/util/i;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 93
    :cond_6b
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "view.context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object p3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/vungle/ads/internal/util/f;

    invoke-direct {v0, p2}, Lcom/vungle/ads/internal/util/f;-><init>(Landroid/content/Context;)V

    invoke-static {p3, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 95
    sget-object p2, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance v1, Lcom/vungle/ads/internal/util/g;

    move-object v4, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/util/g;-><init>(Landroid/webkit/WebView;Lkotlin/Lazy;Lcom/vungle/ads/internal/util/j;Landroid/view/Window;Lcom/vungle/ads/internal/util/i;)V

    invoke-static {v1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_8c
    move-object v2, p1

    .line 96
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/internal/util/e;

    invoke-direct {p1, v2, v6}, Lcom/vungle/ads/internal/util/e;-><init>(Landroid/webkit/WebView;Lcom/vungle/ads/internal/util/i;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

###### Class com.vungle.ads.internal.util.j$$ExternalSyntheticLambda0 (com.vungle.ads.internal.util.j$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/internal/util/j$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/util/j$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vungle/ads/internal/util/j$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/internal/util/j$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/vungle/ads/internal/util/j$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1}, Lcom/vungle/ads/internal/util/j;->a(Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;I)V

    return-void
.end method
