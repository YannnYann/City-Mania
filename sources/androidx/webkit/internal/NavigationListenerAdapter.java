package androidx.webkit.internal;

import androidx.webkit.NavigationListener;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebViewNavigationListenerBoundaryInterface;

/* JADX INFO: loaded from: classes.dex */
public class NavigationListenerAdapter implements WebViewNavigationListenerBoundaryInterface {
    public static final String[] SUPPORTED_FEATURES = {"WEB_VIEW_NAVIGATION_LISTENER_V1"};

    public NavigationListenerAdapter(NavigationListener navigationListener) {
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationListenerBoundaryInterface
    public void onNavigationStarted(InvocationHandler invocationHandler) {
        NavigationImpl.forInvocationHandler(invocationHandler);
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationListenerBoundaryInterface
    public void onNavigationRedirected(InvocationHandler invocationHandler) {
        NavigationImpl.forInvocationHandler(invocationHandler);
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationListenerBoundaryInterface
    public void onNavigationCompleted(InvocationHandler invocationHandler) {
        NavigationImpl.forInvocationHandler(invocationHandler);
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationListenerBoundaryInterface
    public void onPageDeleted(InvocationHandler invocationHandler) {
        PageImpl.forInvocationHandler(invocationHandler);
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationListenerBoundaryInterface
    public void onPageLoadEventFired(InvocationHandler invocationHandler) {
        PageImpl.forInvocationHandler(invocationHandler);
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationListenerBoundaryInterface
    public void onPageDOMContentLoadedEventFired(InvocationHandler invocationHandler) {
        PageImpl.forInvocationHandler(invocationHandler);
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.WebViewNavigationListenerBoundaryInterface
    public void onFirstContentfulPaint(InvocationHandler invocationHandler, long j) {
        PageImpl.forInvocationHandler(invocationHandler);
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public String[] getSupportedFeatures() {
        return SUPPORTED_FEATURES;
    }

    public int hashCode() {
        throw null;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof NavigationListenerAdapter)) {
            return false;
        }
        throw null;
    }
}
