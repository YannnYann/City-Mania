package io.bidmachine.media3.common.audio;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import io.bidmachine.media3.common.AudioAttributes;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Util;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class AudioFocusRequestCompat {
    public final AudioAttributes audioAttributes;
    public final Handler focusChangeHandler;
    public final int focusGain;
    public final Object frameworkAudioFocusRequest;
    public final AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
    public final boolean pauseOnDuck;

    public AudioFocusRequestCompat(int i, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, AudioAttributes audioAttributes, boolean z) {
        this.focusGain = i;
        this.focusChangeHandler = handler;
        this.audioAttributes = audioAttributes;
        this.pauseOnDuck = z;
        int i2 = Util.SDK_INT;
        if (i2 < 26) {
            this.onAudioFocusChangeListener = new OnAudioFocusChangeListenerHandlerCompat(onAudioFocusChangeListener, handler);
        } else {
            this.onAudioFocusChangeListener = onAudioFocusChangeListener;
        }
        if (i2 >= 26) {
            this.frameworkAudioFocusRequest = AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline0.m(i).setAudioAttributes(audioAttributes.getAudioAttributesV21().audioAttributes).setWillPauseWhenDucked(z).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();
        } else {
            this.frameworkAudioFocusRequest = null;
        }
    }

    public int getFocusGain() {
        return this.focusGain;
    }

    public AudioAttributes getAudioAttributes() {
        return this.audioAttributes;
    }

    public boolean willPauseWhenDucked() {
        return this.pauseOnDuck;
    }

    public AudioManager.OnAudioFocusChangeListener getOnAudioFocusChangeListener() {
        return this.onAudioFocusChangeListener;
    }

    public Handler getFocusChangeHandler() {
        return this.focusChangeHandler;
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioFocusRequestCompat)) {
            return false;
        }
        AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) obj;
        return this.focusGain == audioFocusRequestCompat.focusGain && this.pauseOnDuck == audioFocusRequestCompat.pauseOnDuck && Objects.equals(this.onAudioFocusChangeListener, audioFocusRequestCompat.onAudioFocusChangeListener) && Objects.equals(this.focusChangeHandler, audioFocusRequestCompat.focusChangeHandler) && Objects.equals(this.audioAttributes, audioFocusRequestCompat.audioAttributes);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.focusGain), this.onAudioFocusChangeListener, this.focusChangeHandler, this.audioAttributes, Boolean.valueOf(this.pauseOnDuck));
    }

    public AudioFocusRequest getAudioFocusRequest() {
        return AudioFocusRequestCompat$$ExternalSyntheticApiModelOutline5.m(Assertions.checkNotNull(this.frameworkAudioFocusRequest));
    }

    public static final class Builder {
        public AudioAttributes audioAttributes;
        public Handler focusChangeHandler;
        public int focusGain;
        public AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        public boolean pauseOnDuck;

        public Builder(int i) {
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.focusGain = i;
        }

        public Builder(AudioFocusRequestCompat audioFocusRequestCompat) {
            this.focusGain = audioFocusRequestCompat.getFocusGain();
            this.onAudioFocusChangeListener = audioFocusRequestCompat.getOnAudioFocusChangeListener();
            this.focusChangeHandler = audioFocusRequestCompat.getFocusChangeHandler();
            this.audioAttributes = audioFocusRequestCompat.getAudioAttributes();
            this.pauseOnDuck = audioFocusRequestCompat.willPauseWhenDucked();
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            Assertions.checkNotNull(onAudioFocusChangeListener);
            Assertions.checkNotNull(handler);
            this.onAudioFocusChangeListener = onAudioFocusChangeListener;
            this.focusChangeHandler = handler;
            return this;
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes) {
            Assertions.checkNotNull(audioAttributes);
            this.audioAttributes = audioAttributes;
            return this;
        }

        public Builder setWillPauseWhenDucked(boolean z) {
            this.pauseOnDuck = z;
            return this;
        }

        public AudioFocusRequestCompat build() {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.onAudioFocusChangeListener;
            if (onAudioFocusChangeListener == null) {
                throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
            }
            return new AudioFocusRequestCompat(this.focusGain, onAudioFocusChangeListener, (Handler) Assertions.checkNotNull(this.focusChangeHandler), this.audioAttributes, this.pauseOnDuck);
        }
    }

    public static class OnAudioFocusChangeListenerHandlerCompat implements AudioManager.OnAudioFocusChangeListener {
        public final Handler handler;
        public final AudioManager.OnAudioFocusChangeListener listener;

        public OnAudioFocusChangeListenerHandlerCompat(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            this.listener = onAudioFocusChangeListener;
            this.handler = Util.createHandler(handler.getLooper(), null);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i) {
            Util.postOrRun(this.handler, new Runnable() { // from class: io.bidmachine.media3.common.audio.AudioFocusRequestCompat$OnAudioFocusChangeListenerHandlerCompat$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.listener.onAudioFocusChange(i);
                }
            });
        }
    }
}
