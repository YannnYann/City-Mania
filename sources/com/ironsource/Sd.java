package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes3.dex */
public interface Sd {

    public static final class a implements Sd {
        public static final a a = new a();

        private a() {
        }
    }

    public static final class b implements Sd {
        private final long a;

        public /* synthetic */ b(long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(j);
        }

        public final long a() {
            return this.a;
        }

        public final long b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Duration.m2875equalsimpl0(this.a, ((b) obj).a);
        }

        public int hashCode() {
            return Duration.m2889hashCodeimpl(this.a);
        }

        public String toString() {
            return "Retry(delay=" + Duration.m2903toStringimpl(this.a) + ")";
        }

        private b(long j) {
            this.a = j;
        }

        public final b a(long j) {
            return new b(j, null);
        }

        public static /* synthetic */ b a(b bVar, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                j = bVar.a;
            }
            return bVar.a(j);
        }
    }
}
