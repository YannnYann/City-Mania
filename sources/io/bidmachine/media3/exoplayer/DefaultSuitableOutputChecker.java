package io.bidmachine.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$ControllerCallback;
import android.media.MediaRouter2$RouteCallback;
import android.media.RouteDiscoveryPreference;
import android.os.Handler;
import android.os.Looper;
import com.google.common.collect.ImmutableList;
import com.unity3d.services.core.device.MimeTypes;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.BackgroundThreadStateHandler;
import io.bidmachine.media3.common.util.Clock;
import io.bidmachine.media3.common.util.Util;
import io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker;
import io.bidmachine.media3.exoplayer.SuitableOutputChecker;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class DefaultSuitableOutputChecker implements SuitableOutputChecker {
    public final SuitableOutputChecker impl;

    public DefaultSuitableOutputChecker() {
        int i = Util.SDK_INT;
        if (i >= 35) {
            this.impl = new ImplApi35();
        } else if (i >= 23) {
            this.impl = new ImplApi23();
        } else {
            this.impl = null;
        }
    }

    @Override // io.bidmachine.media3.exoplayer.SuitableOutputChecker
    public void enable(SuitableOutputChecker.Callback callback, Context context, Looper looper, Looper looper2, Clock clock) {
        SuitableOutputChecker suitableOutputChecker = this.impl;
        if (suitableOutputChecker != null) {
            suitableOutputChecker.enable(callback, context, looper, looper2, clock);
        }
    }

    @Override // io.bidmachine.media3.exoplayer.SuitableOutputChecker
    public void disable() {
        SuitableOutputChecker suitableOutputChecker = this.impl;
        if (suitableOutputChecker != null) {
            suitableOutputChecker.disable();
        }
    }

    @Override // io.bidmachine.media3.exoplayer.SuitableOutputChecker
    public boolean isSelectedOutputSuitableForPlayback() {
        SuitableOutputChecker suitableOutputChecker = this.impl;
        return suitableOutputChecker == null || suitableOutputChecker.isSelectedOutputSuitableForPlayback();
    }

    public static final class ImplApi35 implements SuitableOutputChecker {
        public static final RouteDiscoveryPreference EMPTY_DISCOVERY_PREFERENCE;
        public MediaRouter2$ControllerCallback controllerCallback;
        public BackgroundThreadStateHandler<Boolean> isSuitableForPlaybackState;
        public MediaRouter2$RouteCallback routeCallback;
        public MediaRouter2 router;

        public ImplApi35() {
        }

        static {
            DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline1.m();
            EMPTY_DISCOVERY_PREFERENCE = DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline0.m(ImmutableList.of(), false).build();
        }

        @Override // io.bidmachine.media3.exoplayer.SuitableOutputChecker
        @SuppressLint({"ThreadSafe"})
        public void enable(final SuitableOutputChecker.Callback callback, final Context context, Looper looper, Looper looper2, Clock clock) {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = new BackgroundThreadStateHandler<>(Boolean.TRUE, looper2, looper, clock, new BackgroundThreadStateHandler.StateChangeListener() { // from class: io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda18
                @Override // io.bidmachine.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
                public final void onStateChanged(Object obj, Object obj2) {
                    callback.onSelectedOutputSuitabilityChanged(((Boolean) obj2).booleanValue());
                }
            });
            this.isSuitableForPlaybackState = backgroundThreadStateHandler;
            backgroundThreadStateHandler.runInBackground(new Runnable() { // from class: io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSuitableOutputChecker.ImplApi35.m2559$r8$lambda$Nc_xr0N7dzJMicyiurm7zaBfo(this.f$0, context);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$Nc_xr0N7dzJ-Micyiu-rm7zaBfo, reason: not valid java name */
        public static /* synthetic */ void m2559$r8$lambda$Nc_xr0N7dzJMicyiurm7zaBfo(ImplApi35 implApi35, Context context) {
            Assertions.checkNotNull(implApi35.isSuitableForPlaybackState);
            implApi35.router = MediaRouter2.getInstance(context);
            implApi35.routeCallback = new MediaRouter2$RouteCallback() { // from class: io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi35.1
            };
            final BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = implApi35.isSuitableForPlaybackState;
            Objects.requireNonNull(backgroundThreadStateHandler);
            Executor executor = new Executor() { // from class: io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda21
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    backgroundThreadStateHandler.runInBackground(runnable);
                }
            };
            implApi35.router.registerRouteCallback(executor, implApi35.routeCallback, EMPTY_DISCOVERY_PREFERENCE);
            MediaRouter2$ControllerCallback mediaRouter2$ControllerCallback = new MediaRouter2$ControllerCallback() { // from class: io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi35.2
                public void onControllerUpdated(MediaRouter2.RoutingController routingController) {
                    ImplApi35.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi35.isSelectedOutputSuitableForPlayback(ImplApi35.this.router)));
                }
            };
            implApi35.controllerCallback = mediaRouter2$ControllerCallback;
            implApi35.router.registerControllerCallback(executor, mediaRouter2$ControllerCallback);
            implApi35.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(isSelectedOutputSuitableForPlayback(implApi35.router)));
        }

        @Override // io.bidmachine.media3.exoplayer.SuitableOutputChecker
        public void disable() {
            ((BackgroundThreadStateHandler) Assertions.checkStateNotNull(this.isSuitableForPlaybackState)).runInBackground(new Runnable() { // from class: io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSuitableOutputChecker.ImplApi35.$r8$lambda$KJDyuukTG_VAqe9G91ZShBLkEzM(this.f$0);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$KJDyuukTG_VAqe9G91ZShBLkEzM(ImplApi35 implApi35) {
            DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline6.m(Assertions.checkNotNull(implApi35.router)).unregisterControllerCallback(DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline13.m(Assertions.checkNotNull(implApi35.controllerCallback)));
            implApi35.controllerCallback = null;
            implApi35.router.unregisterRouteCallback(DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline15.m(Assertions.checkNotNull(implApi35.routeCallback)));
        }

        @Override // io.bidmachine.media3.exoplayer.SuitableOutputChecker
        public boolean isSelectedOutputSuitableForPlayback() {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = this.isSuitableForPlaybackState;
            if (backgroundThreadStateHandler == null) {
                return true;
            }
            return backgroundThreadStateHandler.get().booleanValue();
        }

        public static boolean isSelectedOutputSuitableForPlayback(MediaRouter2 mediaRouter2) {
            int transferReason = DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline6.m(Assertions.checkNotNull(mediaRouter2)).getSystemController().getRoutingSessionInfo().getTransferReason();
            boolean zWasTransferInitiatedBySelf = mediaRouter2.getSystemController().wasTransferInitiatedBySelf();
            Iterator it = mediaRouter2.getSystemController().getSelectedRoutes().iterator();
            while (it.hasNext()) {
                if (isRouteSuitableForMediaPlayback(DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticApiModelOutline12.m(it.next()), transferReason, zWasTransferInitiatedBySelf)) {
                    return true;
                }
            }
            return false;
        }

        public static boolean isRouteSuitableForMediaPlayback(MediaRoute2Info mediaRoute2Info, int i, boolean z) {
            int suitabilityStatus = mediaRoute2Info.getSuitabilityStatus();
            return suitabilityStatus == 1 ? (i == 1 || i == 2) && z : suitabilityStatus == 0;
        }
    }

    public static final class ImplApi23 implements SuitableOutputChecker {
        public AudioDeviceCallback audioDeviceCallback;
        public AudioManager audioManager;
        public BackgroundThreadStateHandler<Boolean> isSuitableForPlaybackState;

        public ImplApi23() {
        }

        @Override // io.bidmachine.media3.exoplayer.SuitableOutputChecker
        public void enable(final SuitableOutputChecker.Callback callback, final Context context, Looper looper, Looper looper2, Clock clock) {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = new BackgroundThreadStateHandler<>(Boolean.TRUE, looper2, looper, clock, new BackgroundThreadStateHandler.StateChangeListener() { // from class: io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda0
                @Override // io.bidmachine.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
                public final void onStateChanged(Object obj, Object obj2) {
                    callback.onSelectedOutputSuitabilityChanged(((Boolean) obj2).booleanValue());
                }
            });
            this.isSuitableForPlaybackState = backgroundThreadStateHandler;
            backgroundThreadStateHandler.runInBackground(new Runnable() { // from class: io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSuitableOutputChecker.ImplApi23.$r8$lambda$saegtuxVsU1PSYTzvPfOrvUwWfE(this.f$0, context);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$saegtuxVsU1PSYTzvPfOrvUwWfE(ImplApi23 implApi23, Context context) {
            AudioManager audioManager;
            Assertions.checkNotNull(implApi23.isSuitableForPlaybackState);
            if (Util.isWear(context) && (audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO)) != null) {
                implApi23.audioManager = audioManager;
                AudioDeviceCallback audioDeviceCallback = new AudioDeviceCallback() { // from class: io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi23.1
                    @Override // android.media.AudioDeviceCallback
                    public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                        ImplApi23.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi23.this.hasSupportedAudioOutput()));
                    }

                    @Override // android.media.AudioDeviceCallback
                    public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                        ImplApi23.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi23.this.hasSupportedAudioOutput()));
                    }
                };
                implApi23.audioDeviceCallback = audioDeviceCallback;
                audioManager.registerAudioDeviceCallback(audioDeviceCallback, new Handler((Looper) Assertions.checkNotNull(Looper.myLooper())));
                implApi23.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(implApi23.hasSupportedAudioOutput()));
            }
        }

        @Override // io.bidmachine.media3.exoplayer.SuitableOutputChecker
        public void disable() {
            ((BackgroundThreadStateHandler) Assertions.checkNotNull(this.isSuitableForPlaybackState)).runInBackground(new Runnable() { // from class: io.bidmachine.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSuitableOutputChecker.ImplApi23.m2558$r8$lambda$gmvhPWMbrE0E81SMuSuqAFccE(this.f$0);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$gm-vhPWMbrE0E81SMuSuqAF-ccE, reason: not valid java name */
        public static /* synthetic */ void m2558$r8$lambda$gmvhPWMbrE0E81SMuSuqAFccE(ImplApi23 implApi23) {
            AudioManager audioManager = implApi23.audioManager;
            if (audioManager != null) {
                audioManager.unregisterAudioDeviceCallback((AudioDeviceCallback) Assertions.checkNotNull(implApi23.audioDeviceCallback));
            }
        }

        @Override // io.bidmachine.media3.exoplayer.SuitableOutputChecker
        public boolean isSelectedOutputSuitableForPlayback() {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = this.isSuitableForPlaybackState;
            if (backgroundThreadStateHandler == null) {
                return true;
            }
            return backgroundThreadStateHandler.get().booleanValue();
        }

        public final boolean hasSupportedAudioOutput() {
            for (AudioDeviceInfo audioDeviceInfo : ((AudioManager) Assertions.checkStateNotNull(this.audioManager)).getDevices(2)) {
                if (audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 5 || audioDeviceInfo.getType() == 6 || audioDeviceInfo.getType() == 11 || audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3) {
                    return true;
                }
                int i = Util.SDK_INT;
                if (i >= 26 && audioDeviceInfo.getType() == 22) {
                    return true;
                }
                if (i >= 28 && audioDeviceInfo.getType() == 23) {
                    return true;
                }
                if (i >= 31 && (audioDeviceInfo.getType() == 26 || audioDeviceInfo.getType() == 27)) {
                    return true;
                }
                if (i >= 33 && audioDeviceInfo.getType() == 30) {
                    return true;
                }
            }
            return false;
        }
    }
}
