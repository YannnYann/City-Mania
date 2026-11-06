package io.bidmachine.iab.mraid;

import com.google.android.gms.common.api.Api;
import io.bidmachine.util.log.DefaultLoggerInstance;
import java.util.Arrays;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidLog {
    public static final MraidLog INSTANCE = new MraidLog();
    public static final DefaultLoggerInstance a = new DefaultLoggerInstance() { // from class: io.bidmachine.iab.mraid.MraidLog$logger$1
        @Override // io.bidmachine.util.log.DefaultLoggerInstance
        public boolean isLoggable(int i) {
            return MraidLog.logLevel <= i;
        }
    };
    public static int logLevel = 6;

    public static final class a extends Lambda implements Function0 {
        public final /* synthetic */ String a;
        public final /* synthetic */ Object[] b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Object[] objArr) {
            super(0);
            this.a = str;
            this.b = objArr;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = this.a;
            if (str == null) {
                str = "";
            }
            Object[] objArr = this.b;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            String str2 = String.format(str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            Intrinsics.checkNotNullExpressionValue(str2, "format(format, *args)");
            return str2;
        }
    }

    public static final class b extends Lambda implements Function0 {
        public final /* synthetic */ String a;
        public final /* synthetic */ Object[] b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, Object[] objArr) {
            super(0);
            this.a = str;
            this.b = objArr;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = this.a;
            if (str == null) {
                str = "";
            }
            Object[] objArr = this.b;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            String str2 = String.format(str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            Intrinsics.checkNotNullExpressionValue(str2, "format(format, *args)");
            return str2;
        }
    }

    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ String a;
        public final /* synthetic */ Object[] b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, Object[] objArr) {
            super(0);
            this.a = str;
            this.b = objArr;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = this.a;
            if (str == null) {
                str = "";
            }
            Object[] objArr = this.b;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            String str2 = String.format(str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
            Intrinsics.checkNotNullExpressionValue(str2, "format(format, *args)");
            return str2;
        }
    }

    public static final void d(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        a.d(obj, messageBuilder);
    }

    public static final void e(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        a.e(obj, messageBuilder);
    }

    public static final void setEnabled(boolean z) {
        logLevel = z ? 3 : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public static final void w(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        a.w(obj, messageBuilder);
    }

    public final boolean canSendDLog() {
        return a.isLoggable(3);
    }

    public final boolean canSendELog() {
        return a.isLoggable(6);
    }

    public static final void d(String subTag, String str, Object... args) {
        Intrinsics.checkNotNullParameter(subTag, "subTag");
        Intrinsics.checkNotNullParameter(args, "args");
        d(subTag, new a(str, args));
    }

    public static final void e(Object obj, Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        a.e(obj, throwable);
    }

    public static final void e(String subTag, String str, Object... args) {
        Intrinsics.checkNotNullParameter(subTag, "subTag");
        Intrinsics.checkNotNullParameter(args, "args");
        e(subTag, new b(str, args));
    }

    public static final void w(String subTag, String str, Object... args) {
        Intrinsics.checkNotNullParameter(subTag, "subTag");
        Intrinsics.checkNotNullParameter(args, "args");
        w(subTag, new c(str, args));
    }
}
