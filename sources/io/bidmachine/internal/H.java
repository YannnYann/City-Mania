package io.bidmachine.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.unity3d.ads.core.data.datasource.AndroidTcfDataSource;
import io.bidmachine.util.SharedPreferenceUtilsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class H implements G {
    public static final a b = new a(null);
    public final SharedPreferences a;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final G a(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            Intrinsics.checkNotNullExpressionValue(defaultSharedPreferences, "getDefaultSharedPreferences(context)");
            return new H(defaultSharedPreferences);
        }

        public a() {
        }
    }

    public H(SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        this.a = sharedPreferences;
    }

    public static final G a(Context context) {
        return b.a(context);
    }

    @Override // io.bidmachine.internal.G
    public Boolean b() {
        Integer numOptIntOrNull = SharedPreferenceUtilsKt.optIntOrNull(this.a, "IABTCF_gdprApplies", null);
        if (numOptIntOrNull != null) {
            int iIntValue = numOptIntOrNull.intValue();
            if (iIntValue != 0 && iIntValue != 1) {
                numOptIntOrNull = null;
            }
            if (numOptIntOrNull != null) {
                return Boolean.valueOf(numOptIntOrNull.intValue() == 1);
            }
        }
        return null;
    }

    @Override // io.bidmachine.internal.G
    public List c() {
        String strOptStringOrNull$default = SharedPreferenceUtilsKt.optStringOrNull$default(this.a, "IABGPP_GppSID", null, 2, null);
        List listSplit$default = strOptStringOrNull$default != null ? StringsKt__StringsKt.split$default((CharSequence) strOptStringOrNull$default, new String[]{"_"}, false, 0, 6, (Object) null) : null;
        if (listSplit$default == null || listSplit$default.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull((String) it.next());
            if (intOrNull != null) {
                arrayList.add(intOrNull);
            }
        }
        return arrayList;
    }

    @Override // io.bidmachine.internal.G
    public String d() {
        return SharedPreferenceUtilsKt.optStringOrNull$default(this.a, "IABUSPrivacy_String", null, 2, null);
    }

    @Override // io.bidmachine.internal.G
    public Boolean e() {
        String strOptStringOrNull$default = SharedPreferenceUtilsKt.optStringOrNull$default(this.a, "IABConsent_SubjectToGDPR", null, 2, null);
        if (strOptStringOrNull$default != null) {
            return Boolean.valueOf(Intrinsics.areEqual(strOptStringOrNull$default, "1"));
        }
        return null;
    }

    @Override // io.bidmachine.internal.G
    public String f() {
        return SharedPreferenceUtilsKt.optStringOrNull$default(this.a, AndroidTcfDataSource.TCF_TCSTRING_KEY, null, 2, null);
    }

    @Override // io.bidmachine.internal.G
    public String g() {
        return SharedPreferenceUtilsKt.optStringOrNull$default(this.a, "IABConsent_ConsentString", null, 2, null);
    }

    @Override // io.bidmachine.internal.G
    public String a() {
        return SharedPreferenceUtilsKt.optStringOrNull$default(this.a, "IABGPP_HDR_GppString", null, 2, null);
    }
}
