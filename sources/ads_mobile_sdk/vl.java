package ads_mobile_sdk;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vl extends pl3 {
    public final Context d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vl(Context context) {
        super(s11.CUI_NAME_SDKINIT_INIT_APP_PERMISSIONS);
        Intrinsics.checkNotNullParameter(context, "context");
        this.d = context;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.APP_PERMISSIONS;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.ArrayList] */
    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        ?? EmptyList;
        List list;
        m21 m21Var = o21.f;
        Context context = this.d;
        Intrinsics.checkNotNullParameter(context, "<this>");
        String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
        if (strArr != null && (list = ArraysKt___ArraysKt.toList(strArr)) != null) {
            EmptyList = new ArrayList();
            for (Object obj : list) {
                String str = (String) obj;
                m21 m21Var2 = o21.f;
                Intrinsics.checkNotNull(str);
                if (m21.a(context, str)) {
                    EmptyList.add(obj);
                }
            }
        } else {
            EmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        return new q01(new ul(EmptyList));
    }
}
