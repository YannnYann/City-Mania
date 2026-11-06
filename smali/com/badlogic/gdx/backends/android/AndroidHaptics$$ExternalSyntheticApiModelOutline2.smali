###### Class com.badlogic.gdx.backends.android.AndroidHaptics$$ExternalSyntheticApiModelOutline2 (com.badlogic.gdx.backends.android.AndroidHaptics$$ExternalSyntheticApiModelOutline2)
.class public final synthetic Lcom/badlogic/gdx/backends/android/AndroidHaptics$$ExternalSyntheticApiModelOutline2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/os/VibratorManager;)Landroid/os/Vibrator;
    .registers 1

    .line 0
    invoke-virtual {p0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p0

    return-object p0
.end method
