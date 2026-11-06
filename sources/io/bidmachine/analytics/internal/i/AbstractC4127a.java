package io.bidmachine.analytics.internal.i;

import io.bidmachine.analytics.internal.h.AbstractC4124d;
import io.bidmachine.analytics.internal.h.InterfaceC4122b;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.i.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC4127a extends AbstractC4124d {

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.i.a$a, reason: collision with other inner class name */
    public interface InterfaceC1123a {
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.i.a$b */
    public static final class b {
        private final String a;
        private final InterfaceC4122b b;
        private final InterfaceC1123a c;

        public b(String str, InterfaceC4122b interfaceC4122b, InterfaceC1123a interfaceC1123a) {
            this.a = str;
            this.b = interfaceC4122b;
            this.c = interfaceC1123a;
        }

        public final InterfaceC4122b a() {
            return this.b;
        }

        public final InterfaceC1123a b() {
            return this.c;
        }

        public final String c() {
            return this.a;
        }
    }
}
