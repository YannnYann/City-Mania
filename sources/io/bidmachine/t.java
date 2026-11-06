package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.OS;
import io.bidmachine.ApiRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.core.TimeManager;
import io.bidmachine.core.Utils;
import io.bidmachine.internal.C4236u;
import io.bidmachine.internal.I;
import io.bidmachine.internal.J;
import io.bidmachine.protobuf.InitRequest;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.protobuf.sdk.MaskedSignals;
import io.bidmachine.t;
import io.bidmachine.tracking.TrackingObject;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.DeviceUtils;
import io.bidmachine.utils.ProtoSerializerKt;
import io.bidmachine.utils.ProtoUtils;
import io.bidmachine.utils.ProtoUtilsKt;
import io.bidmachine.utils.lazy.LazyValue;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class t {
    public static final long k;
    public static final long l;
    public static final long m;
    public final Context a;
    public final String b;
    public final Queue e;
    public final Queue f;
    public c g;
    public ApiRequest h;
    public final J j;
    public long i = 0;
    public final TrackingObject c = new BidMachineTrackingObject();
    public final Runnable d = new b(this);

    public class a implements Runnable {

        /* JADX INFO: renamed from: io.bidmachine.t$a$a, reason: collision with other inner class name */
        public class C1209a implements NetworkRequest.Callback {
            public C1209a() {
            }

            public static /* synthetic */ String a(long j) {
                return String.format("reschedule init request (%s)", Long.valueOf(j));
            }

            @Override // io.bidmachine.core.NetworkRequest.Callback
            public void onFail(BMError bMError) {
                final long jA;
                t.this.h = null;
                if (t.this.f.isEmpty()) {
                    jA = t.this.a();
                    Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.t$a$a$$ExternalSyntheticLambda0
                        @Override // io.bidmachine.utils.lazy.LazyValue
                        public final Object get() {
                            return t.a.C1209a.a(jA);
                        }
                    });
                    if (t.this.g != null) {
                        t.this.g.onFail(bMError);
                    }
                } else {
                    jA = 0;
                }
                Utils.onBackgroundThread(t.this.d, jA);
                t.this.c.eventFinish(TrackEventType.InitLoading, null, null, bMError);
            }

            @Override // io.bidmachine.core.NetworkRequest.Callback
            public void onSuccess(InitResponse initResponse) {
                t.this.h = null;
                t.this.i = 0L;
                Utils.cancelBackgroundThreadTask(t.this.d);
                if (t.this.g != null) {
                    t.this.g.onSuccess(initResponse);
                }
                t.this.c.eventFinish(TrackEventType.InitLoading, null, null, null);
                t.this.j.a();
            }
        }

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t.this.h = new ApiRequest.Builder().url(t.this.d()).setDataBinder(new ApiRequest.ApiInitDataBinder()).setRequestData(t.this.b()).setCallback(new C1209a()).request();
        }
    }

    public static class b implements Runnable {
        public final WeakReference a;

        public b(t tVar) {
            this.a = new WeakReference(tVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            t tVar = (t) this.a.get();
            if (tVar != null) {
                tVar.e();
            }
        }
    }

    public interface c extends NetworkRequest.Callback {
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        k = timeUnit.toMillis(2L);
        l = timeUnit.toMillis(128L);
        m = TimeUnit.DAYS.toMillis(7L);
    }

    public t(Context context, String str, Queue queue) {
        this.a = context;
        this.b = str;
        this.e = new LinkedList(queue);
        this.f = new LinkedList(queue);
        this.j = new J(context);
    }

    public final InitRequest b() {
        final k kVarB = k.b();
        C4236u c4236uB = kVarB.b(this.a);
        final io.bidmachine.internal.v vVarC = c4236uB.c();
        TargetingParams targetingParamsQ = kVarB.q();
        final InitRequest.Builder builderNewBuilder = InitRequest.newBuilder();
        final MaskedSignals.Builder builderNewBuilder2 = MaskedSignals.newBuilder();
        io.bidmachine.internal.w wVarD = c4236uB.d();
        builderNewBuilder.setBmIfv(kVarB.g(this.a));
        wVarD.a(new Runnable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(builderNewBuilder, kVarB);
            }
        }, new Runnable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(builderNewBuilder, builderNewBuilder2, vVarC, kVarB);
            }
        }, new Runnable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                builderNewBuilder.setIfa("00000000-0000-0000-0000-000000000000");
            }
        });
        String packageName = this.a.getPackageName();
        if (packageName != null) {
            builderNewBuilder.setBundle(packageName);
        }
        builderNewBuilder.setSellerId(this.b);
        builderNewBuilder.setOs(OS.OS_ANDROID);
        builderNewBuilder.setOsv(DeviceUtils.getOsVersion());
        String appVersion = Utils.getAppVersion(this.a);
        if (appVersion != null) {
            builderNewBuilder.setAppVer(appVersion);
        }
        builderNewBuilder.setSdk(BidMachine.NAME);
        builderNewBuilder.setSdkver("3.8.0");
        builderNewBuilder.setSessionId(c4236uB.h());
        final DeviceInfo deviceInfoObtain = DeviceInfo.obtain(this.a);
        wVarD.a(new Runnable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                t.a(deviceInfoObtain, builderNewBuilder);
            }
        }, new Runnable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                t.a(deviceInfoObtain, builderNewBuilder2, vVarC);
            }
        });
        builderNewBuilder.setMake(deviceInfoObtain.getManufacturer());
        builderNewBuilder.setDeviceType(DeviceInfoKt.toProtobufDeviceType(deviceInfoObtain.getDeviceType()));
        ConnectionType connectionType = DeviceUtils.getConnectionType(this.a);
        builderNewBuilder.setContype(connectionType);
        builderNewBuilder.setContext(RequestDataRetriever.createContext(this.a, kVarB, c4236uB, targetingParamsQ, builderNewBuilder2, connectionType, null));
        builderNewBuilder.setAndroid(c(this.a));
        builderNewBuilder.setExt(a(this.a));
        return builderNewBuilder.build();
    }

    public void c() {
        this.g = null;
        this.h = null;
    }

    public final String d() {
        if (this.f.isEmpty()) {
            this.f.addAll(this.e);
        }
        return (String) this.f.poll();
    }

    public void e() {
        this.c.eventStart(TrackEventType.InitLoading, null);
        Utils.onBackgroundThread(new a());
    }

    public void a(c cVar) {
        this.g = cVar;
    }

    public final InitRequest.AndroidPlatformData c(Context context) {
        PlatformData platformData = PlatformData.get(context);
        final InitRequest.AndroidPlatformData.Builder builderNewBuilder = InitRequest.AndroidPlatformData.newBuilder();
        Integer minSdkVersion = platformData.getMinSdkVersion();
        Objects.requireNonNull(builderNewBuilder);
        Utils.ifNotNull(minSdkVersion, new Executable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda5
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                builderNewBuilder.setMinApiLevel(((Integer) obj).intValue());
            }
        });
        Utils.ifNotNull(platformData.kotlinVersion, new Executable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda6
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                builderNewBuilder.setKotlinVersion((String) obj);
            }
        });
        for (I i : this.j.a(TimeManager.currentTimeMillis() - m)) {
            builderNewBuilder.addContentProviderStartupMetrics(InitRequest.AndroidPlatformData.ContentProviderStartupMetrics.newBuilder().setStartInitTime(ProtoUtils.msToTimestamp(i.b())).setInitDuration(i.a()).setInitCompleted(i.c()).build());
        }
        return builderNewBuilder.build();
    }

    public final /* synthetic */ void a(InitRequest.Builder builder, k kVar) {
        AdvertisingDataManager.c(this.a);
        builder.setIfa(AdvertisingDataManager.a(this.a));
        String strG = kVar.g();
        if (TextUtils.isEmpty(strG)) {
            return;
        }
        builder.setIfv(strG);
    }

    public final /* synthetic */ void a(InitRequest.Builder builder, MaskedSignals.Builder builder2, io.bidmachine.internal.v vVar, k kVar) {
        AdvertisingDataManager.c(this.a);
        builder.setIfa("00000000-0000-0000-0000-000000000000");
        builder2.setIfa(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(AdvertisingDataManager.a(this.a)))));
        String strG = kVar.g();
        if (TextUtils.isEmpty(strG)) {
            return;
        }
        builder2.setIfv(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(strG))));
    }

    public static /* synthetic */ void a(DeviceInfo deviceInfo, final InitRequest.Builder builder) {
        String model = deviceInfo.getModel();
        Objects.requireNonNull(builder);
        io.bidmachine.util.Utils.ifNotNull(model, new io.bidmachine.util.Executable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda7
            @Override // io.bidmachine.util.Executable
            public final void execute(Object obj) {
                builder.setModel((String) obj);
            }
        });
        io.bidmachine.util.Utils.ifNotNull(deviceInfo.getHWV(), new io.bidmachine.util.Executable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda8
            @Override // io.bidmachine.util.Executable
            public final void execute(Object obj) {
                builder.setHwv((String) obj);
            }
        });
    }

    public static /* synthetic */ void a(DeviceInfo deviceInfo, final MaskedSignals.Builder builder, final io.bidmachine.internal.v vVar) {
        io.bidmachine.util.Utils.ifNotNull(deviceInfo.getModel(), new io.bidmachine.util.Executable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda9
            @Override // io.bidmachine.util.Executable
            public final void execute(Object obj) {
                t.a(builder, vVar, (String) obj);
            }
        });
        io.bidmachine.util.Utils.ifNotNull(deviceInfo.getHWV(), new io.bidmachine.util.Executable() { // from class: io.bidmachine.t$$ExternalSyntheticLambda10
            @Override // io.bidmachine.util.Executable
            public final void execute(Object obj) {
                t.b(builder, vVar, (String) obj);
            }
        });
    }

    public static /* synthetic */ void a(MaskedSignals.Builder builder, io.bidmachine.internal.v vVar, String str) {
        builder.setModel(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(str))));
    }

    public final Struct a(Context context) {
        Struct.Builder builderNewBuilder = Struct.newBuilder();
        builderNewBuilder.putFields("networks_info", Value.newBuilder().setListValue(b(context)).build());
        return builderNewBuilder.build();
    }

    public final Value a(String str, String str2, String str3) {
        Value valueBuild = Value.newBuilder().setStringValue(str).build();
        Value valueBuild2 = Value.newBuilder().setStringValue(str2).build();
        return Value.newBuilder().setStructValue(Struct.newBuilder().putFields("network", valueBuild).putFields("network_version", valueBuild2).putFields("network_adapter_version", Value.newBuilder().setStringValue(str3).build()).build()).build();
    }

    public final long a() {
        long j = this.i;
        if (j <= 0) {
            this.i = k;
        } else {
            long j2 = j * 2;
            this.i = j2;
            long j3 = l;
            if (j2 >= j3) {
                this.i = j3;
            }
        }
        return this.i;
    }

    public static /* synthetic */ void b(MaskedSignals.Builder builder, io.bidmachine.internal.v vVar, String str) {
        builder.setHwv(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(str))));
    }

    public final ListValue.Builder b(Context context) {
        ListValue.Builder builderNewBuilder = ListValue.newBuilder();
        for (x xVar : w.b(context).values()) {
            builderNewBuilder.addValues(a(xVar.c(), xVar.d(), xVar.a()));
        }
        builderNewBuilder.addValues(a("mraid", "3.8.0", "3.8.0.1"));
        builderNewBuilder.addValues(a("vast", "3.8.0", "3.8.0.1"));
        builderNewBuilder.addValues(a("nast", "1.0", "3.8.0.1"));
        builderNewBuilder.addValues(a("adaptive_rendering", "3.8.0", "3.8.0.1"));
        return builderNewBuilder;
    }
}
