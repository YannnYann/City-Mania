package io.bidmachine;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.SystemClock;
import android.util.Size;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.BoolValue;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.OS;
import io.bidmachine.core.TimeManager;
import io.bidmachine.internal.C4229m;
import io.bidmachine.protobuf.RequestTokenPayload;
import io.bidmachine.protobuf.sdk.Device;
import io.bidmachine.protobuf.sdk.MaskedSignals;
import io.bidmachine.util.DeviceUtilsKt;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.conversion.StringTypeConversion;
import io.bidmachine.utils.BluetoothUtils;
import io.bidmachine.utils.DeviceUtils;
import io.bidmachine.utils.ProtoSerializerKt;
import io.bidmachine.utils.ProtoUtilsKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class DeviceParams {
    private final DeviceConnectionParams deviceConnectionParams;

    public static final class a extends Lambda implements Function0 {
        public final /* synthetic */ io.bidmachine.k a;
        public final /* synthetic */ Device.Builder b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(io.bidmachine.k kVar, Device.Builder builder) {
            super(0);
            this.a = kVar;
            this.b = builder;
        }

        public final void a() {
            String strG = this.a.g();
            if (strG != null) {
                Device.Builder builder = this.b;
                if (!StringsKt__StringsKt.isBlank(strG)) {
                    builder.setIfv(strG);
                }
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listEmptyList) {
                    if (obj instanceof StringTypeConversion) {
                        arrayList.add(obj);
                    }
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class b extends Lambda implements Function0 {
        public final /* synthetic */ io.bidmachine.k a;
        public final /* synthetic */ MaskedSignals.Builder b;
        public final /* synthetic */ io.bidmachine.internal.v c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(io.bidmachine.k kVar, MaskedSignals.Builder builder, io.bidmachine.internal.v vVar) {
            super(0);
            this.a = kVar;
            this.b = builder;
            this.c = vVar;
        }

        public final void a() {
            String strG = this.a.g();
            if (strG != null) {
                MaskedSignals.Builder builder = this.b;
                io.bidmachine.internal.v vVar = this.c;
                if (!StringsKt__StringsKt.isBlank(strG)) {
                    builder.setIfv(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(strG))));
                }
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listEmptyList) {
                    if (obj instanceof StringTypeConversion) {
                        arrayList.add(obj);
                    }
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ Context a;
        public final /* synthetic */ Device.Builder b;
        public final /* synthetic */ io.bidmachine.k c;
        public final /* synthetic */ DeviceInfo d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, Device.Builder builder, io.bidmachine.k kVar, DeviceInfo deviceInfo) {
            super(0);
            this.a = context;
            this.b = builder;
            this.c = kVar;
            this.d = deviceInfo;
        }

        public final void a() {
            String str;
            Set<String> inputLanguageSet = DeviceUtils.getInputLanguageSet(this.a);
            Intrinsics.checkNotNullExpressionValue(inputLanguageSet, "getInputLanguageSet(context)");
            if (!inputLanguageSet.isEmpty()) {
                this.b.addAllInputlanguage(inputLanguageSet);
            }
            Double batteryLevel = DeviceUtils.getBatteryLevel(this.a);
            if (batteryLevel != null) {
                this.b.setBatterylevel((float) batteryLevel.doubleValue());
            }
            String deviceName = DeviceUtils.getDeviceName(this.a);
            if (deviceName != null) {
                Device.Builder builder = this.b;
                if (!StringsKt__StringsKt.isBlank(deviceName)) {
                    builder.setDevicename(deviceName);
                }
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listEmptyList) {
                    if (obj instanceof StringTypeConversion) {
                        arrayList.add(obj);
                    }
                }
            }
            Double screenBrightnessRatio = DeviceUtils.getScreenBrightnessRatio(this.a);
            if (screenBrightnessRatio != null) {
                this.b.setScreenbright((float) screenBrightnessRatio.doubleValue());
            }
            this.b.setTime(TimeManager.currentTimeMillis());
            this.b.setLastbootup(SystemClock.elapsedRealtime());
            this.b.setLastbootupV2(this.c.j(this.a));
            List listI = this.c.i(this.a);
            Intrinsics.checkNotNullExpressionValue(listI, "bidMachine.obtainLastBootupHistory(context)");
            if (!listI.isEmpty()) {
                this.b.addAllLastbootupHistory(listI);
            }
            Set<String> connectedHeadsets = BluetoothUtils.getConnectedHeadsets(this.a);
            if (connectedHeadsets != null) {
                if (connectedHeadsets.isEmpty()) {
                    connectedHeadsets = null;
                }
                if (connectedHeadsets != null && (str = (String) CollectionsKt___CollectionsKt.firstOrNull(connectedHeadsets)) != null) {
                    this.b.setHeadsetname(str);
                }
            }
            Long availableDiskSpaceInMB = this.d.getAvailableDiskSpaceInMB();
            if (availableDiskSpaceInMB != null) {
                this.b.setDiskspace(availableDiskSpaceInMB.longValue());
            }
            Long totalDiskSpaceInMB = this.d.getTotalDiskSpaceInMB();
            if (totalDiskSpaceInMB != null) {
                this.b.setTotaldisk(totalDiskSpaceInMB.longValue());
            }
            Long totalMemBytes = this.d.getRam().getTotalMemBytes();
            if (totalMemBytes != null) {
                this.b.setTotalmem(totalMemBytes.longValue());
            }
            Long freeMemBytes = this.d.getRam().getFreeMemBytes();
            if (freeMemBytes != null) {
                this.b.setFreemem(freeMemBytes.longValue());
            }
            String name = this.d.getCpu().getName();
            if (name != null) {
                if (name.length() <= 0) {
                    name = null;
                }
                if (name != null) {
                    this.b.setCpuname(name);
                }
            }
            String vendor = this.d.getCpu().getVendor();
            if (vendor != null) {
                if (vendor.length() <= 0) {
                    vendor = null;
                }
                if (vendor != null) {
                    this.b.setCpuvendor(vendor);
                }
            }
            String name2 = this.d.getGpu().getName();
            if (name2 != null) {
                if (name2.length() <= 0) {
                    name2 = null;
                }
                if (name2 != null) {
                    this.b.setGpuname(name2);
                }
            }
            String vendor2 = this.d.getGpu().getVendor();
            if (vendor2 != null) {
                if (vendor2.length() <= 0) {
                    vendor2 = null;
                }
                if (vendor2 != null) {
                    this.b.setGpuvendor(vendor2);
                }
            }
            String simCarrier = this.d.getSimCarrier();
            if (simCarrier != null) {
                String str2 = simCarrier.length() > 0 ? simCarrier : null;
                if (str2 != null) {
                    this.b.setSimCarrier(StringValue.of(str2));
                }
            }
            Float volumeLevel = this.d.getAudio().getVolumeLevel(this.a);
            if (volumeLevel != null) {
                this.b.setAudioContext(Context.Device.AudioContext.newBuilder().setVolumelevel(volumeLevel.floatValue()).build());
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class d extends Lambda implements Function0 {
        public final /* synthetic */ android.content.Context a;
        public final /* synthetic */ MaskedSignals.Builder b;
        public final /* synthetic */ io.bidmachine.internal.v c;
        public final /* synthetic */ io.bidmachine.k d;
        public final /* synthetic */ DeviceInfo e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(android.content.Context context, MaskedSignals.Builder builder, io.bidmachine.internal.v vVar, io.bidmachine.k kVar, DeviceInfo deviceInfo) {
            super(0);
            this.a = context;
            this.b = builder;
            this.c = vVar;
            this.d = kVar;
            this.e = deviceInfo;
        }

        public final void a() {
            String str;
            Set<String> inputLanguageSet = DeviceUtils.getInputLanguageSet(this.a);
            Intrinsics.checkNotNullExpressionValue(inputLanguageSet, "getInputLanguageSet(context)");
            if (!inputLanguageSet.isEmpty()) {
                this.b.setInputlanguage(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(inputLanguageSet))));
            }
            Double batteryLevel = DeviceUtils.getBatteryLevel(this.a);
            if (batteryLevel != null) {
                this.b.setBatterylevel(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize((float) batteryLevel.doubleValue()))));
            }
            String deviceName = DeviceUtils.getDeviceName(this.a);
            if (deviceName != null) {
                MaskedSignals.Builder builder = this.b;
                io.bidmachine.internal.v vVar = this.c;
                if (!StringsKt__StringsKt.isBlank(deviceName)) {
                    builder.setDevicename(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(deviceName))));
                }
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listEmptyList) {
                    if (obj instanceof StringTypeConversion) {
                        arrayList.add(obj);
                    }
                }
            }
            Double screenBrightnessRatio = DeviceUtils.getScreenBrightnessRatio(this.a);
            if (screenBrightnessRatio != null) {
                this.b.setScreenbright(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize((float) screenBrightnessRatio.doubleValue()))));
            }
            this.b.setTime(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(TimeManager.currentTimeMillis()))));
            this.b.setLastbootup(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(SystemClock.elapsedRealtime()))));
            this.b.setLastbootupV2(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(this.d.j(this.a)))));
            List listI = this.d.i(this.a);
            Intrinsics.checkNotNullExpressionValue(listI, "bidMachine.obtainLastBootupHistory(context)");
            if (!listI.isEmpty()) {
                this.b.setLastbootupHistory(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(listI))));
            }
            Set<String> connectedHeadsets = BluetoothUtils.getConnectedHeadsets(this.a);
            if (connectedHeadsets != null) {
                if (connectedHeadsets.isEmpty()) {
                    connectedHeadsets = null;
                }
                if (connectedHeadsets != null && (str = (String) CollectionsKt___CollectionsKt.firstOrNull(connectedHeadsets)) != null) {
                    this.b.setHeadsetname(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(str))));
                }
            }
            Long availableDiskSpaceInMB = this.e.getAvailableDiskSpaceInMB();
            if (availableDiskSpaceInMB != null) {
                this.b.setDiskspace(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(availableDiskSpaceInMB.longValue()))));
            }
            Long totalDiskSpaceInMB = this.e.getTotalDiskSpaceInMB();
            if (totalDiskSpaceInMB != null) {
                this.b.setTotaldisk(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(totalDiskSpaceInMB.longValue()))));
            }
            Long totalMemBytes = this.e.getRam().getTotalMemBytes();
            if (totalMemBytes != null) {
                this.b.setTotalmem(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(totalMemBytes.longValue()))));
            }
            Long freeMemBytes = this.e.getRam().getFreeMemBytes();
            if (freeMemBytes != null) {
                this.b.setFreemem(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(freeMemBytes.longValue()))));
            }
            String name = this.e.getCpu().getName();
            if (name != null) {
                if (name.length() <= 0) {
                    name = null;
                }
                if (name != null) {
                    this.b.setCpuname(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(name))));
                }
            }
            String vendor = this.e.getCpu().getVendor();
            if (vendor != null) {
                if (vendor.length() <= 0) {
                    vendor = null;
                }
                if (vendor != null) {
                    this.b.setCpuvendor(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(vendor))));
                }
            }
            String name2 = this.e.getGpu().getName();
            if (name2 != null) {
                if (name2.length() <= 0) {
                    name2 = null;
                }
                if (name2 != null) {
                    this.b.setGpuname(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(name2))));
                }
            }
            String vendor2 = this.e.getGpu().getVendor();
            if (vendor2 != null) {
                if (vendor2.length() <= 0) {
                    vendor2 = null;
                }
                if (vendor2 != null) {
                    this.b.setGpuvendor(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(vendor2))));
                }
            }
            String simCarrier = this.e.getSimCarrier();
            if (simCarrier != null) {
                String str2 = simCarrier.length() > 0 ? simCarrier : null;
                if (str2 != null) {
                    this.b.setSimCarrier(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(str2))));
                }
            }
            Float volumeLevel = this.e.getAudio().getVolumeLevel(this.a);
            if (volumeLevel != null) {
                this.b.setVolumeLevel(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(volumeLevel.floatValue()))));
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class e extends Lambda implements Function0 {
        public final /* synthetic */ Context.Device.Builder a;
        public final /* synthetic */ DeviceInfo b;
        public final /* synthetic */ android.content.Context c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Context.Device.Builder builder, DeviceInfo deviceInfo, android.content.Context context) {
            super(0);
            this.a = builder;
            this.b = deviceInfo;
            this.c = context;
        }

        public final void a() throws Throwable {
            this.a.setPxratio(this.b.getScreenDensity());
            this.a.setPpi(this.b.getScreenDpi());
            this.a.setModel(this.b.getModel());
            String hwv = this.b.getHWV();
            if (hwv != null) {
                this.a.setHwv(hwv);
            }
            String userAgent = UserAgentManager.getUserAgent(this.c);
            if (userAgent != null) {
                Context.Device.Builder builder = this.a;
                if (!StringsKt__StringsKt.isBlank(userAgent)) {
                    builder.setUa(userAgent);
                }
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listEmptyList) {
                    if (obj instanceof StringTypeConversion) {
                        arrayList.add(obj);
                    }
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() throws Throwable {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class f extends Lambda implements Function0 {
        public final /* synthetic */ MaskedSignals.Builder a;
        public final /* synthetic */ io.bidmachine.internal.v b;
        public final /* synthetic */ DeviceInfo c;
        public final /* synthetic */ android.content.Context d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(MaskedSignals.Builder builder, io.bidmachine.internal.v vVar, DeviceInfo deviceInfo, android.content.Context context) {
            super(0);
            this.a = builder;
            this.b = vVar;
            this.c = deviceInfo;
            this.d = context;
        }

        public final void a() throws Throwable {
            this.a.setPxratio(ProtoUtilsKt.toProtoStringValue(this.b.a(ProtoSerializerKt.protoSerialize(this.c.getScreenDensity()))));
            this.a.setPpi(ProtoUtilsKt.toProtoStringValue(this.b.a(ProtoSerializerKt.protoSerialize(this.c.getScreenDpi()))));
            this.a.setModel(ProtoUtilsKt.toProtoStringValue(this.b.a(ProtoSerializerKt.protoSerialize(this.c.getModel()))));
            String hwv = this.c.getHWV();
            if (hwv != null) {
                this.a.setHwv(ProtoUtilsKt.toProtoStringValue(this.b.a(ProtoSerializerKt.protoSerialize(hwv))));
            }
            String userAgent = UserAgentManager.getUserAgent(this.d);
            if (userAgent != null) {
                MaskedSignals.Builder builder = this.a;
                io.bidmachine.internal.v vVar = this.b;
                if (!StringsKt__StringsKt.isBlank(userAgent)) {
                    builder.setUa(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(userAgent))));
                }
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listEmptyList) {
                    if (obj instanceof StringTypeConversion) {
                        arrayList.add(obj);
                    }
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() throws Throwable {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class g extends Lambda implements Function0 {
        public final /* synthetic */ Context.Device.Builder a;
        public final /* synthetic */ android.content.Context b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(Context.Device.Builder builder, android.content.Context context) {
            super(0);
            this.a = builder;
            this.b = context;
        }

        public final void a() {
            this.a.setIfa(AdvertisingDataManager.a(this.b));
            this.a.setLmt(AdvertisingDataManager.a());
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class h extends Lambda implements Function0 {
        public final /* synthetic */ Context.Device.Builder a;
        public final /* synthetic */ MaskedSignals.Builder b;
        public final /* synthetic */ io.bidmachine.internal.v c;
        public final /* synthetic */ android.content.Context d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Context.Device.Builder builder, MaskedSignals.Builder builder2, io.bidmachine.internal.v vVar, android.content.Context context) {
            super(0);
            this.a = builder;
            this.b = builder2;
            this.c = vVar;
            this.d = context;
        }

        public final void a() {
            this.a.setIfa("00000000-0000-0000-0000-000000000000");
            MaskedSignals.Builder builder = this.b;
            io.bidmachine.internal.v vVar = this.c;
            String strA = AdvertisingDataManager.a(this.d);
            Intrinsics.checkNotNullExpressionValue(strA, "getAdvertisingId(context)");
            builder.setIfa(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(strA))));
            this.b.setLmt(ProtoUtilsKt.toProtoStringValue(this.c.a(ProtoSerializerKt.protoSerialize(AdvertisingDataManager.a()))));
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class i extends Lambda implements Function0 {
        public final /* synthetic */ Context.Device.Builder a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(Context.Device.Builder builder) {
            super(0);
            this.a = builder;
        }

        public final void a() {
            this.a.setIfa("00000000-0000-0000-0000-000000000000");
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class j extends Lambda implements Function0 {
        public final /* synthetic */ DeviceInfo a;
        public final /* synthetic */ Context.Device.Builder b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(DeviceInfo deviceInfo, Context.Device.Builder builder) {
            super(0);
            this.a = deviceInfo;
            this.b = builder;
        }

        public final void a() {
            String phoneMCCMNC = this.a.getPhoneMCCMNC();
            if (phoneMCCMNC != null) {
                Context.Device.Builder builder = this.b;
                if (!StringsKt__StringsKt.isBlank(phoneMCCMNC)) {
                    builder.setMccmnc(phoneMCCMNC);
                }
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listEmptyList) {
                    if (obj instanceof StringTypeConversion) {
                        arrayList.add(obj);
                    }
                }
            }
            String phoneCarrier = this.a.getPhoneCarrier();
            if (phoneCarrier != null) {
                Context.Device.Builder builder2 = this.b;
                if (!StringsKt__StringsKt.isBlank(phoneCarrier)) {
                    builder2.setCarrier(phoneCarrier);
                }
                List listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : listEmptyList2) {
                    if (obj2 instanceof StringTypeConversion) {
                        arrayList2.add(obj2);
                    }
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class k extends Lambda implements Function0 {
        public final /* synthetic */ DeviceInfo a;
        public final /* synthetic */ MaskedSignals.Builder b;
        public final /* synthetic */ io.bidmachine.internal.v c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(DeviceInfo deviceInfo, MaskedSignals.Builder builder, io.bidmachine.internal.v vVar) {
            super(0);
            this.a = deviceInfo;
            this.b = builder;
            this.c = vVar;
        }

        public final void a() {
            String phoneMCCMNC = this.a.getPhoneMCCMNC();
            if (phoneMCCMNC != null) {
                MaskedSignals.Builder builder = this.b;
                io.bidmachine.internal.v vVar = this.c;
                if (!StringsKt__StringsKt.isBlank(phoneMCCMNC)) {
                    builder.setMccmnc(ProtoUtilsKt.toProtoStringValue(vVar.a(ProtoSerializerKt.protoSerialize(phoneMCCMNC))));
                }
                List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listEmptyList) {
                    if (obj instanceof StringTypeConversion) {
                        arrayList.add(obj);
                    }
                }
            }
            String phoneCarrier = this.a.getPhoneCarrier();
            if (phoneCarrier != null) {
                MaskedSignals.Builder builder2 = this.b;
                io.bidmachine.internal.v vVar2 = this.c;
                if (!StringsKt__StringsKt.isBlank(phoneCarrier)) {
                    builder2.setCarrier(ProtoUtilsKt.toProtoStringValue(vVar2.a(ProtoSerializerKt.protoSerialize(phoneCarrier))));
                }
                List listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : listEmptyList2) {
                    if (obj2 instanceof StringTypeConversion) {
                        arrayList2.add(obj2);
                    }
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class l extends Lambda implements Function0 {
        public final /* synthetic */ android.content.Context a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(android.content.Context context) {
            super(0);
            this.a = context;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Location invoke() {
            return UtilsKt.getLocation(this.a);
        }
    }

    public DeviceParams(DeviceConnectionParams deviceConnectionParams) {
        Intrinsics.checkNotNullParameter(deviceConnectionParams, "deviceConnectionParams");
        this.deviceConnectionParams = deviceConnectionParams;
    }

    private final Device.Builder createDeviceBuilder(android.content.Context context, MaskedSignals.Builder builder, io.bidmachine.internal.w wVar, io.bidmachine.internal.v vVar) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            Device.Builder builderNewBuilder = Device.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "this");
            fillDeviceBuilder(context, builderNewBuilder, builder, wVar, vVar);
            objM2760constructorimpl = Result.m2760constructorimpl(builderNewBuilder);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = null;
        }
        return (Device.Builder) objM2760constructorimpl;
    }

    private final Context.Device.Builder createDeviceContextBuilder(android.content.Context context, MaskedSignals.Builder builder, io.bidmachine.internal.w wVar, io.bidmachine.internal.v vVar, ConnectionType connectionType) {
        Object objM2760constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            Context.Device.Builder builderNewBuilder = Context.Device.newBuilder();
            Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "this");
            fillDeviceContextBuilder(context, builderNewBuilder, builder, wVar, vVar, connectionType);
            objM2760constructorimpl = Result.m2760constructorimpl(builderNewBuilder);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = null;
        }
        return (Context.Device.Builder) objM2760constructorimpl;
    }

    private final void fillDeviceBuilder(android.content.Context context, Device.Builder builder, MaskedSignals.Builder builder2, io.bidmachine.internal.w wVar, io.bidmachine.internal.v vVar) throws Throwable {
        io.bidmachine.k kVarB = io.bidmachine.k.b();
        Intrinsics.checkNotNullExpressionValue(kVarB, "get()");
        DeviceInfo deviceInfoObtain = DeviceInfo.Companion.obtain(context);
        deviceInfoObtain.updateHwInfo(context);
        builder.setBmIfv(kVarB.g(context));
        io.bidmachine.internal.w.a(wVar, new a(kVarB, builder), new b(kVarB, builder2, vVar), null, 4, null);
        wVar.b(new c(context, builder, kVarB, deviceInfoObtain), new d(context, builder2, vVar, kVarB, deviceInfoObtain));
        Boolean boolIsCharging = DeviceUtils.isCharging(context);
        if (boolIsCharging != null) {
            builder.setCharging(boolIsCharging.booleanValue());
        }
        Boolean boolIsHeadsetConnected = BluetoothUtils.isHeadsetConnected(context);
        if (boolIsHeadsetConnected != null) {
            builder.setHeadset(boolIsHeadsetConnected.booleanValue());
        }
        Boolean boolIsBatterySaverEnabled = DeviceUtils.isBatterySaverEnabled(context);
        if (boolIsBatterySaverEnabled != null) {
            builder.setBatterysaver(boolIsBatterySaverEnabled.booleanValue());
        }
        builder.setDarkmode(DeviceUtils.isDarkModeEnabled(context));
        Boolean boolIsAirplaneModeOn = DeviceUtils.isAirplaneModeOn(context);
        if (boolIsAirplaneModeOn != null) {
            builder.setAirplane(boolIsAirplaneModeOn.booleanValue());
        }
        Boolean boolIsDoNotDisturbOn = DeviceUtils.isDoNotDisturbOn(context);
        if (boolIsDoNotDisturbOn != null) {
            builder.setDnd(boolIsDoNotDisturbOn.booleanValue());
        }
        ConnectionType connectionType = DeviceUtils.getConnectionType(context);
        Intrinsics.checkNotNullExpressionValue(connectionType, "getConnectionType(context)");
        this.deviceConnectionParams.build(context, builder, connectionType);
        builder.setApilevel(Build.VERSION.SDK_INT);
        String timezoneId = TimeManager.INSTANCE.getTimezoneId();
        if (timezoneId != null) {
            if (timezoneId.length() <= 0) {
                timezoneId = null;
            }
            if (timezoneId != null) {
                builder.setTimezone(timezoneId);
            }
        }
        builder.setJailbreak(deviceInfoObtain.isDeviceRooted());
        Boolean boolIsRingMuted = deviceInfoObtain.getAudio().isRingMuted(context);
        if (boolIsRingMuted != null) {
            builder.setRingmute(boolIsRingMuted.booleanValue());
        }
        String simCountry = deviceInfoObtain.getSimCountry();
        if (simCountry != null) {
            if (!StringsKt__StringsKt.isBlank(simCountry)) {
                builder.setSimCountry(StringValue.of(simCountry));
            }
            List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listEmptyList) {
                if (obj instanceof StringTypeConversion) {
                    arrayList.add(obj);
                }
            }
        }
        Boolean boolIsNetworkInRoaming = deviceInfoObtain.isNetworkInRoaming();
        if (boolIsNetworkInRoaming != null) {
            builder.setNetworkRoaming(BoolValue.of(boolIsNetworkInRoaming.booleanValue()));
        }
    }

    private final void fillDeviceContextBuilder(android.content.Context context, Context.Device.Builder builder, MaskedSignals.Builder builder2, io.bidmachine.internal.w wVar, io.bidmachine.internal.v vVar, ConnectionType connectionType) {
        DeviceInfo deviceInfoObtain = DeviceInfo.Companion.obtain(context);
        builder.setType(DeviceInfoKt.toProtobufDeviceType(deviceInfoObtain.getDeviceType()));
        builder.setOs(OS.OS_ANDROID);
        builder.setOsv(DeviceUtils.getOsVersion());
        builder.setMake(DeviceUtils.getManufacturer());
        String language = Locale.getDefault().getLanguage();
        if (language != null && !StringsKt__StringsKt.isBlank(language)) {
            builder.setLang(language);
        }
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listEmptyList) {
            if (obj instanceof StringTypeConversion) {
                arrayList.add(obj);
            }
        }
        if (connectionType == null) {
            connectionType = DeviceUtils.getConnectionType(context);
            Intrinsics.checkNotNullExpressionValue(connectionType, "getConnectionType(context)");
        }
        builder.setContype(connectionType);
        this.deviceConnectionParams.build(context, builder, connectionType);
        Size screenSize = DeviceUtilsKt.getScreenSize(context);
        builder.setW(screenSize.getWidth());
        builder.setH(screenSize.getHeight());
        wVar.b(new e(builder, deviceInfoObtain, context), new f(builder2, vVar, deviceInfoObtain, context));
        wVar.a(new g(builder, context), new h(builder, builder2, vVar, context), new i(builder));
        wVar.c(new j(deviceInfoObtain, builder), new k(deviceInfoObtain, builder2, vVar));
        builder.setGeo(C4229m.a(builder2, wVar, vVar, new l(context)).build());
    }

    public final void build(android.content.Context context, RequestTokenPayload.Builder requestTokenPayloadBuilder, MaskedSignals.Builder maskedSignalsBuilder, io.bidmachine.internal.w privacyGroupRestrictions, io.bidmachine.internal.v privacyDataMasker) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(requestTokenPayloadBuilder, "requestTokenPayloadBuilder");
        Intrinsics.checkNotNullParameter(maskedSignalsBuilder, "maskedSignalsBuilder");
        Intrinsics.checkNotNullParameter(privacyGroupRestrictions, "privacyGroupRestrictions");
        Intrinsics.checkNotNullParameter(privacyDataMasker, "privacyDataMasker");
        Device.Builder builderCreateDeviceBuilder = createDeviceBuilder(context, maskedSignalsBuilder, privacyGroupRestrictions, privacyDataMasker);
        if (builderCreateDeviceBuilder != null) {
            requestTokenPayloadBuilder.setDeviceData(builderCreateDeviceBuilder);
        }
    }

    public final void build(android.content.Context context, Context.Builder contextBuilder, io.bidmachine.internal.w privacyGroupRestrictions, MaskedSignals.Builder maskedSignalsBuilder, io.bidmachine.internal.v privacyDataMasker, ConnectionType connectionType) {
        Device deviceBuild;
        Any anyPack;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(contextBuilder, "contextBuilder");
        Intrinsics.checkNotNullParameter(privacyGroupRestrictions, "privacyGroupRestrictions");
        Intrinsics.checkNotNullParameter(maskedSignalsBuilder, "maskedSignalsBuilder");
        Intrinsics.checkNotNullParameter(privacyDataMasker, "privacyDataMasker");
        Context.Device.Builder builderCreateDeviceContextBuilder = createDeviceContextBuilder(context, maskedSignalsBuilder, privacyGroupRestrictions, privacyDataMasker, connectionType);
        if (builderCreateDeviceContextBuilder == null) {
            return;
        }
        Device.Builder builderCreateDeviceBuilder = createDeviceBuilder(context, maskedSignalsBuilder, privacyGroupRestrictions, privacyDataMasker);
        if (builderCreateDeviceBuilder != null && (deviceBuild = builderCreateDeviceBuilder.build()) != null && (anyPack = Any.pack(deviceBuild)) != null) {
            builderCreateDeviceContextBuilder.addExtProto(anyPack);
        }
        contextBuilder.setDevice(builderCreateDeviceContextBuilder.build());
    }
}
