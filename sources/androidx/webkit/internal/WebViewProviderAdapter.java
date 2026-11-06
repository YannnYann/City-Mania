package androidx.webkit.internal;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebViewClient;
import androidx.webkit.NavigationListener;
import androidx.webkit.PrerenderException;
import androidx.webkit.PrerenderOperationCallback;
import androidx.webkit.Profile;
import androidx.webkit.SpeculativeLoadingParameters;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebNavigationClient;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewRenderProcess;
import androidx.webkit.WebViewRenderProcessClient;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.ProfileBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* JADX INFO: loaded from: classes.dex */
public class WebViewProviderAdapter {
    public final WebViewProviderBoundaryInterface mImpl;

    public WebViewProviderAdapter(WebViewProviderBoundaryInterface webViewProviderBoundaryInterface) {
        this.mImpl = webViewProviderBoundaryInterface;
    }

    public void postWebMessage(WebMessageCompat webMessageCompat, Uri uri) {
        this.mImpl.postMessageToMainFrame(BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(new WebMessageAdapter(webMessageCompat)), uri);
    }

    public void addWebMessageListener(String str, String[] strArr, WebViewCompat.WebMessageListener webMessageListener) {
        this.mImpl.addWebMessageListener(str, strArr, BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(new WebMessageListenerAdapter(webMessageListener)));
    }

    public ScriptHandlerImpl addDocumentStartJavaScript(String str, String[] strArr) {
        return ScriptHandlerImpl.toScriptHandler(this.mImpl.addDocumentStartJavaScript(str, strArr));
    }

    public void removeWebMessageListener(String str) {
        this.mImpl.removeWebMessageListener(str);
    }

    public WebViewClient getWebViewClient() {
        return this.mImpl.getWebViewClient();
    }

    public WebChromeClient getWebChromeClient() {
        return this.mImpl.getWebChromeClient();
    }

    public WebViewRenderProcess getWebViewRenderProcess() {
        return WebViewRenderProcessImpl.forInvocationHandler(this.mImpl.getWebViewRenderer());
    }

    public WebViewRenderProcessClient getWebViewRenderProcessClient() {
        InvocationHandler webViewRendererClient = this.mImpl.getWebViewRendererClient();
        if (webViewRendererClient == null) {
            return null;
        }
        ((WebViewRenderProcessClientAdapter) BoundaryInterfaceReflectionUtil.getDelegateFromInvocationHandler(webViewRendererClient)).getWebViewRenderProcessClient();
        return null;
    }

    @SuppressLint({"LambdaLast"})
    public void setWebViewRenderProcessClient(Executor executor, WebViewRenderProcessClient webViewRenderProcessClient) {
        this.mImpl.setWebViewRendererClient(null);
    }

    public void setProfileWithName(String str) {
        this.mImpl.setProfile(str);
    }

    public Profile getProfile() {
        return new ProfileImpl((ProfileBoundaryInterface) BoundaryInterfaceReflectionUtil.castToSuppLibClass(ProfileBoundaryInterface.class, this.mImpl.getProfile()));
    }

    public boolean isAudioMuted() {
        return this.mImpl.isAudioMuted();
    }

    public void setAudioMuted(boolean z) {
        this.mImpl.setAudioMuted(z);
    }

    public void prerenderUrlAsync(String str, CancellationSignal cancellationSignal, Executor executor, final PrerenderOperationCallback prerenderOperationCallback) {
        this.mImpl.prerenderUrl(str, cancellationSignal, executor, new ValueCallback() { // from class: androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda2
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                prerenderOperationCallback.onPrerenderActivated();
            }
        }, new ValueCallback() { // from class: androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda3
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                prerenderOperationCallback.onError(new PrerenderException("Prerender operation failed", (Throwable) obj));
            }
        });
    }

    public void prerenderUrlAsync(String str, CancellationSignal cancellationSignal, Executor executor, SpeculativeLoadingParameters speculativeLoadingParameters, final PrerenderOperationCallback prerenderOperationCallback) {
        this.mImpl.prerenderUrl(str, cancellationSignal, executor, BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(new SpeculativeLoadingParametersAdapter(speculativeLoadingParameters)), new ValueCallback() { // from class: androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda0
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                prerenderOperationCallback.onPrerenderActivated();
            }
        }, new ValueCallback() { // from class: androidx.webkit.internal.WebViewProviderAdapter$$ExternalSyntheticLambda1
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                prerenderOperationCallback.onError(new PrerenderException("Prerender operation failed", (Throwable) obj));
            }
        });
    }

    public void saveState(Bundle bundle, int i, boolean z) {
        this.mImpl.saveState(bundle, i, z);
    }

    public void setWebNavigationClient(WebNavigationClient webNavigationClient) {
        this.mImpl.setWebViewNavigationClient(BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(new WebNavigationClientAdapter(webNavigationClient)));
    }

    public WebNavigationClient getWebNavigationClient() {
        InvocationHandler webViewNavigationClient = this.mImpl.getWebViewNavigationClient();
        if (webViewNavigationClient == null) {
            return null;
        }
        ((WebNavigationClientAdapter) BoundaryInterfaceReflectionUtil.getDelegateFromInvocationHandler(webViewNavigationClient)).getWebNavigationClient();
        return null;
    }

    public void addNavigationListener(Executor executor, NavigationListener navigationListener) {
        this.mImpl.addWebViewNavigationListener(executor, BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(new NavigationListenerAdapter(navigationListener)));
    }

    public void removeNavigationListener(NavigationListener navigationListener) {
        this.mImpl.removeWebViewNavigationListener(BoundaryInterfaceReflectionUtil.createInvocationHandlerFor(new NavigationListenerAdapter(navigationListener)));
    }
}
