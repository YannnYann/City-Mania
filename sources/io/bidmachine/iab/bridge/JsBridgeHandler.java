package io.bidmachine.iab.bridge;

import android.text.TextUtils;
import com.ironsource.sdk.controller.f;
import io.bidmachine.iab.mraid.MraidLog;
import io.bidmachine.iab.mraid.MraidUtils;
import io.bidmachine.iab.mraid.MraidWebView;
import io.bidmachine.iab.script.ScriptWrapper;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public class JsBridgeHandler {
    public static final List a = new CopyOnWriteArrayList();

    public static /* synthetic */ String a() {
        return "handleJsCommand not found";
    }

    public static boolean addBridge(JsBridge bridge) {
        List list = a;
        return !list.contains(bridge) && list.add(bridge);
    }

    public static /* synthetic */ String b(String str) {
        return "handleJsCommand - " + str;
    }

    public static void handleJsCommand(MraidWebView webView, final String commandUrl) {
        Map<String, String> commandUrl2;
        MraidLog.d("JsBridgeHandler", new Function0() { // from class: io.bidmachine.iab.bridge.JsBridgeHandler$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return JsBridgeHandler.b(commandUrl);
            }
        });
        try {
            JsBridge jsBridgeA = a(commandUrl);
            if (jsBridgeA != null && (commandUrl2 = MraidUtils.parseCommandUrl(commandUrl, jsBridgeA.getJsValidator())) != null) {
                String str = commandUrl2.get(f.b.g);
                if (str == null) {
                    MraidLog.w("JsBridgeHandler", new Function0() { // from class: io.bidmachine.iab.bridge.JsBridgeHandler$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return JsBridgeHandler.a();
                        }
                    });
                } else {
                    jsBridgeA.runJsCommand(webView, str, commandUrl2);
                }
            }
        } catch (Throwable th) {
            MraidLog.e("JsBridgeHandler", th);
        }
    }

    public static boolean isHandled(String commandUrl) {
        return a(commandUrl) != null;
    }

    public static String obtainJs() {
        StringBuilder sb = new StringBuilder();
        Iterator it = a.iterator();
        while (it.hasNext()) {
            sb.append(ScriptWrapper.wrap(((JsBridge) it.next()).getJs(new Object[0])));
        }
        return sb.toString();
    }

    public static JsBridge a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (JsBridge jsBridge : a) {
            if (jsBridge.isHandled(str)) {
                return jsBridge;
            }
        }
        return null;
    }
}
