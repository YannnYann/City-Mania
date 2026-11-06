package com.ironsource;

import android.content.Context;
import com.vungle.ads.BuildConfig;
import io.bidmachine.BidMachine;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.y9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3946y9 {
    public static final a a = new a(null);

    /* JADX INFO: renamed from: com.ironsource.y9$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            C3964z9.b(context);
        }

        private a() {
        }

        public final List<String> a() {
            return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"AppLovin", "APS", BidMachine.NAME, "Bigo", "Chartboost", "Fyber", "AdMob", "HyprMX", "InMobi", "IronSource", BuildConfig.OMSDK_PARTNER_NAME, "Line", "Facebook", "Mintegral", "MobileFuse", "Moloco", "MyTarget", "Ogury", "Pangle", "PubMatic", "Smaato", "SuperAwesome", R6.H1, "Verve", "Voodoo", "Yandex", "YSO"});
        }
    }

    public static final List<String> a() {
        return a.a();
    }
}
