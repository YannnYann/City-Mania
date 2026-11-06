###### Class androidx.transition.ViewUtilsApi21 (androidx.transition.ViewUtilsApi21)
.class public Landroidx/transition/ViewUtilsApi21;
.super Landroidx/transition/ViewUtilsApi19;
.source "ViewUtilsApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ViewUtilsApi21$Api29Impl;
    }
.end annotation


# static fields
.field public static sTryHiddenTransformMatrixToGlobal:Z = true

.field public static sTryHiddenTransformMatrixToLocal:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi19;-><init>()V

    return-void
.end method


# virtual methods
.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 47
    sget-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToGlobal:Z

    if-eqz v0, :cond_b

    .line 51
    :try_start_4
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi21$Api29Impl;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    const/4 p1, 0x0

    .line 53
    sput-boolean p1, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToGlobal:Z

    :cond_b
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 61
    sget-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToLocal:Z

    if-eqz v0, :cond_b

    .line 65
    :try_start_4
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi21$Api29Impl;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    const/4 p1, 0x0

    .line 67
    sput-boolean p1, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToLocal:Z

    :cond_b
    return-void
.end method

###### Class androidx.transition.ViewUtilsApi21.Api29Impl (androidx.transition.ViewUtilsApi21$Api29Impl)
.class public Landroidx/transition/ViewUtilsApi21$Api29Impl;
.super Ljava/lang/Object;
.source "ViewUtilsApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ViewUtilsApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api29Impl"
.end annotation


# direct methods
.method public static setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 2

    .line 104
    invoke-static {p0, p1}, Landroidx/transition/ViewUtilsApi21$Api29Impl$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 2

    .line 94
    invoke-static {p0, p1}, Landroidx/transition/ViewUtilsApi21$Api29Impl$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 2

    .line 99
    invoke-static {p0, p1}, Landroidx/transition/ViewUtilsApi21$Api29Impl$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
