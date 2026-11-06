package io.bidmachine.media3.exoplayer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Looper;
import com.google.common.base.Function;
import com.unity3d.services.core.device.MimeTypes;
import io.bidmachine.media3.common.audio.AudioManagerCompat;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.BackgroundThreadStateHandler;
import io.bidmachine.media3.common.util.Clock;
import io.bidmachine.media3.common.util.Log;
import io.bidmachine.media3.exoplayer.StreamVolumeManager;

/* JADX INFO: loaded from: classes5.dex */
public final class StreamVolumeManager {
    public final Context applicationContext;
    public AudioManager audioManager;
    public final Listener listener;
    public VolumeChangeReceiver receiver;
    public final BackgroundThreadStateHandler<StreamVolumeState> stateHandler;
    public int volumeBeforeMute;

    public interface Listener {
        void onStreamTypeChanged(int i);

        void onStreamVolumeChanged(int i, boolean z);
    }

    /* JADX INFO: renamed from: $r8$lambda$F8dMQcb2tXlIlCM-eISH09vjVFw, reason: not valid java name */
    public static /* synthetic */ StreamVolumeState m2582$r8$lambda$F8dMQcb2tXlIlCMeISH09vjVFw(StreamVolumeState streamVolumeState) {
        return streamVolumeState;
    }

    public StreamVolumeManager(Context context, Listener listener, final int i, Looper looper, Looper looper2, Clock clock) {
        this.applicationContext = context.getApplicationContext();
        this.listener = listener;
        BackgroundThreadStateHandler<StreamVolumeState> backgroundThreadStateHandler = new BackgroundThreadStateHandler<>(new StreamVolumeState(i, 0, false, 0, 0), looper, looper2, clock, new BackgroundThreadStateHandler.StateChangeListener() { // from class: io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda0
            @Override // io.bidmachine.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
            public final void onStateChanged(Object obj, Object obj2) {
                this.f$0.onStreamVolumeStateChanged((StreamVolumeManager.StreamVolumeState) obj, (StreamVolumeManager.StreamVolumeState) obj2);
            }
        });
        this.stateHandler = backgroundThreadStateHandler;
        backgroundThreadStateHandler.runInBackground(new Runnable() { // from class: io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                StreamVolumeManager.$r8$lambda$jDaCJnxL96YqjDq8K42wh11ni_c(this.f$0, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$jDaCJnxL96YqjDq8K42wh11ni_c(StreamVolumeManager streamVolumeManager, int i) {
        streamVolumeManager.audioManager = (AudioManager) Assertions.checkStateNotNull((AudioManager) streamVolumeManager.applicationContext.getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        VolumeChangeReceiver volumeChangeReceiver = new VolumeChangeReceiver();
        try {
            streamVolumeManager.applicationContext.registerReceiver(volumeChangeReceiver, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            streamVolumeManager.receiver = volumeChangeReceiver;
        } catch (RuntimeException e) {
            Log.w("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
        streamVolumeManager.stateHandler.setStateInBackground(streamVolumeManager.generateState(i));
    }

    public int getMinVolume() {
        return this.stateHandler.get().minVolume;
    }

    public int getMaxVolume() {
        return this.stateHandler.get().maxVolume;
    }

    public void release() {
        this.stateHandler.updateStateAsync(new Function() { // from class: io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda2
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.m2582$r8$lambda$F8dMQcb2tXlIlCMeISH09vjVFw((StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: io.bidmachine.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda3
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.$r8$lambda$ssDPA30Hi0UhpJoSO2xyInO29Js(this.f$0, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    public static /* synthetic */ StreamVolumeState $r8$lambda$ssDPA30Hi0UhpJoSO2xyInO29Js(StreamVolumeManager streamVolumeManager, StreamVolumeState streamVolumeState) {
        VolumeChangeReceiver volumeChangeReceiver = streamVolumeManager.receiver;
        if (volumeChangeReceiver != null) {
            try {
                streamVolumeManager.applicationContext.unregisterReceiver(volumeChangeReceiver);
            } catch (RuntimeException e) {
                Log.w("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            streamVolumeManager.receiver = null;
        }
        return streamVolumeState;
    }

    public final void onStreamVolumeStateChanged(StreamVolumeState streamVolumeState, StreamVolumeState streamVolumeState2) {
        boolean z = streamVolumeState.muted;
        if (!z && streamVolumeState2.muted) {
            this.volumeBeforeMute = streamVolumeState.volume;
        }
        int i = streamVolumeState.volume;
        int i2 = streamVolumeState2.volume;
        if (i != i2 || z != streamVolumeState2.muted) {
            this.listener.onStreamVolumeChanged(i2, streamVolumeState2.muted);
        }
        int i3 = streamVolumeState.streamType;
        int i4 = streamVolumeState2.streamType;
        if (i3 == i4 && streamVolumeState.minVolume == streamVolumeState2.minVolume && streamVolumeState.maxVolume == streamVolumeState2.maxVolume) {
            return;
        }
        this.listener.onStreamTypeChanged(i4);
    }

    public final StreamVolumeState generateState(int i) {
        Assertions.checkNotNull(this.audioManager);
        return new StreamVolumeState(i, AudioManagerCompat.getStreamVolume(this.audioManager, i), AudioManagerCompat.isStreamMute(this.audioManager, i), AudioManagerCompat.getStreamMinVolume(this.audioManager, i), AudioManagerCompat.getStreamMaxVolume(this.audioManager, i));
    }

    public static final class StreamVolumeState {
        public final int maxVolume;
        public final int minVolume;
        public final boolean muted;
        public final int streamType;
        public final int volume;

        public StreamVolumeState(int i, int i2, boolean z, int i3, int i4) {
            this.streamType = i;
            this.volume = i2;
            this.muted = z;
            this.minVolume = i3;
            this.maxVolume = i4;
        }
    }

    public final class VolumeChangeReceiver extends BroadcastReceiver {
        public VolumeChangeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StreamVolumeManager.this.stateHandler.runInBackground(new Runnable() { // from class: io.bidmachine.media3.exoplayer.StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StreamVolumeManager.VolumeChangeReceiver.m2583$r8$lambda$0_Q_lzrbLINagZ8UqFjxbpwO18(this.f$0);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$0_Q_lzrbL-INagZ8UqFjxbpwO18, reason: not valid java name */
        public static /* synthetic */ void m2583$r8$lambda$0_Q_lzrbLINagZ8UqFjxbpwO18(VolumeChangeReceiver volumeChangeReceiver) {
            if (StreamVolumeManager.this.receiver == null) {
                return;
            }
            StreamVolumeManager.this.stateHandler.setStateInBackground(StreamVolumeManager.this.generateState(((StreamVolumeState) StreamVolumeManager.this.stateHandler.get()).streamType));
        }
    }
}
