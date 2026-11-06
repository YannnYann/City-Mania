package io.bidmachine.iab.mraid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.mraid.MraidWebViewController;
import io.bidmachine.iab.utils.ClickAreaFactory;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.measurer.HtmlMeasurer;
import io.bidmachine.rendering.measurer.HtmlMeasurerFactory;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.ScriptConfig;
import io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo;
import io.bidmachine.rendering.model.engagedclick.EngagedClickParams;
import io.bidmachine.rendering.utils.CreativeProfileClassifier;
import io.bidmachine.rendering.utils.PrivacySheetParamsParser;
import io.bidmachine.util.ResultCallback;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.ViewUtilsKt;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidAdView extends FrameLayout {
    public static final Companion Companion = new Companion(null);
    public final MraidPlacementType a;
    public final String b;
    public final String c;
    public final String d;
    public final List e;
    public final EngagedClickParams f;
    public final Listener g;
    public final HtmlMeasurerFactory h;
    public final AdmDownloader i;
    public final long j;
    public final AtomicBoolean k;
    public final AtomicBoolean l;
    public final AtomicBoolean m;
    public final AtomicBoolean n;
    public final AtomicBoolean o;
    public final AtomicBoolean p;
    public final GestureDetector q;
    public final MraidNativeFeatureManager r;
    public final MraidNativeFeatureSchemeValidator s;
    public final c t;
    public final MraidWebViewController u;
    public final MraidAdRedirectHandler v;
    public MraidWebViewController w;
    public MraidViewState x;
    public boolean y;
    public io.bidmachine.rendering.internal.detector.engagedclick.b z;

    public static final class Builder {
        public final Context a;
        public final MraidPlacementType b;
        public final Listener c;
        public String d;
        public List e;
        public String f;
        public String g;
        public Long h;
        public List i;
        public EngagedClickParams j;

        public Builder(Context context, MraidPlacementType mraidPlacementType, Listener listener) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.a = context;
            this.b = mraidPlacementType;
            this.c = listener;
            this.d = "https://localhost";
        }

        public final MraidAdView build() {
            return new MraidAdView(this.a, this.b, this.d, this.g, this.e, this.f, this.h, this.i, this.j, this.c, null, null, 3072, null);
        }

        public final Builder setAllowedNativeFeatures(String[] strArr) {
            this.e = strArr != null ? CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(strArr, strArr.length)) : null;
            return this;
        }

        public final Builder setBaseUrl(String str) {
            this.d = str;
            return this;
        }

        public final Builder setEngagedClickParams(EngagedClickParams engagedClickParams) {
            this.j = engagedClickParams;
            return this;
        }

        public final Builder setPageFinishedScript(String str) {
            this.f = str;
            return this;
        }

        public final Builder setProductLink(String str) {
            this.g = str;
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final class ExpandAdmDownloaderResultCallbackImpl implements ResultCallback<String, Unit> {
        public final MraidWebViewController a;
        public final /* synthetic */ MraidAdView b;

        public ExpandAdmDownloaderResultCallbackImpl(MraidAdView mraidAdView, MraidWebViewController mraidWebViewController) {
            Intrinsics.checkNotNullParameter(mraidWebViewController, "mraidWebViewController");
            this.b = mraidAdView;
            this.a = mraidWebViewController;
        }

        @Override // io.bidmachine.util.ResultCallback
        public void onError(Unit unit) {
            this.b.p.set(false);
            this.b.g.onExpandLoadFailed(this.b);
        }

        @Override // io.bidmachine.util.ResultCallback
        public void onSuccess(String result) {
            Intrinsics.checkNotNullParameter(result, "result");
            if (this.a.isDestroyed()) {
                return;
            }
            this.a.load(this.b.getBaseUrl(), result, this.b.e);
        }
    }

    public static final class GestureDetectorListener extends GestureDetector.SimpleOnGestureListener {
        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent e2, float f, float f2) {
            Intrinsics.checkNotNullParameter(e2, "e2");
            return true;
        }
    }

    public interface Listener {
        boolean ignoreExpandUrl(MraidAdView mraidAdView);

        void onCalendarEventIntention(MraidAdView mraidAdView, String str);

        void onChangeOrientationIntention(MraidAdView mraidAdView, MraidOrientationProperties mraidOrientationProperties);

        void onCloseIntention(MraidAdView mraidAdView);

        void onExpand(MraidAdView mraidAdView);

        boolean onExpandIntention(MraidAdView mraidAdView, WebView webView, MraidOrientationProperties mraidOrientationProperties, boolean z);

        void onExpandLoadFailed(MraidAdView mraidAdView);

        void onExpandLoadStart(MraidAdView mraidAdView);

        void onMraidAdViewExpired(MraidAdView mraidAdView, IabError iabError);

        void onMraidAdViewLoadFailed(MraidAdView mraidAdView, IabError iabError);

        void onMraidAdViewPageCommitVisible(MraidAdView mraidAdView);

        void onMraidAdViewPageLoaded(MraidAdView mraidAdView, String str, WebView webView, boolean z);

        void onMraidAdViewShowFailed(MraidAdView mraidAdView, IabError iabError);

        void onMraidAdViewShown(MraidAdView mraidAdView);

        void onMraidLoadedIntention(MraidAdView mraidAdView);

        void onOpenPrivacySheet(MraidAdView mraidAdView, PrivacySheetParams privacySheetParams);

        void onOpenUrlIntention(MraidAdView mraidAdView, String str, Point point);

        void onPlayVideoIntention(MraidAdView mraidAdView, String str);

        void onStorePictureIntention(MraidAdView mraidAdView, String str);

        void onSyncCustomCloseIntention(MraidAdView mraidAdView, boolean z);
    }

    public abstract class MraidWebViewControllerCallback implements MraidWebViewController.Callback {
        public MraidWebViewControllerCallback() {
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onCalendarEvent(final String str) {
            MraidLog.d("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - onCalendarEvent: " + str;
                }
            });
            String strA = MraidAdView.this.t.a(str);
            if (strA == null || strA.length() == 0) {
                return;
            }
            final MraidAdView mraidAdView = MraidAdView.this;
            mraidAdView.a(strA, new Function1<String, Unit>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onCalendarEvent$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str2) {
                    invoke2(str2);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    mraidAdView.g.onCalendarEventIntention(mraidAdView, it);
                }
            });
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onClose() {
            MraidLog.d("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onClose$1
                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - onClose";
                }
            });
            MraidAdView.this.a();
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onError(final IabError iabError) {
            Intrinsics.checkNotNullParameter(iabError, "iabError");
            MraidLog.d("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onError$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - onError: " + iabError;
                }
            });
            MraidAdView.this.a(iabError);
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onExpand(final String str) {
            MraidLog.d("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onExpand$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - onExpand: " + str;
                }
            });
            MraidAdView.this.handleExpand$bidmachine_android_sdk_bb_3_8_0(str);
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onLoaded() {
            MraidLog.d("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onLoaded$1
                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - onLoaded";
                }
            });
            MraidAdView.this.b();
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onOpen(final String url, Point point) {
            Intrinsics.checkNotNullParameter(url, "url");
            MraidLog.d("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onOpen$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - onOpen: " + url;
                }
            });
            MraidAdView.this.a(url, point);
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onOpenPrivacySheet(final String json) {
            Intrinsics.checkNotNullParameter(json, "json");
            MraidLog.d("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onOpenPrivacySheet$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - onOpenPrivacySheet: " + json;
                }
            });
            MraidAdView.this.a(json);
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onOrientation(final MraidOrientationProperties mraidOrientationProperties) {
            Intrinsics.checkNotNullParameter(mraidOrientationProperties, "mraidOrientationProperties");
            MraidLog.d("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onOrientation$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - onOrientation: " + mraidOrientationProperties;
                }
            });
            if (MraidAdView.this.isInterstitial() || MraidAdView.this.getMraidViewState() == MraidViewState.EXPANDED) {
                MraidAdView.this.g.onChangeOrientationIntention(MraidAdView.this, mraidOrientationProperties);
            }
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onPlayVideo(final String str) {
            MraidLog.d("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onPlayVideo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - onPlayVideo: " + str;
                }
            });
            if (str == null || str.length() == 0) {
                return;
            }
            try {
                Listener listener = MraidAdView.this.g;
                MraidAdView mraidAdView = MraidAdView.this;
                String strDecode = URLDecoder.decode(str, "UTF-8");
                Intrinsics.checkNotNullExpressionValue(strDecode, "decode(url, \"UTF-8\")");
                listener.onPlayVideoIntention(mraidAdView, strDecode);
            } catch (UnsupportedEncodingException e) {
                MraidLog.e("MraidAdView", e);
            }
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onStorePicture(final String str) {
            MraidLog.d("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onStorePicture$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - onStorePicture: " + str;
                }
            });
            String strB = MraidAdView.this.t.b(str);
            if (strB == null || strB.length() == 0) {
                return;
            }
            final MraidAdView mraidAdView = MraidAdView.this;
            mraidAdView.a(strB, new Function1<String, Unit>() { // from class: io.bidmachine.iab.mraid.MraidAdView$MraidWebViewControllerCallback$onStorePicture$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str2) {
                    invoke2(str2);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(String it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    mraidAdView.g.onStorePictureIntention(mraidAdView, it);
                }
            });
        }
    }

    public final class PrimaryControllerCallback extends MraidWebViewControllerCallback {
        public PrimaryControllerCallback() {
            super();
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onPageCommitVisible() {
            MraidAdView.this.g.onMraidAdViewPageCommitVisible(MraidAdView.this);
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onPageFinished(String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            MraidAdView.this.b(url);
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onUseCustomClose(boolean z) {
            Listener listener = MraidAdView.this.g;
            MraidAdView mraidAdView = MraidAdView.this;
            listener.onSyncCustomCloseIntention(mraidAdView, mraidAdView.u.isUseCustomClose());
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onWebViewClicked() {
            MraidAdView.this.g();
        }
    }

    public final class SecondaryControllerCallback extends MraidWebViewControllerCallback {
        public SecondaryControllerCallback() {
            super();
        }

        @Override // io.bidmachine.iab.mraid.MraidAdView.MraidWebViewControllerCallback, io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onError(IabError iabError) {
            Intrinsics.checkNotNullParameter(iabError, "iabError");
            MraidAdView.this.p.set(false);
            super.onError(iabError);
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onPageCommitVisible() {
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onPageFinished(String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            MraidAdView.this.c();
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onUseCustomClose(boolean z) {
            MraidWebViewController secondaryMraidWebViewController = MraidAdView.this.getSecondaryMraidWebViewController();
            if (secondaryMraidWebViewController == null) {
                return;
            }
            MraidAdView.this.g.onSyncCustomCloseIntention(MraidAdView.this, secondaryMraidWebViewController.isUseCustomClose());
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewController.Callback
        public void onWebViewClicked() {
        }
    }

    public /* synthetic */ MraidAdView(Context context, MraidPlacementType mraidPlacementType, String str, String str2, List list, String str3, Long l, List list2, EngagedClickParams engagedClickParams, Listener listener, HtmlMeasurerFactory htmlMeasurerFactory, AdmDownloader admDownloader, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, mraidPlacementType, str, str2, list, str3, l, list2, (i & 256) != 0 ? null : engagedClickParams, listener, (i & 1024) != 0 ? null : htmlMeasurerFactory, (i & com.ironsource.mediationsdk.metadata.a.o) != 0 ? null : admDownloader);
    }

    public static final void a(MraidAdView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String str = this$0.c;
        if (str == null || str.length() == 0) {
            return;
        }
        this$0.a(this$0.c, (Point) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MraidWebViewController getCurrentMraidWebViewController() {
        MraidWebViewController mraidWebViewController = this.w;
        return mraidWebViewController == null ? this.u : mraidWebViewController;
    }

    public static /* synthetic */ void getSecondaryMraidWebViewController$annotations() {
    }

    public final void b(String str) {
        if (this.x == MraidViewState.LOADING && this.k.compareAndSet(false, true)) {
            this.u.applySupportedServices(this.r);
            this.u.applyPlacement(this.a);
            this.u.applyViewable(this.y);
            this.u.injectJs(this.d);
            setViewState(MraidViewState.DEFAULT);
            h();
            e();
            this.g.onMraidAdViewPageLoaded(this, str, this.u.getMraidWebView(), this.u.isUseCustomClose());
        }
    }

    public final void c(String str) {
        EngagedClickParams engagedClickParams = this.f;
        if (engagedClickParams == null || !engagedClickParams.isReclassifyByAdm()) {
            return;
        }
        CreativeProfileInfo creativeProfileInfoClassifyByMarkup = CreativeProfileClassifier.INSTANCE.classifyByMarkup(str);
        t.b("MraidAdView", "EngagedClick: reclassified - " + creativeProfileInfoClassifyByMarkup.getCreativeProfile() + ", source - " + creativeProfileInfoClassifyByMarkup.getProfileSource(), new Object[0]);
        io.bidmachine.rendering.internal.detector.engagedclick.b bVar = this.z;
        if (bVar == null) {
            return;
        }
        bVar.a(creativeProfileInfoClassifyByMarkup);
    }

    public final void close() {
        this.p.set(false);
        setViewState(MraidViewState.HIDDEN);
    }

    public final void closeExpanded() {
        io.bidmachine.rendering.internal.detector.engagedclick.b bVar;
        boolean z = this.x == MraidViewState.EXPANDED;
        this.p.set(false);
        MraidWebViewController mraidWebViewController = this.w;
        if (mraidWebViewController != null) {
            mraidWebViewController.destroy();
            this.w = null;
        }
        MraidWebView mraidWebView = this.u.getMraidWebView();
        if (!ViewUtilsKt.contains(this, mraidWebView)) {
            ViewUtilsKt.addSingleViewSafely$default(this, mraidWebView, null, 2, null);
        }
        setViewState(MraidViewState.DEFAULT);
        h();
        if (!z || (bVar = this.z) == null) {
            return;
        }
        bVar.g();
    }

    public final void closeResized() {
        ViewUtilsKt.addSingleViewSafely$default(this, this.u.getMraidWebView(), null, 2, null);
        setViewState(MraidViewState.DEFAULT);
    }

    public final boolean d() {
        return this.m.get();
    }

    public final void destroy() {
        this.v.complete();
        io.bidmachine.rendering.internal.detector.engagedclick.b bVar = this.z;
        if (bVar != null) {
            bVar.c();
        }
        this.u.destroy();
        MraidWebViewController mraidWebViewController = this.w;
        if (mraidWebViewController != null) {
            mraidWebViewController.destroy();
        }
    }

    public final void e() {
        if (this.l.compareAndSet(false, true)) {
            this.u.notifyReady();
        }
    }

    public final void f() {
        if (this.n.compareAndSet(false, true)) {
            io.bidmachine.rendering.internal.detector.engagedclick.b bVar = this.z;
            if (bVar != null) {
                bVar.j();
            }
            this.g.onMraidAdViewShown(this);
        }
    }

    public final void g() {
        io.bidmachine.rendering.internal.detector.engagedclick.b bVar;
        if (this.x == MraidViewState.EXPANDED || (bVar = this.z) == null) {
            return;
        }
        bVar.i();
    }

    public final String getBaseUrl() {
        return this.b;
    }

    public final MraidOrientationProperties getLastOrientationProperties() {
        return this.u.getLastOrientationProperties();
    }

    public final MraidViewState getMraidViewState() {
        return this.x;
    }

    public final MraidWebViewController getSecondaryMraidWebViewController() {
        return this.w;
    }

    public final WebView getWebView() {
        return this.u.getMraidWebView();
    }

    public final void h() {
        this.u.onViewabilityChanged(this.y);
        if (isLoaded() && this.y) {
            e();
            f();
        }
    }

    public final void handleExpand$bidmachine_android_sdk_bb_3_8_0(String str) {
        MraidWebViewController mraidWebViewController;
        HtmlMeasurer htmlMeasurerCreateHtmlMeasurer;
        if (isInterstitial()) {
            return;
        }
        MraidViewState mraidViewState = this.x;
        if ((mraidViewState == MraidViewState.DEFAULT || mraidViewState == MraidViewState.RESIZED) && this.p.compareAndSet(false, true)) {
            boolean zIgnoreExpandUrl = this.g.ignoreExpandUrl(this);
            Unit unit = null;
            if (str == null || StringsKt__StringsKt.isBlank(str) || zIgnoreExpandUrl) {
                mraidWebViewController = this.u;
            } else {
                try {
                    str = URLDecoder.decode(str, "UTF-8");
                    if (!UtilsKt.isHttpUrl(str)) {
                        str = this.b + str;
                    }
                    Context context = getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "context");
                    SecondaryControllerCallback secondaryControllerCallback = new SecondaryControllerCallback();
                    long j = this.j;
                    HtmlMeasurerFactory htmlMeasurerFactory = this.h;
                    if (htmlMeasurerFactory != null) {
                        Context context2 = getContext();
                        Intrinsics.checkNotNullExpressionValue(context2, "context");
                        htmlMeasurerCreateHtmlMeasurer = htmlMeasurerFactory.createHtmlMeasurer(context2);
                    } else {
                        htmlMeasurerCreateHtmlMeasurer = null;
                    }
                    mraidWebViewController = new MraidWebViewController(context, secondaryControllerCallback, j, htmlMeasurerCreateHtmlMeasurer);
                    this.w = mraidWebViewController;
                } catch (UnsupportedEncodingException unused) {
                    this.p.set(false);
                    return;
                }
            }
            if (!this.g.onExpandIntention(this, mraidWebViewController.getMraidWebView(), mraidWebViewController.getLastOrientationProperties(), mraidWebViewController.isUseCustomClose())) {
                this.p.set(false);
                return;
            }
            if (str == null || StringsKt__StringsKt.isBlank(str) || zIgnoreExpandUrl) {
                this.g.onExpand(this);
                return;
            }
            this.g.onExpandLoadStart(this);
            AdmDownloader admDownloader = this.i;
            if (admDownloader != null) {
                admDownloader.download(str, new ExpandAdmDownloaderResultCallbackImpl(this, mraidWebViewController));
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                mraidWebViewController.load(str);
            }
        }
    }

    public final void handleExpanded() {
        this.p.set(false);
        setViewState(MraidViewState.EXPANDED);
        io.bidmachine.rendering.internal.detector.engagedclick.b bVar = this.z;
        if (bVar != null) {
            bVar.h();
        }
    }

    public final void handleRedirect(ClickAreaFactory clickAreaFactory) {
        Intrinsics.checkNotNullParameter(clickAreaFactory, "clickAreaFactory");
        this.v.handle(clickAreaFactory);
    }

    public final boolean isInterstitial() {
        return this.a == MraidPlacementType.INTERSTITIAL;
    }

    public final boolean isLoaded() {
        return this.k.get();
    }

    public final boolean isOpenNotified() {
        return this.o.get();
    }

    public final boolean isReceivedJsError() {
        return this.u.isReceivedJsError();
    }

    public final boolean isUseCustomClose() {
        return this.u.isUseCustomClose();
    }

    public final void load(String str) {
        if (str != null) {
            c(str);
            this.u.load(this.b, str, this.e);
        } else {
            IabError iabErrorNoRequiredArguments = IabError.noRequiredArguments("Html data are null");
            Intrinsics.checkNotNullExpressionValue(iabErrorNoRequiredArguments, "noRequiredArguments(\"Html data are null\")");
            a(iabErrorNoRequiredArguments);
        }
    }

    public final void onAddedToContainer(ViewGroup container) {
        Intrinsics.checkNotNullParameter(container, "container");
        this.u.onAddedToContainer(container);
        MraidWebViewController mraidWebViewController = this.w;
        if (mraidWebViewController != null) {
            mraidWebViewController.onAddedToContainer(container);
        }
    }

    public final void onClicked() {
        getCurrentMraidWebViewController().onClicked();
    }

    public final void onShown() {
        this.u.onShown();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.q.onTouchEvent(event)) {
            event.setAction(3);
        }
        return super.onTouchEvent(event);
    }

    public final void onViewabilityChanged(boolean z) {
        Unit unit;
        this.y = z;
        MraidWebViewController mraidWebViewController = this.w;
        if (mraidWebViewController != null) {
            mraidWebViewController.onViewabilityChanged(z);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            h();
        }
    }

    public final void openExpand() {
        MraidWebView mraidWebView;
        if (this.x == MraidViewState.EXPANDED) {
            return;
        }
        MraidWebViewController mraidWebViewController = this.w;
        if (mraidWebViewController != null && (mraidWebView = mraidWebViewController.getMraidWebView()) != null && !ViewUtilsKt.contains(this, mraidWebView)) {
            ViewUtilsKt.addSingleViewSafely$default(this, mraidWebView, null, 2, null);
        }
        handleExpanded();
        MraidWebViewController mraidWebViewController2 = this.w;
        if (mraidWebViewController2 != null) {
            mraidWebViewController2.onShown();
        }
    }

    public final void setSecondaryMraidWebViewController(MraidWebViewController mraidWebViewController) {
        this.w = mraidWebViewController;
    }

    public final void setViewState(MraidViewState mraidViewState) {
        Intrinsics.checkNotNullParameter(mraidViewState, "mraidViewState");
        this.x = mraidViewState;
        this.u.applyState(mraidViewState);
        MraidWebViewController mraidWebViewController = this.w;
        if (mraidWebViewController != null) {
            mraidWebViewController.applyState(mraidViewState);
        }
    }

    public final void show() {
        if (this.m.compareAndSet(false, true) && isLoaded()) {
            e();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MraidAdView(Context context, MraidPlacementType mraidPlacementType, String str, String str2, List<String> list, String str3, Long l, List<ScriptConfig> list2, EngagedClickParams engagedClickParams, Listener listener, HtmlMeasurerFactory htmlMeasurerFactory, AdmDownloader admDownloader) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a = mraidPlacementType;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = list2;
        this.f = engagedClickParams;
        this.g = listener;
        this.h = htmlMeasurerFactory;
        this.i = admDownloader;
        long jLongValue = l != null ? l.longValue() : 0L;
        this.j = jLongValue;
        this.k = new AtomicBoolean(false);
        this.l = new AtomicBoolean(false);
        this.m = new AtomicBoolean(false);
        this.n = new AtomicBoolean(false);
        this.o = new AtomicBoolean(false);
        this.p = new AtomicBoolean(false);
        this.q = new GestureDetector(context, new GestureDetectorListener());
        MraidNativeFeatureManager mraidNativeFeatureManager = new MraidNativeFeatureManager(context, list);
        this.r = mraidNativeFeatureManager;
        this.s = new MraidNativeFeatureSchemeValidator(mraidNativeFeatureManager);
        this.t = new c();
        MraidWebViewController mraidWebViewController = new MraidWebViewController(context, new PrimaryControllerCallback(), jLongValue, htmlMeasurerFactory != null ? htmlMeasurerFactory.createHtmlMeasurer(context) : null);
        this.u = mraidWebViewController;
        this.x = MraidViewState.LOADING;
        this.v = new MraidAdRedirectHandler(new Function0<MraidWebViewController>() { // from class: io.bidmachine.iab.mraid.MraidAdView.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MraidWebViewController invoke() {
                return MraidAdView.this.getCurrentMraidWebViewController();
            }
        }, new Function0<List<? extends ScriptConfig>>() { // from class: io.bidmachine.iab.mraid.MraidAdView.2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends ScriptConfig> invoke() {
                return MraidAdView.this.e;
            }
        }, new Runnable() { // from class: io.bidmachine.iab.mraid.MraidAdView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MraidAdView.a(this.f$0);
            }
        }, null, null, 24, null);
        addView(mraidWebViewController.getMraidWebView(), new FrameLayout.LayoutParams(-1, -1, 17));
        if (engagedClickParams != null) {
            t.b("MraidAdView", "EngagedClick reporting enabled", new Object[0]);
            this.z = io.bidmachine.rendering.internal.detector.engagedclick.b.o.a(engagedClickParams, mraidWebViewController);
        }
    }

    public final void a(IabError iabError) {
        if (isLoaded()) {
            if (d()) {
                this.g.onMraidAdViewShowFailed(this, iabError);
                return;
            } else {
                this.g.onMraidAdViewExpired(this, iabError);
                return;
            }
        }
        this.g.onMraidAdViewLoadFailed(this, iabError);
    }

    public final void a(String str, Function1 function1) {
        this.o.set(true);
        this.v.complete();
        if (this.s.a(str)) {
            io.bidmachine.rendering.internal.detector.engagedclick.b bVar = this.z;
            if (bVar != null) {
                bVar.a(str);
            }
            function1.invoke(str);
        }
    }

    public final void c() {
        MraidWebViewController mraidWebViewController = this.w;
        if (mraidWebViewController != null) {
            mraidWebViewController.applySupportedServices(this.r);
            mraidWebViewController.applyPlacement(this.a);
            mraidWebViewController.applyViewable(this.y);
            mraidWebViewController.applyState(this.x);
            mraidWebViewController.injectJs(this.d);
            mraidWebViewController.notifyReady();
        }
        this.g.onExpand(this);
    }

    public final void b() {
        this.g.onMraidLoadedIntention(this);
    }

    public final void a(String str, final Point point) {
        a(str, new Function1<String, Unit>() { // from class: io.bidmachine.iab.mraid.MraidAdView$handleOpenUrl$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str2) {
                invoke2(str2);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.a.g.onOpenUrlIntention(this.a, it, point);
            }
        });
    }

    public final void a(String str) {
        PrivacySheetParams json = PrivacySheetParamsParser.parseJson(str);
        if (json == null) {
            MraidLog.e("MraidAdView", new Function0<String>() { // from class: io.bidmachine.iab.mraid.MraidAdView$handleOpenPrivacySheet$1
                @Override // kotlin.jvm.functions.Function0
                public final String invoke() {
                    return "Callback - can't parse privacy sheet";
                }
            });
        } else {
            this.g.onOpenPrivacySheet(this, json);
        }
    }

    public final void a() {
        this.g.onCloseIntention(this);
    }
}
