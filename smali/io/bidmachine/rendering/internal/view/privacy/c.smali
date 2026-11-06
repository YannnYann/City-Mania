###### Class io.bidmachine.rendering.internal.view.privacy.c (io.bidmachine.rendering.internal.view.privacy.c)
.class public final Lio/bidmachine/rendering/internal/view/privacy/c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/Lazy;

.field public final b:Lkotlin/Lazy;

.field public final c:Lkotlin/Lazy;

.field public final d:Lkotlin/Lazy;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlin/Lazy;

.field public final g:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$VQJJBqxk0NnnGNxicEsfA1BYGWc(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/view/privacy/c;->b(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lHsQEaoFVg711kqTuoKE792zxWs(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lio/bidmachine/rendering/internal/view/privacy/c;->a(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$g;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$g;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->a:Lkotlin/Lazy;

    .line 6
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$f;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$f;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->b:Lkotlin/Lazy;

    .line 9
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$b;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$b;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->c:Lkotlin/Lazy;

    .line 12
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$a;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$a;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->d:Lkotlin/Lazy;

    .line 15
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$c;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$c;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->e:Lkotlin/Lazy;

    .line 18
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$e;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$e;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->f:Lkotlin/Lazy;

    .line 21
    new-instance v0, Lio/bidmachine/rendering/internal/view/privacy/c$d;

    invoke-direct {v0, p0}, Lio/bidmachine/rendering/internal/view/privacy/c$d;-><init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->g:Lkotlin/Lazy;

    .line 26
    sget v0, Lio/bidmachine/rendering/R$layout;->bm_privacy_sheet:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    sget v0, Lio/bidmachine/rendering/R$drawable;->bm_bg_privacy_sheet:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 29
    invoke-static {p1, v0}, Lio/bidmachine/util/UtilsKt;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, p1, p1, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 2

    const-string p1, "$clickListener"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 2

    const-string p1, "$clickListener"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final getActionButtonsContainer()Landroid/widget/LinearLayout;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-actionButtonsContainer>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getCloseButton()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-closeButton>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getFooterContainer()Landroid/widget/LinearLayout;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-footerContainer>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final getFooterTextTextView()Landroid/widget/TextView;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-footerTextTextView>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getFooterTitleTextView()Landroid/widget/TextView;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-footerTitleTextView>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getSubtitleTextView()Landroid/widget/TextView;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-subtitleTextView>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTitleTextView()Landroid/widget/TextView;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-titleTextView>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 14
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getActionButtonsContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getActionButtonsContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/ViewUtilsKt;->hideViewSafely(Landroid/view/View;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V
    .registers 8

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getActionButtonsContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lio/bidmachine/rendering/internal/view/privacy/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/bidmachine/rendering/internal/view/privacy/a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v1, p2}, Lio/bidmachine/rendering/internal/view/privacy/a;->setActionIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4
    new-instance p1, Lio/bidmachine/rendering/internal/view/privacy/c$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Lio/bidmachine/rendering/internal/view/privacy/c$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    const/4 p2, -0x2

    .line 5
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 12
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getActionButtonsContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->showViewSafely(Landroid/view/View;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v0

    :goto_e
    if-eqz p2, :cond_18

    .line 17
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :cond_18
    :goto_18
    if-eqz v2, :cond_24

    if-eqz v0, :cond_24

    .line 19
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getFooterContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->hideViewSafely(Landroid/view/View;)V

    return-void

    :cond_24
    if-eqz v2, :cond_2e

    .line 23
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getFooterTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->hideViewSafely(Landroid/view/View;)V

    goto :goto_3c

    .line 25
    :cond_2e
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getFooterTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getFooterTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->showViewSafely(Landroid/view/View;)V

    :goto_3c
    if-eqz v0, :cond_46

    .line 29
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getFooterTextTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->hideViewSafely(Landroid/view/View;)V

    goto :goto_54

    .line 31
    :cond_46
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getFooterTextTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getFooterTextTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->showViewSafely(Landroid/view/View;)V

    .line 34
    :goto_54
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getFooterContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/util/ViewUtilsKt;->showViewSafely(Landroid/view/View;)V

    return-void
.end method

.method public final setOnCloseButtonClickListener(Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getCloseButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/bidmachine/rendering/internal/view/privacy/c$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/bidmachine/rendering/internal/view/privacy/c$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "subtitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getSubtitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/view/privacy/c;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.c.a (io.bidmachine.rendering.internal.view.privacy.c$a)
.class public final Lio/bidmachine/rendering/internal/view/privacy/c$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/privacy/c;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/c$a;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/LinearLayout;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c$a;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    sget v1, Lio/bidmachine/rendering/R$id;->bmPrivacySheetActionButtonsContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/c$a;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.c.b (io.bidmachine.rendering.internal.view.privacy.c$b)
.class public final Lio/bidmachine/rendering/internal/view/privacy/c$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/privacy/c;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/c$b;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c$b;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    sget v1, Lio/bidmachine/rendering/R$id;->bmPrivacySheetClose:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/c$b;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.c.C1208c (io.bidmachine.rendering.internal.view.privacy.c$c)
.class public final Lio/bidmachine/rendering/internal/view/privacy/c$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/privacy/c;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/c$c;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/LinearLayout;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c$c;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    sget v1, Lio/bidmachine/rendering/R$id;->bmPrivacySheetFooterContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/c$c;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.c.d (io.bidmachine.rendering.internal.view.privacy.c$d)
.class public final Lio/bidmachine/rendering/internal/view/privacy/c$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/privacy/c;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/c$d;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c$d;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    sget v1, Lio/bidmachine/rendering/R$id;->bmPrivacySheetFooterText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/c$d;->a()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.c.e (io.bidmachine.rendering.internal.view.privacy.c$e)
.class public final Lio/bidmachine/rendering/internal/view/privacy/c$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/privacy/c;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/c$e;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c$e;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    sget v1, Lio/bidmachine/rendering/R$id;->bmPrivacySheetFooterTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/c$e;->a()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.c.f (io.bidmachine.rendering.internal.view.privacy.c$f)
.class public final Lio/bidmachine/rendering/internal/view/privacy/c$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/privacy/c;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/c$f;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c$f;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    sget v1, Lio/bidmachine/rendering/R$id;->bmPrivacySheetSubtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/c$f;->a()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.c.g (io.bidmachine.rendering.internal.view.privacy.c$g)
.class public final Lio/bidmachine/rendering/internal/view/privacy/c$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/view/privacy/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/rendering/internal/view/privacy/c;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/view/privacy/c;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/c$g;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c$g;->a:Lio/bidmachine/rendering/internal/view/privacy/c;

    sget v1, Lio/bidmachine/rendering/R$id;->bmPrivacySheetTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/view/privacy/c$g;->a()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.c$$ExternalSyntheticLambda0 (io.bidmachine.rendering.internal.view.privacy.c$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/rendering/internal/view/privacy/c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/c$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/view/privacy/c;->$r8$lambda$lHsQEaoFVg711kqTuoKE792zxWs(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

###### Class io.bidmachine.rendering.internal.view.privacy.c$$ExternalSyntheticLambda1 (io.bidmachine.rendering.internal.view.privacy.c$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/rendering/internal/view/privacy/c$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/rendering/internal/view/privacy/c$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/view/privacy/c$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p1}, Lio/bidmachine/rendering/internal/view/privacy/c;->$r8$lambda$VQJJBqxk0NnnGNxicEsfA1BYGWc(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method
