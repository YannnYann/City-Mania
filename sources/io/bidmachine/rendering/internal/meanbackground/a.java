package io.bidmachine.rendering.internal.meanbackground;

import android.graphics.Bitmap;
import android.graphics.Rect;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public final C1193a a;
    public final io.bidmachine.rendering.internal.meanbackground.c b;
    public final m c;
    public final CoroutineContext d;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.meanbackground.a$a, reason: collision with other inner class name */
    public static final class C1193a {
        public final int a;
        public final io.bidmachine.rendering.internal.meanbackground.d b;

        public C1193a(int i, io.bidmachine.rendering.internal.meanbackground.d samplingStrategy) {
            Intrinsics.checkNotNullParameter(samplingStrategy, "samplingStrategy");
            this.a = i;
            this.b = samplingStrategy;
        }

        public final int a(Rect rect) {
            Intrinsics.checkNotNullParameter(rect, "rect");
            return this.b.a(rect.width(), rect.height(), this.a);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C1193a)) {
                return false;
            }
            C1193a c1193a = (C1193a) obj;
            return this.a == c1193a.a && Intrinsics.areEqual(this.b, c1193a.b);
        }

        public int hashCode() {
            return (Integer.hashCode(this.a) * 31) + this.b.hashCode();
        }

        public String toString() {
            return "Config(minContentDimensionPx=" + this.a + ", samplingStrategy=" + this.b + ')';
        }
    }

    public enum b {
        Horizontal,
        Vertical
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'b' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c {
        public static final c b;
        public static final c c;
        public static final c d;
        public static final c e;
        public static final /* synthetic */ c[] f;
        public final b a;

        static {
            b bVar = b.Horizontal;
            b = new c("Left", 0, bVar);
            b bVar2 = b.Vertical;
            c = new c("Top", 1, bVar2);
            d = new c("Right", 2, bVar);
            e = new c("Bottom", 3, bVar2);
            f = a();
        }

        public c(String str, int i, b bVar) {
            this.a = bVar;
        }

        public static final /* synthetic */ c[] a() {
            return new c[]{b, c, d, e};
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) f.clone();
        }

        public final b b() {
            return this.a;
        }
    }

    public /* synthetic */ class d {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[c.values().length];
            try {
                iArr[c.c.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[c.e.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[c.b.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[c.d.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final class e extends SuspendLambda implements Function2 {
        public Object a;
        public boolean b;
        public int c;
        public /* synthetic */ Object d;
        public final /* synthetic */ Bitmap f;
        public final /* synthetic */ Rect g;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.meanbackground.a$e$a, reason: collision with other inner class name */
        public static final class C1194a extends SuspendLambda implements Function2 {
            public int a;
            public final /* synthetic */ a b;
            public final /* synthetic */ c c;
            public final /* synthetic */ Rect d;
            public final /* synthetic */ int[] e;
            public final /* synthetic */ boolean f;
            public final /* synthetic */ List g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1194a(a aVar, c cVar, Rect rect, int[] iArr, boolean z, List list, Continuation continuation) {
                super(2, continuation);
                this.b = aVar;
                this.c = cVar;
                this.d = rect;
                this.e = iArr;
                this.f = z;
                this.g = list;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((C1194a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C1194a(this.b, this.c, this.d, this.e, this.f, this.g, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return this.b.a(this.c, this.d, this.e, this.f, new IntRange(((Number) this.g.get(0)).intValue(), ((Number) this.g.get(1)).intValue()));
            }
        }

        public static final class b extends SuspendLambda implements Function2 {
            public int a;
            public final /* synthetic */ a b;
            public final /* synthetic */ c c;
            public final /* synthetic */ Rect d;
            public final /* synthetic */ int[] e;
            public final /* synthetic */ boolean f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(a aVar, c cVar, Rect rect, int[] iArr, boolean z, Continuation continuation) {
                super(2, continuation);
                this.b = aVar;
                this.c = cVar;
                this.d = rect;
                this.e = iArr;
                this.f = z;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new b(this.b, this.c, this.d, this.e, this.f, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return a.a(this.b, this.c, this.d, this.e, this.f, null, 16, null);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Bitmap bitmap, Rect rect, Continuation continuation) {
            super(2, continuation);
            this.f = bitmap;
            this.g = rect;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            e eVar = a.this.new e(this.f, this.g, continuation);
            eVar.d = obj;
            return eVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x010c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x010d  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r21) {
            /*
                Method dump skipped, instruction units count: 343
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.meanbackground.a.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public a(CoroutineContext coroutineContext, C1193a config, io.bidmachine.rendering.internal.meanbackground.c detector, m pixelsExtractor) {
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(detector, "detector");
        Intrinsics.checkNotNullParameter(pixelsExtractor, "pixelsExtractor");
        this.a = config;
        this.b = detector;
        this.c = pixelsExtractor;
        this.d = coroutineContext.plus(io.bidmachine.rendering.internal.j.i.a().b());
    }

    public static /* synthetic */ Object a(a aVar, Bitmap bitmap, Rect rect, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        }
        return aVar.a(bitmap, rect, continuation);
    }

    public final Object a(Bitmap bitmap, Rect rect, Continuation continuation) {
        return BuildersKt.withContext(this.d, new e(bitmap, rect, null), continuation);
    }

    public static /* synthetic */ Integer a(a aVar, c cVar, Rect rect, int[] iArr, boolean z, IntProgression intProgression, int i, Object obj) {
        if ((i & 16) != 0) {
            intProgression = null;
        }
        return aVar.a(cVar, rect, iArr, z, intProgression);
    }

    public final Integer a(c cVar, Rect rect, int[] iArr, boolean z, IntProgression intProgression) {
        Integer numValueOf;
        Integer numValueOf2;
        Pair pairA = a(cVar, rect, intProgression);
        IntProgression intProgression2 = (IntProgression) pairA.component1();
        IntProgression intProgression3 = (IntProgression) pairA.component2();
        int iWidth = rect.width();
        int first = intProgression2.getFirst();
        int last = intProgression2.getLast();
        int step = intProgression2.getStep();
        if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
            return null;
        }
        while (true) {
            int first2 = intProgression3.getFirst();
            int last2 = intProgression3.getLast();
            int step2 = intProgression3.getStep();
            if ((step2 > 0 && first2 <= last2) || (step2 < 0 && last2 <= first2)) {
                while (true) {
                    if (cVar.b() == b.Horizontal) {
                        numValueOf = Integer.valueOf(first);
                        numValueOf2 = Integer.valueOf(first2);
                    } else {
                        numValueOf = Integer.valueOf(first2);
                        numValueOf2 = Integer.valueOf(first);
                    }
                    Pair pair = TuplesKt.to(numValueOf, numValueOf2);
                    int iIntValue = ((Number) pair.component1()).intValue();
                    if (!this.b.a(iArr[((((Number) pair.component2()).intValue() - rect.top) * iWidth) + (iIntValue - rect.left)], z)) {
                        if (first2 == last2) {
                            break;
                        }
                        first2 += step2;
                    } else {
                        return Integer.valueOf(first);
                    }
                }
            }
            if (first == last) {
                return null;
            }
            first += step;
        }
    }

    public final Pair a(c cVar, Rect rect, IntProgression intProgression) {
        int i = d.$EnumSwitchMapping$0[cVar.ordinal()];
        if (i == 1) {
            return new Pair(RangesKt___RangesKt.until(rect.top, rect.bottom), RangesKt___RangesKt.until(rect.left, rect.right));
        }
        if (i == 2) {
            return new Pair(RangesKt___RangesKt.downTo(rect.bottom - 1, rect.top), RangesKt___RangesKt.until(rect.left, rect.right));
        }
        if (i == 3) {
            IntRange intRangeUntil = RangesKt___RangesKt.until(rect.left, rect.right);
            if (intProgression == null) {
                intProgression = RangesKt___RangesKt.until(rect.top, rect.bottom);
            }
            return new Pair(intRangeUntil, intProgression);
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        IntProgression intProgressionDownTo = RangesKt___RangesKt.downTo(rect.right - 1, rect.left);
        if (intProgression == null) {
            intProgression = RangesKt___RangesKt.until(rect.top, rect.bottom);
        }
        return new Pair(intProgressionDownTo, intProgression);
    }
}
