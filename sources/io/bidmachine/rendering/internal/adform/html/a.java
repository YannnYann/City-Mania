package io.bidmachine.rendering.internal.adform.html;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.ironsource.C3522b4;
import io.bidmachine.iab.mraid.AdmDownloader;
import io.bidmachine.iab.mraid.MraidAdView;
import io.bidmachine.iab.mraid.MraidPlacementType;
import io.bidmachine.iab.utils.ClickAreaFactory;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.internal.s;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.measurer.HtmlMeasurerFactory;
import io.bidmachine.rendering.model.AdElementParams;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.HtmlResourceSource;
import io.bidmachine.rendering.model.MediaSource;
import io.bidmachine.rendering.model.Resource;
import io.bidmachine.rendering.model.ResourceSource;
import io.bidmachine.rendering.model.UrlResourceSource;
import io.bidmachine.rendering.utils.UiUtils;
import io.bidmachine.util.Error;
import io.bidmachine.util.ErrorKt;
import io.bidmachine.util.ResultCallback;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.Utils;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class a extends io.bidmachine.rendering.internal.adform.a {
    public static final d C = new d(null);
    public String A;
    public MediaSource B;
    public final HtmlMeasurerFactory x;
    public final List y;
    public MraidAdView z;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.adform.html.a$a, reason: collision with other inner class name */
    public final class C1167a implements AdmDownloader {
        public C1167a() {
        }

        @Override // io.bidmachine.iab.mraid.AdmDownloader
        public void download(String url, ResultCallback resultCallback) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
            MediaSource mediaSourceFromUrl = MediaSource.Companion.fromUrl(url);
            if (mediaSourceFromUrl != null) {
                a.this.A().getString(mediaSourceFromUrl, a.this.z(), new b(resultCallback));
                return;
            }
            a.this.b("Invalid adm url (" + url + ')');
        }
    }

    public static final class b implements Repository.ResultCallback {
        public final ResultCallback a;

        public b(ResultCallback resultCallback) {
            Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
            this.a = resultCallback;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.bidmachine.util.ResultCallback
        public void onError(Error error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.a.onError(null);
        }

        @Override // io.bidmachine.rendering.Repository.ResultCallback, io.bidmachine.util.ResultCallback
        public void onSuccess(String result) {
            Intrinsics.checkNotNullParameter(result, "result");
            this.a.onSuccess(result);
        }
    }

    public final class c implements Repository.ResultCallback {
        public c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.bidmachine.util.ResultCallback
        public void onError(Error error) {
            Intrinsics.checkNotNullParameter(error, "error");
            a.this.a(error);
        }

        @Override // io.bidmachine.rendering.Repository.ResultCallback, io.bidmachine.util.ResultCallback
        public void onSuccess(String result) {
            Intrinsics.checkNotNullParameter(result, "result");
            a.this.c(result);
        }
    }

    public static final class d {
        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public d() {
        }
    }

    public final class e implements Repository.ResultCallback {
        public e() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.bidmachine.util.ResultCallback
        public void onError(Error error) {
            Intrinsics.checkNotNullParameter(error, "error");
            a.this.a(error);
        }

        @Override // io.bidmachine.rendering.Repository.ResultCallback, io.bidmachine.util.ResultCallback
        public void onSuccess(String result) {
            Intrinsics.checkNotNullParameter(result, "result");
            a.this.e(result);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, Object assetsHolder, Repository repository, AdElementParams adElementParams, io.bidmachine.rendering.internal.adform.c adFormListener, io.bidmachine.rendering.internal.event.a eventCallback, io.bidmachine.rendering.internal.detector.brokencreative.a aVar, HtmlMeasurerFactory htmlMeasurerFactory, List list) {
        super(context, assetsHolder, repository, adElementParams, adFormListener, eventCallback, aVar);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.x = htmlMeasurerFactory;
        this.y = list;
    }

    private final void M() {
        this.z = new MraidAdView(y(), P(), O(), null, N(), null, 1000L, this.y, g().getEngagedClickParams(), new io.bidmachine.rendering.internal.adform.html.b(this, w(), q()), this.x, new C1167a());
    }

    public static final void d(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MraidAdView mraidAdView = this$0.z;
        if (mraidAdView != null) {
            mraidAdView.onClicked();
        }
    }

    public static final void e(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MraidAdView mraidAdView = this$0.z;
        if (mraidAdView != null) {
            mraidAdView.destroy();
        }
        this$0.z = null;
    }

    public static final void f(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MraidAdView mraidAdView = this$0.z;
        if (mraidAdView != null) {
            mraidAdView.onShown();
        }
    }

    public static final void g(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MraidAdView mraidAdView = this$0.z;
        if (mraidAdView != null) {
            mraidAdView.show();
            mraidAdView.onViewabilityChanged(true);
        }
    }

    public static final void h(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MraidAdView mraidAdView = this$0.z;
        if (mraidAdView != null) {
            mraidAdView.onViewabilityChanged(false);
        }
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public View B() {
        return this.z;
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void E() {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda9
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.e(this.f$0);
            }
        });
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void G() {
        super.G();
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda7
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.f(this.f$0);
            }
        });
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void I() {
        super.I();
        b(false);
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void J() {
        b(true);
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda3
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.i(this.f$0);
            }
        });
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void K() {
        String str = this.A;
        if (str != null) {
            e(str);
            return;
        }
        Repository repositoryA = A();
        MediaSource mediaSource = this.B;
        if (mediaSource == null) {
            return;
        }
        repositoryA.getString(mediaSource, z(), new e());
    }

    public final List N() {
        try {
            String customParam = g().getCustomParam(C3522b4.a.v);
            if (customParam != null && customParam.length() != 0) {
                List mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) StringsKt__StringsKt.split$default((CharSequence) customParam, new String[]{","}, false, 0, 6, (Object) null));
                int size = mutableList.size();
                for (int i = 0; i < size; i++) {
                    String str = (String) mutableList.get(i);
                    int length = str.length() - 1;
                    int i2 = 0;
                    boolean z = false;
                    while (i2 <= length) {
                        boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i2 : length), 32) <= 0;
                        if (z) {
                            if (!z2) {
                                break;
                            }
                            length--;
                        } else if (z2) {
                            i2++;
                        } else {
                            z = true;
                        }
                    }
                    mutableList.set(i, str.subSequence(i2, length + 1).toString());
                }
                return mutableList;
            }
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    public final String O() {
        if (!g().getCustomParams().containsKey("base_url")) {
            return "https://localhost";
        }
        String customParam = g().getCustomParam("base_url");
        if (Utils.isUrlValid(customParam)) {
            return customParam;
        }
        return null;
    }

    public final MraidPlacementType P() {
        String customParam = g().getCustomParam("placement_type");
        if (Intrinsics.areEqual(customParam, "fullscreen")) {
            return MraidPlacementType.INTERSTITIAL;
        }
        if (Intrinsics.areEqual(customParam, "view")) {
            return MraidPlacementType.INLINE;
        }
        return null;
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void i() {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda6
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.c(this.f$0);
            }
        });
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void p() {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda8
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.b(this.f$0);
            }
        });
    }

    public static final void b(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MraidAdView mraidAdView = this$0.z;
        if (mraidAdView != null) {
            mraidAdView.closeExpanded();
        }
    }

    public static final void c(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MraidAdView mraidAdView = this$0.z;
        if (mraidAdView != null) {
            mraidAdView.openExpand();
        }
    }

    public static final void d(a this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.M();
            if (this$0.g().isPrerender()) {
                this$0.e(str);
            } else {
                this$0.A = str;
                this$0.w().b(this$0);
            }
        } catch (Throwable th) {
            t.b(th);
            this$0.a(ErrorKt.toError(th));
        }
    }

    public static final void i(a this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.z != null) {
            super.J();
        }
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void a() {
        Resource resource = g().getResource();
        ResourceSource source = resource != null ? resource.getSource() : null;
        if (source == null) {
            a(new Error("Resource is missing"));
            return;
        }
        if (source instanceof HtmlResourceSource) {
            c(((HtmlResourceSource) source).getHtml());
            return;
        }
        if (source instanceof UrlResourceSource) {
            d((String) CollectionsKt___CollectionsKt.firstOrNull((List) ((UrlResourceSource) source).getUrls()));
            return;
        }
        a(new Error("Invalid resource type (" + source.getClass().getSimpleName() + "), it should be HtmlResourceSource or UrlResourceSource"));
    }

    public final void b(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        w().b(this, error);
    }

    @Override // io.bidmachine.rendering.internal.adform.a
    public void c(boolean z) {
        if (z) {
            UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda0
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    a.g(this.f$0);
                }
            });
        } else {
            UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda1
                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    a.h(this.f$0);
                }
            });
        }
    }

    public final void e(final String str) {
        UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                a.e(this.f$0, str);
            }
        });
    }

    public static final void e(a this$0, String adm) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adm, "$adm");
        try {
            MraidAdView mraidAdView = this$0.z;
            if (mraidAdView == null) {
                this$0.a(new Error("MraidAdView is null"));
            } else {
                mraidAdView.load(adm);
            }
        } catch (Throwable th) {
            t.b(th);
            this$0.a(ErrorKt.toError(th));
        }
    }

    public final void c(final String str) {
        if (str != null && str.length() != 0) {
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    a.d(this.f$0, str);
                }
            });
        } else {
            a(new Error("Adm is null or empty"));
        }
    }

    public final void d(String str) {
        final MediaSource mediaSourceFromUrl = MediaSource.Companion.fromUrl(str);
        if (mediaSourceFromUrl == null) {
            a(new Error("Invalid adm url (" + str + ')'));
            return;
        }
        if (g().isPrerender()) {
            A().getString(mediaSourceFromUrl, z(), new c());
        } else {
            UiUtils.onUiThread(new Runnable() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    a.a(this.f$0, mediaSourceFromUrl);
                }
            });
        }
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void a(final ViewGroup rootContainer) {
        Intrinsics.checkNotNullParameter(rootContainer, "rootContainer");
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda10
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.a(this.f$0, rootContainer);
            }
        });
    }

    public static final void a(a this$0, ViewGroup rootContainer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(rootContainer, "$rootContainer");
        MraidAdView mraidAdView = this$0.z;
        if (mraidAdView != null) {
            mraidAdView.onAddedToContainer(rootContainer);
        }
    }

    @Override // io.bidmachine.rendering.internal.adform.a, io.bidmachine.rendering.internal.InterfaceC4239b
    public void a(ClickAreaFactory clickAreaFactory) {
        Unit unit;
        Intrinsics.checkNotNullParameter(clickAreaFactory, "clickAreaFactory");
        MraidAdView mraidAdView = this.z;
        if (mraidAdView != null) {
            mraidAdView.handleRedirect(clickAreaFactory);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            super.a(clickAreaFactory);
        }
    }

    @Override // io.bidmachine.rendering.internal.G
    public void a(SystemComponent systemComponent, ClickData clickData) {
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.adform.html.a$$ExternalSyntheticLambda11
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                a.d(this.f$0);
            }
        });
        super.a(systemComponent, clickData);
    }

    public static final void a(a this$0, MediaSource mediaSource) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.M();
            this$0.B = mediaSource;
            this$0.w().b(this$0);
        } catch (Throwable th) {
            t.b(th);
            this$0.a(ErrorKt.toError(th));
        }
    }

    public final void a(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        w().a(this, error);
    }
}
