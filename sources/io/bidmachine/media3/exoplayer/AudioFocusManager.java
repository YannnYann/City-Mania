package io.bidmachine.media3.exoplayer;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import io.bidmachine.media3.common.AudioAttributes;
import io.bidmachine.media3.common.audio.AudioFocusRequestCompat;
import io.bidmachine.media3.common.audio.AudioManagerCompat;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Log;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class AudioFocusManager {
    public AudioAttributes audioAttributes;
    public AudioFocusRequestCompat audioFocusRequest;
    public final Supplier<AudioManager> audioManager;
    public final Handler eventHandler;
    public int focusGainToRequest;
    public PlayerControl playerControl;
    public boolean rebuildAudioFocusRequest;
    public float volumeMultiplier = 1.0f;
    public int audioFocusState = 0;

    public interface PlayerControl {
        void executePlayerCommand(int i);

        void setVolumeMultiplier(float f);
    }

    public AudioFocusManager(final Context context, Looper looper, PlayerControl playerControl) {
        this.audioManager = Suppliers.memoize(new Supplier() { // from class: io.bidmachine.media3.exoplayer.AudioFocusManager$$ExternalSyntheticLambda1
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return AudioManagerCompat.getAudioManager(context);
            }
        });
        this.playerControl = playerControl;
        this.eventHandler = new Handler(looper);
    }

    public float getVolumeMultiplier() {
        return this.volumeMultiplier;
    }

    public void setAudioAttributes(AudioAttributes audioAttributes) {
        if (Objects.equals(this.audioAttributes, audioAttributes)) {
            return;
        }
        this.audioAttributes = audioAttributes;
        int iConvertAudioAttributesToFocusGain = convertAudioAttributesToFocusGain(audioAttributes);
        this.focusGainToRequest = iConvertAudioAttributesToFocusGain;
        boolean z = true;
        if (iConvertAudioAttributesToFocusGain != 1 && iConvertAudioAttributesToFocusGain != 0) {
            z = false;
        }
        Assertions.checkArgument(z, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME.");
    }

    public int updateAudioFocus(boolean z, int i) {
        if (!shouldHandleAudioFocus(i)) {
            abandonAudioFocusIfHeld();
            setAudioFocusState(0);
            return 1;
        }
        if (z) {
            return requestAudioFocus();
        }
        int i2 = this.audioFocusState;
        if (i2 != 1) {
            return i2 != 3 ? 1 : 0;
        }
        return -1;
    }

    public void release() {
        this.playerControl = null;
        abandonAudioFocusIfHeld();
        setAudioFocusState(0);
    }

    public final boolean shouldHandleAudioFocus(int i) {
        return i != 1 && this.focusGainToRequest == 1;
    }

    public final int requestAudioFocus() {
        if (this.audioFocusState == 2) {
            return 1;
        }
        if (requestAudioFocusInternal() == 1) {
            setAudioFocusState(2);
            return 1;
        }
        setAudioFocusState(1);
        return -1;
    }

    public final void abandonAudioFocusIfHeld() {
        int i = this.audioFocusState;
        if (i == 1 || i == 0 || this.audioFocusRequest == null) {
            return;
        }
        AudioManagerCompat.abandonAudioFocusRequest(this.audioManager.get(), this.audioFocusRequest);
    }

    public final int requestAudioFocusInternal() {
        AudioFocusRequestCompat.Builder builderBuildUpon;
        AudioFocusRequestCompat audioFocusRequestCompat = this.audioFocusRequest;
        if (audioFocusRequestCompat == null || this.rebuildAudioFocusRequest) {
            if (audioFocusRequestCompat == null) {
                builderBuildUpon = new AudioFocusRequestCompat.Builder(this.focusGainToRequest);
            } else {
                builderBuildUpon = audioFocusRequestCompat.buildUpon();
            }
            this.audioFocusRequest = builderBuildUpon.setAudioAttributes((AudioAttributes) Assertions.checkNotNull(this.audioAttributes)).setWillPauseWhenDucked(willPauseWhenDucked()).setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener() { // from class: io.bidmachine.media3.exoplayer.AudioFocusManager$$ExternalSyntheticLambda0
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public final void onAudioFocusChange(int i) {
                    this.f$0.handlePlatformAudioFocusChange(i);
                }
            }, this.eventHandler).build();
            this.rebuildAudioFocusRequest = false;
        }
        return AudioManagerCompat.requestAudioFocus(this.audioManager.get(), this.audioFocusRequest);
    }

    public final boolean willPauseWhenDucked() {
        AudioAttributes audioAttributes = this.audioAttributes;
        return audioAttributes != null && audioAttributes.contentType == 1;
    }

    public static int convertAudioAttributesToFocusGain(AudioAttributes audioAttributes) {
        if (audioAttributes == null) {
            return 0;
        }
        switch (audioAttributes.usage) {
            case 0:
                Log.w("AudioFocusManager", "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default.");
                return 1;
            case 1:
            case 14:
                return 1;
            case 2:
            case 4:
                return 2;
            case 3:
                return 0;
            case 11:
                if (audioAttributes.contentType == 1) {
                    return 2;
                }
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 12:
            case 13:
                return 3;
            case 15:
            default:
                Log.w("AudioFocusManager", "Unidentified audio usage: " + audioAttributes.usage);
                return 0;
            case 16:
                return 4;
        }
    }

    public final void setAudioFocusState(int i) {
        if (this.audioFocusState == i) {
            return;
        }
        this.audioFocusState = i;
        float f = i == 4 ? 0.2f : 1.0f;
        if (this.volumeMultiplier == f) {
            return;
        }
        this.volumeMultiplier = f;
        PlayerControl playerControl = this.playerControl;
        if (playerControl != null) {
            playerControl.setVolumeMultiplier(f);
        }
    }

    public final void handlePlatformAudioFocusChange(int i) {
        if (i == -3 || i == -2) {
            if (i == -2 || willPauseWhenDucked()) {
                executePlayerCommand(0);
                setAudioFocusState(3);
                return;
            } else {
                setAudioFocusState(4);
                return;
            }
        }
        if (i == -1) {
            executePlayerCommand(-1);
            abandonAudioFocusIfHeld();
            setAudioFocusState(1);
        } else if (i == 1) {
            setAudioFocusState(2);
            executePlayerCommand(1);
        } else {
            Log.w("AudioFocusManager", "Unknown focus change type: " + i);
        }
    }

    public final void executePlayerCommand(int i) {
        PlayerControl playerControl = this.playerControl;
        if (playerControl != null) {
            playerControl.executePlayerCommand(i);
        }
    }
}
