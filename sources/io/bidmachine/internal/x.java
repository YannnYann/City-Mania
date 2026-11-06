package io.bidmachine.internal;

import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.DataRestrictionsImpl;
import io.bidmachine.core.Logger;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharKt;

/* JADX INFO: loaded from: classes5.dex */
public final class x {
    public static final b c = new b(null);
    public static final List d = CollectionsKt__CollectionsKt.listOf((Object[]) new f[]{new c(), new e(), new d(), new a()});
    public volatile G a;
    public volatile A b = new A(null, null, null, null, null, null, null, null, 255, null);

    public static final class a implements f {
        @Override // io.bidmachine.internal.x.f
        public C a(A publisherPrivacySettings, C4235t platformPrivacySettings) {
            Intrinsics.checkNotNullParameter(publisherPrivacySettings, "publisherPrivacySettings");
            Intrinsics.checkNotNullParameter(platformPrivacySettings, "platformPrivacySettings");
            String strA = publisherPrivacySettings.a();
            return (strA == null && (strA = platformPrivacySettings.a()) == null) ? C.NONE : (strA.length() == 4 && CharsKt__CharKt.equals(strA.charAt(2), 'Y', true)) ? C.CCPA_OPT_OUT : C.NONE;
        }
    }

    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public b() {
        }
    }

    public static final class c implements f {
        @Override // io.bidmachine.internal.x.f
        public C a(A publisherPrivacySettings, C4235t platformPrivacySettings) {
            Intrinsics.checkNotNullParameter(publisherPrivacySettings, "publisherPrivacySettings");
            Intrinsics.checkNotNullParameter(platformPrivacySettings, "platformPrivacySettings");
            return Intrinsics.areEqual(publisherPrivacySettings.c(), Boolean.TRUE) ? C.COPPA : C.NONE;
        }
    }

    public static final class e implements f {
        @Override // io.bidmachine.internal.x.f
        public C a(A publisherPrivacySettings, C4235t platformPrivacySettings) {
            Intrinsics.checkNotNullParameter(publisherPrivacySettings, "publisherPrivacySettings");
            Intrinsics.checkNotNullParameter(platformPrivacySettings, "platformPrivacySettings");
            return Intrinsics.areEqual(publisherPrivacySettings.g(), Boolean.TRUE) ? C.NON_PERSONALIZED : C.NONE;
        }
    }

    public interface f {
        C a(A a, C4235t c4235t);
    }

    public static final String d() {
        return "Access to platform data before init";
    }

    public final void a(A a2) {
        Intrinsics.checkNotNullParameter(a2, "<set-?>");
        this.b = a2;
    }

    public final A b() {
        return this.b;
    }

    public final C4235t c() {
        G g = this.a;
        if (g != null) {
            return new C4235t(g.g(), g.e(), g.f(), g.b(), g.d(), g.a(), g.c());
        }
        Logger.w("PrivacyManager", (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.internal.x$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return x.d();
            }
        });
        return new C4235t(null, null, null, null, null, null, null, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE, null);
    }

    public final C4235t a() {
        return c();
    }

    public final void a(G restrictionsDataSource) {
        Intrinsics.checkNotNullParameter(restrictionsDataSource, "restrictionsDataSource");
        this.a = restrictionsDataSource;
    }

    public final void a(Function1 action) {
        Intrinsics.checkNotNullParameter(action, "action");
        a((A) action.invoke(b()));
    }

    public final C4236u a(String sessionId, y yVar) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        A a2 = this.b;
        C4235t c4235tA = a();
        List list = d;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((f) it.next()).a(a2, c4235tA));
        }
        List listDistinct = CollectionsKt___CollectionsKt.distinct(arrayList);
        List listMinus = CollectionsKt___CollectionsKt.minus(listDistinct, C.NONE);
        if (listMinus.isEmpty()) {
            listMinus = null;
        }
        List list2 = listMinus == null ? listDistinct : listMinus;
        if (yVar == null) {
            yVar = y.STRICT;
        }
        y yVar2 = yVar;
        w wVarA = z.a(yVar2, list2);
        return new C4236u(sessionId, yVar2, a2, c4235tA, list2, wVarA, new DataRestrictionsImpl(wVarA, a2, c4235tA), new v(sessionId));
    }

    public static final class d implements f {
        @Override // io.bidmachine.internal.x.f
        public C a(A publisherPrivacySettings, C4235t platformPrivacySettings) {
            Intrinsics.checkNotNullParameter(publisherPrivacySettings, "publisherPrivacySettings");
            Intrinsics.checkNotNullParameter(platformPrivacySettings, "platformPrivacySettings");
            Boolean boolH = publisherPrivacySettings.h();
            if (boolH == null) {
                boolH = platformPrivacySettings.h();
            }
            if (!Intrinsics.areEqual(boolH, Boolean.TRUE)) {
                return C.NONE;
            }
            if (publisherPrivacySettings.b() != null) {
                return a(publisherPrivacySettings.b().booleanValue());
            }
            O oD = platformPrivacySettings.d();
            return oD == null ? C.GDPR_NO_CONSENT : a(oD.a());
        }

        public final C a(boolean z) {
            if (z) {
                return C.NONE;
            }
            return C.GDPR_NO_CONSENT;
        }
    }
}
