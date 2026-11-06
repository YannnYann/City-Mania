package ads_mobile_sdk;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import com.ironsource.C3522b4;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class io extends ou {
    public final Context l;
    public final km m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public io(Context context, ex0 flags, km appSettings, CoroutineScope backgroundScope, tx clock, g83 rootTraceCreator, f0 activityTracker) {
        super(clock, backgroundScope, rootTraceCreator, flags, activityTracker);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(appSettings, "appSettings");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        this.l = context;
        this.m = appSettings;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.AUDIO;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        Pair pair;
        Double d;
        Double dBoxDouble;
        AudioManager audioManager = (AudioManager) this.l.getSystemService(AudioManager.class);
        int streamVolume = audioManager.getStreamVolume(3);
        ex0 ex0Var = this.f;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:normalized_device_volume:enabled", C3522b4.i.W);
        if (((Boolean) ex0Var.a("gads:normalized_device_volume:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            int streamMinVolume = Build.VERSION.SDK_INT >= 28 ? audioManager.getStreamMinVolume(3) : 0;
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            if (streamMinVolume <= streamVolume && streamVolume <= streamMaxVolume) {
                dBoxDouble = Boxing.boxDouble(streamMinVolume == streamMaxVolume ? 1.0d : ((double) ((int) ((((double) (streamVolume - streamMinVolume)) / ((double) (streamMaxVolume - streamMinVolume))) * 100.0d))) / 100.0d);
            } else {
                dBoxDouble = Boxing.boxDouble(-2.0d);
            }
            d = dBoxDouble;
            pair = new Pair(Boxing.boxInt(streamMinVolume), Boxing.boxInt(streamMaxVolume));
        } else {
            pair = null;
            d = null;
        }
        int mode = audioManager.getMode();
        boolean zIsMusicActive = audioManager.isMusicActive();
        boolean zIsSpeakerphoneOn = audioManager.isSpeakerphoneOn();
        int ringerMode = audioManager.getRingerMode();
        int streamVolume2 = audioManager.getStreamVolume(2);
        km kmVar = this.m;
        return new q01(new ho(mode, zIsMusicActive, zIsSpeakerphoneOn, streamVolume, pair, ringerMode, streamVolume2, kmVar.c, kmVar.d, d));
    }
}
