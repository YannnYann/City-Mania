package androidx.webkit;

import android.webkit.WebMessagePort;
import java.lang.reflect.InvocationHandler;

/* JADX INFO: loaded from: classes.dex */
public abstract class WebMessagePortCompat {
    public abstract WebMessagePort getFrameworkPort();

    public abstract InvocationHandler getInvocationHandler();
}
