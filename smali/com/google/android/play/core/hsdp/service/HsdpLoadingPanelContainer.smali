###### Class com.google.android.play.core.hsdp.service.HsdpLoadingPanelContainer (com.google.android.play.core.hsdp.service.HsdpLoadingPanelContainer)
.class public final Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;
.super Landroid/widget/FrameLayout;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field public zza:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;->zza:Ljava/lang/Runnable;

    if-eqz p1, :cond_f

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;->zza:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void
.end method

.method public setOnConfigurationChangedListener(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/HsdpLoadingPanelContainer;->zza:Ljava/lang/Runnable;

    return-void
.end method
