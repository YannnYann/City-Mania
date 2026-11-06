package com.ironsource;

import com.ironsource.mediationsdk.demandOnly.ISDemandOnlyInterstitialListener;
import com.ironsource.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.b8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public interface InterfaceC3526b8<T> {
    T a(String str);

    void a(T t);

    void a(String str, T t);

    /* JADX INFO: renamed from: com.ironsource.b8$a */
    public static final class a implements InterfaceC3526b8<ISDemandOnlyInterstitialListener> {
        private C3465a8 a = new C3465a8();
        private final Map<String, C3465a8> b = new HashMap();

        @Override // com.ironsource.InterfaceC3526b8
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ISDemandOnlyInterstitialListener a(String instanceId) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            C3465a8 c3465a8 = this.b.get(instanceId);
            return c3465a8 != null ? c3465a8 : this.a;
        }

        @Override // com.ironsource.InterfaceC3526b8
        public void a(ISDemandOnlyInterstitialListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.a.a(listener);
            Iterator<String> it = this.b.keySet().iterator();
            while (it.hasNext()) {
                C3465a8 c3465a8 = this.b.get(it.next());
                if (c3465a8 != null) {
                    c3465a8.a(listener);
                }
            }
        }

        @Override // com.ironsource.InterfaceC3526b8
        public void a(String instanceId, ISDemandOnlyInterstitialListener listener) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(listener, "listener");
            if (this.b.containsKey(instanceId)) {
                C3465a8 c3465a8 = this.b.get(instanceId);
                if (c3465a8 != null) {
                    c3465a8.a(listener);
                    return;
                }
                return;
            }
            this.b.put(instanceId, new C3465a8(listener));
        }
    }

    /* JADX INFO: renamed from: com.ironsource.b8$b */
    public static final class b implements InterfaceC3526b8<ISDemandOnlyRewardedVideoListener> {
        private C3562d8 a = new C3562d8();
        private final Map<String, C3562d8> b = new HashMap();

        @Override // com.ironsource.InterfaceC3526b8
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ISDemandOnlyRewardedVideoListener a(String instanceId) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            C3562d8 c3562d8 = this.b.get(instanceId);
            return c3562d8 != null ? c3562d8 : this.a;
        }

        @Override // com.ironsource.InterfaceC3526b8
        public void a(ISDemandOnlyRewardedVideoListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.a.a(listener);
            Iterator<String> it = this.b.keySet().iterator();
            while (it.hasNext()) {
                C3562d8 c3562d8 = this.b.get(it.next());
                if (c3562d8 != null) {
                    c3562d8.a(listener);
                }
            }
        }

        @Override // com.ironsource.InterfaceC3526b8
        public void a(String instanceId, ISDemandOnlyRewardedVideoListener listener) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(listener, "listener");
            if (this.b.containsKey(instanceId)) {
                C3562d8 c3562d8 = this.b.get(instanceId);
                if (c3562d8 != null) {
                    c3562d8.a(listener);
                    return;
                }
                return;
            }
            this.b.put(instanceId, new C3562d8(listener));
        }
    }
}
