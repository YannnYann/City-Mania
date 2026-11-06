package io.bidmachine;

import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.ApiRequest;
import io.bidmachine.B;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.Tag;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: io.bidmachine.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C4213b {
    public final Tag a = new Tag("AdResponseLoader");
    public final String b;
    public a c;
    public C1161b d;

    /* JADX INFO: renamed from: io.bidmachine.b$a */
    public interface a {
        void a();

        void a(AdResponse adResponse);

        void a(BMError bMError);
    }

    /* JADX INFO: renamed from: io.bidmachine.b$b, reason: collision with other inner class name */
    public static class C1161b implements NetworkRequest.Callback, NetworkRequest.CancelCallback {
        public final String a;
        public final String b;
        public final AdRequestParameters c;
        public final NetworkAdUnitManager d;
        public final WeakReference e;
        public final AtomicBoolean f = new AtomicBoolean(false);
        public final AtomicBoolean g = new AtomicBoolean(false);

        public C1161b(String str, String str2, AdRequestParameters adRequestParameters, NetworkAdUnitManager networkAdUnitManager, a aVar) {
            this.a = str;
            this.b = str2;
            this.c = adRequestParameters;
            this.d = networkAdUnitManager;
            this.e = new WeakReference(aVar);
        }

        public final a c() {
            if (a()) {
                return null;
            }
            this.f.set(true);
            return (a) this.e.get();
        }

        public final void d() {
            a aVarC = c();
            if (aVarC != null) {
                aVarC.a();
            }
            b();
        }

        @Override // io.bidmachine.core.NetworkRequest.CancelCallback
        public void onCanceled() {
            z.a().a(this.a);
            this.d.notifyNetworkClearAuction();
            d();
        }

        public void b() {
            this.g.set(true);
            this.e.clear();
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onFail(BMError bMError) {
            z.a().a(this.a);
            this.d.notifyNetworkAuctionResult(null);
            this.d.notifyNetworkClearAuction();
            AdResponse adResponseF = c.a().f(this.c);
            if (adResponseF != null) {
                a(adResponseF);
            } else {
                a(bMError);
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onSuccess(Response response) {
            z.a().a(this.a);
            UrlProvider.setAuctionUrlFromSuccessRequest(this.b);
            B.a(this.c, this.d, response, new a());
        }

        public final boolean a() {
            return this.g.get() || this.f.get() || this.e.get() == null;
        }

        public final void a(AdResponse adResponse) {
            a aVarC = c();
            if (aVarC != null) {
                aVarC.a(adResponse);
            } else {
                adResponse.setStatus(d.Idle);
            }
            b();
        }

        public final void a(BMError bMError) {
            a aVarC = c();
            if (aVarC != null) {
                aVarC.a(bMError);
            }
            b();
        }

        /* JADX INFO: renamed from: io.bidmachine.b$b$a */
        public class a implements B.a {
            public a() {
            }

            @Override // io.bidmachine.B.a
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onSuccess(AdResponse adResponse) {
                boolean zA = C1161b.this.a();
                adResponse.setStatus(zA ? d.Idle : d.Busy);
                c.a().f(adResponse);
                if (zA) {
                    adResponse.release();
                } else {
                    C1161b.this.d.notifyNetworkAuctionResult(adResponse.getWinnerNetworkAdUnit());
                    C1161b.this.a(adResponse);
                }
            }

            @Override // io.bidmachine.B.a
            public void a(BMError bMError) {
                C1161b.this.d.notifyNetworkAuctionResult(null);
                C1161b.this.d.notifyNetworkClearAuction();
                C1161b.this.a(bMError);
            }
        }
    }

    public C4213b(String str) {
        this.b = str;
    }

    public void a(AdRequestParameters adRequestParameters, NetworkAdUnitManager networkAdUnitManager, ApiRequest.Builder builder, a aVar) {
        Logger.d(this.a, "load");
        C1161b c1161b = this.d;
        if (c1161b != null) {
            c1161b.b();
        }
        this.c = aVar;
        C1161b c1161b2 = new C1161b(this.b, builder.getUrl(), adRequestParameters, networkAdUnitManager, aVar);
        this.d = c1161b2;
        builder.setCallback(c1161b2);
        builder.setCancelCallback(this.d);
        z.a().a(this.b, builder.request());
    }

    public void a() {
        Logger.d(this.a, "cancel");
        this.c = null;
        C1161b c1161b = this.d;
        if (c1161b != null) {
            c1161b.b();
            this.d = null;
        }
    }
}
