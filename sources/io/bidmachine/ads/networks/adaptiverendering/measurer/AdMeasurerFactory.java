package io.bidmachine.ads.networks.adaptiverendering.measurer;

import android.content.Context;
import com.iab.omid.library.appodeal.adsession.VerificationScriptResource;
import io.bidmachine.core.Logger;
import io.bidmachine.internal.AbstractC4234s;
import io.bidmachine.rendering.measurer.HtmlMeasurer;
import io.bidmachine.rendering.measurer.MeasurerFactory;
import io.bidmachine.rendering.measurer.VideoMeasurer;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class AdMeasurerFactory implements MeasurerFactory {
    public static final Companion Companion = new Companion(null);
    public final String name;
    public final Map<String, String> parameters;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void addVerificationScriptResource(List<VerificationScriptResource> verificationScriptResourceList, String javaScriptResourceUrl, String str, String str2) {
            VerificationScriptResource verificationScriptResourceCreateVerificationScriptResourceWithoutParameters;
            Intrinsics.checkNotNullParameter(verificationScriptResourceList, "verificationScriptResourceList");
            Intrinsics.checkNotNullParameter(javaScriptResourceUrl, "javaScriptResourceUrl");
            try {
                URL url = new URL(javaScriptResourceUrl);
                if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
                    verificationScriptResourceCreateVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url);
                    Intrinsics.checkNotNullExpressionValue(verificationScriptResourceCreateVerificationScriptResourceWithoutParameters, "{\n                      …rl)\n                    }");
                } else {
                    verificationScriptResourceCreateVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithParameters(str, url, str2);
                    Intrinsics.checkNotNullExpressionValue(verificationScriptResourceCreateVerificationScriptResourceWithoutParameters, "{\n                      …  )\n                    }");
                }
                verificationScriptResourceList.add(verificationScriptResourceCreateVerificationScriptResourceWithoutParameters);
            } catch (Throwable th) {
                Logger.w(th);
            }
        }

        public final Float getSkipOffsetSec(Map<String, String> parameters) {
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            String str = parameters.get("skip_offset");
            if (str != null && str.length() != 0) {
                try {
                    return Float.valueOf(Long.parseLong(str) / 1000.0f);
                } catch (Throwable unused) {
                }
            }
            return null;
        }

        public final List<VerificationScriptResource> getVerificationScriptResourceList(Map<String, String> parameters) {
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            String str = parameters.get("verifications");
            if (str != null && str.length() != 0) {
                try {
                    JSONArray jSONArray = new JSONArray(str);
                    if (jSONArray.length() == 0) {
                        return null;
                    }
                    ArrayList arrayList = new ArrayList();
                    int length = jSONArray.length();
                    for (int i = 0; i < length; i++) {
                        JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject != null) {
                            String strOptString = jSONObjectOptJSONObject.optString("java_script_resource_url");
                            Intrinsics.checkNotNullExpressionValue(strOptString, "jsonObject.optString(JAVA_SCRIPT_RESOURCE_URL)");
                            addVerificationScriptResource(arrayList, strOptString, jSONObjectOptJSONObject.optString("vendor"), jSONObjectOptJSONObject.optString("verification_parameters"));
                        }
                    }
                    return arrayList;
                } catch (Throwable unused) {
                }
            }
            return null;
        }

        public Companion() {
        }
    }

    public AdMeasurerFactory(String name, Map<String, String> map) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
        this.parameters = map;
    }

    @Override // io.bidmachine.rendering.measurer.HtmlMeasurerFactory
    public HtmlMeasurer createHtmlMeasurer(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (StringsKt__StringsJVMKt.equals(this.name, "om", true) && AbstractC4234s.c()) {
            return new OMHtmlMeasurer();
        }
        return null;
    }

    @Override // io.bidmachine.rendering.measurer.VideoMeasurerFactory
    public VideoMeasurer createVideoMeasurer(Context context) {
        Map<String, String> map;
        Companion companion;
        List<VerificationScriptResource> verificationScriptResourceList;
        Intrinsics.checkNotNullParameter(context, "context");
        if (!StringsKt__StringsJVMKt.equals(this.name, "om", true) || !AbstractC4234s.c() || (map = this.parameters) == null || map.isEmpty() || (verificationScriptResourceList = (companion = Companion).getVerificationScriptResourceList(this.parameters)) == null || verificationScriptResourceList.isEmpty()) {
            return null;
        }
        return new OMVideoMeasurer(verificationScriptResourceList, companion.getSkipOffsetSec(this.parameters));
    }
}
