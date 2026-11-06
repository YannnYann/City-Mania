package ads_mobile_sdk;

import android.util.Base64;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ex0 extends yr {
    public static final long A;
    public static final int B;
    public static final List C;
    public static final JsonObject D;
    public static final JsonObject E;
    public static final JsonObject F;
    public static final JsonObject G;
    public static final JsonObject H;
    public static final JsonObject I;
    public static final JsonObject J;
    public static final long z;
    public final x00 r;
    public final eb3 s;
    public final l93 t;
    public final sa u;
    public final cl2 v;
    public boolean w;
    public double x;
    public int y;

    static {
        ax0 ax0Var = new ax0();
        Duration.Companion companion = Duration.Companion;
        DurationUnit durationUnit = DurationUnit.SECONDS;
        z = DurationKt.toDuration(20, durationUnit);
        A = DurationKt.toDuration(1, durationUnit);
        B = mm0.TIER_LOW.getNumber();
        C = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"addtl_consent", "gdpr", "gdpr_consent", "gpp", "gpp_sid", "ltd", "npa", "rdp", "tfcd", "tfua", "us_privacy", "c", "correlator"});
        JsonObject jsonObject = new JsonObject();
        y11 y11Var = y11.AD_ID_INFO;
        jsonObject.addProperty(String.valueOf(y11Var.getNumber()), (Number) 500);
        y11 y11Var2 = y11.AD_REQUEST;
        kj3 kj3Var = kj3.b;
        ax0.a(ax0Var, jsonObject, y11Var2, kj3Var);
        y11 y11Var3 = y11.AD_SPAM;
        kj3 kj3Var2 = kj3.e;
        ax0.a(ax0Var, jsonObject, y11Var3, kj3Var2);
        ax0.a(ax0Var, jsonObject, y11.AD_SIZE, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.AD_TYPE, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.APP_OPEN, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.APP_PERMISSIONS, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.APP_SET_ID, kj3Var);
        y11 y11Var4 = y11.AUDIO;
        kj3 kj3Var3 = kj3.d;
        ax0.a(ax0Var, jsonObject, y11Var4, kj3Var3);
        y11 y11Var5 = y11.BATTERY;
        ax0.a(ax0Var, jsonObject, y11Var5, kj3Var);
        y11 y11Var6 = y11.CLD;
        kj3 kj3Var4 = kj3.c;
        ax0.a(ax0Var, jsonObject, y11Var6, kj3Var4);
        y11 y11Var7 = y11.COARSE_LOCATION;
        ax0.a(ax0Var, jsonObject, y11Var7, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.DEBUG_SIGNAL, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.EXPERIMENT_IDS, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.IN_MEMORY_SDK_CORE_DATA, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.MEMORY, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.OMID, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.PACKAGE_INFO, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.PER_APP_ID_V1, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.PER_APP_ID_V2, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.STATIC_DEVICE, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.TELEPHONY, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.CONSENT_STRINGS, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.AD_ID_PERMISSION, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.QUALITY, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.REQUEST_ID, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.SDK_ENV, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.ADAPTER_VERSIONS, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.RTB_SIGNAL, kj3Var2);
        ax0.a(ax0Var, jsonObject, y11.SESSION_ID, kj3Var);
        y11 y11Var8 = y11.TRUSTLESS_TOKEN;
        ax0.a(ax0Var, jsonObject, y11Var8, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.FIREBASE_ANALYTICS, kj3Var4);
        ax0.a(ax0Var, jsonObject, y11.HAND_HELD, kj3Var4);
        ax0.a(ax0Var, jsonObject, y11.PHONE_ORIENTATION, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.IS_DEVICE_HELD, kj3Var3);
        ax0.a(ax0Var, jsonObject, y11.INSPECTOR_SIGNAL, kj3Var4);
        ax0.a(ax0Var, jsonObject, y11.AMAZON_FIRE_AD_ID, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.DISPLAY_COUNT, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.CSRB_ECO_DATA, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.PARENT_AD_CONFIG, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.NATIVE_AD, kj3Var4);
        ax0.a(ax0Var, jsonObject, y11.ICON_AD, kj3Var);
        y11 y11Var9 = y11.UNDEFINED;
        ax0.a(ax0Var, jsonObject, y11Var9, kj3Var4);
        ax0.a(ax0Var, jsonObject, y11.AD_RESPONSE_ENCRYPTION_KEY, kj3Var3);
        ax0.a(ax0Var, jsonObject, y11.SCAR_SIGNAL_TYPE, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.DEVICE_TIER, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.PICTURE_IN_PICTURE_AD_REQUEST, kj3Var);
        ax0.a(ax0Var, jsonObject, y11.EOID, kj3Var);
        D = jsonObject;
        JsonObject jsonObject2 = new JsonObject();
        String strValueOf = String.valueOf(y11Var.getNumber());
        Boolean bool = Boolean.TRUE;
        jsonObject2.addProperty(strValueOf, bool);
        String strValueOf2 = String.valueOf(y11Var4.getNumber());
        Boolean bool2 = Boolean.FALSE;
        jsonObject2.addProperty(strValueOf2, bool2);
        jsonObject2.addProperty(String.valueOf(y11Var5.getNumber()), bool2);
        jsonObject2.addProperty(String.valueOf(y11Var7.getNumber()), bool2);
        jsonObject2.addProperty(String.valueOf(y11Var8.getNumber()), bool2);
        jsonObject2.addProperty(String.valueOf(y11Var9.getNumber()), bool2);
        E = jsonObject2;
        JsonObject jsonObject3 = new JsonObject();
        jsonObject3.addProperty(String.valueOf(y11Var.getNumber()), bool);
        jsonObject3.addProperty(String.valueOf(y11Var4.getNumber()), bool2);
        jsonObject3.addProperty(String.valueOf(y11Var5.getNumber()), bool2);
        jsonObject3.addProperty(String.valueOf(y11Var7.getNumber()), bool2);
        jsonObject3.addProperty(String.valueOf(y11Var8.getNumber()), bool2);
        jsonObject3.addProperty(String.valueOf(y11Var9.getNumber()), bool2);
        F = jsonObject3;
        JsonObject jsonObject4 = new JsonObject();
        jsonObject4.addProperty(String.valueOf(y11Var.getNumber()), (Number) 0);
        jsonObject4.addProperty(String.valueOf(y11Var4.getNumber()), (Number) 0);
        jsonObject4.addProperty(String.valueOf(y11Var5.getNumber()), (Number) 0);
        jsonObject4.addProperty(String.valueOf(y11Var7.getNumber()), (Number) 0);
        jsonObject4.addProperty(String.valueOf(y11Var8.getNumber()), Long.valueOf(Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(30, durationUnit))));
        jsonObject4.addProperty(String.valueOf(y11Var9.getNumber()), (Number) 0);
        G = jsonObject4;
        JsonObject jsonObject5 = new JsonObject();
        DurationUnit durationUnit2 = DurationUnit.MINUTES;
        jsonObject5.addProperty(String.valueOf(y11Var.getNumber()), Long.valueOf(Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(10, durationUnit2))));
        jsonObject5.addProperty(String.valueOf(y11Var4.getNumber()), Long.valueOf(Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(30, durationUnit))));
        jsonObject5.addProperty(String.valueOf(y11Var5.getNumber()), Long.valueOf(Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(5, durationUnit2))));
        jsonObject5.addProperty(String.valueOf(y11Var7.getNumber()), Long.valueOf(Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(10, durationUnit2))));
        jsonObject5.addProperty(String.valueOf(y11Var8.getNumber()), Long.valueOf(Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(300, durationUnit))));
        jsonObject5.addProperty(String.valueOf(y11Var9.getNumber()), (Number) 0);
        H = jsonObject5;
        JsonObject jsonObject6 = new JsonObject();
        jsonObject6.addProperty(String.valueOf(y11Var.getNumber()), bool);
        jsonObject6.addProperty(String.valueOf(y11Var4.getNumber()), bool2);
        jsonObject6.addProperty(String.valueOf(y11Var5.getNumber()), bool2);
        jsonObject6.addProperty(String.valueOf(y11Var7.getNumber()), bool2);
        jsonObject6.addProperty(String.valueOf(y11Var8.getNumber()), bool);
        jsonObject6.addProperty(String.valueOf(y11Var9.getNumber()), bool2);
        I = jsonObject6;
        JsonObject jsonObject7 = new JsonObject();
        jsonObject7.addProperty(String.valueOf(y11Var.getNumber()), bool2);
        jsonObject7.addProperty(String.valueOf(y11Var4.getNumber()), bool2);
        jsonObject7.addProperty(String.valueOf(y11Var5.getNumber()), bool2);
        jsonObject7.addProperty(String.valueOf(y11Var7.getNumber()), bool2);
        jsonObject7.addProperty(String.valueOf(y11Var8.getNumber()), bool2);
        jsonObject7.addProperty(String.valueOf(y11Var9.getNumber()), bool2);
        J = jsonObject7;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ex0(x00 consentFlags, eb3 sdkCoreFlags, l93 safeAreaFlags, sa adShieldFlags, cl2 persistentCacheFlags, xw0 flagValueProvider) {
        super(flagValueProvider);
        Intrinsics.checkNotNullParameter(consentFlags, "consentFlags");
        Intrinsics.checkNotNullParameter(sdkCoreFlags, "sdkCoreFlags");
        Intrinsics.checkNotNullParameter(safeAreaFlags, "safeAreaFlags");
        Intrinsics.checkNotNullParameter(adShieldFlags, "adShieldFlags");
        Intrinsics.checkNotNullParameter(persistentCacheFlags, "persistentCacheFlags");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        this.r = consentFlags;
        this.s = sdkCoreFlags;
        this.t = safeAreaFlags;
        this.u = adShieldFlags;
        this.v = persistentCacheFlags;
    }

    public final hj2 m0() {
        return (hj2) ((hr) this.a).l.get();
    }

    public final yp2 o0() {
        return (yp2) ((hr) this.a).m.get();
    }

    public final Map w() {
        return (Map) ((hr) this.a).n.get();
    }

    public final eb3 T() {
        return this.s;
    }

    public final boolean S() {
        return this.w;
    }

    public final String Q0() {
        Intrinsics.checkNotNullParameter("gads:webview_cookie_url", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net", "defaultValue");
        return (String) a("gads:webview_cookie_url", "https://googleads.g.doubleclick.net", yr.o);
    }

    public final long p() {
        Duration.Companion companion = Duration.Companion;
        return ((Duration) a("gads:adapter_initialization:timeout", wm2.a(30, DurationUnit.SECONDS, "gads:adapter_initialization:timeout", C3522b4.i.W), yr.l)).m2906unboximpl();
    }

    public final boolean O() {
        Intrinsics.checkNotNullParameter("gads:enable_stop_api:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:enable_stop_api:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final List c0() {
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"true", "t", "yes", "y", "1"});
        Intrinsics.checkNotNullParameter("gads:is_trueish_values", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:is_trueish_values", defaultValue, yr.g);
    }

    public final String d() {
        Intrinsics.checkNotNullParameter("gads:ad_mob_ad_unit_pattern", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("^(ca-app-pub-[a-zA-Z0-9\\-]+)\\/([a-zA-Z0-9_\\-]+)(\\/.*)?$", "defaultValue");
        return (String) a("gads:ad_mob_ad_unit_pattern", "^(ca-app-pub-[a-zA-Z0-9\\-]+)\\/([a-zA-Z0-9_\\-]+)(\\/.*)?$", yr.o);
    }

    public final String e() {
        Intrinsics.checkNotNullParameter("gads:ad_mob_app_id_regex", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("^(ca-app-pub-[a-zA-Z0-9\\-]+)~(.*)$", "defaultValue");
        return (String) a("gads:ad_mob_app_id_regex", "^(ca-app-pub-[a-zA-Z0-9\\-]+)~(.*)$", yr.o);
    }

    public final String c() {
        Intrinsics.checkNotNullParameter("gads:ad_manager_beta_app_id_regex", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("^(\\/\\d+)~(.*)$", "defaultValue");
        return (String) a("gads:ad_manager_beta_app_id_regex", "^(\\/\\d+)~(.*)$", yr.o);
    }

    public final String o() {
        Intrinsics.checkNotNullParameter("gads:ad_unit_id_chars_to_escape", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("<([{\\^=$!|]})?*+.>-", "defaultValue");
        return (String) a("gads:ad_unit_id_chars_to_escape", "<([{\\^=$!|]})?*+.>-", yr.o);
    }

    public final long Y() {
        Duration.Companion companion = Duration.Companion;
        return ((Duration) a("gads:immersive_video_media_data_timeout_ms", wm2.a(5, DurationUnit.SECONDS, "gads:immersive_video_media_data_timeout_ms", C3522b4.i.W), yr.j)).m2906unboximpl();
    }

    public final long B() {
        Duration.Companion companion = Duration.Companion;
        return ((Duration) a("gads:banner_refresh_time:seconds", wm2.a(60, DurationUnit.SECONDS, "gads:banner_refresh_time:seconds", C3522b4.i.W), yr.j)).m2906unboximpl();
    }

    public final long D() {
        Duration.Companion companion = Duration.Companion;
        return ((Duration) a("gads:banner_refresh_load_ad_delay:seconds", wm2.a(30, DurationUnit.SECONDS, "gads:banner_refresh_load_ad_delay:seconds", C3522b4.i.W), yr.j)).m2906unboximpl();
    }

    public final long C() {
        long j = z;
        Intrinsics.checkNotNullParameter("gads:http_url_connection_factory:timeout_millis", C3522b4.i.W);
        return ((Duration) a("gads:http_url_connection_factory:timeout_millis", Duration.m2870boximpl(j), yr.j)).m2906unboximpl();
    }

    public final int e0() {
        Intrinsics.checkNotNullParameter("gads:maximum_number_of_ads_allowed_for_icon_ad", C3522b4.i.W);
        return ((Number) a("gads:maximum_number_of_ads_allowed_for_icon_ad", 5, yr.f)).intValue();
    }

    public final String t() {
        Intrinsics.checkNotNullParameter("gads:blob_url_key", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("blob", "defaultValue");
        return (String) a("gads:blob_url_key", "blob", yr.o);
    }

    public final String r() {
        Intrinsics.checkNotNullParameter("gads:gads:blob_encryption_public_key", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("MIGdMA0GCSqGSIb3DQEBAQUAA4GLADCBhwKBgQDILejyvRuVmPUcwUTpEVaE8A_-D7bZPnTOMs91 WZ0iSLQrK0lcICNKeWom1jWNBxjw89oyra30BlZCDEu7nfGacaTmzX74wD_RJV3xh81_9l2PWr46 0J9DJcXSi4yGzJyyUYp7Q1YXam8J6DYWV6PoemmP71T2fbm9i1VQy1NFgQIBAw", "defaultValue");
        return (String) a("gads:gads:blob_encryption_public_key", "MIGdMA0GCSqGSIb3DQEBAQUAA4GLADCBhwKBgQDILejyvRuVmPUcwUTpEVaE8A_-D7bZPnTOMs91 WZ0iSLQrK0lcICNKeWom1jWNBxjw89oyra30BlZCDEu7nfGacaTmzX74wD_RJV3xh81_9l2PWr46 0J9DJcXSi4yGzJyyUYp7Q1YXam8J6DYWV6PoemmP71T2fbm9i1VQy1NFgQIBAw", yr.o);
    }

    public final String s() {
        String defaultValue = Base64.encodeToString(new byte[]{0, 19, -48, -88, -79}, 0);
        Intrinsics.checkNotNullExpressionValue(defaultValue, "encodeToString(...)");
        Intrinsics.checkNotNullParameter("gads:blob_encryption_public_key_first_hashed_bytes", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (String) a("gads:blob_encryption_public_key_first_hashed_bytes", defaultValue, yr.o);
    }

    public final long x() {
        long j = A;
        Intrinsics.checkNotNullParameter("gads:cronet_init_timeout:seconds", C3522b4.i.W);
        return ((Duration) a("gads:cronet_init_timeout:seconds", Duration.m2870boximpl(j), yr.l)).m2906unboximpl();
    }

    public final int y() {
        Intrinsics.checkNotNullParameter("gads:cronet_max_redirects", C3522b4.i.W);
        return ((Number) a("gads:cronet_max_redirects", 5, yr.f)).intValue();
    }

    public final Map n0() {
        Pair pair = TuplesKt.to(String.valueOf(s11.CUI_NAME_SIGNAL.getNumber()), Double.valueOf(0.003d));
        Pair pair2 = TuplesKt.to(String.valueOf(s11.CUI_NAME_SIGNAL_UPDATE_SIGNALS.getNumber()), Double.valueOf(3.0E-4d));
        String strValueOf = String.valueOf(s11.CUI_NAME_ADREQUEST.getNumber());
        Double dValueOf = Double.valueOf(0.1d);
        Pair pair3 = TuplesKt.to(strValueOf, dValueOf);
        Pair pair4 = TuplesKt.to(String.valueOf(s11.CUI_NAME_SDKINIT_SDKCORE.getNumber()), dValueOf);
        Pair pair5 = TuplesKt.to(String.valueOf(s11.CUI_NAME_WEBVIEW_INITIALIZATION.getNumber()), dValueOf);
        Pair pair6 = TuplesKt.to(String.valueOf(s11.CUI_NAME_WEBVIEW_LOAD.getNumber()), dValueOf);
        String strValueOf2 = String.valueOf(s11.CUI_NAME_INSTALL_REFERRER_DETAILS.getNumber());
        Double dValueOf2 = Double.valueOf(1.0d);
        Map defaultValue = MapsKt__MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, TuplesKt.to(strValueOf2, dValueOf2), TuplesKt.to(String.valueOf(s11.CUI_NAME_INSTALL_REFERRER_TASK.getNumber()), dValueOf2), TuplesKt.to(String.valueOf(s11.CUI_NAME_POST_CLICK_LIFECYCLE_MONITORING.getNumber()), dValueOf2), TuplesKt.to(String.valueOf(s11.CUI_NAME_HSDP_SERVICE.getNumber()), dValueOf2), TuplesKt.to(String.valueOf(s11.CUI_NAME_AD_INSPECTOR_DISABLED.getNumber()), dValueOf2), TuplesKt.to(String.valueOf(s11.CUI_NAME_AD_INSPECTOR_GLOBAL_ALLOWLIST_OVERRIDE.getNumber()), dValueOf2));
        Intrinsics.checkNotNullParameter("gads:per_trace_sample_rate", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (Map) a("gads:per_trace_sample_rate", defaultValue, yr.q);
    }

    public final String w0() {
        Intrinsics.checkNotNullParameter("gads:remote_capture_service_url", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("https://pagead2.googlesyndication.com/pagead/ping?e=2&f=1", "defaultValue");
        return (String) a("gads:remote_capture_service_url", "https://pagead2.googlesyndication.com/pagead/ping?e=2&f=1", yr.o);
    }

    public final String z() {
        Intrinsics.checkNotNullParameter("gads:sdk_csi_server", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("https://csi.gstatic.com/csi", "defaultValue");
        return (String) a("gads:sdk_csi_server", "https://csi.gstatic.com/csi", yr.o);
    }

    public final long H0() {
        Duration.Companion companion = Duration.Companion;
        return ((Duration) a("gad:signal_collection_timeout_ms", wm2.a(60, DurationUnit.SECONDS, "gad:signal_collection_timeout_ms", C3522b4.i.W), yr.j)).m2906unboximpl();
    }

    public final int b0() {
        Intrinsics.checkNotNullParameter("gads:is_device_held:max_samples", C3522b4.i.W);
        return ((Number) a("gads:is_device_held:max_samples", 5, yr.f)).intValue();
    }

    public final long K0() {
        long jM2911getZEROUwyO8pc = Duration.Companion.m2911getZEROUwyO8pc();
        Intrinsics.checkNotNullParameter("gads:integration_signal_timeout:ms", C3522b4.i.W);
        return ((Duration) a("gads:integration_signal_timeout:ms", Duration.m2870boximpl(jM2911getZEROUwyO8pc), yr.j)).m2906unboximpl();
    }

    public final boolean J() {
        Intrinsics.checkNotNullParameter("gads:cct_v2_connection:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:cct_v2_connection:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean I() {
        Intrinsics.checkNotNullParameter("gads:cct_v2_optimization:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:cct_v2_optimization:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final int q() {
        Intrinsics.checkNotNullParameter("gads:app_event_queue_size", C3522b4.i.W);
        return ((Number) a("gads:app_event_queue_size", 20, yr.f)).intValue();
    }

    public final int I0() {
        Intrinsics.checkNotNullParameter("gads:maximum_query_json_cache_size", C3522b4.i.W);
        return ((Number) a("gads:maximum_query_json_cache_size", 200, yr.f)).intValue();
    }

    public final long J0() {
        Duration.Companion companion = Duration.Companion;
        return ((Duration) a("gads:timeout_query_json_cache:millis", wm2.a(6, DurationUnit.HOURS, "gads:timeout_query_json_cache:millis", C3522b4.i.W), yr.j)).m2906unboximpl();
    }

    public final boolean a0() {
        Intrinsics.checkNotNullParameter("gads:inspector:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:inspector:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final boolean b() {
        Intrinsics.checkNotNullParameter("gads:inspector:s2s_enabled", C3522b4.i.W);
        return ((Boolean) a("gads:inspector:s2s_enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean k0() {
        Intrinsics.checkNotNullParameter("gads:inspector:out_of_context_testing_request_params_enabled", C3522b4.i.W);
        return ((Boolean) a("gads:inspector:out_of_context_testing_request_params_enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final boolean P0() {
        Intrinsics.checkNotNullParameter("gads:viewability_activity_lifecycle:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:viewability_activity_lifecycle:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final List d0() {
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"com.google.ads.mediation.inmobi.InMobiMediationAdapter", "com.google.ads.mediation.imobile.IMobileMediationAdapter", "com.google.ads.mediation.nend.NendMediationAdapter", "com.google.ads.mediation.adcolony.AdColonyMediationAdapter", "com.google.ads.mediation.facebook.FacebookMediationAdapter", "com.google.ads.mediation.mopub.MoPubMediationAdapter", "com.google.ads.mediation.applovin.AppLovinMediationAdapter", "com.google.ads.mediation.tapjoy.TapjoyMediationAdapter", "com.google.ads.mediation.vungle.VungleMediationAdapter", "com.google.ads.mediation.unity.UnityMediationAdapter", "com.google.ads.mediation.chartboost.ChartboostMediationAdapter", "com.google.ads.mediation.mytarget.MyTargetMediationAdapter", "com.google.ads.mediation.maio.MaioMediationAdapter", "com.google.ads.mediation.ironsource.IronSourceMediationAdapter", "com.google.ads.mediation.fyber.FyberMediationAdapter", "com.google.ads.mediation.verizon.VerizonMediationAdapter"});
        Intrinsics.checkNotNullParameter("gads:logged_adapter_version_classes", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:logged_adapter_version_classes", defaultValue, yr.n);
    }

    public final List U() {
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{CommonGetHeaderBiddingToken.HB_TOKEN_VERSION, "8"});
        Intrinsics.checkNotNullParameter("gad:scar_gks:enabled_list", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gad:scar_gks:enabled_list", defaultValue, yr.g);
    }

    public final boolean D0() {
        Intrinsics.checkNotNullParameter("gad:scar_encryption_allowlist:enabled", C3522b4.i.W);
        return ((Boolean) a("gad:scar_encryption_allowlist:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final List P() {
        List defaultValue = CollectionsKt__CollectionsJVMKt.listOf(CommonGetHeaderBiddingToken.HB_TOKEN_VERSION);
        Intrinsics.checkNotNullParameter("gad:scar_encryption:enabled_list", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gad:scar_encryption:enabled_list", defaultValue, yr.g);
    }

    public final List G0() {
        List defaultValue = CollectionsKt__CollectionsJVMKt.listOf("8");
        Intrinsics.checkNotNullParameter("gad:scar_rtb_signal:enabled_list", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gad:scar_rtb_signal:enabled_list", defaultValue, yr.g);
    }

    public final long B0() {
        Duration.Companion companion = Duration.Companion;
        return ((Duration) a("(gads:rtb_v1_1:signal_timeout_ms", wm2.a(900, DurationUnit.MILLISECONDS, "(gads:rtb_v1_1:signal_timeout_ms", C3522b4.i.W), yr.j)).m2906unboximpl();
    }

    public final double C0() {
        Intrinsics.checkNotNullParameter("gads:rtb_timeout_multiplier", C3522b4.i.W);
        return ((Number) a("gads:rtb_timeout_multiplier", Double.valueOf(0.95d), yr.c)).doubleValue();
    }

    public final String f0() {
        Intrinsics.checkNotNullParameter("gad:mraid:version", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("3.0", "defaultValue");
        return (String) a("gad:mraid:version", "3.0", yr.o);
    }

    public final boolean h0() {
        Intrinsics.checkNotNullParameter("gads:nas_collect_layout_params:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:nas_collect_layout_params:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean g0() {
        Intrinsics.checkNotNullParameter("gads:nas_collect_alpha:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:nas_collect_alpha:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final boolean E0() {
        Intrinsics.checkNotNullParameter("gads:paw_cache:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:paw_cache:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final long F0() {
        Duration.Companion companion = Duration.Companion;
        return ((Duration) a("gads:paw_cache:ttl_ms", wm2.a(60, DurationUnit.SECONDS, "gads:paw_cache:ttl_ms", C3522b4.i.W), yr.j)).m2906unboximpl();
    }

    public final List A() {
        List defaultValue = CollectionsKt__CollectionsJVMKt.listOf("1");
        Intrinsics.checkNotNullParameter("gads:pact_navigation_event_to_request_channel", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:pact_navigation_event_to_request_channel", defaultValue, yr.g);
    }

    public final String l0() {
        Intrinsics.checkNotNullParameter("gads:pact_active_exp_id:enabled", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("[]", "defaultValue");
        return (String) a("gads:pact_active_exp_id:enabled", "[]", yr.o);
    }

    public final String Q() {
        Intrinsics.checkNotNullParameter("gads:firebase_analytics_class_name", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("com.google.android.gms.measurement.api.AppMeasurementSdk", "defaultValue");
        return (String) a("gads:firebase_analytics_class_name", "com.google.android.gms.measurement.api.AppMeasurementSdk", yr.o);
    }

    public final String R() {
        Intrinsics.checkNotNullParameter("gads_firebase_analytics_url_macro", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("%5Bgw_fbsaeid%5D", "defaultValue");
        return (String) a("gads_firebase_analytics_url_macro", "%5Bgw_fbsaeid%5D", yr.o);
    }

    public final boolean F() {
        Intrinsics.checkNotNullParameter("gads:webview_sound_effects:disabled", C3522b4.i.W);
        return ((Boolean) a("gads:webview_sound_effects:disabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final boolean X() {
        Intrinsics.checkNotNullParameter("gads:hsdp_service_trigger_on_ad_clicked:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:hsdp_service_trigger_on_ad_clicked:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final boolean Z() {
        Intrinsics.checkNotNullParameter("gads:include_ping_attempts:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:include_ping_attempts:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final boolean H() {
        Intrinsics.checkNotNullParameter("gads:ad_close_listener:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:ad_close_listener:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean K() {
        Intrinsics.checkNotNullParameter("gads:csrb_abtest_exception:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:csrb_abtest_exception:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final String N0() {
        Intrinsics.checkNotNullParameter("pps_rg", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("\\d+=([a-zA-Z0-9]+)(\\|[a-zA-Z0-9]+)*$", "defaultValue");
        return (String) a("pps_rg", "\\d+=([a-zA-Z0-9]+)(\\|[a-zA-Z0-9]+)*$", yr.o);
    }

    public final boolean x0() {
        Intrinsics.checkNotNullParameter("gads:request_throttler:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:request_throttler:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final long y0() {
        Duration.Companion companion = Duration.Companion;
        return ((Duration) a("gads:request_throttler_retry_delay_ms", wm2.a(500, DurationUnit.MILLISECONDS, "gads:request_throttler_retry_delay_ms", C3522b4.i.W), yr.j)).m2906unboximpl();
    }

    public final boolean u() {
        Intrinsics.checkNotNullParameter("gads:clear_webview_cache:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:clear_webview_cache:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean O0() {
        Intrinsics.checkNotNullParameter("gads:ad_event_value:validate_domain:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:ad_event_value:validate_domain:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final List a() {
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"doubleclick.net", "google.com", "googleadservices.com"});
        Intrinsics.checkNotNullParameter("gads:ad_event_value:trusted_domains", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:ad_event_value:trusted_domains", defaultValue, yr.g);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.ex0 r5, kotlin.coroutines.CoroutineContext r6, kotlinx.coroutines.CoroutineScope r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof ads_mobile_sdk.bx0
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.bx0 r0 = (ads_mobile_sdk.bx0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            ads_mobile_sdk.bx0 r0 = new ads_mobile_sdk.bx0
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            ads_mobile_sdk.ex0 r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r8)
            goto L57
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.xw0 r8 = r5.a
            r0.a = r5
            r0.d = r3
            ads_mobile_sdk.hr r8 = (ads_mobile_sdk.hr) r8
            r8.getClass()
            ads_mobile_sdk.sq r2 = new ads_mobile_sdk.sq
            r4 = 0
            r2.<init>(r8, r7, r4)
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r6 != r7) goto L52
            goto L54
        L52:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
        L54:
            if (r6 != r1) goto L57
            return r1
        L57:
            ads_mobile_sdk.xw0 r6 = r5.a
            ads_mobile_sdk.ir r7 = ads_mobile_sdk.yr.b
            ads_mobile_sdk.hr r6 = (ads_mobile_sdk.hr) r6
            java.lang.String r8 = "gads:csrb:enabled"
            java.lang.Object r6 = r6.a(r8, r7)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            if (r6 == 0) goto L6b
            boolean r3 = r6.booleanValue()
        L6b:
            r5.w = r3
            ads_mobile_sdk.xw0 r6 = r5.a
            ads_mobile_sdk.cx0 r7 = ads_mobile_sdk.cx0.a
            ads_mobile_sdk.hr r6 = (ads_mobile_sdk.hr) r6
            java.lang.String r8 = "gads:csrb_abtest_enabled:ratio"
            java.lang.Object r6 = r6.a(r8, r7)
            java.lang.Double r6 = (java.lang.Double) r6
            if (r6 == 0) goto L82
            double r6 = r6.doubleValue()
            goto L84
        L82:
            r6 = 0
        L84:
            r5.x = r6
            ads_mobile_sdk.xw0 r6 = r5.a
            ads_mobile_sdk.dx0 r7 = ads_mobile_sdk.dx0.a
            ads_mobile_sdk.hr r6 = (ads_mobile_sdk.hr) r6
            java.lang.String r8 = "gads:csrb_break_glass_mode"
            java.lang.Object r6 = r6.a(r8, r7)
            java.lang.Integer r6 = (java.lang.Integer) r6
            if (r6 == 0) goto L9b
            int r6 = r6.intValue()
            goto L9c
        L9b:
            r6 = 0
        L9c:
            r5.y = r6
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ex0.a(ads_mobile_sdk.ex0, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineScope, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean M() {
        Intrinsics.checkNotNullParameter("gads:post_click_lifecycle_monitoring:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:post_click_lifecycle_monitoring:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean L() {
        Intrinsics.checkNotNullParameter("gads:enable_pclm_interaction_ping:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:enable_pclm_interaction_ping:enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean n() {
        Intrinsics.checkNotNullParameter("gads:ad_request_preconnect_during_signals_enabled", C3522b4.i.W);
        return ((Boolean) a("gads:ad_request_preconnect_during_signals_enabled", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final List i0() {
        List defaultValue = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"1.5.2", "1.4.14"});
        Intrinsics.checkNotNullParameter("gads:omid_instant_app_incompatible_versions", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:omid_instant_app_incompatible_versions", defaultValue, yr.g);
    }

    public final String j0() {
        Intrinsics.checkNotNullParameter("gads:omid_partner_name_prefix", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("Google/", "defaultValue");
        return (String) a("gads:omid_partner_name_prefix", "Google/", yr.o);
    }

    public final String v() {
        Intrinsics.checkNotNullParameter("gads:client_default_content_url_domain_suffix", C3522b4.i.W);
        Intrinsics.checkNotNullParameter("adsenseformobileapps.com", "defaultValue");
        return (String) a("gads:client_default_content_url_domain_suffix", "adsenseformobileapps.com", yr.o);
    }

    public final boolean G() {
        Intrinsics.checkNotNullParameter("gads:disable_webview_request_network_tracing", C3522b4.i.W);
        return ((Boolean) a("gads:disable_webview_request_network_tracing", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean E() {
        Intrinsics.checkNotNullParameter("gads:disable_network_request_tracing", C3522b4.i.W);
        return ((Boolean) a("gads:disable_network_request_tracing", Boolean.FALSE, yr.b)).booleanValue();
    }

    public final boolean A0() {
        Intrinsics.checkNotNullParameter("gads:restore_reduced_ua:enabled", C3522b4.i.W);
        return ((Boolean) a("gads:restore_reduced_ua:enabled", Boolean.TRUE, yr.b)).booleanValue();
    }

    public final List L0() {
        List defaultValue = CollectionsKt__CollectionsJVMKt.listOf(2);
        Intrinsics.checkNotNullParameter("gads:swipeable_interstitial_unsupported_s2s_request_types", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return (List) a("gads:swipeable_interstitial_unsupported_s2s_request_types", defaultValue, yr.h);
    }

    public final boolean M0() {
        Intrinsics.checkNotNullParameter("gads:url_encode_scar_ad_response_payload", C3522b4.i.W);
        return ((Boolean) a("gads:url_encode_scar_ad_response_payload", Boolean.FALSE, yr.b)).booleanValue();
    }
}
