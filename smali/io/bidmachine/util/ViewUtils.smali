###### Class io.bidmachine.util.ViewUtils (io.bidmachine.util.ViewUtils)
.class public final Lio/bidmachine/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewUtils.kt\nio/bidmachine/util/ViewUtils\n+ 2 ViewUtils.kt\nio/bidmachine/util/ViewUtilsKt\n*L\n1#1,451:1\n308#2,4:452\n328#2:456\n*S KotlinDebug\n*F\n+ 1 ViewUtils.kt\nio/bidmachine/util/ViewUtils\n*L\n111#1:452,4\n111#1:456\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/ViewUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/ViewUtils;

    invoke-direct {v0}, Lio/bidmachine/util/ViewUtils;-><init>()V

    sput-object v0, Lio/bidmachine/util/ViewUtils;->INSTANCE:Lio/bidmachine/util/ViewUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createMatchParentParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 115
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static final findContentOrRootView(Landroid/view/View;)Landroid/view/View;
    .registers 2

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p0}, Lio/bidmachine/util/ViewUtilsKt;->findContentOrRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final generateViewId()I
    .registers 1

    .line 25
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method public static final hideViewSafely(Landroid/view/View;)V
    .registers 1

    .line 34
    invoke-static {p0}, Lio/bidmachine/util/ViewUtilsKt;->hideViewSafely(Landroid/view/View;)V

    return-void
.end method

.method public static final isViewVisible(I)Z
    .registers 1

    .line 0
    if-nez p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final removeFromParent(Landroid/view/View;)Lkotlin/Unit;
    .registers 2

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lio/bidmachine/util/ViewUtilsKt;->removeFromParent(Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final setInsetsChanger(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30$$ExternalSyntheticApiModelOutline6;->m()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0, v0}, Lio/bidmachine/util/ViewUtils;->setInsetsChanger(Landroid/view/View;I)V

    return-void
.end method

.method public static final setInsetsChanger(Landroid/view/View;I)V
    .registers 3

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {p0, p1}, Lio/bidmachine/util/ViewUtilsKt;->setInsetsChanger(Landroid/view/View;I)V

    return-void
.end method

.method public static final showViewSafely(Landroid/view/View;)V
    .registers 1

    .line 31
    invoke-static {p0}, Lio/bidmachine/util/ViewUtilsKt;->showViewSafely(Landroid/view/View;)V

    return-void
.end method

.method public static final visibilityToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const/16 v0, 0x8

    if-eq p0, v0, :cond_c

    .line 64
    const-string p0, "unknown"

    return-object p0

    .line 52
    :cond_c
    const-string p0, "GONE"

    return-object p0

    .line 60
    :cond_f
    const-string p0, "INVISIBLE"

    return-object p0

    .line 56
    :cond_12
    const-string p0, "VISIBLE"

    return-object p0
.end method
