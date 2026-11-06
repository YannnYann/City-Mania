package com.badlogic.gdx.backends.android;

import android.content.Context;
import android.media.AudioAttributes;
import android.os.Build;
import android.os.VibrationAttributes;
import android.os.Vibrator;

/* JADX INFO: loaded from: classes.dex */
public class AndroidHaptics {
    public AudioAttributes audioAttributes;
    public boolean hapticsSupport;
    public VibrationAttributes vibrationAttributes;
    public final Vibrator vibrator;
    public boolean vibratorSupport;

    public AndroidHaptics(Context context) {
        this.vibratorSupport = false;
        this.hapticsSupport = false;
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            this.vibrator = AndroidHaptics$$ExternalSyntheticApiModelOutline1.m(context.getSystemService("vibrator_manager")).getDefaultVibrator();
        } else {
            this.vibrator = (Vibrator) context.getSystemService("vibrator");
        }
        Vibrator vibrator = this.vibrator;
        if (vibrator == null || !vibrator.hasVibrator()) {
            return;
        }
        this.vibratorSupport = true;
        if (i >= 29) {
            if (this.vibrator.hasAmplitudeControl()) {
                this.hapticsSupport = true;
            }
            if (i >= 33) {
                this.vibrationAttributes = AndroidHaptics$$ExternalSyntheticApiModelOutline0.m().setUsage(19).build();
            } else {
                this.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(14).build();
            }
        }
    }
}
