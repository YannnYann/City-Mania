###### Class ads_mobile_sdk.jg2 (ads_mobile_sdk.jg2)
.class public abstract Lads_mobile_sdk/jg2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2
    const-string p0, "notAttached"

    return-object p0

    .line 4
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    .line 6
    const-string p0, "viewGone"

    return-object p0

    :cond_14
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 9
    const-string p0, "viewInvisible"

    return-object p0

    :cond_1a
    if-eqz v0, :cond_1f

    .line 13
    const-string p0, "viewNotVisible"

    return-object p0

    .line 15
    :cond_1f
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_2b

    .line 16
    const-string p0, "viewAlphaZero"

    return-object p0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/view/View;)F
    .registers 1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/View;)Z
    .registers 2

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 72
    :goto_4
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_16

    .line 73
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 74
    check-cast p0, Landroid/app/Activity;

    goto :goto_17

    .line 76
    :cond_f
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_4

    :cond_16
    const/4 p0, 0x0

    :goto_17
    if-eqz p0, :cond_1e

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result p0

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/view/View;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    :goto_f
    if-eqz p0, :cond_28

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1b

    return v1

    .line 12
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 13
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_26

    .line 14
    check-cast p0, Landroid/view/View;

    goto :goto_f

    :cond_26
    const/4 p0, 0x0

    goto :goto_f

    :cond_28
    const/4 p0, 0x1

    return p0
.end method
