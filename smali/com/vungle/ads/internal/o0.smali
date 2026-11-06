###### Class com.vungle.ads.internal.o0 (com.vungle.ads.internal.o0)
.class public final Lcom/vungle/ads/internal/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vungle/ads/internal/model/i0;

.field public final c:Lcom/vungle/ads/internal/k0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "{{{req_width}}}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/o0;->d:Ljava/lang/String;

    .line 2
    const-string v0, "{{{req_height}}}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/o0;->e:Ljava/lang/String;

    .line 3
    const-string v0, "{{{width}}}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/o0;->f:Ljava/lang/String;

    .line 4
    const-string v0, "{{{height}}}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/o0;->g:Ljava/lang/String;

    .line 5
    const-string v0, "{{{down_x}}}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/o0;->h:Ljava/lang/String;

    .line 6
    const-string v0, "{{{down_y}}}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/o0;->i:Ljava/lang/String;

    .line 7
    const-string v0, "{{{up_x}}}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/o0;->j:Ljava/lang/String;

    .line 8
    const-string v0, "{{{up_y}}}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/o0;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/i0;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertisement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/ads/internal/o0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/vungle/ads/internal/o0;->b:Lcom/vungle/ads/internal/model/i0;

    .line 4
    new-instance p1, Lcom/vungle/ads/internal/k0;

    .line 5
    new-instance p2, Lcom/vungle/ads/internal/l0;

    const/high16 v0, -0x80000000

    invoke-direct {p2, v0, v0}, Lcom/vungle/ads/internal/l0;-><init>(II)V

    .line 6
    new-instance v1, Lcom/vungle/ads/internal/l0;

    invoke-direct {v1, v0, v0}, Lcom/vungle/ads/internal/l0;-><init>(II)V

    .line 7
    invoke-direct {p1, p2, v1}, Lcom/vungle/ads/internal/k0;-><init>(Lcom/vungle/ads/internal/l0;Lcom/vungle/ads/internal/l0;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/o0;->c:Lcom/vungle/ads/internal/k0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .registers 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/o0;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->x()Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_1c7

    .line 4
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1c8

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    goto/16 :goto_1c7

    .line 10
    :cond_1a
    iget-object v0, p0, Lcom/vungle/ads/internal/o0;->c:Lcom/vungle/ads/internal/k0;

    new-instance v1, Lcom/vungle/ads/internal/l0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v1, v2, p1}, Lcom/vungle/ads/internal/l0;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/k0;->b(Lcom/vungle/ads/internal/l0;)V

    .line 11
    iget-object p1, p0, Lcom/vungle/ads/internal/o0;->c:Lcom/vungle/ads/internal/k0;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/k0;->c()Z

    move-result p1

    if-eqz p1, :cond_1c7

    .line 12
    iget-object p1, p0, Lcom/vungle/ads/internal/o0;->b:Lcom/vungle/ads/internal/model/i0;

    const/4 v0, 0x0

    const/4 v1, 0x6

    const-string v2, "video.clickCoordinates"

    invoke-static {p1, v2, v0, v1}, Lcom/vungle/ads/internal/model/i0;->a(Lcom/vungle/ads/internal/model/i0;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1b1

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    goto/16 :goto_1b1

    .line 20
    :cond_4a
    iget-object v0, p0, Lcom/vungle/ads/internal/o0;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->d()I

    move-result v0

    if-nez v0, :cond_5e

    .line 21
    new-instance v0, Lcom/vungle/ads/internal/m0;

    iget-object v1, p0, Lcom/vungle/ads/internal/o0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/m0;-><init>(Landroid/content/Context;)V

    .line 22
    iget-object v0, v0, Lcom/vungle/ads/internal/m0;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_64

    .line 23
    :cond_5e
    iget-object v1, p0, Lcom/vungle/ads/internal/o0;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;I)I

    move-result v0

    .line 24
    :goto_64
    iget-object v1, p0, Lcom/vungle/ads/internal/o0;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/i0;->a()I

    move-result v1

    if-nez v1, :cond_78

    .line 25
    new-instance v1, Lcom/vungle/ads/internal/m0;

    iget-object v2, p0, Lcom/vungle/ads/internal/o0;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/vungle/ads/internal/m0;-><init>(Landroid/content/Context;)V

    .line 26
    iget-object v1, v1, Lcom/vungle/ads/internal/m0;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_7e

    .line 27
    :cond_78
    iget-object v2, p0, Lcom/vungle/ads/internal/o0;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;I)I

    move-result v1

    .line 28
    :goto_7e
    iget-object v2, p0, Lcom/vungle/ads/internal/o0;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/i0;->d()I

    move-result v2

    if-nez v2, :cond_92

    .line 29
    new-instance v2, Lcom/vungle/ads/internal/m0;

    iget-object v3, p0, Lcom/vungle/ads/internal/o0;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/vungle/ads/internal/m0;-><init>(Landroid/content/Context;)V

    .line 30
    iget-object v2, v2, Lcom/vungle/ads/internal/m0;->b:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_98

    .line 31
    :cond_92
    iget-object v3, p0, Lcom/vungle/ads/internal/o0;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;I)I

    move-result v2

    .line 32
    :goto_98
    iget-object v3, p0, Lcom/vungle/ads/internal/o0;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/i0;->a()I

    move-result v3

    if-nez v3, :cond_ac

    .line 33
    new-instance v3, Lcom/vungle/ads/internal/m0;

    iget-object v4, p0, Lcom/vungle/ads/internal/o0;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/vungle/ads/internal/m0;-><init>(Landroid/content/Context;)V

    .line 34
    iget-object v3, v3, Lcom/vungle/ads/internal/m0;->b:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_b2

    .line 35
    :cond_ac
    iget-object v4, p0, Lcom/vungle/ads/internal/o0;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/vungle/ads/internal/util/b0;->a(Landroid/content/Context;I)I

    move-result v3

    .line 36
    :goto_b2
    iget-object v4, p0, Lcom/vungle/ads/internal/o0;->a:Landroid/content/Context;

    .line 37
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v6, Lcom/vungle/ads/internal/n0;

    invoke-direct {v6, v4}, Lcom/vungle/ads/internal/n0;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 39
    sget-object v6, Lcom/vungle/ads/internal/o0;->d:Ljava/lang/String;

    const-string v7, "MACRO_REQ_WIDTH"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lkotlin/text/Regex;

    invoke-direct {v7, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40
    sget-object v6, Lcom/vungle/ads/internal/o0;->e:Ljava/lang/String;

    const-string v7, "MACRO_REQ_HEIGHT"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lkotlin/text/Regex;

    invoke-direct {v7, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    sget-object v6, Lcom/vungle/ads/internal/o0;->f:Ljava/lang/String;

    const-string v7, "MACRO_WIDTH"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lkotlin/text/Regex;

    invoke-direct {v7, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    sget-object v6, Lcom/vungle/ads/internal/o0;->g:Ljava/lang/String;

    const-string v7, "MACRO_HEIGHT"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lkotlin/text/Regex;

    invoke-direct {v7, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    sget-object v6, Lcom/vungle/ads/internal/o0;->h:Ljava/lang/String;

    const-string v7, "MACRO_DOWN_X"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lkotlin/text/Regex;

    invoke-direct {v7, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vungle/ads/internal/o0;->c:Lcom/vungle/ads/internal/k0;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/k0;->a()Lcom/vungle/ads/internal/l0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vungle/ads/internal/l0;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-virtual {v7, v5, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    sget-object v6, Lcom/vungle/ads/internal/o0;->i:Ljava/lang/String;

    const-string v7, "MACRO_DOWN_Y"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lkotlin/text/Regex;

    invoke-direct {v7, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vungle/ads/internal/o0;->c:Lcom/vungle/ads/internal/k0;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/k0;->a()Lcom/vungle/ads/internal/l0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vungle/ads/internal/l0;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual {v7, v5, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    sget-object v6, Lcom/vungle/ads/internal/o0;->j:Ljava/lang/String;

    const-string v7, "MACRO_UP_X"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lkotlin/text/Regex;

    invoke-direct {v7, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vungle/ads/internal/o0;->c:Lcom/vungle/ads/internal/k0;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/k0;->b()Lcom/vungle/ads/internal/l0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vungle/ads/internal/l0;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual {v7, v5, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    sget-object v6, Lcom/vungle/ads/internal/o0;->k:Ljava/lang/String;

    const-string v7, "MACRO_UP_Y"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lkotlin/text/Regex;

    invoke-direct {v7, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vungle/ads/internal/o0;->c:Lcom/vungle/ads/internal/k0;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/k0;->b()Lcom/vungle/ads/internal/l0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vungle/ads/internal/l0;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v7, v5, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    new-instance v6, Lcom/vungle/ads/internal/network/p;

    invoke-direct {v6, v5}, Lcom/vungle/ads/internal/network/p;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v5, "coordinate"

    invoke-virtual {v6, v5}, Lcom/vungle/ads/internal/network/p;->b(Ljava/lang/String;)Lcom/vungle/ads/internal/network/p;

    move-result-object v5

    .line 67
    invoke-virtual {v5}, Lcom/vungle/ads/internal/network/p;->a()Lcom/vungle/ads/internal/network/q;

    move-result-object v5

    .line 68
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vungle/ads/internal/network/r;

    .line 69
    invoke-static {v6, v5}, Lcom/vungle/ads/internal/network/r;->a(Lcom/vungle/ads/internal/network/r;Lcom/vungle/ads/internal/network/q;)V

    goto/16 :goto_c3

    .line 14
    :cond_1b1
    :goto_1b1
    new-instance p1, Lcom/vungle/ads/TpatError;

    .line 15
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->EMPTY_TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 16
    const-string v1, "Empty urls for tpat: video.clickCoordinates"

    invoke-direct {p1, v0, v1}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/vungle/ads/internal/o0;->b:Lcom/vungle/ads/internal/model/i0;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/i0;->q()Lcom/vungle/ads/internal/util/t;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    :cond_1c7
    :goto_1c7
    return-void

    .line 70
    :cond_1c8
    iget-object v0, p0, Lcom/vungle/ads/internal/o0;->c:Lcom/vungle/ads/internal/k0;

    new-instance v1, Lcom/vungle/ads/internal/l0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v1, v2, p1}, Lcom/vungle/ads/internal/l0;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/k0;->a(Lcom/vungle/ads/internal/l0;)V

    return-void
.end method
