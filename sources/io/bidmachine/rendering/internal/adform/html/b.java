package io.bidmachine.rendering.internal.adform.html;

import android.graphics.Point;
import android.webkit.WebView;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.mraid.MraidAdView;
import io.bidmachine.iab.mraid.MraidOrientationProperties;
import io.bidmachine.rendering.internal.adform.c;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.utils.UiUtilsKt;
import io.bidmachine.util.Error;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements MraidAdView.Listener {
    public final a a;
    public final c b;
    public final io.bidmachine.rendering.internal.event.a c;

    public b(a htmlAdForm, c adFormListener, io.bidmachine.rendering.internal.event.a eventCallback) {
        Intrinsics.checkNotNullParameter(htmlAdForm, "htmlAdForm");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.a = htmlAdForm;
        this.b = adFormListener;
        this.c = eventCallback;
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public boolean ignoreExpandUrl(MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        return false;
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onCalendarEventIntention(MraidAdView mraidAdView, String url) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(url, "url");
        onOpenUrlIntention(mraidAdView, url, null);
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onChangeOrientationIntention(MraidAdView mraidAdView, MraidOrientationProperties mraidOrientationProperties) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(mraidOrientationProperties, "mraidOrientationProperties");
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onCloseIntention(MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        this.c.onClose();
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onExpand(MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        this.c.f();
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public boolean onExpandIntention(MraidAdView mraidAdView, WebView webView, MraidOrientationProperties mraidOrientationProperties, boolean z) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(webView, "webView");
        return true;
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onExpandLoadFailed(MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        this.b.d(this.a);
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onExpandLoadStart(MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        this.b.c(this.a);
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onMraidAdViewExpired(MraidAdView mraidAdView, IabError iabError) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        c cVar = this.b;
        a aVar = this.a;
        String message = iabError.getMessage();
        Intrinsics.checkNotNullExpressionValue(message, "iabError.message");
        cVar.c(aVar, new Error(message));
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onMraidAdViewLoadFailed(MraidAdView mraidAdView, IabError iabError) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        a aVar = this.a;
        String message = iabError.getMessage();
        Intrinsics.checkNotNullExpressionValue(message, "iabError.message");
        aVar.a(new Error(message));
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onMraidAdViewPageCommitVisible(MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        this.a.D();
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onMraidAdViewPageLoaded(MraidAdView mraidAdView, String url, WebView webView, boolean z) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.b.b(this.a);
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onMraidAdViewShowFailed(MraidAdView mraidAdView, IabError iabError) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(iabError, "iabError");
        a aVar = this.a;
        String message = iabError.getMessage();
        Intrinsics.checkNotNullExpressionValue(message, "iabError.message");
        aVar.b(new Error(message));
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onMraidAdViewShown(MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onMraidLoadedIntention(MraidAdView mraidAdView) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onOpenPrivacySheet(MraidAdView mraidAdView, PrivacySheetParams privacySheetParams) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onOpenUrlIntention(MraidAdView mraidAdView, String url, Point point) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(url, "url");
        this.c.a(url, point != null ? UiUtilsKt.toClickData(point, mraidAdView) : null);
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onPlayVideoIntention(MraidAdView mraidAdView, String url) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(url, "url");
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onStorePictureIntention(MraidAdView mraidAdView, String url) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        Intrinsics.checkNotNullParameter(url, "url");
        onOpenUrlIntention(mraidAdView, url, null);
    }

    @Override // io.bidmachine.iab.mraid.MraidAdView.Listener
    public void onSyncCustomCloseIntention(MraidAdView mraidAdView, boolean z) {
        Intrinsics.checkNotNullParameter(mraidAdView, "mraidAdView");
        this.c.onUseCustomClose(z);
    }
}
