package com.ironsource;

import com.ironsource.sdk.utils.IronSourceStorageUtils;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3535c implements InterfaceC3685k5<JSONObject> {
    private final InterfaceC3542c6 a;
    private final String b;
    private final C7 c;
    private final Function1<Result<? extends JSONObject>, Unit> d;
    private D8 e;

    /* JADX WARN: Multi-variable type inference failed */
    public C3535c(InterfaceC3542c6 fileUrl, String destinationPath, C7 downloadManager, Function1<? super Result<? extends JSONObject>, Unit> onFinish) {
        Intrinsics.checkNotNullParameter(fileUrl, "fileUrl");
        Intrinsics.checkNotNullParameter(destinationPath, "destinationPath");
        Intrinsics.checkNotNullParameter(downloadManager, "downloadManager");
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        this.a = fileUrl;
        this.b = destinationPath;
        this.c = downloadManager;
        this.d = onFinish;
        this.e = new D8(c(), C3522b4.i);
    }

    @Override // com.ironsource.Vc
    public void a(D8 file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (Intrinsics.areEqual(file.getName(), C3522b4.i)) {
            try {
                i().invoke(Result.m2759boximpl(Result.m2760constructorimpl(c(file))));
            } catch (Exception e) {
                C3813r4.d().a(e);
                Function1<Result<? extends JSONObject>, Unit> function1I = i();
                Result.Companion companion = Result.Companion;
                function1I.invoke(Result.m2759boximpl(Result.m2760constructorimpl(ResultKt.createFailure(e))));
            }
        }
    }

    @Override // com.ironsource.InterfaceC3685k5
    public void b(D8 d8) {
        Intrinsics.checkNotNullParameter(d8, "<set-?>");
        this.e = d8;
    }

    @Override // com.ironsource.InterfaceC3685k5
    public String c() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3685k5
    public InterfaceC3542c6 d() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3685k5
    public Function1<Result<? extends JSONObject>, Unit> i() {
        return this.d;
    }

    @Override // com.ironsource.InterfaceC3685k5
    public D8 k() {
        return this.e;
    }

    @Override // com.ironsource.InterfaceC3685k5
    public C7 l() {
        return this.c;
    }

    private final JSONObject c(D8 d8) {
        return new JSONObject(IronSourceStorageUtils.readFile(d8));
    }

    @Override // com.ironsource.Vc
    public void a(D8 d8, C3873u8 error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Function1<Result<? extends JSONObject>, Unit> function1I = i();
        Result.Companion companion = Result.Companion;
        function1I.invoke(Result.m2759boximpl(Result.m2760constructorimpl(ResultKt.createFailure(new Exception("Unable to download abTestMap.json: " + error.b())))));
    }
}
