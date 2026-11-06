###### Class com.google.android.play.core.hsdp.service.zza (com.google.android.play.core.hsdp.service.zza)
.class public final Lcom/google/android/play/core/hsdp/service/zza;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# direct methods
.method public static zza(Landroid/app/Activity;I)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static zzb(Landroid/app/Activity;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p0, v0}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method public static zzc(Landroid/app/Activity;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p0, v0}, Lcom/google/android/play/core/hsdp/service/zza;->zza(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method
