package com.ironsource;

import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;

/* JADX INFO: renamed from: com.ironsource.w3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class CallableC3904w3 implements Callable<A3> {
    private final int a;
    private final String b;
    private final AdData c;
    private final InterfaceC3940y3 d;
    private final InterfaceC3922x3 e;
    private final NetworkSettings f;

    /* JADX INFO: renamed from: com.ironsource.w3$a */
    public class a implements BiddingDataCallback {
        final /* synthetic */ C3703l5 a;
        final /* synthetic */ BlockingQueue b;

        public a(C3703l5 c3703l5, BlockingQueue blockingQueue) {
            this.a = c3703l5;
            this.b = blockingQueue;
        }

        @Override // com.ironsource.mediationsdk.bidding.BiddingDataCallback
        public void onFailure(String str) {
            this.b.add(new A3(CallableC3904w3.this.d(), CallableC3904w3.this.c(), null, C3703l5.a(this.a), str));
        }

        @Override // com.ironsource.mediationsdk.bidding.BiddingDataCallback
        public void onSuccess(Map<String, Object> map) {
            this.b.add(new A3(CallableC3904w3.this.d(), CallableC3904w3.this.c(), map, C3703l5.a(this.a), null));
        }
    }

    public CallableC3904w3(int i, String str, AdData adData, InterfaceC3940y3 interfaceC3940y3, InterfaceC3922x3 interfaceC3922x3, NetworkSettings networkSettings) {
        this.a = i;
        this.b = str;
        this.c = adData;
        this.d = interfaceC3940y3;
        this.e = interfaceC3922x3;
        this.f = networkSettings;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public A3 call() throws Exception {
        C3703l5 c3703l5 = new C3703l5();
        IronLog.INTERNAL.verbose(c() + " fetching bidding data");
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        try {
            b().collectBiddingData(this.c, ContextProvider.getInstance().getActiveContext(), new a(c3703l5, arrayBlockingQueue));
        } catch (Exception e) {
            C3813r4.d().a(e);
            String str = "Exception while calling collectBiddingData - " + e.getMessage();
            IronLog.INTERNAL.error(str);
            InterfaceC3922x3 interfaceC3922x3 = this.e;
            if (interfaceC3922x3 != null) {
                interfaceC3922x3.a(str);
            }
        } catch (NoClassDefFoundError e2) {
            C3813r4.d().a(e2);
            String str2 = "Error while calling collectBiddingData - " + e2.getMessage();
            IronLog.INTERNAL.error(str2);
            InterfaceC3922x3 interfaceC3922x32 = this.e;
            if (interfaceC3922x32 != null) {
                interfaceC3922x32.a(str2);
            }
        }
        InterfaceC3922x3 interfaceC3922x33 = this.e;
        if (interfaceC3922x33 != null) {
            interfaceC3922x33.a(this.f);
        }
        return (A3) arrayBlockingQueue.take();
    }

    public InterfaceC3940y3 b() {
        return this.d;
    }

    public String c() {
        return this.b;
    }

    public int d() {
        return this.a;
    }
}
