###### Class io.bidmachine.rendering.internal.view.privacy.b (io.bidmachine.rendering.internal.view.privacy.b)
.class public final Lio/bidmachine/rendering/internal/view/privacy/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/Lazy;

.field public b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public static synthetic $r8$lambda$qIQYbKeGUHJUjVAXmZnkW2QZCjg(Lio/bidmachine/rendering/internal/view/privacy/b;ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/rendering/internal/view/privacy/b;->a(Lio/bidmachine/rendering/internal/view/privacy/b;ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xcJURQrWUBl5ZM97-w5KSPhiXFA(Lio/bidmachine/rendering/internal/view/privacy/b;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/view/privacy/b;->a(Lio/bidmachine/rendering/internal/view/privacy/b;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/b$c;

    invoke-direct {v0, p1}, Lio/bidmachine/rendering/internal/view/privacy/b$c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->a:Lkotlin/Lazy;

    .line 3
    sget-object p1, Lio/bidmachine/rendering/internal/view/privacy/b$b;->a:Lio/bidmachine/rendering/internal/view/privacy/b$b;

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    new-instance p1, Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/rendering/internal/view/privacy/b;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object p1

    .line 8
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/b$a;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/b$a;-><init>(Lio/bidmachine/rendering/internal/view/privacy/b;)V

    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/view/privacy/c;->setOnCloseButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 11
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    .line 12
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 13
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->b()V

    return-void
.end method

.method public static final a(Lio/bidmachine/rendering/internal/view/privacy/b;ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "insets"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_33

    .line 83
    invoke-static {}, Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity$$ExternalSyntheticApiModelOutline0;->m()I

    move-result p2

    invoke-static {p3, p2}, Lads_mobile_sdk/mb$$ExternalSyntheticApiModelOutline5;->m(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p2

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {p2}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {p2}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {p2}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline3;->m(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {p2}, Lads_mobile_sdk/lb$$ExternalSyntheticApiModelOutline4;->m(Landroid/graphics/Insets;)I

    move-result p2

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_48

    .line 88
    :cond_33
    new-instance v0, Landroid/graphics/Rect;

    .line 89
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p2

    .line 90
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    .line 91
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 92
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 93
    invoke-direct {v0, p2, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    :goto_48
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object p2

    .line 101
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 102
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 103
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 104
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v4

    .line 105
    invoke-virtual {p2, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 111
    iget p1, v0, Landroid/graphics/Rect;->top:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    return-object p3
.end method

.method public static final a(Lio/bidmachine/rendering/internal/view/privacy/b;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/internal/view/privacy/c;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 80
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/privacy/c;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V
    .registers 5

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/rendering/internal/view/privacy/c;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 81
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/view/privacy/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .registers 8

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->a()V

    .line 75
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;

    .line 76
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/PrivacySheetParams$Action;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "resources"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lio/bidmachine/util/ImageUtilsKt;->toBitmapDrawable(Landroid/graphics/Bitmap;Landroid/content/res/Resources;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    .line 78
    :goto_36
    new-instance v3, Lio/bidmachine/rendering/internal/view/privacy/b$d;

    invoke-direct {v3, p2, v0}, Lio/bidmachine/rendering/internal/view/privacy/b$d;-><init>(Lkotlin/jvm/functions/Function1;Lio/bidmachine/rendering/model/PrivacySheetParams$Action;)V

    invoke-virtual {p0, v1, v2, v3}, Lio/bidmachine/rendering/internal/view/privacy/b;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_11

    :cond_3f
    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 2
    new-instance v1, Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/rendering/internal/view/privacy/b;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public final getOnCloseClickListener()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->b:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 12

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x44160000    # 600.0f

    invoke-static {v1, v3}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v3, v2}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v2, v1

    if-lt v0, v2, :cond_2e

    const/high16 p2, 0x40000000    # 2.0f

    .line 5
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2e
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 9
    invoke-super/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public final setOnCloseClickListener(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setSubtitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "subtitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/view/privacy/c;->setSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getPrivacySheetView()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/view/privacy/c;->setTitle(Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.b.a (io.bidmachine.rendering.internal.view.privacy.b$a)
.class public final Lio/bidmachine/rendering/internal/view/privacy/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/privacy/b;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/b;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b$a;->a:Lio/bidmachine/rendering/internal/view/privacy/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/b$a;->a:Lio/bidmachine/rendering/internal/view/privacy/b;

    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/privacy/b;->getOnCloseClickListener()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/b$a;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.b.C1207b (io.bidmachine.rendering.internal.view.privacy.b$b)
.class public final Lio/bidmachine/rendering/internal/view/privacy/b$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/internal/view/privacy/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/b$b;

    invoke-direct {v0}, Lio/bidmachine/rendering/internal/view/privacy/b$b;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/internal/view/privacy/b$b;->a:Lio/bidmachine/rendering/internal/view/privacy/b$b;

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
.method public final a()V
    .registers 1

    .line 0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/b$b;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.b.c (io.bidmachine.rendering.internal.view.privacy.b$c)
.class public final Lio/bidmachine/rendering/internal/view/privacy/b$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$KkMBSdRKT4SwkUqf56sXSS_Y838(Landroid/view/View;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/rendering/internal/view/privacy/b$c;->a(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b$c;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final a(Landroid/view/View;)V
    .registers 1

    .line 0
    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/internal/view/privacy/c;
    .registers 3

    .line 2
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/privacy/b$c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/view/privacy/c;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lio/bidmachine/rendering/internal/view/privacy/b$c$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/bidmachine/rendering/internal/view/privacy/b$c$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/b$c;->a()Lio/bidmachine/rendering/internal/view/privacy/c;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.b$c$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.view.privacy.b$c$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/view/privacy/b$c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p1}, Lio/bidmachine/rendering/internal/view/privacy/b$c;->$r8$lambda$KkMBSdRKT4SwkUqf56sXSS_Y838(Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.b.d (io.bidmachine.rendering.internal.view.privacy.b$d)
.class public final Lio/bidmachine/rendering/internal/view/privacy/b$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/b;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lio/bidmachine/rendering/model/PrivacySheetParams$Action;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lio/bidmachine/rendering/model/PrivacySheetParams$Action;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b$d;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lio/bidmachine/rendering/internal/view/privacy/b$d;->b:Lio/bidmachine/rendering/model/PrivacySheetParams$Action;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/b$d;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lio/bidmachine/rendering/internal/view/privacy/b$d;->b:Lio/bidmachine/rendering/model/PrivacySheetParams$Action;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/b$d;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.b$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.view.privacy.b$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/view/privacy/b;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/b;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/view/privacy/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/rendering/internal/view/privacy/b;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/view/privacy/b;->$r8$lambda$xcJURQrWUBl5ZM97-w5KSPhiXFA(Lio/bidmachine/rendering/internal/view/privacy/b;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.b$$ExternalSyntheticLambda1 (io.bidmachine.rendering.internal.view.privacy.b$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/rendering/internal/view/privacy/b;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/b;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/rendering/internal/view/privacy/b;

    iput p2, p0, Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/rendering/internal/view/privacy/b;

    iget v1, p0, Lio/bidmachine/rendering/internal/view/privacy/b$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lio/bidmachine/rendering/internal/view/privacy/b;->$r8$lambda$qIQYbKeGUHJUjVAXmZnkW2QZCjg(Lio/bidmachine/rendering/internal/view/privacy/b;ILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
