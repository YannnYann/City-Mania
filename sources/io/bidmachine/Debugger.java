package io.bidmachine;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import io.bidmachine.util.Utils;
import io.bidmachine.util.file.FileUtilsKt;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class Debugger {
    private static final String DIR_NAME = "features";
    private static final String FILE_NAME = "DebugParameters.json";
    private static final String PARAMETER_CONSENT = "consent";
    private static final String PARAMETER_COPPA = "coppa";
    private static final String PARAMETER_ENDPOINT = "endpoint";
    private static final String PARAMETER_GDPR_STRING = "GDPRString";
    private static final String PARAMETER_LOGGING_ENABLED = "loggingEnabled";
    private static final String PARAMETER_SUBJECT_TO_GDPR = "subjectToGDPR";
    private static final String PARAMETER_TEST_MODE = "testMode";
    private static final String PARAMETER_US_PRIVACY_STRING = "usPrivacyString";
    private static final String TAG = "Debugger";
    public static final Debugger INSTANCE = new Debugger();
    private static final AtomicBoolean LOGGING_LOCK = new AtomicBoolean(false);
    private static final AtomicBoolean TEST_MODE_LOCK = new AtomicBoolean(false);
    private static final Lazy scope$delegate = LazyKt__LazyJVMKt.lazy(b.a);

    public static final class a extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ Context b;
        public final /* synthetic */ File c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, File file, Continuation continuation) {
            super(2, continuation);
            this.b = context;
            this.c = file;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new a(this.b, this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String string;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            try {
                string = Settings.Global.getString(this.b.getContentResolver(), "bmsdk_dfp");
            } catch (Throwable th) {
                Log.w(Debugger.TAG, th);
            }
            if (string == null) {
                return Unit.INSTANCE;
            }
            Log.d(Debugger.TAG, "Debug config found, restart the app to apply");
            File parentFile = this.c.getParentFile();
            if (parentFile != null) {
                Boxing.boxBoolean(parentFile.mkdirs());
            }
            FilesKt__FileReadWriteKt.writeText$default(this.c, string, null, 2, null);
            return Unit.INSTANCE;
        }
    }

    public static final class b extends Lambda implements Function0 {
        public static final b a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(Dispatchers.getIO()));
        }
    }

    private Debugger() {
    }

    private final void checkGlobalSettings(Context context, File file) {
        BuildersKt__Builders_commonKt.launch$default(getScope(), null, null, new a(context, file, null), 3, null);
    }

    private final CoroutineScope getScope() {
        return (CoroutineScope) scope$delegate.getValue();
    }

    public static final boolean isLoggingLock() {
        return LOGGING_LOCK.get();
    }

    public static /* synthetic */ void isLoggingLock$annotations() {
    }

    public static final boolean isTestModeLock() {
        return TEST_MODE_LOCK.get();
    }

    public static /* synthetic */ void isTestModeLock$annotations() {
    }

    public static final void setup(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            File externalDir = FileUtilsKt.getExternalDir(context);
            if (externalDir == null) {
                return;
            }
            File file = new File(externalDir, "features/DebugParameters.json");
            if (!file.exists()) {
                INSTANCE.checkGlobalSettings(context, file);
            } else {
                Log.d(TAG, "Debug file found");
                INSTANCE.setupFromJson$bidmachine_android_sdk_ba_3_8_0(FileUtilsKt.readSafely(file));
            }
        } catch (Throwable th) {
            Log.w(TAG, th);
        }
    }

    public final void setupFromJson$bidmachine_android_sdk_ba_3_8_0(String str) {
        if (str == null || StringsKt__StringsKt.isBlank(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject(str);
        AtomicBoolean atomicBoolean = LOGGING_LOCK;
        if (jSONObject.has(PARAMETER_LOGGING_ENABLED)) {
            BidMachine.setLoggingEnabled(jSONObject.optBoolean(PARAMETER_LOGGING_ENABLED));
            atomicBoolean.set(true);
        }
        AtomicBoolean atomicBoolean2 = TEST_MODE_LOCK;
        if (jSONObject.has(PARAMETER_TEST_MODE)) {
            BidMachine.setTestMode(jSONObject.optBoolean(PARAMETER_TEST_MODE));
            atomicBoolean2.set(true);
        }
        if (jSONObject.has("endpoint")) {
            String strOptString = jSONObject.optString("endpoint");
            Intrinsics.checkNotNullExpressionValue(strOptString, "jsonObject.optString(PARAMETER_ENDPOINT)");
            String string = StringsKt__StringsKt.trim(strOptString).toString();
            if (string.length() > 0 && Utils.isHttpUrl(string)) {
                BidMachine.setEndpoint(string);
            }
        }
        if (jSONObject.has(PARAMETER_COPPA)) {
            BidMachine.setCoppa(Boolean.valueOf(jSONObject.optBoolean(PARAMETER_COPPA)));
        }
        if (jSONObject.has(PARAMETER_US_PRIVACY_STRING)) {
            BidMachine.setUSPrivacyString(jSONObject.optString(PARAMETER_US_PRIVACY_STRING));
        }
        if (jSONObject.has(PARAMETER_SUBJECT_TO_GDPR)) {
            BidMachine.setSubjectToGDPR(Boolean.valueOf(jSONObject.optBoolean(PARAMETER_SUBJECT_TO_GDPR)));
        }
        if (jSONObject.has("consent")) {
            BidMachine.setConsentConfig(jSONObject.optBoolean("consent"), jSONObject.has(PARAMETER_GDPR_STRING) ? jSONObject.optString(PARAMETER_GDPR_STRING) : null);
        }
    }

    private final void applyAndLockIfExists(AtomicBoolean atomicBoolean, JSONObject jSONObject, String str, Function1<? super Boolean, Unit> function1) {
        if (jSONObject.has(str)) {
            function1.invoke(Boolean.valueOf(jSONObject.optBoolean(str)));
            atomicBoolean.set(true);
        }
    }
}
