###### Class androidx.core.app.PendingIntentCompat (androidx.core.app.PendingIntentCompat)
.class public final Landroidx/core/app/PendingIntentCompat;
.super Ljava/lang/Object;
.source "PendingIntentCompat.java"


# direct methods
.method public static addMutabilityFlags(ZI)I
    .registers 3

    if-eqz p0, :cond_d

    .line 280
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_c

    const/high16 p0, 0x2000000

    :goto_a
    or-int/2addr p0, p1

    return p0

    :cond_c
    return p1

    :cond_d
    const/high16 p0, 0x4000000

    goto :goto_a
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;
    .registers 5

    .line 115
    invoke-static {p4, p3}, Landroidx/core/app/PendingIntentCompat;->addMutabilityFlags(ZI)I

    move-result p3

    .line 114
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
