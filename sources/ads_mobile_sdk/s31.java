package ads_mobile_sdk;

import android.net.Uri;
import android.webkit.WebResourceResponse;
import com.unity3d.services.core.network.model.HttpRequest;
import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes.dex */
public final class s31 {
    public static boolean b(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        return StringsKt__StringsJVMKt.equals(uri.getScheme(), "http", true) || StringsKt__StringsJVMKt.equals(uri.getScheme(), HttpRequest.DEFAULT_SCHEME, true);
    }

    public static WebResourceResponse a(List list) {
        if (list.isEmpty()) {
            return new WebResourceResponse("text/html", "UTF-8", new ByteArrayInputStream(new byte[0]));
        }
        StringBuilder sb = new StringBuilder("<!DOCTYPE html><html><head></head><body><p>Warmup page</p>");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String path = Uri.parse(str).getPath();
            if (path == null) {
                path = "";
            }
            Intrinsics.checkNotNull(path);
            if (StringsKt__StringsJVMKt.endsWith(path, ".js", true)) {
                sb.append("<script src=\"" + str + "\"></script>");
            } else if (StringsKt__StringsJVMKt.endsWith(path, ".css", true)) {
                sb.append("<link rel=\"stylesheet\" href=\"" + str + "\">");
            }
        }
        sb.append("</body></html>");
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        Charset charsetForName = Charset.forName("UTF-8");
        Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
        byte[] bytes = string.getBytes(charsetForName);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return new WebResourceResponse("text/html", "UTF-8", new ByteArrayInputStream(bytes));
    }

    public static boolean a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        return StringsKt__StringsJVMKt.equals("gmsg", uri.getScheme(), true) && StringsKt__StringsJVMKt.equals("mobileads.google.com", uri.getHost(), true);
    }
}
