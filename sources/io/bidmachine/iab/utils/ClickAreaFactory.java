package io.bidmachine.iab.utils;

import android.graphics.PointF;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.model.ClickArea;
import io.bidmachine.util.UtilsKt;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt__RangesKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class ClickAreaFactory {
    public static final Companion Companion = new Companion(null);
    public static final ClosedFloatingPointRange d = RangesKt__RangesKt.rangeTo(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
    public final String a;
    public final Integer b;
    public final Integer c;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PointF a(Map map) {
            Float floatOrDefault$default = UtilsKt.toFloatOrDefault$default(map != null ? map.get("x") : null, null, 1, null);
            Float floatOrDefault$default2 = UtilsKt.toFloatOrDefault$default(map != null ? map.get("y") : null, null, 1, null);
            if (floatOrDefault$default == null || !ClickAreaFactory.d.contains(floatOrDefault$default) || floatOrDefault$default2 == null || !ClickAreaFactory.d.contains(floatOrDefault$default2)) {
                return null;
            }
            return new PointF(floatOrDefault$default.floatValue(), floatOrDefault$default2.floatValue());
        }

        public final Long b(Map map) {
            Object obj;
            if (map == null || (obj = map.get("seed")) == null) {
                return null;
            }
            return UtilsKt.toLongOrDefault$default(obj, null, 1, null);
        }

        public Companion() {
        }
    }

    public ClickAreaFactory(String str, Integer num, Integer num2) {
        this.a = str;
        this.b = num;
        this.c = num2;
    }

    public final ClickArea a(String str) {
        try {
            Map<String, Object> map = UtilsKt.toMap(new JSONObject(str));
            Object obj = map.get("spread");
            Map map2 = obj instanceof Map ? (Map) obj : null;
            Companion companion = Companion;
            Object obj2 = map.get("center");
            PointF pointFA = companion.a(obj2 instanceof Map ? (Map) obj2 : null);
            if (pointFA == null) {
                pointFA = ClickArea.Companion.getDEFAULT_CENTER$bidmachine_android_sdk_bb_3_8_0();
            }
            PointF pointFA2 = companion.a(map2);
            if (pointFA2 == null) {
                pointFA2 = ClickArea.Companion.getDEFAULT_SPREAD$bidmachine_android_sdk_bb_3_8_0();
            }
            return new ClickArea(pointFA, pointFA2, companion.b(map2));
        } catch (Exception unused) {
            return new ClickArea(null, null, null, 7, null);
        }
    }

    public final ClickArea build() {
        String str = this.a;
        if (str != null) {
            return a(str);
        }
        Integer num = this.b;
        if (num == null) {
            return new ClickArea(null, null, null, 7, null);
        }
        int iIntValue = num.intValue();
        Integer num2 = this.c;
        Intrinsics.checkNotNull(num2);
        return a(iIntValue, num2.intValue());
    }

    public ClickAreaFactory(String str) {
        this(str, null, null);
    }

    public ClickAreaFactory(int i, int i2) {
        this(null, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public final ClickArea a(int i, int i2) {
        float f = 0.5f;
        float f2 = (i == 1 || (i != 5 && i == 17)) ? 0.5f : 1.0f;
        if (i2 != 16 && i2 != 17) {
            f = i2 != 80 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : 1.0f;
        }
        return new ClickArea(new PointF(f2, f), ClickArea.Companion.getDEFAULT_SPREAD$bidmachine_android_sdk_bb_3_8_0(), null);
    }
}
