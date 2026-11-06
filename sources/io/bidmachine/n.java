package io.bidmachine;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import com.ironsource.R6;
import io.bidmachine.core.UtilsKt;
import io.bidmachine.internal.S;
import io.bidmachine.internal.T;
import io.bidmachine.protobuf.Extras;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.util.MathUtils;
import io.bidmachine.util.SharedPreferenceUtilsKt;
import io.bidmachine.util.Utils;
import io.bidmachine.utils.DeviceUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class n {
    public static final T a = new T();
    public static SharedPreferences b;

    public static boolean A(Context context) {
        return F(context).contains("bid_machine_ifv");
    }

    public static void B(Context context) {
        g(context, v(context) + 1);
    }

    public static Boolean C(Context context) {
        return UtilsKt.convertToBooleanOrNull(Integer.valueOf(SharedPreferenceUtilsKt.optInt(F(context), "is_google_play_instant", -1)));
    }

    public static long D(Context context) {
        SharedPreferences sharedPreferencesF = F(context);
        long jOptLong = SharedPreferenceUtilsKt.optLong(sharedPreferencesF, "first_app_launch_ms", 0L);
        if (jOptLong != 0) {
            return jOptLong;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        SharedPreferenceUtilsKt.putLongOrRemove(sharedPreferencesF, "first_app_launch_ms", Long.valueOf(jCurrentTimeMillis));
        return jCurrentTimeMillis;
    }

    public static long E(Context context) {
        SharedPreferences sharedPreferencesF = F(context);
        long jOptLong = SharedPreferenceUtilsKt.optLong(sharedPreferencesF, "last_bootup_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        if (Math.abs(jOptLong - jCurrentTimeMillis) <= 3000) {
            return jOptLong;
        }
        SharedPreferenceUtilsKt.putLongOrRemove(sharedPreferencesF, "last_bootup_time", Long.valueOf(jCurrentTimeMillis));
        return jCurrentTimeMillis;
    }

    public static SharedPreferences F(Context context) {
        if (b == null) {
            b = context.getSharedPreferences("BidMachinePref", 0);
        }
        return b;
    }

    public static /* synthetic */ Unit a(String str, int i, SharedPreferences.Editor editor) {
        SharedPreferenceUtilsKt.putStringOrRemove(editor, "bid_machine_ifv", str);
        SharedPreferenceUtilsKt.putIntOrRemove(editor, "bid_machine_ifv_ttl_session_count_remaining", Integer.valueOf(i));
        return Unit.INSTANCE;
    }

    public static String b(Context context, final int i) {
        final String string = UUID.randomUUID().toString();
        SharedPreferenceUtilsKt.edit(F(context), new Function1() { // from class: io.bidmachine.n$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n.a(string, i, (SharedPreferences.Editor) obj);
            }
        });
        return string;
    }

    public static void c(Context context, int i) {
        if (i == 0) {
            return;
        }
        e(context, e(context) + i);
    }

    public static String d(Context context, int i) {
        String strOptStringOrNull = SharedPreferenceUtilsKt.optStringOrNull(F(context), "bid_machine_ifv", null);
        return !TextUtils.isEmpty(strOptStringOrNull) ? strOptStringOrNull : b(context, i);
    }

    public static int e(Context context) {
        return F(context).getInt("bid_machine_ifv_ttl_session_count_remaining", 0);
    }

    public static void f(Context context, int i) {
        SharedPreferenceUtilsKt.putIntOrRemove(F(context), "bid_machine_ifv_last_ttl_session_count", Integer.valueOf(MathUtils.nonNegative(i)));
    }

    public static void g(Context context, int i) {
        SharedPreferenceUtilsKt.putIntOrRemove(F(context), "session_count", Integer.valueOf(i));
    }

    public static List h(Context context) {
        String strOptStringOrNull = SharedPreferenceUtilsKt.optStringOrNull(F(context), "history_version_milestone_list", null);
        if (TextUtils.isEmpty(strOptStringOrNull)) {
            return Collections.EMPTY_LIST;
        }
        try {
            return a.a(new JSONArray(strOptStringOrNull));
        } catch (Throwable unused) {
            return Collections.EMPTY_LIST;
        }
    }

    public static Extras i(Context context) {
        SharedPreferences sharedPreferencesF = F(context);
        try {
            return Extras.parseFrom(Base64.decode(SharedPreferenceUtilsKt.optStringOrNull(sharedPreferencesF, "init_extras", null), 0));
        } catch (Exception unused) {
            SharedPreferenceUtilsKt.remove(sharedPreferencesF, "init_extras");
            return null;
        }
    }

    public static InitResponse j(Context context) {
        SharedPreferences sharedPreferencesF = F(context);
        try {
            return InitResponse.parseFrom(Base64.decode(sharedPreferencesF.getString("initData", null), 0));
        } catch (Exception unused) {
            SharedPreferenceUtilsKt.remove(sharedPreferencesF, "initData");
            return null;
        }
    }

    public static String k(Context context) {
        String strOptStringOrNull = SharedPreferenceUtilsKt.optStringOrNull(F(context), "init_data_session_id", null);
        return strOptStringOrNull != null ? strOptStringOrNull : "";
    }

    public static Long l(Context context) {
        return a(F(context), "install_begin_sec");
    }

    public static Long m(Context context) {
        return a(F(context), "install_begin_server_sec");
    }

    public static Long n(Context context) {
        return a(F(context), "install_referrer_click_sec");
    }

    public static Long o(Context context) {
        return a(F(context), "install_referrer_click_server_sec");
    }

    public static String p(Context context) {
        return SharedPreferenceUtilsKt.optStringOrNull(F(context), "install_referrer_url", null);
    }

    public static String q(Context context) {
        return SharedPreferenceUtilsKt.optStringOrNull(F(context), "install_version", null);
    }

    public static int r(Context context) {
        return F(context).getInt("bid_machine_ifv_last_ttl_session_count", 0);
    }

    public static long s(Context context) {
        return SharedPreferenceUtilsKt.optLong(F(context), "last_session_duration", 0L);
    }

    public static io.bidmachine.internal.y t(Context context) {
        return io.bidmachine.internal.y.a(Integer.valueOf(SharedPreferenceUtilsKt.optInt(F(context), "restriction_mode", -1)));
    }

    public static long u(Context context) {
        return SharedPreferenceUtilsKt.optLong(F(context), "sdk_install_time", 0L);
    }

    public static int v(Context context) {
        return SharedPreferenceUtilsKt.optInt(F(context), "session_count", 0);
    }

    public static String w(Context context) {
        return SharedPreferenceUtilsKt.optStringOrNull(F(context), R6.d0, null);
    }

    public static String x(Context context) {
        return SharedPreferenceUtilsKt.optStringOrNull(F(context), "ua_device_os", null);
    }

    public static long y(Context context) {
        return SharedPreferenceUtilsKt.optLong(F(context), "ua_exp", -1L);
    }

    public static String z(Context context) {
        String strW = w(context);
        if (TextUtils.isEmpty(strW) || !DeviceUtils.getOsVersion().equals(x(context)) || y(context) <= System.currentTimeMillis()) {
            return null;
        }
        return strW;
    }

    public static void c(Context context) {
        SharedPreferenceUtilsKt.remove(F(context), "init_extras");
    }

    public static void e(Context context, int i) {
        SharedPreferenceUtilsKt.putIntOrRemove(F(context), "bid_machine_ifv_ttl_session_count_remaining", Integer.valueOf(MathUtils.nonNegative(i)));
    }

    public static S g(Context context) {
        String strOptStringOrNull = SharedPreferenceUtilsKt.optStringOrNull(F(context), "current_version_milestone", null);
        if (TextUtils.isEmpty(strOptStringOrNull)) {
            return null;
        }
        try {
            return a.a(new JSONObject(strOptStringOrNull));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void b(Context context, String str) {
        SharedPreferenceUtilsKt.putStringOrRemove(F(context), R6.d0, str);
    }

    public static void c(Context context, String str) {
        SharedPreferenceUtilsKt.putStringOrRemove(F(context), "ua_device_os", str);
    }

    public static void a(Context context, int i) {
        int iE;
        if (i != 0 && (iE = e(context)) > 0) {
            e(context, MathUtils.nonNegative(iE - i));
        }
    }

    public static void b(Context context, long j) {
        SharedPreferenceUtilsKt.putLongOrRemove(F(context), "sdk_install_time", Long.valueOf(j));
    }

    public static void c(Context context, long j) {
        SharedPreferenceUtilsKt.putLongOrRemove(F(context), "ua_exp", Long.valueOf(j));
    }

    public static long f(Context context) {
        return SharedPreferenceUtilsKt.optLong(F(context), "current_session_duration", 0L);
    }

    public static void e(Context context, long j) {
        SharedPreferenceUtilsKt.putLongOrRemove(F(context), "current_session_duration", Long.valueOf(j));
    }

    public static void f(Context context, long j) {
        SharedPreferenceUtilsKt.putLongOrRemove(F(context), "last_session_duration", Long.valueOf(j));
    }

    public static void d(Context context, long j) {
        SharedPreferenceUtilsKt.putLongOrRemove(F(context), "anr_tracker_start_time", Long.valueOf(j));
    }

    public static void b(Context context) {
        SharedPreferenceUtilsKt.clear(F(context));
    }

    public static List a(Context context, long j) {
        SharedPreferences sharedPreferencesF = F(context);
        List<Long> listA = a(sharedPreferencesF);
        if (!listA.isEmpty() && ((Long) listA.get(0)).longValue() == j) {
            return listA;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(Long.valueOf(j));
        for (Long l : listA) {
            if (linkedHashSet.size() >= 100) {
                break;
            }
            linkedHashSet.add(l);
        }
        ArrayList arrayList = new ArrayList(linkedHashSet);
        a(sharedPreferencesF, arrayList);
        return arrayList;
    }

    public static long d(Context context) {
        return SharedPreferenceUtilsKt.optLong(F(context), "anr_tracker_start_time", 0L);
    }

    public static List a(SharedPreferences sharedPreferences) {
        String strOptStringOrNull = SharedPreferenceUtilsKt.optStringOrNull(sharedPreferences, "last_bootup_history", null);
        if (TextUtils.isEmpty(strOptStringOrNull)) {
            return new ArrayList();
        }
        try {
            List<Object> list = Utils.toList(new JSONArray(strOptStringOrNull));
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<Object> it = list.iterator();
            while (it.hasNext()) {
                Long longOrNull = Utils.toLongOrNull(it.next());
                if (longOrNull != null) {
                    arrayList.add(longOrNull);
                }
            }
            return arrayList;
        } catch (Throwable unused) {
            return new ArrayList();
        }
    }

    public static void a(SharedPreferences sharedPreferences, List list) {
        SharedPreferenceUtilsKt.putStringOrRemove(sharedPreferences, "last_bootup_history", Utils.toJsonArray(list).toString());
    }

    public static void a(Context context) {
        f(context, f(context));
    }

    public static void a(Context context, InitResponse initResponse, String str) {
        try {
            SharedPreferenceUtilsKt.putStringOrRemove(F(context), "initData", Base64.encodeToString(initResponse.toByteArray(), 0));
            SharedPreferenceUtilsKt.putStringOrRemove(F(context), "init_data_session_id", str);
        } catch (Exception unused) {
        }
    }

    public static void a(Context context, Extras extras) {
        try {
            SharedPreferenceUtilsKt.putStringOrRemove(F(context), "init_extras", Base64.encodeToString(extras.toByteArray(), 0));
        } catch (Exception unused) {
        }
    }

    public static void a(Context context, String str, long j) {
        b(context, str);
        c(context, DeviceUtils.getOsVersion());
        c(context, j);
    }

    public static String a(Context context, String str) {
        return SharedPreferenceUtilsKt.optStringOrNull(F(context), "hw_info_" + str, null);
    }

    public static void a(Context context, String str, String str2) {
        SharedPreferenceUtilsKt.putStringOrRemove(F(context), "hw_info_" + str, str2);
    }

    public static void a(Context context, S s) {
        SharedPreferenceUtilsKt.putStringOrRemove(F(context), "current_version_milestone", s != null ? a.a(s).toString() : null);
    }

    public static void a(Context context, List list) {
        if (list.isEmpty()) {
            SharedPreferenceUtilsKt.remove(F(context), "history_version_milestone_list");
        } else {
            SharedPreferenceUtilsKt.putStringOrRemove(F(context), "history_version_milestone_list", a.a(list).toString());
        }
    }

    public static void a(Context context, io.bidmachine.internal.y yVar) {
        if (yVar == null) {
            SharedPreferenceUtilsKt.remove(F(context), "restriction_mode");
        } else {
            SharedPreferenceUtilsKt.putIntOrRemove(F(context), "restriction_mode", Integer.valueOf(yVar.b()));
        }
    }

    public static Long a(SharedPreferences sharedPreferences, String str) {
        long jOptLong = SharedPreferenceUtilsKt.optLong(sharedPreferences, str, -1L);
        if (jOptLong != -1) {
            return Long.valueOf(jOptLong);
        }
        return null;
    }
}
