package androidx.webkit.internal;

import androidx.webkit.Page;
import java.lang.reflect.InvocationHandler;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewPageBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* JADX INFO: loaded from: classes.dex */
public class PageImpl implements Page {
    private final WebViewPageBoundaryInterface mPageBoundaryInterface;

    public static Page forInvocationHandler(InvocationHandler invocationHandler) {
        final WebViewPageBoundaryInterface webViewPageBoundaryInterface = (WebViewPageBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewPageBoundaryInterface.class, invocationHandler);
        Object orCreatePeer = webViewPageBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.PageImpl$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PageImpl.m668$r8$lambda$yf2stblhFDlYs5nEXXEWdttTTE(webViewPageBoundaryInterface);
            }
        });
        Objects.requireNonNull(orCreatePeer);
        return (Page) orCreatePeer;
    }

    /* JADX INFO: renamed from: $r8$lambda$yf2stblhFDlYs5nEXXE-WdttTTE, reason: not valid java name */
    public static /* synthetic */ Object m668$r8$lambda$yf2stblhFDlYs5nEXXEWdttTTE(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        return new PageImpl(webViewPageBoundaryInterface);
    }

    public PageImpl(WebViewPageBoundaryInterface webViewPageBoundaryInterface) {
        this.mPageBoundaryInterface = webViewPageBoundaryInterface;
    }
}
