###### Class androidx.core.view.MotionEventCompat (androidx.core.view.MotionEventCompat)
.class public final Landroidx/core/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# direct methods
.method public static isFromSource(Landroid/view/MotionEvent;I)Z
    .registers 2

    .line 564
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
