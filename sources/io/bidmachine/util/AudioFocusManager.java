package io.bidmachine.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import io.bidmachine.media3.common.audio.AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline0;
import io.bidmachine.media3.common.audio.AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline5;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AudioFocusManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class AudioFocusManager {
    public final Lazy audioFocusRequest$delegate;
    public final AudioManager audioManager;
    public final AudioManager.OnAudioFocusChangeListener internalFocusChangeListener;
    public final AtomicBoolean isFocusDesired;
    public final AtomicBoolean isFocusRequested;

    public static final void internalFocusChangeListener$lambda$0(int i) {
    }

    public AudioFocusManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.audioManager = UtilsKt.getAudioManager(context);
        this.isFocusRequested = new AtomicBoolean(false);
        this.isFocusDesired = new AtomicBoolean(false);
        this.internalFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: io.bidmachine.util.AudioFocusManager$$ExternalSyntheticLambda1
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i) {
                AudioFocusManager.internalFocusChangeListener$lambda$0(i);
            }
        };
        this.audioFocusRequest$delegate = LazyKt__LazyJVMKt.lazy(new Function0<AudioFocusRequest>() { // from class: io.bidmachine.util.AudioFocusManager$audioFocusRequest$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AudioFocusRequest invoke() {
                return this.this$0.createAudioFocusRequest();
            }
        });
    }

    public final AudioFocusRequest getAudioFocusRequest() {
        return AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline5.m(this.audioFocusRequest$delegate.getValue());
    }

    public final boolean request() {
        this.isFocusDesired.set(true);
        return requestFocus();
    }

    public final void pause() {
        releaseFocus();
    }

    public final boolean resume() {
        if (this.isFocusDesired.get()) {
            return requestFocus();
        }
        return false;
    }

    public final void release() {
        this.isFocusDesired.set(false);
        releaseFocus();
    }

    public final boolean requestFocus() {
        Integer numValueOf;
        int iRequestAudioFocus;
        AudioManager audioManager = this.audioManager;
        if (audioManager == null) {
            return false;
        }
        if (!this.isFocusRequested.compareAndSet(false, true)) {
            return true;
        }
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                iRequestAudioFocus = audioManager.requestAudioFocus(getAudioFocusRequest());
            } else {
                iRequestAudioFocus = audioManager.requestAudioFocus(this.internalFocusChangeListener, 3, 2);
            }
            numValueOf = Integer.valueOf(iRequestAudioFocus);
        } catch (Throwable unused) {
            numValueOf = null;
        }
        boolean z = (numValueOf != null ? numValueOf.intValue() : 0) == 1;
        if (!z) {
            this.isFocusRequested.set(false);
        }
        return z;
    }

    public final void releaseFocus() {
        AudioManager audioManager = this.audioManager;
        if (audioManager != null && this.isFocusRequested.compareAndSet(true, false)) {
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    audioManager.abandonAudioFocusRequest(getAudioFocusRequest());
                } else {
                    audioManager.abandonAudioFocus(this.internalFocusChangeListener);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @SuppressLint({"NewApi"})
    public final AudioFocusRequest createAudioFocusRequest() {
        AudioFocusRequest audioFocusRequestBuild = AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline0.m(2).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(3).build()).setOnAudioFocusChangeListener(this.internalFocusChangeListener).build();
        Intrinsics.checkNotNullExpressionValue(audioFocusRequestBuild, "Builder(AudioManager.AUD…ner)\n            .build()");
        return audioFocusRequestBuild;
    }
}
