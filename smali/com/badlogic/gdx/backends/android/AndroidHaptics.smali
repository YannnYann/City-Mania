###### Class com.badlogic.gdx.backends.android.AndroidHaptics (com.badlogic.gdx.backends.android.AndroidHaptics)
.class public Lcom/badlogic/gdx/backends/android/AndroidHaptics;
.super Ljava/lang/Object;
.source "AndroidHaptics.java"


# instance fields
.field public audioAttributes:Landroid/media/AudioAttributes;

.field public hapticsSupport:Z

.field public vibrationAttributes:Landroid/os/VibrationAttributes;

.field public final vibrator:Landroid/os/Vibrator;

.field public vibratorSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibratorSupport:Z

    .line 40
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->hapticsSupport:Z

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1f

    .line 42
    const-string v1, "vibrator_manager"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/AndroidHaptics$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/os/VibratorManager;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/AndroidHaptics$$ExternalSyntheticApiModelOutline2;->m(Landroid/os/VibratorManager;)Landroid/os/Vibrator;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrator:Landroid/os/Vibrator;

    goto :goto_29

    .line 45
    :cond_1f
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrator:Landroid/os/Vibrator;

    .line 47
    :goto_29
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibratorSupport:Z

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_6f

    .line 50
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrator:Landroid/os/Vibrator;

    invoke-static {v1}, Lcom/badlogic/gdx/backends/android/AndroidHaptics$$ExternalSyntheticApiModelOutline3;->m(Landroid/os/Vibrator;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 51
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->hapticsSupport:Z

    :cond_44
    const/16 p1, 0x21

    if-lt v0, p1, :cond_59

    .line 54
    invoke-static {}, Lcom/badlogic/gdx/backends/android/AndroidHaptics$$ExternalSyntheticApiModelOutline0;->m()Landroid/os/VibrationAttributes$Builder;

    move-result-object p1

    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidHaptics$$ExternalSyntheticApiModelOutline4;->m(Landroid/os/VibrationAttributes$Builder;I)Landroid/os/VibrationAttributes$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/backends/android/AndroidHaptics$$ExternalSyntheticApiModelOutline5;->m(Landroid/os/VibrationAttributes$Builder;)Landroid/os/VibrationAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrationAttributes:Landroid/os/VibrationAttributes;

    return-void

    .line 56
    :cond_59
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/16 v0, 0xe

    .line 57
    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_6f
    return-void
.end method
