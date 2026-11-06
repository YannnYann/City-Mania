package com.ironsource;

import android.util.Log;
import com.ironsource.InterfaceC3702l4;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.SDKUtils;
import kotlin.Result;
import kotlin.Unit;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.n4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3738n4 implements InterfaceC3926x7 {
    private final C3684k4 a;
    private final Function1<D8, Object> b;
    private final C7 c;
    private final InterfaceC3851t4 d;
    private final String e;
    private D8 f;
    private long g;
    private final C3658id h;
    private String i;

    /* JADX INFO: renamed from: com.ironsource.n4$a */
    public /* synthetic */ class a extends FunctionReferenceImpl implements Function1<Result<? extends D8>, Unit> {
        public a(Object obj) {
            super(1, obj, C3738n4.class, "onHtmlDownloadFinished", "onHtmlDownloadFinished(Ljava/lang/Object;)V", 0);
        }

        public final void a(Object obj) {
            ((C3738n4) this.receiver).b(obj);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Result<? extends D8> result) {
            a(result.m2768unboximpl());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.n4$b */
    public /* synthetic */ class b extends FunctionReferenceImpl implements Function1<Result<? extends JSONObject>, Unit> {
        public b(Object obj) {
            super(1, obj, C3738n4.class, "onAbTestDownloadFinished", "onAbTestDownloadFinished(Ljava/lang/Object;)V", 0);
        }

        public final void a(Object obj) throws JSONException {
            ((C3738n4) this.receiver).a(obj);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Result<? extends JSONObject> result) throws JSONException {
            a(result.m2768unboximpl());
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3738n4(C3684k4 config, Function1<? super D8, ? extends Object> onFinish, C7 downloadManager, InterfaceC3851t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        Intrinsics.checkNotNullParameter(downloadManager, "downloadManager");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = config;
        this.b = onFinish;
        this.c = downloadManager;
        this.d = currentTimeProvider;
        this.e = C3738n4.class.getSimpleName();
        this.f = new D8(config.d(), "mobileController_0.html");
        this.g = currentTimeProvider.a();
        this.h = new C3658id(config.a());
        this.i = "";
    }

    @Override // com.ironsource.InterfaceC3926x7
    public D8 c() {
        return this.f;
    }

    public final Function1<D8, Object> d() {
        return this.b;
    }

    public final InterfaceC3851t4 a() {
        return this.d;
    }

    @Override // com.ironsource.InterfaceC3926x7
    public void b() {
        this.g = this.d.a();
        new C3535c(new C3553d(this.h), this.a.d() + "/temp", this.c, new b(this)).m();
    }

    @Override // com.ironsource.InterfaceC3926x7
    public boolean a(D8 file) {
        Intrinsics.checkNotNullParameter(file, "file");
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return new Regex("mobileController(_\\d+)?\\.html").matches(name);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Object obj) throws JSONException {
        if (Result.m2765isFailureimpl(obj)) {
            obj = null;
        }
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject != null && !Intrinsics.areEqual(jSONObject.optString("htmlBuildNumber"), "")) {
            SDKUtils.updateControllerConfig("abTestMap", jSONObject);
            String string = jSONObject.getString("htmlBuildNumber");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            this.i = string;
            C3720m4 c3720m4A = a(string);
            if (c3720m4A.j()) {
                D8 d8K = c3720m4A.k();
                this.f = d8K;
                this.b.invoke(d8K);
                return;
            }
            c3720m4A.m();
            return;
        }
        a("0").m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(Object obj) {
        if (Result.m2766isSuccessimpl(obj)) {
            D8 d8 = (D8) (Result.m2765isFailureimpl(obj) ? null : obj);
            if (!Intrinsics.areEqual(d8 != null ? d8.getAbsolutePath() : null, this.f.getAbsolutePath())) {
                try {
                    IronSourceStorageUtils.deleteFile(this.f);
                    Intrinsics.checkNotNull(d8);
                    FilesKt__UtilsKt.copyTo$default(d8, this.f, true, 0, 4, null);
                } catch (Exception e) {
                    C3813r4.d().a(e);
                    Log.e(this.e, "Unable to copy downloaded mobileController.html to cache folder: " + e.getMessage());
                }
                Intrinsics.checkNotNull(d8);
                this.f = d8;
            }
            new InterfaceC3702l4.b(this.a.b(), this.g, this.d).a();
        } else {
            new InterfaceC3702l4.a(this.a.b()).a();
        }
        Function1<D8, Object> function1 = this.b;
        if (Result.m2765isFailureimpl(obj)) {
            obj = null;
        }
        function1.invoke((D8) obj);
    }

    private final C3720m4 a(String str) {
        return new C3720m4(new C3971zg(this.h, str), this.a.d() + "/mobileController_" + str + ".html", this.c, new a(this));
    }
}
