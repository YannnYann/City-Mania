package ads_mobile_sdk;

import android.net.Uri;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class hz1 extends Lambda implements Function0 {
    public final /* synthetic */ String a;
    public final /* synthetic */ Uri b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hz1(String str, Uri uri) {
        super(0);
        this.a = str;
        this.b = uri;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "Saved " + this.a + " to " + this.b;
    }
}
