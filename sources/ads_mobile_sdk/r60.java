package ads_mobile_sdk;

import com.google.common.base.Splitter;
import com.ironsource.C3522b4;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import org.chromium.net.CronetException;
import org.chromium.net.NetworkException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes.dex */
public final class r60 extends UrlRequest.Callback {
    public final ByteArrayOutputStream a;
    public final WritableByteChannel b;
    public final ByteBuffer c;
    public boolean d;
    public CompletableDeferred e;
    public CancellableContinuation f;
    public final /* synthetic */ k70 g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ rr3 i;
    public final /* synthetic */ f81 j;

    public r60(CancellableContinuationImpl cancellableContinuationImpl, k70 k70Var, boolean z, rr3 rr3Var, f81 f81Var) {
        this.g = k70Var;
        this.h = z;
        this.i = rr3Var;
        this.j = f81Var;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.a = byteArrayOutputStream;
        this.b = Channels.newChannel(byteArrayOutputStream);
        this.c = ByteBuffer.allocateDirect(32768);
        this.f = cancellableContinuationImpl;
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onFailed(UrlRequest request, UrlResponseInfo urlResponseInfo, CronetException error) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.d) {
            CompletableDeferred completableDeferred = this.e;
            if (completableDeferred != null) {
                completableDeferred.completeExceptionally(error);
            }
            a();
            return;
        }
        if (!(error instanceof NetworkException) || ((NetworkException) error).immediatelyRetryable()) {
            a(new j01(error, kk1.e, null, 4));
            return;
        }
        String message = error.getMessage();
        if (message == null) {
            message = "Non-retryable Cronet network error";
        }
        a(new o01(message, error));
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onReadCompleted(UrlRequest request, UrlResponseInfo info2, ByteBuffer byteBuffer) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(info2, "info");
        Intrinsics.checkNotNullParameter(byteBuffer, "byteBuffer");
        byteBuffer.flip();
        this.b.write(byteBuffer);
        byteBuffer.clear();
        request.read(byteBuffer);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onRedirectReceived(UrlRequest request, UrlResponseInfo info2, String str) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(info2, "info");
        g81 g81Var = new g81();
        g81Var.a = info2.getHttpStatusCode();
        g81 g81VarA = g81Var.a(info2.getAllHeaders());
        g81VarA.b = info2.getHttpStatusText();
        g81VarA.f = str;
        a(new q01(g81VarA.a()));
        request.cancel();
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onResponseStarted(UrlRequest request, UrlResponseInfo info2) {
        String str;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(info2, "info");
        CoroutineScope coroutineScope = this.g.a;
        q60 block = new q60(this.j, info2, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        ex0 ex0Var = this.g.b;
        if (ex0Var != null) {
            Intrinsics.checkNotNullParameter("gads:html_body_header", C3522b4.i.W);
            Intrinsics.checkNotNullParameter("X-Afma-Is-Html-Response", "defaultValue");
            str = (String) ex0Var.a("gads:html_body_header", "X-Afma-Is-Html-Response", yr.o);
        } else {
            str = null;
        }
        if (str != null && str.length() != 0 && this.h) {
            Map<String, List<String>> allHeaders = info2.getAllHeaders();
            Intrinsics.checkNotNullExpressionValue(allHeaders, "getAllHeaders(...)");
            if (!allHeaders.isEmpty()) {
                Iterator<Map.Entry<String, List<String>>> it = allHeaders.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, List<String>> next = it.next();
                    if (StringsKt__StringsJVMKt.equals(next.getKey(), str, true)) {
                        List<String> value = next.getValue();
                        Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                        if (Boolean.parseBoolean((String) CollectionsKt___CollectionsKt.firstOrNull((List) value))) {
                            rr3 rr3Var = this.i;
                            if (rr3Var != null) {
                                rr3Var.a.b.g = true;
                            }
                            ex0 ex0Var2 = this.g.b;
                            if (ex0Var2 != null) {
                                Intrinsics.checkNotNullParameter("gads:enable_normalization_before_body", C3522b4.i.W);
                                if (((Boolean) ex0Var2.a("gads:enable_normalization_before_body", Boolean.FALSE, yr.b)).booleanValue()) {
                                    this.d = true;
                                    this.e = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                                    g81 g81Var = new g81();
                                    g81Var.a = info2.getHttpStatusCode();
                                    g81Var.a(info2.getAllHeaders());
                                    g81Var.b = info2.getHttpStatusText();
                                    g81Var.e = this.e;
                                    a(new q01(g81Var.a()));
                                }
                            }
                        }
                    }
                }
            }
        }
        request.read(this.c);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onSucceeded(UrlRequest request, UrlResponseInfo info2) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(info2, "info");
        if (this.d) {
            byte[] byteArray = this.a.toByteArray();
            Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
            p53 p53Var = new p53(byteArray);
            CompletableDeferred completableDeferred = this.e;
            if (completableDeferred != null) {
                completableDeferred.complete(p53Var);
            }
            a();
            return;
        }
        g81 g81Var = new g81();
        g81Var.a = info2.getHttpStatusCode();
        g81 g81VarA = g81Var.a(info2.getAllHeaders());
        g81VarA.b = info2.getHttpStatusText();
        byte[] byteArray2 = this.a.toByteArray();
        if (byteArray2 != null) {
            g81VarA.d = new p53(byteArray2);
        }
        a(new q01(g81VarA.a()));
    }

    public final void a() {
        try {
            this.b.close();
        } catch (Throwable th) {
            Splitter splitter = f01.a;
            f01.a(new p60(th));
        }
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public final void onCanceled(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
        if (this.d) {
            CompletableDeferred completableDeferred = this.e;
            if (completableDeferred != null) {
                completableDeferred.completeExceptionally(new CancellationException("Request was cancelled"));
            }
            a();
            return;
        }
        a(new m01("Request was cancelled", kk1.k));
    }

    public final void a(v01 v01Var) {
        if (!this.d) {
            a();
        }
        CancellableContinuation cancellableContinuation = this.f;
        if (cancellableContinuation != null && cancellableContinuation.isActive()) {
            cancellableContinuation.resumeWith(Result.m2760constructorimpl(v01Var));
        }
        this.f = null;
    }
}
