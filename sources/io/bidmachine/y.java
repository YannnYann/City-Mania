package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.protobuf.AdNetwork;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class y {
    public static final String[] a = {"network", "format", "ad_units"};

    public static NetworkConfig a(Context context, AdNetwork adNetwork) {
        NetworkConfig networkConfigA;
        if (context == null) {
            return null;
        }
        final String name = adNetwork.getName();
        if (TextUtils.isEmpty(name) || (networkConfigA = a(context, name, adNetwork.getCustomParamsMap())) == null) {
            return null;
        }
        for (AdNetwork.AdUnit adUnit : adNetwork.getAdUnitsList()) {
            AdFormat adFormatByRemoteName = AdFormat.byRemoteName(adUnit.getAdFormat());
            if (adFormatByRemoteName != null) {
                networkConfigA.withMediationConfig(adFormatByRemoteName, adUnit.getCustomParamsMap());
            } else {
                Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.y$$ExternalSyntheticLambda0
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return y.a(name);
                    }
                });
            }
        }
        return networkConfigA;
    }

    public static /* synthetic */ String b(String str) {
        return String.format("Network (%s) adUnit register fail: %s not provided", str, "format");
    }

    public static /* synthetic */ String c(String str) {
        return String.format("Network (%s) load fail!", str);
    }

    public static /* synthetic */ String d(String str) {
        return String.format("Network (%s) load fail!", str);
    }

    public static /* synthetic */ String a(String str) {
        return String.format("Network (%s) adUnit register fail: %s not provided", str, "format");
    }

    public static NetworkConfig a(Context context, JSONObject jSONObject) {
        final String string;
        if (context == null) {
            return null;
        }
        try {
            string = jSONObject.getString("network");
        } catch (Throwable th) {
            th = th;
            string = null;
        }
        try {
            final NetworkConfig networkConfigA = a(context, string, Utils.toMap(jSONObject));
            if (networkConfigA == null) {
                return null;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("ad_units");
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                AdFormat adFormatByRemoteName = AdFormat.byRemoteName(jSONObject2.getString("format"));
                if (adFormatByRemoteName != null) {
                    networkConfigA.withMediationConfig(adFormatByRemoteName, a(Utils.toMap(jSONObject2)));
                } else {
                    Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.y$$ExternalSyntheticLambda1
                        @Override // io.bidmachine.utils.lazy.LazyValue
                        public final Object get() {
                            return y.b(string);
                        }
                    });
                }
            }
            Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.y$$ExternalSyntheticLambda2
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return y.a(networkConfigA);
                }
            });
            return networkConfigA;
        } catch (Throwable th2) {
            th = th2;
            Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.y$$ExternalSyntheticLambda3
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return y.c(string);
                }
            });
            Logger.w(th);
            return null;
        }
    }

    public static /* synthetic */ String a(NetworkConfig networkConfig) {
        return String.format("Load network from json config completed successfully: %s", networkConfig.getNetworkKey());
    }

    public static NetworkConfig a(Context context, final String str, Map map) {
        x xVarA = w.a(context, str);
        if (xVarA == null) {
            return null;
        }
        try {
            return (NetworkConfig) Class.forName(xVarA.b()).getConstructor(Map.class).newInstance(a(map));
        } catch (Throwable th) {
            Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.y$$ExternalSyntheticLambda4
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return y.d(str);
                }
            });
            Logger.w(th);
            return null;
        }
    }

    public static Map a(Map map) {
        if (map != null) {
            try {
                for (String str : a) {
                    map.remove(str);
                }
            } catch (Exception unused) {
            }
        }
        return map;
    }
}
