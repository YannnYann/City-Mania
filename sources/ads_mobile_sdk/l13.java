package ads_mobile_sdk;

import android.net.Uri;
import android.os.Bundle;
import androidx.core.os.BundleKt;
import com.google.android.gms.ads.mediation.admob.AdMobAdapter;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.common.ParentAdConfig;
import com.google.android.libraries.ads.mobile.sdk.internal.common.ParentCommonConfig;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public abstract class l13 extends n2 {
    public String l;
    public final m13 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l13(ks3 traceMetaSet, BaseRequest baseRequest, j53 requestType, long j, int i, i2 adConfiguration, zy commonConfiguration, ec3 serverTransaction, String renderId, eo2 placementIdWrapper) {
        super(traceMetaSet, baseRequest, requestType, j, i, adConfiguration, commonConfiguration, serverTransaction, renderId, placementIdWrapper);
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(serverTransaction, "serverTransaction");
        Intrinsics.checkNotNullParameter(renderId, "renderId");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        this.m = new m13();
    }

    public final AdRequest a(Bundle googleExtrasBundle, Map adSourceExtrasBundle) {
        Intrinsics.checkNotNullParameter(googleExtrasBundle, "googleExtrasBundle");
        Intrinsics.checkNotNullParameter(adSourceExtrasBundle, "adSourceExtrasBundle");
        String str = this.l;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("innerAdUnitId");
            str = null;
        }
        return new com.google.android.libraries.ads.mobile.sdk.common.b(str, googleExtrasBundle, adSourceExtrasBundle, this.b).a();
    }

    public final Bundle g() {
        AdMobAdapter adMobAdapter = new AdMobAdapter();
        Bundle adSourceExtrasBundle = this.b.getAdSourceExtrasBundle(AdMobAdapter.class);
        ds1 ds1Var = ds1.a;
        return adMobAdapter.buildExtrasBundle(adSourceExtrasBundle, ds1.b(this.f.c));
    }

    @Override // ads_mobile_sdk.j2
    public final boolean b() {
        ds1 ds1Var = ds1.a;
        return ds1.a(this.f.c, "pubid", "").length() > 0;
    }

    public final void h() {
        m13 m13Var = this.m;
        String str = this.l;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("innerAdUnitId");
            str = null;
        }
        String str2 = str;
        i2 i2Var = this.f;
        String str3 = i2Var.h;
        List list = i2Var.v;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String string = ((Uri) it.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            arrayList.add(string);
        }
        List list2 = this.f.I;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            String string2 = ((Uri) it2.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            arrayList2.add(string2);
        }
        List list3 = this.f.R;
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10));
        Iterator it3 = list3.iterator();
        while (it3.hasNext()) {
            String string3 = ((Uri) it3.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
            arrayList3.add(string3);
        }
        List list4 = this.f.D;
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list4, 10));
        Iterator it4 = list4.iterator();
        while (it4.hasNext()) {
            String string4 = ((Uri) it4.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string4, "toString(...)");
            arrayList4.add(string4);
        }
        List list5 = this.f.k0;
        ArrayList arrayList5 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list5, 10));
        Iterator it5 = list5.iterator();
        while (it5.hasNext()) {
            String string5 = ((Uri) it5.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string5, "toString(...)");
            arrayList5.add(string5);
        }
        List list6 = this.f.g0;
        ArrayList arrayList6 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list6, 10));
        Iterator it6 = list6.iterator();
        while (it6.hasNext()) {
            String string6 = ((Uri) it6.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string6, "toString(...)");
            arrayList6.add(string6);
        }
        List list7 = this.f.j0;
        ArrayList arrayList7 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list7, 10));
        Iterator it7 = list7.iterator();
        while (it7.hasNext()) {
            String string7 = ((Uri) it7.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string7, "toString(...)");
            arrayList7.add(string7);
        }
        i2 i2Var2 = this.f;
        ParentAdConfig parentAdConfig = new ParentAdConfig(str2, str3, arrayList, arrayList2, arrayList3, arrayList4, arrayList5, arrayList6, arrayList7, i2Var2.M, i2Var2.Z, i2Var2.p0, CollectionsKt__CollectionsKt.emptyList(), i2Var2.a0);
        RewardItem rewardItem = this.f.l0;
        if (rewardItem != null) {
            parentAdConfig.rewardsBundles = CollectionsKt__CollectionsJVMKt.listOf(BundleKt.bundleOf(TuplesKt.to("rb_amount", Integer.valueOf(rewardItem.getAmount())), TuplesKt.to("rb_type", rewardItem.getType())));
        }
        m13Var.a = parentAdConfig;
        m13 m13Var2 = this.m;
        List list8 = this.g.m;
        ArrayList arrayList8 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list8, 10));
        Iterator it8 = list8.iterator();
        while (it8.hasNext()) {
            String string8 = ((Uri) it8.next()).toString();
            Intrinsics.checkNotNullExpressionValue(string8, "toString(...)");
            arrayList8.add(string8);
        }
        long jM2883getInWholeSecondsimpl = Duration.m2883getInWholeSecondsimpl(this.g.n);
        zy zyVar = this.g;
        m13Var2.b = new ParentCommonConfig(arrayList8, jM2883getInWholeSecondsimpl, zyVar.h, zyVar.q);
    }
}
