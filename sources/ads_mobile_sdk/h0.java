package ads_mobile_sdk;

import android.content.res.Configuration;
import androidx.activity.ComponentActivity;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface h0 {
    default void a() {
    }

    void a(ComponentActivity componentActivity);

    default void b() {
    }

    default void c() {
    }

    default void e() {
    }

    default void onConfigurationChanged(Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
    }

    void onDestroy();

    default void onPause() {
    }

    default void onResume() {
    }

    default void onStop() {
    }

    default Object a(FullScreenContentError fullScreenContentError, Continuation continuation) {
        return Unit.INSTANCE;
    }
}
