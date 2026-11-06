package io.bidmachine.rendering.internal.event;

import com.ironsource.C3522b4;
import io.bidmachine.iab.utils.ClickAreaFactory;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.ElementLayoutParams;
import io.bidmachine.rendering.model.EventTaskParams;
import io.bidmachine.rendering.model.EventTaskType;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.rendering.utils.PrivacySheetParamsParser;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.UtilsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements io.bidmachine.rendering.internal.event.c {
    public static final C4249a c = new C4249a(null);
    public final io.bidmachine.rendering.internal.event.e a;
    public final String b;

    public static final class A extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public A(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.event.d$a, reason: case insensitive filesystem */
    public static final class C4249a {
        public /* synthetic */ C4249a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C4249a() {
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EventTaskType.values().length];
            try {
                iArr[EventTaskType.Track.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EventTaskType.Open.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EventTaskType.NotifyOpen.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EventTaskType.Skip.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[EventTaskType.Close.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[EventTaskType.Mute.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[EventTaskType.UnMute.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[EventTaskType.Repeat.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[EventTaskType.Show.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[EventTaskType.Hide.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[EventTaskType.Progress.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[EventTaskType.Schedule.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[EventTaskType.Start.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[EventTaskType.LockVisibility.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[EventTaskType.UnlockVisibility.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[EventTaskType.SimulateClick.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[EventTaskType.OpenPrivacySheet.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[EventTaskType.ToggleStateGroups.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[EventTaskType.Expand.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[EventTaskType.Collapse.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[EventTaskType.ReportClick.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[EventTaskType.Play.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[EventTaskType.Pause.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[EventTaskType.ChangeLayout.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[EventTaskType.ChangeActivity.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[EventTaskType.RequestPermission.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.event.d$d, reason: collision with other inner class name */
    public static final class C1191d extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1191d(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "Can't parse change layout value to ElementLayoutParams - " + this.a;
        }
    }

    public static final class e extends Lambda implements Function0 {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, String str2) {
            super(0);
            this.a = str;
            this.b = str2;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a + ", " + this.b;
        }
    }

    public static final class f extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a;
        }
    }

    public static final class g extends Lambda implements Function0 {
        public final /* synthetic */ String a;
        public final /* synthetic */ Ref$ObjectRef b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, Ref$ObjectRef ref$ObjectRef) {
            super(0);
            this.a = str;
            this.b = ref$ObjectRef;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a + ", lockVisibility - " + this.b.element;
        }
    }

    public static final class h extends Lambda implements Function0 {
        public final /* synthetic */ Ref$ObjectRef a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Ref$ObjectRef ref$ObjectRef) {
            super(0);
            this.a = ref$ObjectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return (String) this.a.element;
        }
    }

    public static final class i extends Lambda implements Function0 {
        public final /* synthetic */ String a;
        public final /* synthetic */ EventType b;
        public final /* synthetic */ EventTaskType c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, EventType eventType, EventTaskType eventTaskType) {
            super(0);
            this.a = str;
            this.b = eventType;
            this.c = eventTaskType;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "Could not find required params (" + this.a + ") for execute task (" + this.b + ", " + this.c + ')';
        }
    }

    public static final class j extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a;
        }
    }

    public static final class k extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return this.a;
        }
    }

    public static final class l extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return this.a;
        }
    }

    public static final class m extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return this.a;
        }
    }

    public static final class n extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a;
        }
    }

    public static final class o extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a;
        }
    }

    public static final class p extends Lambda implements Function0 {
        public static final p a = new p();

        public p() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "RequestPermission task must not be executed with other tasks! Check integration!";
        }
    }

    public static final class q extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a;
        }
    }

    public static final class r extends Lambda implements Function0 {
        public final /* synthetic */ SystemComponent a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(SystemComponent systemComponent) {
            super(0);
            this.a = systemComponent;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "component name - " + this.a;
        }
    }

    public static final class s extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return this.a;
        }
    }

    public static final class t extends Lambda implements Function0 {
        public final /* synthetic */ String a;
        public final /* synthetic */ long b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t(String str, long j) {
            super(0);
            this.a = str;
            this.b = j;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a + ", timeMs - " + this.b;
        }
    }

    public static final class u extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a;
        }
    }

    public static final class v extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public v(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a;
        }
    }

    public static final class w extends Lambda implements Function0 {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public w(String str, String str2) {
            super(0);
            this.a = str;
            this.b = str2;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a + ", value - " + this.b;
        }
    }

    public static final class x extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public x(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return this.a;
        }
    }

    public static final class y extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public y(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return this.a;
        }
    }

    public static final class z extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public z(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "target - " + this.a;
        }
    }

    public d(io.bidmachine.rendering.internal.event.e eventTaskExecutor, String sourceName) {
        Intrinsics.checkNotNullParameter(eventTaskExecutor, "eventTaskExecutor");
        Intrinsics.checkNotNullParameter(sourceName, "sourceName");
        this.a = eventTaskExecutor;
        this.b = sourceName;
    }

    @Override // io.bidmachine.rendering.internal.event.c
    public void a(EventType eventType, EventTaskParams eventTaskParams, List list, Function0 callback) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(eventTaskParams, "eventTaskParams");
        Intrinsics.checkNotNullParameter(callback, "callback");
        a(eventType, eventTaskParams.getEventTaskType(), eventTaskParams.getTarget(), eventTaskParams.getValue(), list, eventTaskParams.getAnimationParams(), callback);
    }

    public final void b(EventTaskType eventTaskType, EventType eventType, Object obj, List list, Function0 function0) {
        String strA = a(obj, list);
        if (strA == null || StringsKt__StringsKt.isBlank(strA)) {
            a(eventTaskType, eventType, "open url");
            function0.invoke();
        } else {
            a(eventTaskType, eventType, new l(strA));
            this.a.b(this.b, strA, a(list), function0);
        }
    }

    public final void c(EventTaskType eventTaskType, EventType eventType, Object obj, Function0 function0) {
        String string = obj != null ? obj.toString() : null;
        if (string == null || StringsKt__StringsKt.isBlank(string)) {
            a(eventTaskType, eventType, "track url");
            function0.invoke();
        } else {
            a(eventTaskType, eventType, new y(string));
            this.a.b(string, function0);
        }
    }

    public final void d(EventTaskType eventTaskType, EventType eventType, AnimationParams animationParams, Function0 function0) {
        a(this, eventTaskType, eventType, (Function0) null, 2, (Object) null);
        this.a.c(animationParams, function0);
    }

    public final void d(EventTaskType eventTaskType, EventType eventType, String str, Object obj, Function0 function0) {
        String string = obj != null ? obj.toString() : null;
        if (string != null && !StringsKt__StringsKt.isBlank(string)) {
            a(eventTaskType, eventType, new w(str, string));
            this.a.a(str, string, function0);
        } else {
            a(eventTaskType, eventType, C3522b4.i.X);
            function0.invoke();
        }
    }

    @Override // io.bidmachine.rendering.internal.event.c
    public void a(String requestPermissionUrl, EventType eventType, String str, List eventTaskBucketParamsList, Function1 callback) {
        Function1 function1;
        Throwable th;
        Intrinsics.checkNotNullParameter(requestPermissionUrl, "requestPermissionUrl");
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Intrinsics.checkNotNullParameter(eventTaskBucketParamsList, "eventTaskBucketParamsList");
        Intrinsics.checkNotNullParameter(callback, "callback");
        try {
            EventTaskType eventTaskType = EventTaskType.RequestPermission;
            if (StringsKt__StringsKt.isBlank(requestPermissionUrl)) {
                try {
                    a(eventTaskType, eventType, "request permission url");
                    callback.invoke(null);
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    function1 = callback;
                }
            } else {
                a(eventTaskType, eventType, new s(requestPermissionUrl));
                function1 = callback;
                try {
                    this.a.a(this.b, eventType, str, eventTaskBucketParamsList, requestPermissionUrl, function1);
                    return;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            function1 = callback;
        }
        th = th;
        io.bidmachine.rendering.internal.t.b(th);
        try {
            function1.invoke(null);
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public final void c(EventTaskType eventTaskType, EventType eventType, String str, List list, Function0 function0) {
        Object objFirstOrNull;
        a(eventTaskType, eventType, new A(str));
        io.bidmachine.rendering.internal.event.e eVar = this.a;
        Integer intOrDefault$default = null;
        if (list != null && (objFirstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list)) != null) {
            intOrDefault$default = UtilsKt.toIntOrDefault$default(objFirstOrNull, null, 1, null);
        }
        eVar.b(str, intOrDefault$default, function0);
    }

    public final void d(EventTaskType eventTaskType, EventType eventType, String str, Function0 function0) {
        a(eventTaskType, eventType, new z(str));
        this.a.c(str, function0);
    }

    public final void b(EventTaskType eventTaskType, EventType eventType, String str, AnimationParams animationParams, Function0 function0) {
        a(eventTaskType, eventType, new u(str));
        this.a.b(str, animationParams, function0);
    }

    public final void c(EventTaskType eventTaskType, EventType eventType, String str, Function0 function0) {
        a(eventTaskType, eventType, new q(str));
        this.a.f(str, function0);
    }

    public final void b(EventTaskType eventTaskType, EventType eventType, String str, List list, Function0 function0) {
        if (list != null && list.size() >= 2) {
            Long longOrDefault$default = UtilsKt.toLongOrDefault$default(list.get(0), null, 1, null);
            long jLongValue = longOrDefault$default != null ? longOrDefault$default.longValue() : Long.MIN_VALUE;
            Long longOrDefault$default2 = UtilsKt.toLongOrDefault$default(list.get(1), null, 1, null);
            long jLongValue2 = longOrDefault$default2 != null ? longOrDefault$default2.longValue() : Long.MIN_VALUE;
            if (jLongValue >= 1 && jLongValue2 >= 0) {
                this.a.a(str, jLongValue, jLongValue2, (jLongValue2 * 100.0f) / jLongValue, function0);
                return;
            } else {
                a(eventTaskType, eventType, "maxProgressMs, currentProgressMs");
                function0.invoke();
                return;
            }
        }
        a(eventTaskType, eventType, "progress parameters");
        function0.invoke();
    }

    public final void c(EventTaskType eventTaskType, EventType eventType, String str, Object obj, Function0 function0) {
        a(eventTaskType, eventType, new v(str));
        this.a.a(str, new ClickAreaFactory(obj != null ? obj.toString() : null), function0);
    }

    public final void a(EventType eventType, EventTaskType eventTaskType, String str, Object obj, List list, AnimationParams animationParams, Function0 function0) {
        Throwable th;
        try {
            try {
                try {
                    switch (b.$EnumSwitchMapping$0[eventTaskType.ordinal()]) {
                        case 1:
                            c(eventTaskType, eventType, obj, function0);
                            break;
                        case 2:
                            b(eventTaskType, eventType, obj, list, function0);
                            break;
                        case 3:
                            a(eventTaskType, eventType, obj, list, function0);
                            break;
                        case 4:
                            d(eventTaskType, eventType, animationParams, function0);
                            break;
                        case 5:
                            a(eventTaskType, eventType, animationParams, function0);
                            break;
                        case 6:
                            a(eventTaskType, eventType, str, list, function0);
                            break;
                        case 7:
                            c(eventTaskType, eventType, str, list, function0);
                            break;
                        case 8:
                            c(eventTaskType, eventType, str, function0);
                            break;
                        case 9:
                            b(eventTaskType, eventType, str, animationParams, function0);
                            break;
                        case 10:
                            a(eventTaskType, eventType, str, animationParams, function0);
                            break;
                        case 11:
                            b(eventTaskType, eventType, str, list, function0);
                            break;
                        case 12:
                            b(eventTaskType, eventType, str, obj, function0);
                            break;
                        case 13:
                            d(eventTaskType, eventType, str, obj, function0);
                            break;
                        case 14:
                            try {
                                a(eventTaskType, eventType, str, obj, list, function0);
                                break;
                            } catch (Throwable th2) {
                                th = th2;
                                function0 = function0;
                                th = th;
                                io.bidmachine.rendering.internal.t.b(th);
                                try {
                                    function0.invoke();
                                    Unit unit = Unit.INSTANCE;
                                } catch (Throwable unused) {
                                    return;
                                }
                            }
                            break;
                        case 15:
                            d(eventTaskType, eventType, str, function0);
                            break;
                        case 16:
                            c(eventTaskType, eventType, str, obj, function0);
                            break;
                        case 17:
                            a(eventTaskType, eventType, obj, function0);
                            break;
                        case 18:
                            b(eventTaskType, eventType, obj, function0);
                            break;
                        case 19:
                            c(eventTaskType, eventType, animationParams, function0);
                            break;
                        case 20:
                            b(eventTaskType, eventType, animationParams, function0);
                            break;
                        case 21:
                            a(eventTaskType, eventType, list, function0);
                            break;
                        case 22:
                            b(eventTaskType, eventType, str, function0);
                            break;
                        case 23:
                            a(eventTaskType, eventType, str, function0);
                            break;
                        case 24:
                            try {
                                a(eventTaskType, eventType, str, obj, animationParams, function0);
                            } catch (Throwable th3) {
                                th = th3;
                                function0 = function0;
                                th = th;
                                io.bidmachine.rendering.internal.t.b(th);
                                function0.invoke();
                                Unit unit2 = Unit.INSTANCE;
                            }
                            break;
                        case 25:
                            a(eventTaskType, eventType, str, obj, function0);
                            break;
                        case 26:
                            a(p.a);
                            function0.invoke();
                            break;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    public final void c(EventTaskType eventTaskType, EventType eventType, AnimationParams animationParams, Function0 function0) {
        a(this, eventTaskType, eventType, (Function0) null, 2, (Object) null);
        this.a.a(animationParams, function0);
    }

    public final void b(EventTaskType eventTaskType, EventType eventType, String str, Object obj, Function0 function0) {
        Long longOrDefault$default;
        long jLongValue = (obj == null || (longOrDefault$default = UtilsKt.toLongOrDefault$default(obj, null, 1, null)) == null) ? Long.MIN_VALUE : longOrDefault$default.longValue();
        if (jLongValue < 0) {
            a(eventTaskType, eventType, "schedule time");
            function0.invoke();
        } else {
            a(eventTaskType, eventType, new t(str, jLongValue));
            this.a.a(str, jLongValue, function0);
        }
    }

    public final void b(EventTaskType eventTaskType, EventType eventType, Object obj, Function0 function0) {
        String string = obj != null ? obj.toString() : null;
        if (string != null && !StringsKt__StringsKt.isBlank(string)) {
            a(eventTaskType, eventType, new x(string));
            this.a.d(string, function0);
        } else {
            a(eventTaskType, eventType, "state groups value");
            function0.invoke();
        }
    }

    public final void b(EventTaskType eventTaskType, EventType eventType, AnimationParams animationParams, Function0 function0) {
        a(this, eventTaskType, eventType, (Function0) null, 2, (Object) null);
        this.a.b(animationParams, function0);
    }

    public final void b(EventTaskType eventTaskType, EventType eventType, String str, Function0 function0) {
        a(eventTaskType, eventType, new o(str));
        this.a.a(str, function0);
    }

    public final void b(Function0 function0) {
        if (io.bidmachine.rendering.internal.t.a()) {
            io.bidmachine.rendering.internal.t.b("Event", (String) function0.invoke(), new Object[0]);
        }
    }

    public final void a(EventTaskType eventTaskType, EventType eventType, Object obj, List list, Function0 function0) {
        String strA = a(obj, list);
        if (strA != null && !StringsKt__StringsKt.isBlank(strA)) {
            a(eventTaskType, eventType, new k(strA));
            this.a.a(this.b, strA, a(list), function0);
        } else {
            a(eventTaskType, eventType, "notify open url");
            function0.invoke();
        }
    }

    public final void a(EventTaskType eventTaskType, EventType eventType, AnimationParams animationParams, Function0 function0) {
        a(this, eventTaskType, eventType, (Function0) null, 2, (Object) null);
        this.a.d(animationParams, function0);
    }

    public final void a(EventTaskType eventTaskType, EventType eventType, String str, List list, Function0 function0) {
        Object objFirstOrNull;
        a(eventTaskType, eventType, new j(str));
        io.bidmachine.rendering.internal.event.e eVar = this.a;
        Integer intOrDefault$default = null;
        if (list != null && (objFirstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) list)) != null) {
            intOrDefault$default = UtilsKt.toIntOrDefault$default(objFirstOrNull, null, 1, null);
        }
        eVar.a(str, intOrDefault$default, function0);
    }

    public final void a(EventTaskType eventTaskType, EventType eventType, String str, AnimationParams animationParams, Function0 function0) {
        a(eventTaskType, eventType, new f(str));
        this.a.a(str, animationParams, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [T, java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r7v7, types: [T, java.lang.Boolean] */
    public final void a(EventTaskType eventTaskType, EventType eventType, String str, Object obj, List list, Function0 function0) {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ?? booleanOrDefault$default = UtilsKt.toBooleanOrDefault$default(obj, null, 1, null);
        ref$ObjectRef.element = booleanOrDefault$default;
        if (booleanOrDefault$default == 0 && list != null && !list.isEmpty()) {
            ref$ObjectRef.element = UtilsKt.toBooleanOrDefault$default(list.get(0), null, 1, null);
        }
        if (ref$ObjectRef.element == 0) {
            a(eventTaskType, eventType, "visibility value");
            function0.invoke();
        } else {
            a(eventTaskType, eventType, new g(str, ref$ObjectRef));
            this.a.b(str, ((Boolean) ref$ObjectRef.element).booleanValue(), function0);
        }
    }

    public final void a(EventTaskType eventTaskType, EventType eventType, Object obj, Function0 function0) {
        String string = obj != null ? obj.toString() : null;
        if (string != null && !StringsKt__StringsKt.isBlank(string)) {
            PrivacySheetParams json = PrivacySheetParamsParser.parseJson(string);
            if (json == null) {
                a(eventTaskType, eventType, C3522b4.i.X);
                function0.invoke();
                return;
            } else {
                a(eventTaskType, eventType, new m(string));
                this.a.a(json, function0);
                return;
            }
        }
        a(eventTaskType, eventType, C3522b4.i.X);
        function0.invoke();
    }

    public final void a(EventTaskType eventTaskType, EventType eventType, List list, Function0 function0) {
        Object objFirstOrNull = list != null ? CollectionsKt___CollectionsKt.firstOrNull(list) : null;
        SystemComponent systemComponent = objFirstOrNull instanceof SystemComponent ? (SystemComponent) objFirstOrNull : null;
        a(eventTaskType, eventType, new r(systemComponent));
        this.a.a(systemComponent, a(list), function0);
    }

    public final void a(EventTaskType eventTaskType, EventType eventType, String str, Function0 function0) {
        a(eventTaskType, eventType, new n(str));
        this.a.e(str, function0);
    }

    public final void a(EventTaskType eventTaskType, EventType eventType, String str, Object obj, AnimationParams animationParams, Function0 function0) {
        ElementLayoutParams elementLayoutParamsA = null;
        String stringOrDefault$default = UtilsKt.toStringOrDefault$default(obj, null, 1, null);
        if (stringOrDefault$default != null && !StringsKt__StringsKt.isBlank(stringOrDefault$default) && (elementLayoutParamsA = io.bidmachine.rendering.internal.l.a.a(stringOrDefault$default)) == null) {
            a(new C1191d(stringOrDefault$default));
            function0.invoke();
        } else {
            a(eventTaskType, eventType, new e(str, stringOrDefault$default));
            this.a.a(str, elementLayoutParamsA, animationParams, function0);
        }
    }

    public final void a(EventTaskType eventTaskType, EventType eventType, String str, Object obj, Function0 function0) {
        Boolean booleanOrDefault$default = UtilsKt.toBooleanOrDefault$default(obj, null, 1, null);
        if (booleanOrDefault$default == null) {
            a(eventTaskType, eventType, "activity value");
            function0.invoke();
        } else {
            a(eventTaskType, eventType, new c(str));
            this.a.a(str, booleanOrDefault$default.booleanValue(), function0);
        }
    }

    public static /* synthetic */ void a(d dVar, EventTaskType eventTaskType, EventType eventType, Function0 function0, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            function0 = null;
        }
        dVar.a(eventTaskType, eventType, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v5, types: [T, java.lang.String] */
    public final void a(EventTaskType eventTaskType, EventType eventType, Function0 function0) {
        if (io.bidmachine.rendering.internal.t.a()) {
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = "Event - " + eventType.getKey() + " (source - " + this.b + "), Task - " + eventTaskType.getKey();
            if (function0 != null) {
                ref$ObjectRef.element = ((String) ref$ObjectRef.element) + " (" + ((String) function0.invoke()) + ')';
            }
            b(new h(ref$ObjectRef));
        }
    }

    public final void a(EventTaskType eventTaskType, EventType eventType, String str) {
        if (io.bidmachine.rendering.internal.t.a()) {
            a(new i(str, eventType, eventTaskType));
        }
    }

    public final void a(Function0 function0) {
        if (io.bidmachine.rendering.internal.t.a()) {
            io.bidmachine.rendering.internal.t.a("Event", (String) function0.invoke(), new Object[0]);
        }
    }

    public final String a(Object obj, List list) {
        String string = obj != null ? obj.toString() : null;
        return ((string != null && !StringsKt__StringsKt.isBlank(string)) || list == null || list.isEmpty()) ? string : list.get(0).toString();
    }

    public final ClickData a(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof ClickData) {
                arrayList.add(obj);
            }
        }
        return (ClickData) CollectionsKt___CollectionsKt.firstOrNull((List) arrayList);
    }
}
