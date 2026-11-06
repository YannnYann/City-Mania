###### Class io.bidmachine.internal.U (io.bidmachine.internal.U)
.class public final Lio/bidmachine/internal/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/internal/U;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/internal/U;

    invoke-direct {v0}, Lio/bidmachine/internal/U;-><init>()V

    sput-object v0, Lio/bidmachine/internal/U;->a:Lio/bidmachine/internal/U;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lio/bidmachine/internal/k;Landroid/view/View;)Lio/bidmachine/internal/l;
    .registers 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disclaimerData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseAutoSizeView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/bidmachine/internal/l;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/bidmachine/internal/l;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/internal/k;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "getDefault()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    new-instance v1, Lio/bidmachine/util/gradient/GradientDrawable;

    .line 5
    sget-object v2, Lio/bidmachine/util/gradient/GradientDrawable$Orientation;->TOP_BOTTOM:Lio/bidmachine/util/gradient/GradientDrawable$Orientation;

    const/16 v3, 0x96

    .line 8
    invoke-static {v3, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    filled-new-array {p0, v3}, [I

    move-result-object v3

    .line 9
    invoke-direct {v1, v2, v3}, Lio/bidmachine/util/gradient/GradientDrawable;-><init>(Lio/bidmachine/util/gradient/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, -0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 19
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 21
    :try_start_59
    const-string v1, "sans-serif-light"

    invoke-static {v1, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_64

    .line 23
    :catchall_64
    invoke-virtual {p1}, Lio/bidmachine/internal/k;->a()F

    move-result p0

    invoke-virtual {v0, p2, p0}, Lio/bidmachine/internal/l;->a(Landroid/view/View;F)V

    return-object v0
.end method
