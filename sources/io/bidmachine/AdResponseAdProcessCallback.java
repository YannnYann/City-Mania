package io.bidmachine;

import io.bidmachine.core.Logger;
import io.bidmachine.core.VisibilitySource;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.lazy.LazyValue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class AdResponseAdProcessCallback implements AdProcessCallback {
    private final Map<AdProcessCallback, Boolean> adProcessCallbackMap;
    private volatile boolean isFinished;
    private final AtomicBoolean isLoadTracked;
    private final AtomicBoolean isLoaded;
    private final AtomicBoolean isLoading;
    private final AtomicBoolean isResultShownTracked;
    private final AtomicBoolean isShownTracked;
    private final AtomicBoolean isVisibilityTrackerShownTracked;
    private final Object mutexCallback;
    private final Set<TrackEventType> trackedEvents;
    public volatile VisibilitySource visibilitySource;
    private final WeakReference<AdResponse> weakAdResponse;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VisibilitySource.values().length];
            try {
                iArr[VisibilitySource.BidMachine.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VisibilitySource.Network.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[VisibilitySource.All.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final class a extends Lambda implements Function1 {
        public final /* synthetic */ SystemComponent a;
        public final /* synthetic */ ClickData b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(SystemComponent systemComponent, ClickData clickData) {
            super(1);
            this.a = systemComponent;
            this.b = clickData;
        }

        public final void a(AdProcessCallback it) {
            Intrinsics.checkNotNullParameter(it, "it");
            it.processClickVerified(this.a, this.b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdProcessCallback) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class b extends Lambda implements Function1 {
        public static final b a = new b();

        public b() {
            super(1);
        }

        public final void a(AdProcessCallback it) {
            Intrinsics.checkNotNullParameter(it, "it");
            it.processClosed();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdProcessCallback) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class c extends Lambda implements Function1 {
        public static final c a = new c();

        public c() {
            super(1);
        }

        public final void a(AdProcessCallback it) {
            Intrinsics.checkNotNullParameter(it, "it");
            it.processDestroy();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdProcessCallback) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class d extends Lambda implements Function1 {
        public static final d a = new d();

        public d() {
            super(1);
        }

        public final void a(AdProcessCallback it) {
            Intrinsics.checkNotNullParameter(it, "it");
            it.processExpired();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdProcessCallback) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class e extends Lambda implements Function1 {
        public static final e a = new e();

        public e() {
            super(1);
        }

        public final void a(AdProcessCallback it) {
            Intrinsics.checkNotNullParameter(it, "it");
            it.processFillAd();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdProcessCallback) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class f extends Lambda implements Function1 {
        public static final f a = new f();

        public f() {
            super(1);
        }

        public final void a(AdProcessCallback it) {
            Intrinsics.checkNotNullParameter(it, "it");
            it.processFinished();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdProcessCallback) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class g extends Lambda implements Function1 {
        public final /* synthetic */ BMError a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(BMError bMError) {
            super(1);
            this.a = bMError;
        }

        public final void a(AdProcessCallback it) {
            Intrinsics.checkNotNullParameter(it, "it");
            it.processLoadFail(this.a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdProcessCallback) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class h extends Lambda implements Function1 {
        public static final h a = new h();

        public h() {
            super(1);
        }

        public final void a(AdProcessCallback it) {
            Intrinsics.checkNotNullParameter(it, "it");
            it.processLoadSuccess();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdProcessCallback) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class i extends Lambda implements Function1 {
        public static final i a = new i();

        public i() {
            super(1);
        }

        public final void a(AdProcessCallback it) {
            Intrinsics.checkNotNullParameter(it, "it");
            it.processShown();
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdProcessCallback) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class j extends Lambda implements Function1 {
        public final /* synthetic */ BMError a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(BMError bMError) {
            super(1);
            this.a = bMError;
        }

        public final void a(AdProcessCallback it) {
            Intrinsics.checkNotNullParameter(it, "it");
            it.processShowFail(this.a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdProcessCallback) obj);
            return Unit.INSTANCE;
        }
    }

    public static final class k extends Lambda implements Function1 {
        public k() {
            super(1);
        }

        public final void a(AdResponse it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Set set = AdResponseAdProcessCallback.this.trackedEvents;
            TrackEventType trackEventType = TrackEventType.Show;
            if (set.add(trackEventType)) {
                it.eventFinish(trackEventType, true);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((AdResponse) obj);
            return Unit.INSTANCE;
        }
    }

    public AdResponseAdProcessCallback(AdResponse adResponse) {
        Intrinsics.checkNotNullParameter(adResponse, "adResponse");
        this.weakAdResponse = new WeakReference<>(adResponse);
        this.adProcessCallbackMap = new WeakHashMap();
        this.mutexCallback = new Object();
        this.isLoaded = new AtomicBoolean(false);
        this.isLoading = new AtomicBoolean(false);
        this.isLoadTracked = new AtomicBoolean(false);
        this.isShownTracked = new AtomicBoolean(false);
        this.isVisibilityTrackerShownTracked = new AtomicBoolean(false);
        this.isResultShownTracked = new AtomicBoolean(false);
        this.trackedEvents = new CopyOnWriteArraySet();
        this.visibilitySource = VisibilitySource.Network;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onBrokenCreativeEvent$lambda$22$lambda$21(AdResponse it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        return "onBrokenCreativeEvent - " + it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String onEngagedClick$lambda$24$lambda$23(AdResponse it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        return "onEngagedClick - " + it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processClickVerified$lambda$12$lambda$11(AdResponse it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        return "processClickVerified - " + it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processClosed$lambda$16$lambda$15(AdResponseAdProcessCallback this$0, AdResponse it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "$it");
        return "processClosed (" + this$0.isFinished + ") - " + it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processDestroy$lambda$20$lambda$19(AdResponse it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        return "processDestroy - " + it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processExpired$lambda$18$lambda$17(AdResponse it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        return "processExpired - " + it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processFillAd$lambda$5$lambda$4(AdResponse it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        return "processFillAd - " + it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processFinished$lambda$14$lambda$13(AdResponse it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        return "processFinished - " + it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processLoadFail$lambda$3$lambda$2(BMError bmError) {
        Intrinsics.checkNotNullParameter(bmError, "$bmError");
        return "processLoadFail - " + bmError;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processLoadSuccess$lambda$1$lambda$0(AdResponse it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        return "processLoadSuccess - " + it;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void processResultShown$default(AdResponseAdProcessCallback adResponseAdProcessCallback, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            function1 = null;
        }
        adResponseAdProcessCallback.processResultShown(function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processResultShown$lambda$9$lambda$8(AdResponse it) {
        Intrinsics.checkNotNullParameter(it, "$it");
        return "processShown - " + it;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processShowFail$lambda$7$lambda$6(BMError bmError) {
        Intrinsics.checkNotNullParameter(bmError, "$bmError");
        return "processShowFail - " + bmError;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processViewabilityEvent$lambda$25(int i2, AdResponse adResponse) {
        Intrinsics.checkNotNullParameter(adResponse, "$adResponse");
        return "processViewabilityEvent (Unknown action code - " + i2 + ") - " + adResponse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processViewabilityEvent$lambda$26(ActionEvent actionEvent, BMError bMError) {
        Intrinsics.checkNotNullParameter(actionEvent, "$actionEvent");
        return "processViewabilityEvent (" + actionEvent + "), error - " + bMError;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String processViewabilityEvent$lambda$27(ActionEvent actionEvent, AdResponse adResponse) {
        Intrinsics.checkNotNullParameter(actionEvent, "$actionEvent");
        Intrinsics.checkNotNullParameter(adResponse, "$adResponse");
        return "processViewabilityEvent (" + actionEvent + ") - " + adResponse;
    }

    public final void appendCallback(AdProcessCallback adProcessCallback) {
        Intrinsics.checkNotNullParameter(adProcessCallback, "adProcessCallback");
        synchronized (this.mutexCallback) {
            this.adProcessCallbackMap.put(adProcessCallback, Boolean.TRUE);
        }
    }

    public final boolean canSendShownCallback() {
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.visibilitySource.ordinal()];
        if (i2 == 1) {
            return isBidMachineShowTracked();
        }
        if (i2 == 2) {
            return isNetworkShowTracked();
        }
        if (i2 == 3) {
            return isBidMachineShowTracked() && isNetworkShowTracked();
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void destroy() {
        this.weakAdResponse.clear();
        synchronized (this.mutexCallback) {
            this.adProcessCallbackMap.clear();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void executeOnCallback(Function1<? super AdProcessCallback, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        synchronized (this.mutexCallback) {
            try {
                for (AdProcessCallback adProcessCallback : new ArrayList(this.adProcessCallbackMap.keySet())) {
                    Intrinsics.checkNotNullExpressionValue(adProcessCallback, "adProcessCallback");
                    action.invoke(adProcessCallback);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Map<AdProcessCallback, Boolean> getAdProcessCallbackMap() {
        return this.adProcessCallbackMap;
    }

    public final AdResponse getAdResponse() {
        return this.weakAdResponse.get();
    }

    public final boolean isBidMachineShowTracked() {
        return this.isVisibilityTrackerShownTracked.get();
    }

    public final boolean isLoaded() {
        return this.isLoaded.get();
    }

    public final boolean isLoading() {
        return this.isLoading.get();
    }

    public final boolean isNetworkShowTracked() {
        return this.isShownTracked.get();
    }

    public final boolean isShownTracked() {
        return this.isResultShownTracked.get();
    }

    @Override // io.bidmachine.AdProcessCallback
    public void onBrokenCreativeEvent(Map<String, ? extends Object> map) {
        final AdResponse adResponse = getAdResponse();
        if (adResponse != null) {
            Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda12
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdResponseAdProcessCallback.onBrokenCreativeEvent$lambda$22$lambda$21(adResponse);
                }
            });
            adResponse.eventFinish(TrackEventType.BrokenCreativeDetector, false, (Map<String, Object>) map);
        }
    }

    @Override // io.bidmachine.AdProcessCallback
    public void onEngagedClick(Map<String, ? extends Object> params) {
        Intrinsics.checkNotNullParameter(params, "params");
        final AdResponse adResponse = getAdResponse();
        if (adResponse != null) {
            Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda4
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdResponseAdProcessCallback.onEngagedClick$lambda$24$lambda$23(adResponse);
                }
            });
            adResponse.eventFinish(TrackEventType.EngagedClick, false, (Map<String, Object>) params);
        }
    }

    public final boolean onLoading() {
        return this.isLoading.compareAndSet(false, true);
    }

    @Override // io.bidmachine.AdProcessCallback
    public void onNetworkViewabilityEvent(ActionEvent actionEvent, BMError bMError) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        processViewabilityEvent(actionEvent, bMError);
        if (actionEvent.isBillable() && bMError == null) {
            processNetworkVisibilityEventShown();
        }
    }

    @Override // io.bidmachine.AdProcessCallback
    public void onVisibilityTrackerViewabilityEvent(ActionEvent actionEvent, BMError bMError) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        processViewabilityEvent(actionEvent, bMError);
        if (actionEvent.isBillable() && bMError == null) {
            processVisibilityTrackerShown();
        }
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processClickVerified(SystemComponent systemComponent, ClickData clickData) {
        final AdResponse adResponse = getAdResponse();
        if (adResponse != null) {
            Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda14
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdResponseAdProcessCallback.processClickVerified$lambda$12$lambda$11(adResponse);
                }
            });
            adResponse.processClickVerified(systemComponent, clickData);
        }
        executeOnCallback(new a(systemComponent, clickData));
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processClicked(SystemComponent systemComponent, ClickData clickData) {
        AdResponse adResponse = getAdResponse();
        if (adResponse == null) {
            processClickVerified(systemComponent, clickData);
        } else if (adResponse.processClicked()) {
            processClickVerified(systemComponent, clickData);
        }
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processClosed() {
        final AdResponse adResponse = getAdResponse();
        if (adResponse != null) {
            Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda2
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdResponseAdProcessCallback.processClosed$lambda$16$lambda$15(this.f$0, adResponse);
                }
            });
            adResponse.processClosed(this.isFinished);
        }
        executeOnCallback(b.a);
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processDestroy() {
        executeOnCallback(c.a);
        final AdResponse adResponse = getAdResponse();
        if (adResponse != null) {
            Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda5
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdResponseAdProcessCallback.processDestroy$lambda$20$lambda$19(adResponse);
                }
            });
            adResponse.destroy();
        }
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processExpired() {
        final AdResponse adResponse = getAdResponse();
        if (adResponse != null) {
            Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdResponseAdProcessCallback.processExpired$lambda$18$lambda$17(adResponse);
                }
            });
            adResponse.processExpired();
        } else {
            adResponse = null;
        }
        executeOnCallback(d.a);
        if (adResponse != null) {
            adResponse.notifyExpired(false);
        }
        processDestroy();
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processFillAd() {
        final AdResponse adResponse = getAdResponse();
        if (adResponse != null) {
            Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda1
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdResponseAdProcessCallback.processFillAd$lambda$5$lambda$4(adResponse);
                }
            });
            adResponse.processFillAd();
        }
        executeOnCallback(e.a);
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processFinished() {
        final AdResponse adResponse = getAdResponse();
        if (adResponse != null) {
            Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda3
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdResponseAdProcessCallback.processFinished$lambda$14$lambda$13(adResponse);
                }
            });
            adResponse.processFinished();
            this.isFinished = true;
        }
        executeOnCallback(f.a);
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processLoadFail(final BMError bmError) {
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        if (this.isLoadTracked.compareAndSet(false, true)) {
            this.isLoaded.set(false);
            this.isLoading.set(false);
            AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda8
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdResponseAdProcessCallback.processLoadFail$lambda$3$lambda$2(bmError);
                    }
                });
                adResponse.processLoadFail(bmError);
            }
            executeOnCallback(new g(bmError));
            processDestroy();
        }
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processLoadSuccess() {
        if (this.isLoadTracked.compareAndSet(false, true)) {
            this.isLoaded.set(true);
            this.isLoading.set(false);
            final AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda7
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdResponseAdProcessCallback.processLoadSuccess$lambda$1$lambda$0(adResponse);
                    }
                });
                adResponse.processLoadSuccess();
            }
            UserAgentManager.updateWebViewUserAgent();
            executeOnCallback(h.a);
        }
    }

    public final void processNetworkVisibilityEventShown() {
        if (this.isShownTracked.compareAndSet(false, true) && canSendShownCallback()) {
            processResultShown$default(this, null, 1, null);
        }
    }

    public final void processResultShown(Function1<? super AdResponse, Unit> function1) {
        if (this.isResultShownTracked.compareAndSet(false, true)) {
            final AdResponse adResponse = getAdResponse();
            if (adResponse != null) {
                Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda6
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdResponseAdProcessCallback.processResultShown$lambda$9$lambda$8(adResponse);
                    }
                });
                adResponse.processShown();
                if (function1 != null) {
                    function1.invoke(adResponse);
                }
            }
            executeOnCallback(i.a);
        }
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processShowFail(final BMError bmError) {
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        AdResponse adResponse = getAdResponse();
        if (adResponse != null) {
            Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda13
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdResponseAdProcessCallback.processShowFail$lambda$7$lambda$6(bmError);
                }
            });
            adResponse.processShowFail(bmError);
        }
        executeOnCallback(new j(bmError));
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processShown() {
        if (this.isShownTracked.compareAndSet(false, true) && canSendShownCallback()) {
            processResultShown(new k());
        }
    }

    public final void processViewabilityEvent(final ActionEvent actionEvent, final BMError bMError) {
        Intrinsics.checkNotNullParameter(actionEvent, "actionEvent");
        final AdResponse adResponse = getAdResponse();
        if (adResponse == null) {
            return;
        }
        final int actionCode = actionEvent.getActionCode();
        TrackEventType trackEventTypeFromNumber = TrackEventType.fromNumber(actionCode);
        if (trackEventTypeFromNumber == null) {
            Logger.e(adResponse.tag, new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda9
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return AdResponseAdProcessCallback.processViewabilityEvent$lambda$25(actionCode, adResponse);
                }
            });
        } else if (this.trackedEvents.add(trackEventTypeFromNumber)) {
            if (bMError != null) {
                Logger.e(adResponse.tag, new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda10
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdResponseAdProcessCallback.processViewabilityEvent$lambda$26(actionEvent, bMError);
                    }
                });
            } else {
                Logger.d(adResponse.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponseAdProcessCallback$$ExternalSyntheticLambda11
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return AdResponseAdProcessCallback.processViewabilityEvent$lambda$27(actionEvent, adResponse);
                    }
                });
            }
            adResponse.eventFinish(trackEventTypeFromNumber, actionEvent.isBillable(), bMError);
        }
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processVisibilityTrackerShown() {
        if (this.isVisibilityTrackerShownTracked.compareAndSet(false, true) && canSendShownCallback()) {
            processResultShown$default(this, null, 1, null);
        }
    }

    public final void removeCallback(AdProcessCallback adProcessCallback) {
        Intrinsics.checkNotNullParameter(adProcessCallback, "adProcessCallback");
        synchronized (this.mutexCallback) {
            this.adProcessCallbackMap.remove(adProcessCallback);
        }
    }

    @Override // io.bidmachine.AdProcessCallback
    public void setVisibilitySource(VisibilitySource visibilitySource) {
        Intrinsics.checkNotNullParameter(visibilitySource, "visibilitySource");
        this.visibilitySource = visibilitySource;
    }
}
