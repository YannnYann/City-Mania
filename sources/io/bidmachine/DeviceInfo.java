package io.bidmachine;

import android.content.Context;
import android.media.AudioManager;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.device.MimeTypes;
import io.bidmachine.core.Utils;
import io.bidmachine.util.DeviceType;
import io.bidmachine.util.DeviceUtils;
import java.io.RandomAccessFile;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes4.dex */
public final class DeviceInfo {
    public static final Companion Companion = new Companion(null);
    private static final String OS_NAME = "android";
    private static volatile DeviceInfo instance;
    private final Context appContext;
    private final Audio audio;
    private final q cache;
    private final Cpu cpu;
    private final Lazy deviceType$delegate;
    private final Gpu gpu;
    private String hwv;
    private final Lazy isNetworkInRoaming$delegate;
    private Boolean isRooted;
    private final Lazy isTablet$delegate;
    private final Lazy manufacturer$delegate;
    private final Lazy model$delegate;
    private final String osName;
    private final Lazy osVersion$delegate;
    private final Lazy phoneCarrier$delegate;
    private final Lazy phoneMCCMNC$delegate;
    private final Ram ram;
    private final Lazy screenDensity$delegate;
    private final Lazy screenDpi$delegate;
    private final Lazy simCarrier$delegate;
    private final Lazy simCountry$delegate;
    private Long totalDiskSpaceInMBValue;

    public static final class Audio {
        private final AudioManager getAudioManager(Context context) {
            Object systemService = context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
            if (systemService instanceof AudioManager) {
                return (AudioManager) systemService;
            }
            return null;
        }

        public final Float getVolumeLevel(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AudioManager audioManager = getAudioManager(context);
            if (audioManager == null) {
                return null;
            }
            int streamVolume = audioManager.getStreamVolume(3);
            int streamMaxVolume = audioManager.getStreamMaxVolume(3) - (Build.VERSION.SDK_INT >= 28 ? audioManager.getStreamMinVolume(3) : 0);
            return Float.valueOf(streamMaxVolume == 0 ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : (streamVolume - r6) / streamMaxVolume);
        }

        public final Boolean isRingMuted(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AudioManager audioManager = getAudioManager(context);
            if (audioManager == null) {
                return null;
            }
            int ringerMode = audioManager.getRingerMode();
            boolean z = true;
            if (ringerMode != 0 && ringerMode != 1) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DeviceInfo obtain(Context context) {
            DeviceInfo deviceInfo;
            Intrinsics.checkNotNullParameter(context, "context");
            DeviceInfo deviceInfo2 = DeviceInfo.instance;
            if (deviceInfo2 != null) {
                return deviceInfo2;
            }
            synchronized (DeviceInfo.class) {
                deviceInfo = DeviceInfo.instance;
                if (deviceInfo == null) {
                    deviceInfo = new DeviceInfo(context, null);
                    DeviceInfo.instance = deviceInfo;
                }
            }
            return deviceInfo;
        }

        private Companion() {
        }
    }

    public static final class Cpu {
        public static final Companion Companion = new Companion(null);
        public static final String KEY_NAME = "cpu_name";
        public static final String KEY_VENDOR = "cpu_vendor";
        private static final Pattern VALUE_PATTERN;
        private q cache;
        private String name;
        private String vendor;

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        static {
            Pattern patternCompile = Pattern.compile(":\\s*(.*)");
            Intrinsics.checkNotNullExpressionValue(patternCompile, "compile(\":\\\\s*(.*)\")");
            VALUE_PATTERN = patternCompile;
        }

        private final void extract() throws Throwable {
            read();
            if (TextUtils.isEmpty(this.name)) {
                this.name = Build.BOARD;
            }
            if (TextUtils.isEmpty(this.vendor)) {
                this.vendor = Build.HARDWARE;
            }
        }

        private final String findValue(String str) {
            Matcher matcher = VALUE_PATTERN.matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
            return null;
        }

        private final void read() throws Throwable {
            RandomAccessFile randomAccessFile = null;
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile("/proc/cpuinfo", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ);
                while (true) {
                    try {
                        String line = randomAccessFile2.readLine();
                        if (line == null) {
                            break;
                        }
                        if (StringsKt__StringsJVMKt.startsWith$default(line, "model name:", false, 2, null) || StringsKt__StringsJVMKt.startsWith$default(line, "Hardware:", false, 2, null)) {
                            this.name = findValue(line);
                        } else if (StringsKt__StringsJVMKt.startsWith$default(line, "vendor_id:", false, 2, null)) {
                            this.vendor = findValue(line);
                        }
                        if (this.name != null && this.vendor != null) {
                            break;
                        }
                    } catch (Exception unused) {
                        randomAccessFile = randomAccessFile2;
                        Utils.close(randomAccessFile);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        randomAccessFile = randomAccessFile2;
                        Utils.close(randomAccessFile);
                        throw th;
                    }
                }
                Utils.close(randomAccessFile2);
            } catch (Exception unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public final void attach$bidmachine_android_sdk_ba_3_8_0(q cache) {
            Intrinsics.checkNotNullParameter(cache, "cache");
            this.cache = cache;
        }

        public final String getName() {
            return this.name;
        }

        public final String getVendor() {
            return this.vendor;
        }

        public final void update(Context context) throws Throwable {
            Intrinsics.checkNotNullParameter(context, "context");
            q qVar = null;
            if (TextUtils.isEmpty(this.name)) {
                q qVar2 = this.cache;
                if (qVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cache");
                    qVar2 = null;
                }
                this.name = qVar2.a(context, KEY_NAME);
            }
            if (TextUtils.isEmpty(this.vendor)) {
                q qVar3 = this.cache;
                if (qVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cache");
                    qVar3 = null;
                }
                this.vendor = qVar3.a(context, KEY_VENDOR);
            }
            if (TextUtils.isEmpty(this.name) || TextUtils.isEmpty(this.vendor)) {
                extract();
                q qVar4 = this.cache;
                if (qVar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cache");
                    qVar4 = null;
                }
                qVar4.a(context, KEY_NAME, this.name);
                q qVar5 = this.cache;
                if (qVar5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cache");
                } else {
                    qVar = qVar5;
                }
                qVar.a(context, KEY_VENDOR, this.vendor);
            }
        }
    }

    public static final class Gpu {
        public static final Companion Companion = new Companion(null);
        public static final String KEY_NAME = "gpu_name";
        public static final String KEY_VENDOR = "gpu_vendor";
        private q cache;
        private String name;
        private String vendor;

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        private final EGLConfig chooseEGLConfig(EGLDisplay eGLDisplay) {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr = new int[1];
            EGL14.eglChooseConfig(eGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12344}, 0, eGLConfigArr, 0, 1, iArr, 0);
            if (iArr[0] == 0) {
                return null;
            }
            return eGLConfigArr[0];
        }

        private final void cleanUpEGL(EGLDisplay eGLDisplay, EGLSurface eGLSurface, EGLContext eGLContext) {
            if (eGLDisplay != null) {
                makeCurrent(eGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
                if (eGLSurface != null) {
                    EGL14.eglDestroySurface(eGLDisplay, eGLSurface);
                }
                if (eGLContext != null) {
                    EGL14.eglDestroyContext(eGLDisplay, eGLContext);
                }
                EGL14.eglTerminate(eGLDisplay);
            }
        }

        private final EGLContext createEGLContext(EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
            Intrinsics.checkNotNullExpressionValue(eGLContextEglCreateContext, "eglCreateContext(\n      …          0\n            )");
            return eGLContextEglCreateContext;
        }

        private final EGLSurface createEGLSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            EGLSurface eGLSurfaceEglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, new int[]{12375, 64, 12374, 64, 12344}, 0);
            Intrinsics.checkNotNullExpressionValue(eGLSurfaceEglCreatePbufferSurface, "eglCreatePbufferSurface(…eglConfig, attributes, 0)");
            return eGLSurfaceEglCreatePbufferSurface;
        }

        private final void extract() throws Throwable {
            EGLContext eGLContext;
            EGLSurface eGLSurfaceCreateEGLSurface;
            EGLContext eGLContext2;
            EGLDisplay eGLDisplay;
            EGLDisplay eGLDisplayInitEGLDisplay;
            EGLConfig eGLConfigChooseEGLConfig;
            EGLDisplay eGLDisplay2 = null;
            eGLContextCreateEGLContext = null;
            EGLContext eGLContextCreateEGLContext = null;
            EGLSurface eGLSurface = null;
            EGLDisplay eGLDisplay3 = null;
            try {
                eGLDisplayInitEGLDisplay = initEGLDisplay();
                try {
                    eGLConfigChooseEGLConfig = chooseEGLConfig(eGLDisplayInitEGLDisplay);
                } catch (Exception unused) {
                    eGLSurfaceCreateEGLSurface = null;
                    eGLDisplay3 = eGLDisplayInitEGLDisplay;
                    eGLContext2 = null;
                } catch (Throwable th) {
                    th = th;
                    eGLSurfaceCreateEGLSurface = null;
                    eGLDisplay2 = eGLDisplayInitEGLDisplay;
                    eGLContext = null;
                }
            } catch (Exception unused2) {
                eGLContext2 = null;
                eGLSurfaceCreateEGLSurface = null;
            } catch (Throwable th2) {
                th = th2;
                eGLContext = null;
                eGLSurfaceCreateEGLSurface = null;
            }
            if (eGLConfigChooseEGLConfig == null) {
                eGLDisplay = eGLDisplayInitEGLDisplay;
                eGLContext2 = null;
                cleanUpEGL(eGLDisplay, eGLSurface, eGLContext2);
            }
            eGLSurfaceCreateEGLSurface = createEGLSurface(eGLDisplayInitEGLDisplay, eGLConfigChooseEGLConfig);
            try {
                eGLContextCreateEGLContext = createEGLContext(eGLDisplayInitEGLDisplay, eGLConfigChooseEGLConfig);
                makeCurrent(eGLDisplayInitEGLDisplay, eGLSurfaceCreateEGLSurface, eGLContextCreateEGLContext);
                this.name = GLES20.glGetString(7937);
                this.vendor = GLES20.glGetString(7936);
                eGLDisplay = eGLDisplayInitEGLDisplay;
                eGLContext2 = eGLContextCreateEGLContext;
            } catch (Exception unused3) {
                eGLContext2 = eGLContextCreateEGLContext;
                eGLDisplay3 = eGLDisplayInitEGLDisplay;
                eGLDisplay = eGLDisplay3;
            } catch (Throwable th3) {
                th = th3;
                eGLContext = eGLContextCreateEGLContext;
                eGLDisplay2 = eGLDisplayInitEGLDisplay;
                cleanUpEGL(eGLDisplay2, eGLSurfaceCreateEGLSurface, eGLContext);
                throw th;
            }
            eGLSurface = eGLSurfaceCreateEGLSurface;
            cleanUpEGL(eGLDisplay, eGLSurface, eGLContext2);
            eGLDisplay = eGLDisplay3;
            eGLSurface = eGLSurfaceCreateEGLSurface;
            cleanUpEGL(eGLDisplay, eGLSurface, eGLContext2);
        }

        private final EGLDisplay initEGLDisplay() {
            EGLDisplay eglDisplay = EGL14.eglGetDisplay(0);
            int[] iArr = new int[2];
            EGL14.eglInitialize(eglDisplay, iArr, 0, iArr, 1);
            Intrinsics.checkNotNullExpressionValue(eglDisplay, "eglDisplay");
            return eglDisplay;
        }

        private final void makeCurrent(EGLDisplay eGLDisplay, EGLSurface eGLSurface, EGLContext eGLContext) {
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
        }

        public final void attach$bidmachine_android_sdk_ba_3_8_0(q cache) {
            Intrinsics.checkNotNullParameter(cache, "cache");
            this.cache = cache;
        }

        public final String getName() {
            return this.name;
        }

        public final String getVendor() {
            return this.vendor;
        }

        public final void update(Context context) throws Throwable {
            Intrinsics.checkNotNullParameter(context, "context");
            q qVar = null;
            if (TextUtils.isEmpty(this.name)) {
                q qVar2 = this.cache;
                if (qVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cache");
                    qVar2 = null;
                }
                this.name = qVar2.a(context, KEY_NAME);
            }
            if (TextUtils.isEmpty(this.vendor)) {
                q qVar3 = this.cache;
                if (qVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cache");
                    qVar3 = null;
                }
                this.vendor = qVar3.a(context, KEY_VENDOR);
            }
            if (TextUtils.isEmpty(this.name) || TextUtils.isEmpty(this.vendor)) {
                extract();
                q qVar4 = this.cache;
                if (qVar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cache");
                    qVar4 = null;
                }
                qVar4.a(context, KEY_NAME, this.name);
                q qVar5 = this.cache;
                if (qVar5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cache");
                } else {
                    qVar = qVar5;
                }
                qVar.a(context, KEY_VENDOR, this.vendor);
            }
        }
    }

    public static final class Ram {
        public static final Companion Companion = new Companion(null);
        private static final Pattern DIGITS_PATTERN;
        private Long freeMemBytes;
        private Long totalMemBytes;

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }

        static {
            Pattern patternCompile = Pattern.compile("(\\d+)");
            Intrinsics.checkNotNullExpressionValue(patternCompile, "compile(\"(\\\\d+)\")");
            DIGITS_PATTERN = patternCompile;
        }

        private final String findValue(String str) {
            if (str == null) {
                return null;
            }
            Matcher matcher = DIGITS_PATTERN.matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
            return null;
        }

        private final Long parseValue(String str) {
            if (str == null) {
                return null;
            }
            try {
                return Long.valueOf(Long.parseLong(str) * ((long) 1024));
            } catch (NumberFormatException unused) {
                return null;
            }
        }

        public final Long getFreeMemBytes() {
            return this.freeMemBytes;
        }

        public final Long getTotalMemBytes() {
            return this.totalMemBytes;
        }

        public final void update() throws Throwable {
            RandomAccessFile randomAccessFile = null;
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(AndroidDynamicDeviceInfoDataSource.DIRECTORY_MEM_INFO, AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ);
                while (true) {
                    try {
                        String line = randomAccessFile2.readLine();
                        if (line == null) {
                            break;
                        }
                        if (StringsKt__StringsJVMKt.startsWith$default(line, "MemTotal:", false, 2, null)) {
                            this.totalMemBytes = parseValue(findValue(line));
                        } else if (StringsKt__StringsJVMKt.startsWith$default(line, "MemAvailable:", false, 2, null)) {
                            this.freeMemBytes = parseValue(findValue(line));
                        }
                        if (this.totalMemBytes != null && this.freeMemBytes != null) {
                            break;
                        }
                    } catch (Exception unused) {
                        randomAccessFile = randomAccessFile2;
                        Utils.close(randomAccessFile);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        randomAccessFile = randomAccessFile2;
                        Utils.close(randomAccessFile);
                        throw th;
                    }
                }
                Utils.close(randomAccessFile2);
            } catch (Exception unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public static final class a extends Lambda implements Function0 {
        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeviceType invoke() {
            return DeviceUtils.getDeviceType(DeviceInfo.this.appContext);
        }
    }

    public static final class b extends Lambda implements Function0 {
        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return DeviceUtils.isNetworkRoaming(DeviceInfo.this.appContext);
        }
    }

    public static final class c extends Lambda implements Function0 {
        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(DeviceUtils.isTablet(DeviceInfo.this.appContext));
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return DeviceUtils.getManufacturer();
        }
    }

    public static final class e extends Lambda implements Function0 {
        public static final e a = new e();

        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return DeviceUtils.getModel();
        }
    }

    public static final class f extends Lambda implements Function0 {
        public static final f a = new f();

        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return String.valueOf(Build.VERSION.SDK_INT);
        }
    }

    public static final class g extends Lambda implements Function0 {
        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return DeviceUtils.getPhoneNetworkOperatorName(DeviceInfo.this.appContext);
        }
    }

    public static final class h extends Lambda implements Function0 {
        public h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return DeviceUtils.getPhoneMCCMNC(DeviceInfo.this.appContext);
        }
    }

    public static final class i extends Lambda implements Function0 {
        public i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Float invoke() {
            return Float.valueOf(DeviceUtils.getScreenDensity(DeviceInfo.this.appContext));
        }
    }

    public static final class j extends Lambda implements Function0 {
        public j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            return Integer.valueOf(io.bidmachine.utils.DeviceUtils.getScreenDpi(DeviceInfo.this.appContext));
        }
    }

    public static final class k extends Lambda implements Function0 {
        public k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return DeviceUtils.getPhoneSimOperatorName(DeviceInfo.this.appContext);
        }
    }

    public static final class l extends Lambda implements Function0 {
        public l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return DeviceUtils.getPhoneSimCountryIso(DeviceInfo.this.appContext);
        }
    }

    public /* synthetic */ DeviceInfo(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    private final String getKernelVersionThroughProcVersion() throws Throwable {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        try {
            randomAccessFile = new RandomAccessFile("/proc/version", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ);
            try {
                String line = randomAccessFile.readLine();
                Utils.close(randomAccessFile);
                return line;
            } catch (Exception unused) {
                Utils.close(randomAccessFile);
                return null;
            } catch (Throwable th) {
                th = th;
                randomAccessFile2 = randomAccessFile;
                Utils.close(randomAccessFile2);
                throw th;
            }
        } catch (Exception unused2) {
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String getKernelVersionThroughUName() throws java.lang.Throwable {
        /*
            r5 = this;
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L4a
            java.lang.String r2 = "uname -a"
            java.lang.Process r1 = r1.exec(r2)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L4a
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L4b
            java.io.InputStream r3 = r1.getInputStream()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L4b
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L4b
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L34
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L34
            java.lang.String r0 = r3.readLine()     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L4d
            io.bidmachine.core.Utils.close(r3)
            io.bidmachine.core.Utils.close(r2)
            r1.destroy()
            return r0
        L27:
            r0 = move-exception
            r4 = r1
            r1 = r0
            r0 = r2
            r2 = r4
            goto L3e
        L2d:
            r3 = move-exception
            r4 = r3
            r3 = r0
            r0 = r2
            r2 = r1
            r1 = r4
            goto L3e
        L34:
            r3 = r0
            goto L4d
        L36:
            r2 = move-exception
            r4 = r2
            r2 = r1
            r1 = r4
            goto L3d
        L3b:
            r1 = move-exception
            r2 = r0
        L3d:
            r3 = r0
        L3e:
            io.bidmachine.core.Utils.close(r3)
            io.bidmachine.core.Utils.close(r0)
            if (r2 == 0) goto L49
            r2.destroy()
        L49:
            throw r1
        L4a:
            r1 = r0
        L4b:
            r2 = r0
            r3 = r2
        L4d:
            io.bidmachine.core.Utils.close(r3)
            io.bidmachine.core.Utils.close(r2)
            if (r1 == 0) goto L58
            r1.destroy()
        L58:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.DeviceInfo.getKernelVersionThroughUName():java.lang.String");
    }

    public static final DeviceInfo obtain(Context context) {
        return Companion.obtain(context);
    }

    public final Audio getAudio() {
        return this.audio;
    }

    public final Long getAvailableDiskSpaceInMB() {
        try {
            if (!Utils.isExternalMemoryAvailable()) {
                return null;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return Long.valueOf((statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong()) / 1048576);
        } catch (Exception unused) {
            return null;
        }
    }

    public final Cpu getCpu() {
        return this.cpu;
    }

    public final DeviceType getDeviceType() {
        return (DeviceType) this.deviceType$delegate.getValue();
    }

    public final Gpu getGpu() {
        return this.gpu;
    }

    public final String getHWV() throws Throwable {
        String str = this.hwv;
        if (str != null) {
            return str;
        }
        String kernelVersionThroughProcVersion = getKernelVersionThroughProcVersion();
        if (!TextUtils.isEmpty(kernelVersionThroughProcVersion)) {
            this.hwv = kernelVersionThroughProcVersion;
            return kernelVersionThroughProcVersion;
        }
        String kernelVersionThroughUName = getKernelVersionThroughUName();
        this.hwv = kernelVersionThroughUName;
        return kernelVersionThroughUName;
    }

    public final String getManufacturer() {
        return (String) this.manufacturer$delegate.getValue();
    }

    public final String getModel() {
        return (String) this.model$delegate.getValue();
    }

    public final String getOsName() {
        return this.osName;
    }

    public final String getOsVersion() {
        return (String) this.osVersion$delegate.getValue();
    }

    public final String getPhoneCarrier() {
        return (String) this.phoneCarrier$delegate.getValue();
    }

    public final String getPhoneMCCMNC() {
        return (String) this.phoneMCCMNC$delegate.getValue();
    }

    public final Ram getRam() {
        return this.ram;
    }

    public final float getScreenDensity() {
        return ((Number) this.screenDensity$delegate.getValue()).floatValue();
    }

    public final int getScreenDpi() {
        return ((Number) this.screenDpi$delegate.getValue()).intValue();
    }

    public final String getSimCarrier() {
        return (String) this.simCarrier$delegate.getValue();
    }

    public final String getSimCountry() {
        return (String) this.simCountry$delegate.getValue();
    }

    public final Long getTotalDiskSpaceInMB() {
        Long l2 = this.totalDiskSpaceInMBValue;
        if (l2 != null) {
            return Long.valueOf(l2.longValue());
        }
        try {
            if (!Utils.isExternalMemoryAvailable()) {
                return null;
            }
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSizeLong = (statFs.getBlockSizeLong() * statFs.getBlockCountLong()) / 1048576;
            Long lValueOf = Long.valueOf(blockSizeLong);
            this.totalDiskSpaceInMBValue = Long.valueOf(blockSizeLong);
            return lValueOf;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isDeviceRooted() {
        /*
            r10 = this;
            java.lang.Boolean r0 = r10.isRooted
            if (r0 == 0) goto L9
            boolean r0 = r0.booleanValue()
            return r0
        L9:
            r0 = 1
            r1 = 0
            java.lang.String r2 = "/sbin/su"
            java.lang.String r3 = "/system/bin/su"
            java.lang.String r4 = "/system/xbin/su"
            java.lang.String r5 = "/data/local/xbin/su"
            java.lang.String r6 = "/data/local/bin/su"
            java.lang.String r7 = "/system/sd/xbin/su"
            java.lang.String r8 = "/system/bin/failsafe/su"
            java.lang.String r9 = "/data/local/su"
            java.lang.String[] r2 = new java.lang.String[]{r2, r3, r4, r5, r6, r7, r8, r9}     // Catch: java.lang.Exception -> L39
            r3 = r1
        L20:
            r4 = 8
            if (r3 >= r4) goto L39
            r4 = r2[r3]     // Catch: java.lang.Exception -> L39
            java.io.File r5 = new java.io.File     // Catch: java.lang.Exception -> L39
            r5.<init>(r4)     // Catch: java.lang.Exception -> L39
            boolean r4 = r5.exists()     // Catch: java.lang.Exception -> L39
            if (r4 == 0) goto L36
            java.lang.Boolean r2 = java.lang.Boolean.TRUE     // Catch: java.lang.Exception -> L39
            r10.isRooted = r2     // Catch: java.lang.Exception -> L39
            return r0
        L36:
            int r3 = r3 + 1
            goto L20
        L39:
            r2 = 0
            java.lang.Runtime r3 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            java.lang.String r4 = "/system/xbin/which"
            java.lang.String r5 = "su"
            java.lang.String[] r4 = new java.lang.String[]{r4, r5}     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            java.lang.Process r2 = r3.exec(r4)     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            java.io.InputStreamReader r4 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            java.io.InputStream r5 = r2.getInputStream()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            java.lang.String r3 = r3.readLine()     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            if (r3 == 0) goto L5f
            goto L60
        L5f:
            r0 = r1
        L60:
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            r10.isRooted = r3     // Catch: java.lang.Throwable -> L6b java.lang.Exception -> L6d
            r2.destroy()
            r1 = r0
            goto L76
        L6b:
            r0 = move-exception
            goto L77
        L6d:
            java.lang.Boolean r0 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L6b
            r10.isRooted = r0     // Catch: java.lang.Throwable -> L6b
            if (r2 == 0) goto L76
            r2.destroy()
        L76:
            return r1
        L77:
            if (r2 == 0) goto L7c
            r2.destroy()
        L7c:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.DeviceInfo.isDeviceRooted():boolean");
    }

    public final Boolean isNetworkInRoaming() {
        return (Boolean) this.isNetworkInRoaming$delegate.getValue();
    }

    public final boolean isTablet() {
        return ((Boolean) this.isTablet$delegate.getValue()).booleanValue();
    }

    public final void updateHwInfo(Context context) throws Throwable {
        Intrinsics.checkNotNullParameter(context, "context");
        this.cpu.update(context);
        this.gpu.update(context);
        this.ram.update();
    }

    private DeviceInfo(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.appContext = applicationContext != null ? applicationContext : context;
        this.osName = "android";
        this.osVersion$delegate = LazyKt__LazyJVMKt.lazy(f.a);
        this.manufacturer$delegate = LazyKt__LazyJVMKt.lazy(d.a);
        this.model$delegate = LazyKt__LazyJVMKt.lazy(e.a);
        this.screenDpi$delegate = LazyKt__LazyJVMKt.lazy(new j());
        this.screenDensity$delegate = LazyKt__LazyJVMKt.lazy(new i());
        this.deviceType$delegate = LazyKt__LazyJVMKt.lazy(new a());
        this.isTablet$delegate = LazyKt__LazyJVMKt.lazy(new c());
        this.phoneMCCMNC$delegate = LazyKt__LazyJVMKt.lazy(new h());
        this.phoneCarrier$delegate = LazyKt__LazyJVMKt.lazy(new g());
        this.simCarrier$delegate = LazyKt__LazyJVMKt.lazy(new k());
        this.simCountry$delegate = LazyKt__LazyJVMKt.lazy(new l());
        this.isNetworkInRoaming$delegate = LazyKt__LazyJVMKt.lazy(new b());
        this.audio = new Audio();
        this.ram = new Ram();
        q qVar = new q();
        this.cache = qVar;
        Cpu cpu = new Cpu();
        cpu.attach$bidmachine_android_sdk_ba_3_8_0(qVar);
        this.cpu = cpu;
        Gpu gpu = new Gpu();
        gpu.attach$bidmachine_android_sdk_ba_3_8_0(qVar);
        this.gpu = gpu;
    }
}
