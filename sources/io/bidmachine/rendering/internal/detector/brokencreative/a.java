package io.bidmachine.rendering.internal.detector.brokencreative;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.View;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.model.BrokenCreativeAlgorithmParams;
import io.bidmachine.rendering.model.BrokenCreativeAlgorithmResult;
import io.bidmachine.rendering.model.BrokenCreativeDetectorParams;
import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.StopDetectorAfter;
import io.bidmachine.util.ImageUtilsKt;
import io.bidmachine.util.taskmanager.CancelableTask;
import io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager;
import io.bidmachine.util.taskmanager.handler.HandlerTaskManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public final int a;
    public final String b;
    public final BrokenCreativeDetectorParams c;
    public final io.bidmachine.rendering.internal.detector.brokencreative.b d;
    public final Lazy e;
    public final List f;
    public final AtomicBoolean g;
    public final AtomicBoolean h;
    public final AtomicBoolean i;
    public final Object j;
    public volatile long k;
    public b l;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.detector.brokencreative.a$a, reason: collision with other inner class name */
    public static final class C1182a extends CancelableTask {
        public final io.bidmachine.rendering.internal.detector.brokencreative.algorithm.a a;
        public final Bitmap b;
        public final Function2 c;

        public C1182a(io.bidmachine.rendering.internal.detector.brokencreative.algorithm.a algorithm, Bitmap image, Function2 callback) {
            Intrinsics.checkNotNullParameter(algorithm, "algorithm");
            Intrinsics.checkNotNullParameter(image, "image");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.a = algorithm;
            this.b = image;
            this.c = callback;
        }

        @Override // io.bidmachine.util.taskmanager.CancelableTask
        public void runTask() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Boolean boolB = this.a.b(this.b);
            if (boolB != null) {
                this.c.invoke(this, new BrokenCreativeAlgorithmResult(boolB.booleanValue(), this.a.a(), System.currentTimeMillis() - jCurrentTimeMillis));
            } else {
                this.c.invoke(this, null);
            }
        }
    }

    public static final class b extends CancelableTask {
        public final Handler a;
        public final double b;
        public final List c;
        public final Function1 d;
        public final CoroutineTaskManager e;
        public final WeakReference f;
        public final List g;
        public final List h;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.detector.brokencreative.a$b$a, reason: collision with other inner class name */
        public final class C1183a implements io.bidmachine.rendering.internal.screenshot.b {
            public C1183a() {
            }

            @Override // io.bidmachine.rendering.internal.screenshot.b
            public void a(Bitmap bitmap) {
                Intrinsics.checkNotNullParameter(bitmap, "bitmap");
                b.this.a(bitmap);
            }

            @Override // io.bidmachine.rendering.internal.screenshot.b
            public void a() {
                b.this.c();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.detector.brokencreative.a$b$b, reason: collision with other inner class name */
        public static final class C1184b extends Lambda implements Function2 {
            public C1184b() {
                super(2);
            }

            public final void a(C1182a algorithmTask, BrokenCreativeAlgorithmResult brokenCreativeAlgorithmResult) {
                Intrinsics.checkNotNullParameter(algorithmTask, "algorithmTask");
                b.this.a(algorithmTask, brokenCreativeAlgorithmResult);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                a((C1182a) obj, (BrokenCreativeAlgorithmResult) obj2);
                return Unit.INSTANCE;
            }
        }

        public b(View view, Handler screenshotCallbackHandler, double d, List algorithms, Function1 callback) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(screenshotCallbackHandler, "screenshotCallbackHandler");
            Intrinsics.checkNotNullParameter(algorithms, "algorithms");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.a = screenshotCallbackHandler;
            this.b = d;
            this.c = algorithms;
            this.d = callback;
            this.e = new CoroutineTaskManager(CoroutineScopeKt.CoroutineScope(new CoroutineName("DetectorTaskManager").plus(SupervisorKt.SupervisorJob$default(null, 1, null)).plus(Dispatchers.getDefault())));
            this.f = new WeakReference(view);
            this.g = new CopyOnWriteArrayList();
            this.h = new CopyOnWriteArrayList();
        }

        public final void b() {
            if (a()) {
                this.d.invoke(this.h);
            }
        }

        public final void c() {
            b();
        }

        @Override // io.bidmachine.util.taskmanager.CancelableTask
        public void runTask() {
            io.bidmachine.rendering.internal.screenshot.a aVar = io.bidmachine.rendering.internal.screenshot.a.a;
            View view = (View) this.f.get();
            if (view == null) {
                return;
            }
            aVar.a(view, this.a, Bitmap.Config.ARGB_8888, new C1183a());
        }

        @Override // io.bidmachine.util.taskmanager.CancelableTask, io.bidmachine.util.Cancelable
        public void setCancel(boolean z) {
            super.setCancel(z);
            if (z) {
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    this.e.cancel((C1182a) it.next());
                }
                this.g.clear();
            }
        }

        public final boolean a() {
            return !isCanceled();
        }

        public final void a(Bitmap bitmap) {
            if (!a()) {
                ImageUtilsKt.recycleSafely(bitmap);
                return;
            }
            Bitmap bitmapCreateDownscaledBitmapSafely = ImageUtilsKt.createDownscaledBitmapSafely(bitmap, this.b);
            if (!Intrinsics.areEqual(bitmapCreateDownscaledBitmapSafely, bitmap)) {
                ImageUtilsKt.recycleSafely(bitmap);
            }
            if (!a()) {
                ImageUtilsKt.recycleSafely(bitmap);
                return;
            }
            List list = this.c;
            ArrayList<C1182a> arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new C1182a((io.bidmachine.rendering.internal.detector.brokencreative.algorithm.a) it.next(), bitmapCreateDownscaledBitmapSafely, new C1184b()));
            }
            this.g.addAll(arrayList);
            for (C1182a c1182a : arrayList) {
                if (!this.e.executeSafely(c1182a)) {
                    a(c1182a);
                }
            }
        }

        public final void a(C1182a c1182a, BrokenCreativeAlgorithmResult brokenCreativeAlgorithmResult) {
            if (brokenCreativeAlgorithmResult != null) {
                this.h.add(brokenCreativeAlgorithmResult);
            }
            a(c1182a);
        }

        public final void a(C1182a c1182a) {
            this.g.remove(c1182a);
            if (this.g.isEmpty()) {
                b();
            }
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HandlerTaskManager invoke() {
            HandlerThread handlerThread = new HandlerThread("BrokenCreativeDetectorTaskManager");
            handlerThread.start();
            return new HandlerTaskManager(new Handler(handlerThread.getLooper()));
        }
    }

    public static final class d extends Lambda implements Function1 {
        public d() {
            super(1);
        }

        public final void a(List it) {
            Intrinsics.checkNotNullParameter(it, "it");
            a.this.a(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((List) obj);
            return Unit.INSTANCE;
        }
    }

    public a(int i, String adElementName, BrokenCreativeDetectorParams brokenCreativeDetectorParams, io.bidmachine.rendering.internal.detector.brokencreative.b brokenCreativeDetectorListener) {
        Intrinsics.checkNotNullParameter(adElementName, "adElementName");
        Intrinsics.checkNotNullParameter(brokenCreativeDetectorParams, "brokenCreativeDetectorParams");
        Intrinsics.checkNotNullParameter(brokenCreativeDetectorListener, "brokenCreativeDetectorListener");
        this.a = i;
        this.b = adElementName;
        this.c = brokenCreativeDetectorParams;
        this.d = brokenCreativeDetectorListener;
        this.e = LazyKt__LazyJVMKt.lazy(c.a);
        this.f = new CopyOnWriteArrayList();
        this.g = new AtomicBoolean(false);
        this.h = new AtomicBoolean(false);
        this.i = new AtomicBoolean(false);
        this.j = new Object();
    }

    public final void b() {
        synchronized (this.j) {
            b bVar = this.l;
            if (bVar != null) {
                d().cancel(bVar);
            }
        }
    }

    public final void c() {
        this.h.set(true);
        i();
    }

    public final HandlerTaskManager d() {
        return (HandlerTaskManager) this.e.getValue();
    }

    public final boolean e() {
        return this.h.get();
    }

    public final boolean f() {
        return this.g.get();
    }

    public final boolean g() {
        return this.i.get();
    }

    public final void h() {
        synchronized (this.j) {
            b();
            if (a()) {
                b bVar = this.l;
                if (bVar != null) {
                    d().scheduleSafely(bVar, this.c.getTimeout());
                }
            }
        }
    }

    public final void i() {
        synchronized (this.j) {
            this.g.set(false);
            b();
            this.l = null;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (g() || e()) {
            return;
        }
        synchronized (this.j) {
            try {
                if (this.g.compareAndSet(false, true)) {
                    List<BrokenCreativeAlgorithmParams> algorithms = this.c.getAlgorithms();
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(algorithms, 10));
                    Iterator<T> it = algorithms.iterator();
                    while (it.hasNext()) {
                        arrayList.add(io.bidmachine.rendering.internal.detector.brokencreative.algorithm.b.a.a((BrokenCreativeAlgorithmParams) it.next()));
                    }
                    if (arrayList.isEmpty()) {
                        return;
                    }
                    this.k = System.currentTimeMillis();
                    this.l = new b(view, d().getHandler(), this.c.getDownscaleFactor(), arrayList, new d());
                    h();
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean a() {
        return (!f() || g() || e()) ? false : true;
    }

    public final void a(List list) {
        if (a()) {
            Iterator it = list.iterator();
            double d2 = 0.0d;
            double d3 = 0.0d;
            while (it.hasNext()) {
                BrokenCreativeAlgorithmResult brokenCreativeAlgorithmResult = (BrokenCreativeAlgorithmResult) it.next();
                float weight = brokenCreativeAlgorithmResult.getAlgorithmParams().getWeight();
                if (brokenCreativeAlgorithmResult.isBroken()) {
                    d3 += (double) weight;
                }
                d2 += (double) weight;
            }
            boolean z = (d2 != 0.0d ? d3 / d2 : 0.0d) >= this.c.getWeightThreshold();
            if (!this.c.isErrorOnly() || z) {
                BrokenCreativeEvent brokenCreativeEvent = new BrokenCreativeEvent(io.bidmachine.rendering.internal.detector.brokencreative.c.a.a(z), this.a, this.b, System.currentTimeMillis() - this.k, list);
                if (this.c.isAllowDuplicate() || !this.f.contains(brokenCreativeEvent)) {
                    this.f.add(brokenCreativeEvent);
                    a(brokenCreativeEvent);
                }
            }
            StopDetectorAfter stopAfter = this.c.getStopAfter();
            if ((stopAfter == StopDetectorAfter.ValidCreative && z) || ((stopAfter == StopDetectorAfter.BrokenCreative && !z) || stopAfter == StopDetectorAfter.Never)) {
                h();
            } else {
                this.i.set(true);
            }
        }
    }

    public final void a(BrokenCreativeEvent brokenCreativeEvent) {
        if (a()) {
            t.b("BrokenCreativeDetector", "Notify detector result: %s", brokenCreativeEvent);
            this.d.a(brokenCreativeEvent);
        }
    }
}
