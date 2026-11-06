package ads_mobile_sdk;

import android.net.Uri;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class p21 {
    public static final Set a = SetsKt__SetsKt.setOf((Object[]) new String[]{".mp4", ".webm", ".mkv", ".3gp", ".m4v", ".ts", ".flv", ".ogv", ".avi", ".mov", ".qt", ".wmv", ".mp3", ".aac", ".wav", ".flac", ".ogg", ".m4a", ".mid", ".xmf", ".mxmf", ".rtttl", ".rtx", ".ota", ".imy"});

    public static final boolean a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        String path = uri.getPath();
        if (path == null) {
            return false;
        }
        Set set = a;
        if (!(set instanceof Collection) || !set.isEmpty()) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                if (StringsKt__StringsJVMKt.endsWith(path, (String) it.next(), true)) {
                    return true;
                }
            }
        }
        return false;
    }
}
