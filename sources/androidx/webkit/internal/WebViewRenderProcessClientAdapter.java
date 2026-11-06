package androidx.webkit.internal;

import android.webkit.WebView;
import androidx.webkit.WebViewFeature;
import androidx.webkit.WebViewRenderProcess;
import androidx.webkit.WebViewRenderProcessClient;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.WebViewRendererClientBoundaryInterface;

/* JADX INFO: loaded from: classes.dex */
public class WebViewRenderProcessClientAdapter implements WebViewRendererClientBoundaryInterface {
    public static final String[] sSupportedFeatures = {WebViewFeature.WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE};
    public final Executor mExecutor;

    public WebViewRenderProcessClient getWebViewRenderProcessClient() {
        return null;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public final String[] getSupportedFeatures() {
        return sSupportedFeatures;
    }

    @Override // org.chromium.support_lib_boundary.WebViewRendererClientBoundaryInterface
    public final void onRendererUnresponsive(final WebView webView, InvocationHandler invocationHandler) {
        final WebViewRenderProcessImpl webViewRenderProcessImplForInvocationHandler = WebViewRenderProcessImpl.forInvocationHandler(invocationHandler);
        this.mExecutor.getClass();
        final WebViewRenderProcessClient webViewRenderProcessClient = null;
        this.mExecutor.execute(new Runnable(webViewRenderProcessClient, webView, webViewRenderProcessImplForInvocationHandler) { // from class: androidx.webkit.internal.WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda1
            public final /* synthetic */ WebView f$1;
            public final /* synthetic */ WebViewRenderProcess f$2;

            {
                this.f$1 = webView;
                this.f$2 = webViewRenderProcessImplForInvocationHandler;
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebViewRenderProcessClientAdapter.$r8$lambda$w98n_4UT5o8VQO1T2imMYR7JUSc(null, this.f$1, this.f$2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$w98n_4UT5o8VQO1T2imMYR7JUSc(WebViewRenderProcessClient webViewRenderProcessClient, WebView webView, WebViewRenderProcess webViewRenderProcess) {
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.WebViewRendererClientBoundaryInterface
    public final void onRendererResponsive(final WebView webView, InvocationHandler invocationHandler) {
        final WebViewRenderProcessImpl webViewRenderProcessImplForInvocationHandler = WebViewRenderProcessImpl.forInvocationHandler(invocationHandler);
        this.mExecutor.getClass();
        final WebViewRenderProcessClient webViewRenderProcessClient = null;
        this.mExecutor.execute(new Runnable(webViewRenderProcessClient, webView, webViewRenderProcessImplForInvocationHandler) { // from class: androidx.webkit.internal.WebViewRenderProcessClientAdapter$$ExternalSyntheticLambda0
            public final /* synthetic */ WebView f$1;
            public final /* synthetic */ WebViewRenderProcess f$2;

            {
                this.f$1 = webView;
                this.f$2 = webViewRenderProcessImplForInvocationHandler;
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebViewRenderProcessClientAdapter.$r8$lambda$x3VM5dA6hVO6zLS4DrJneJlIE28(null, this.f$1, this.f$2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$x3VM5dA6hVO6zLS4DrJneJlIE28(WebViewRenderProcessClient webViewRenderProcessClient, WebView webView, WebViewRenderProcess webViewRenderProcess) {
        throw null;
    }
}
