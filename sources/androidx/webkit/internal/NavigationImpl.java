package androidx.webkit.internal;

import androidx.webkit.Navigation;
import java.lang.reflect.InvocationHandler;
import java.util.Objects;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.WebViewNavigationBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* JADX INFO: loaded from: classes.dex */
public class NavigationImpl implements Navigation {
    public WebViewNavigationBoundaryInterface mImpl;

    public static Navigation forInvocationHandler(InvocationHandler invocationHandler) {
        final WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface = (WebViewNavigationBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(WebViewNavigationBoundaryInterface.class, invocationHandler);
        Object orCreatePeer = webViewNavigationBoundaryInterface.getOrCreatePeer(new Callable() { // from class: androidx.webkit.internal.NavigationImpl$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return NavigationImpl.m667$r8$lambda$iyuxY5c48ZVbTVCLbv_MQVIBHQ(webViewNavigationBoundaryInterface);
            }
        });
        Objects.requireNonNull(orCreatePeer);
        return (Navigation) orCreatePeer;
    }

    /* JADX INFO: renamed from: $r8$lambda$iyuxY5c48ZVb-TVCLbv_MQVIBHQ, reason: not valid java name */
    public static /* synthetic */ Object m667$r8$lambda$iyuxY5c48ZVbTVCLbv_MQVIBHQ(WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface) {
        return new NavigationImpl(webViewNavigationBoundaryInterface);
    }

    public NavigationImpl(WebViewNavigationBoundaryInterface webViewNavigationBoundaryInterface) {
        this.mImpl = webViewNavigationBoundaryInterface;
    }
}
