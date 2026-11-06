package j$.time;

import com.ironsource.adapters.unityads.UnityAdsConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public static /* synthetic */ List b(Object[] objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
            arrayList.add(obj);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public abstract x a();

    public static b c() {
        String id = TimeZone.getDefault().getID();
        Map map = x.a;
        Objects.requireNonNull(id, UnityAdsConstants.ZONE_ID_KEY);
        Objects.requireNonNull(map, "aliasMap");
        String str = (String) map.get(id);
        if (str != null) {
            id = str;
        }
        return new C4271a(x.S(id, true));
    }

    protected b() {
    }
}
