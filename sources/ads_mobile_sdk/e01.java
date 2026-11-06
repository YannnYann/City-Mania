package ads_mobile_sdk;

import java.net.URL;
import java.util.Map;
import kotlin.coroutines.Continuation;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public interface e01 {
    Object a(int i, long j, m8 m8Var);

    Object a(f81 f81Var, Duration duration, ja2 ja2Var);

    Object a(f81 f81Var, Duration duration, Map map, boolean z, boolean z2, Continuation continuation);

    Object a(sl1 sl1Var);

    Object a(String str, Map map, Continuation continuation);

    Object a(URL url, ss0 ss0Var, Continuation continuation);

    Object a(URL url, Continuation continuation);

    Object a(URL url, Duration duration, Map map, boolean z, boolean z2, Continuation continuation);

    void a(uv uvVar);

    void a(vk0 vk0Var);

    static /* synthetic */ Object a(e01 e01Var, f81 f81Var, Duration duration, boolean z, Continuation continuation, int i) {
        if ((i & 2) != 0) {
            duration = null;
        }
        return e01Var.a(f81Var, duration, (Map) null, (i & 8) != 0 ? false : z, (i & 16) != 0, continuation);
    }

    static /* synthetic */ Object a(e01 e01Var, URL url, Map map, Continuation continuation, int i) {
        if ((i & 4) != 0) {
            map = null;
        }
        return e01Var.a(url, (Duration) null, map, false, (i & 16) != 0, continuation);
    }
}
