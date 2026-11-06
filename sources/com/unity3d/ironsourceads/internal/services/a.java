package com.unity3d.ironsourceads.internal.services;

import android.content.Context;
import com.ironsource.C3836s9;
import com.ironsource.EnumC3874u9;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface a {

    /* JADX INFO: renamed from: com.unity3d.ironsourceads.internal.services.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC1069a {

        /* JADX INFO: renamed from: com.unity3d.ironsourceads.internal.services.a$a$a, reason: collision with other inner class name */
        public static final class C1070a extends AbstractC1069a {
            private final String a;

            /* JADX WARN: Multi-variable type inference failed */
            public C1070a() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public final String a() {
                return this.a;
            }

            public final String b() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C1070a) && Intrinsics.areEqual(this.a, ((C1070a) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return "Error(errorMessage=" + this.a + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1070a(String errorMessage) {
                super(null);
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                this.a = errorMessage;
            }

            public final C1070a a(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                return new C1070a(errorMessage);
            }

            public /* synthetic */ C1070a(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str);
            }

            public static /* synthetic */ C1070a a(C1070a c1070a, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = c1070a.a;
                }
                return c1070a.a(str);
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ironsourceads.internal.services.a$a$b */
        public static final class b extends AbstractC1069a {
            public static final b a = new b();

            private b() {
                super(null);
            }
        }

        public /* synthetic */ AbstractC1069a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private AbstractC1069a() {
        }
    }

    static /* synthetic */ AbstractC1069a a(a aVar, Context context, EnumC3874u9 enumC3874u9, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: destroy");
        }
        if ((i & 2) != 0) {
            enumC3874u9 = EnumC3874u9.c;
        }
        return aVar.a(context, enumC3874u9);
    }

    AbstractC1069a a(Context context, C3836s9 c3836s9);

    AbstractC1069a a(Context context, EnumC3874u9 enumC3874u9);
}
