###### Class io.bidmachine.rendering.utils.UiUtilsKt (io.bidmachine.rendering.utils.UiUtilsKt)
.class public final Lio/bidmachine/rendering/utils/UiUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final applyInsets(Landroid/app/Activity;Landroid/view/View;Z)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_2b

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    if-nez p0, :cond_1f

    move-object p0, p1

    :cond_1f
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    invoke-static {p0}, Lio/bidmachine/util/ViewUtils;->setInsetsChanger(Landroid/view/View;)V

    if-eqz p2, :cond_2b

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    :cond_2b
    return-void
.end method

.method public static final findAdView(Landroid/view/View;)Landroid/view/View;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lio/bidmachine/rendering/utils/UiUtilsKt$a;->a:Lio/bidmachine/rendering/utils/UiUtilsKt$a;

    invoke-static {p0, v0}, Lio/bidmachine/util/ViewUtilsKt;->findParentView(Landroid/view/View;Lkotlin/jvm/functions/Function1;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final setupActivityOrientation(Landroid/app/Activity;Lio/bidmachine/rendering/model/Orientation;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/Orientation;->getActivityOrientation()I

    move-result p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x4

    .line 2
    :goto_d
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public static final toClickData(Landroid/graphics/Point;Landroid/view/View;)Lio/bidmachine/rendering/model/ClickData;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lio/bidmachine/rendering/utils/UiUtilsKt;->findAdView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_12

    return-object v0

    .line 4
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_3f

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1f

    goto :goto_3f

    :cond_1f
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    new-instance v1, Lio/bidmachine/rendering/model/ClickData;

    .line 10
    iget v2, p0, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-int/2addr v2, v3

    .line 11
    iget p0, p0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr p0, v0

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 14
    invoke-direct {v1, v2, p0, v0, p1}, Lio/bidmachine/rendering/model/ClickData;-><init>(IIII)V

    return-object v1

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method public static final toClickData(Landroid/view/MotionEvent;Landroid/view/View;)Lio/bidmachine/rendering/model/ClickData;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 2
    invoke-static {v0, p1}, Lio/bidmachine/rendering/utils/UiUtilsKt;->toClickData(Landroid/graphics/Point;Landroid/view/View;)Lio/bidmachine/rendering/model/ClickData;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.rendering.utils.UiUtilsKt.a (io.bidmachine.rendering.utils.UiUtilsKt$a)
.class public final Lio/bidmachine/rendering/utils/UiUtilsKt$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/utils/UiUtilsKt;->findAdView(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/rendering/utils/UiUtilsKt$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/rendering/utils/UiUtilsKt$a;

    invoke-direct {v0}, Lio/bidmachine/rendering/utils/UiUtilsKt$a;-><init>()V

    sput-object v0, Lio/bidmachine/rendering/utils/UiUtilsKt$a;->a:Lio/bidmachine/rendering/utils/UiUtilsKt$a;

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
.method public final a(Landroid/view/View;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p1, Lio/bidmachine/rendering/ad/view/AdView;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/bidmachine/rendering/utils/UiUtilsKt$a;->a(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
