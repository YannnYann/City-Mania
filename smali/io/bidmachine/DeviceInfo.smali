###### Class io.bidmachine.DeviceInfo (io.bidmachine.DeviceInfo)
.class public final Lio/bidmachine/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/DeviceInfo$Audio;,
        Lio/bidmachine/DeviceInfo$Cpu;,
        Lio/bidmachine/DeviceInfo$Gpu;,
        Lio/bidmachine/DeviceInfo$Ram;,
        Lio/bidmachine/DeviceInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/DeviceInfo$Companion;

.field private static final OS_NAME:Ljava/lang/String; = "android"

.field private static volatile instance:Lio/bidmachine/DeviceInfo;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final audio:Lio/bidmachine/DeviceInfo$Audio;

.field private final cache:Lio/bidmachine/q;

.field private final cpu:Lio/bidmachine/DeviceInfo$Cpu;

.field private final deviceType$delegate:Lkotlin/Lazy;

.field private final gpu:Lio/bidmachine/DeviceInfo$Gpu;

.field private hwv:Ljava/lang/String;

.field private final isNetworkInRoaming$delegate:Lkotlin/Lazy;

.field private isRooted:Ljava/lang/Boolean;

.field private final isTablet$delegate:Lkotlin/Lazy;

.field private final manufacturer$delegate:Lkotlin/Lazy;

.field private final model$delegate:Lkotlin/Lazy;

.field private final osName:Ljava/lang/String;

.field private final osVersion$delegate:Lkotlin/Lazy;

.field private final phoneCarrier$delegate:Lkotlin/Lazy;

.field private final phoneMCCMNC$delegate:Lkotlin/Lazy;

.field private final ram:Lio/bidmachine/DeviceInfo$Ram;

.field private final screenDensity$delegate:Lkotlin/Lazy;

.field private final screenDpi$delegate:Lkotlin/Lazy;

.field private final simCarrier$delegate:Lkotlin/Lazy;

.field private final simCountry$delegate:Lkotlin/Lazy;

.field private totalDiskSpaceInMBValue:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/DeviceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/DeviceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/DeviceInfo;->Companion:Lio/bidmachine/DeviceInfo$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_b

    :cond_a
    move-object p1, v0

    :goto_b
    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->appContext:Landroid/content/Context;

    .line 4
    const-string p1, "android"

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->osName:Ljava/lang/String;

    .line 5
    sget-object p1, Lio/bidmachine/DeviceInfo$f;->a:Lio/bidmachine/DeviceInfo$f;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->osVersion$delegate:Lkotlin/Lazy;

    .line 6
    sget-object p1, Lio/bidmachine/DeviceInfo$d;->a:Lio/bidmachine/DeviceInfo$d;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->manufacturer$delegate:Lkotlin/Lazy;

    .line 7
    sget-object p1, Lio/bidmachine/DeviceInfo$e;->a:Lio/bidmachine/DeviceInfo$e;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->model$delegate:Lkotlin/Lazy;

    .line 8
    new-instance p1, Lio/bidmachine/DeviceInfo$j;

    invoke-direct {p1, p0}, Lio/bidmachine/DeviceInfo$j;-><init>(Lio/bidmachine/DeviceInfo;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->screenDpi$delegate:Lkotlin/Lazy;

    .line 9
    new-instance p1, Lio/bidmachine/DeviceInfo$i;

    invoke-direct {p1, p0}, Lio/bidmachine/DeviceInfo$i;-><init>(Lio/bidmachine/DeviceInfo;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->screenDensity$delegate:Lkotlin/Lazy;

    .line 10
    new-instance p1, Lio/bidmachine/DeviceInfo$a;

    invoke-direct {p1, p0}, Lio/bidmachine/DeviceInfo$a;-><init>(Lio/bidmachine/DeviceInfo;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->deviceType$delegate:Lkotlin/Lazy;

    .line 11
    new-instance p1, Lio/bidmachine/DeviceInfo$c;

    invoke-direct {p1, p0}, Lio/bidmachine/DeviceInfo$c;-><init>(Lio/bidmachine/DeviceInfo;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->isTablet$delegate:Lkotlin/Lazy;

    .line 12
    new-instance p1, Lio/bidmachine/DeviceInfo$h;

    invoke-direct {p1, p0}, Lio/bidmachine/DeviceInfo$h;-><init>(Lio/bidmachine/DeviceInfo;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->phoneMCCMNC$delegate:Lkotlin/Lazy;

    .line 13
    new-instance p1, Lio/bidmachine/DeviceInfo$g;

    invoke-direct {p1, p0}, Lio/bidmachine/DeviceInfo$g;-><init>(Lio/bidmachine/DeviceInfo;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->phoneCarrier$delegate:Lkotlin/Lazy;

    .line 14
    new-instance p1, Lio/bidmachine/DeviceInfo$k;

    invoke-direct {p1, p0}, Lio/bidmachine/DeviceInfo$k;-><init>(Lio/bidmachine/DeviceInfo;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->simCarrier$delegate:Lkotlin/Lazy;

    .line 15
    new-instance p1, Lio/bidmachine/DeviceInfo$l;

    invoke-direct {p1, p0}, Lio/bidmachine/DeviceInfo$l;-><init>(Lio/bidmachine/DeviceInfo;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->simCountry$delegate:Lkotlin/Lazy;

    .line 16
    new-instance p1, Lio/bidmachine/DeviceInfo$b;

    invoke-direct {p1, p0}, Lio/bidmachine/DeviceInfo$b;-><init>(Lio/bidmachine/DeviceInfo;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->isNetworkInRoaming$delegate:Lkotlin/Lazy;

    .line 17
    new-instance p1, Lio/bidmachine/DeviceInfo$Audio;

    invoke-direct {p1}, Lio/bidmachine/DeviceInfo$Audio;-><init>()V

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->audio:Lio/bidmachine/DeviceInfo$Audio;

    .line 18
    new-instance p1, Lio/bidmachine/DeviceInfo$Ram;

    invoke-direct {p1}, Lio/bidmachine/DeviceInfo$Ram;-><init>()V

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->ram:Lio/bidmachine/DeviceInfo$Ram;

    .line 19
    new-instance p1, Lio/bidmachine/q;

    invoke-direct {p1}, Lio/bidmachine/q;-><init>()V

    iput-object p1, p0, Lio/bidmachine/DeviceInfo;->cache:Lio/bidmachine/q;

    .line 20
    new-instance v0, Lio/bidmachine/DeviceInfo$Cpu;

    invoke-direct {v0}, Lio/bidmachine/DeviceInfo$Cpu;-><init>()V

    invoke-virtual {v0, p1}, Lio/bidmachine/DeviceInfo$Cpu;->attach$bidmachine_android_sdk_ba_3_8_0(Lio/bidmachine/q;)V

    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->cpu:Lio/bidmachine/DeviceInfo$Cpu;

    .line 21
    new-instance v0, Lio/bidmachine/DeviceInfo$Gpu;

    invoke-direct {v0}, Lio/bidmachine/DeviceInfo$Gpu;-><init>()V

    invoke-virtual {v0, p1}, Lio/bidmachine/DeviceInfo$Gpu;->attach$bidmachine_android_sdk_ba_3_8_0(Lio/bidmachine/q;)V

    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->gpu:Lio/bidmachine/DeviceInfo$Gpu;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getAppContext$p(Lio/bidmachine/DeviceInfo;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/bidmachine/DeviceInfo;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lio/bidmachine/DeviceInfo;
    .registers 1

    .line 1
    sget-object v0, Lio/bidmachine/DeviceInfo;->instance:Lio/bidmachine/DeviceInfo;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lio/bidmachine/DeviceInfo;)V
    .registers 1

    .line 1
    sput-object p0, Lio/bidmachine/DeviceInfo;->instance:Lio/bidmachine/DeviceInfo;

    return-void
.end method

.method private final getKernelVersionThroughProcVersion()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/proc/version"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_1c
    .catchall {:try_start_1 .. :try_end_a} :catchall_17

    .line 2
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_1d
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 6
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_12
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_18

    :catchall_17
    move-exception v1

    .line 7
    :goto_18
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    throw v1

    :catch_1c
    move-object v1, v0

    .line 8
    :catch_1d
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-object v0
.end method

.method private final getKernelVersionThroughUName()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "uname -a"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_4a
    .catchall {:try_start_1 .. :try_end_b} :catchall_3b

    .line 2
    :try_start_b
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_4b
    .catchall {:try_start_b .. :try_end_14} :catchall_36

    .line 3
    :try_start_14
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_34
    .catchall {:try_start_14 .. :try_end_19} :catchall_2d

    .line 4
    :try_start_19
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_4d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_27

    .line 8
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 9
    invoke-static {v2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    return-object v0

    :catchall_27
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    goto :goto_3e

    :catchall_2d
    move-exception v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_3e

    :catch_34
    move-object v3, v0

    goto :goto_4d

    :catchall_36
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_3d

    :catchall_3b
    move-exception v1

    move-object v2, v0

    :goto_3d
    move-object v3, v0

    .line 11
    :goto_3e
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 12
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    if-eqz v2, :cond_49

    .line 13
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_49
    throw v1

    :catch_4a
    move-object v1, v0

    :catch_4b
    move-object v2, v0

    move-object v3, v2

    .line 14
    :catch_4d
    :goto_4d
    invoke-static {v3}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    .line 15
    invoke-static {v2}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    if-eqz v1, :cond_58

    .line 16
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_58
    return-object v0
.end method

.method public static final obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;
    .registers 2

    .line 0
    sget-object v0, Lio/bidmachine/DeviceInfo;->Companion:Lio/bidmachine/DeviceInfo$Companion;

    invoke-virtual {v0, p0}, Lio/bidmachine/DeviceInfo$Companion;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAudio()Lio/bidmachine/DeviceInfo$Audio;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->audio:Lio/bidmachine/DeviceInfo$Audio;

    return-object v0
.end method

.method public final getAvailableDiskSpaceInMB()Ljava/lang/Long;
    .registers 6

    .line 1
    :try_start_0
    invoke-static {}, Lio/bidmachine/core/Utils;->isExternalMemoryAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_26

    .line 4
    :cond_7
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x100000

    .line 6
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return-object v0

    :catch_26
    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCpu()Lio/bidmachine/DeviceInfo$Cpu;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->cpu:Lio/bidmachine/DeviceInfo$Cpu;

    return-object v0
.end method

.method public final getDeviceType()Lio/bidmachine/util/DeviceType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->deviceType$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/util/DeviceType;

    return-object v0
.end method

.method public final getGpu()Lio/bidmachine/DeviceInfo$Gpu;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->gpu:Lio/bidmachine/DeviceInfo$Gpu;

    return-object v0
.end method

.method public final getHWV()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->hwv:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 3
    :cond_5
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo;->getKernelVersionThroughProcVersion()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 5
    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->hwv:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_12
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo;->getKernelVersionThroughUName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->hwv:Ljava/lang/String;

    return-object v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->manufacturer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->model$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOsName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->osVersion$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneCarrier()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->phoneCarrier$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneMCCMNC()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->phoneMCCMNC$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRam()Lio/bidmachine/DeviceInfo$Ram;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->ram:Lio/bidmachine/DeviceInfo$Ram;

    return-object v0
.end method

.method public final getScreenDensity()F
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->screenDensity$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getScreenDpi()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->screenDpi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSimCarrier()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->simCarrier$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSimCountry()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->simCountry$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalDiskSpaceInMB()Ljava/lang/Long;
    .registers 6

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->totalDiskSpaceInMBValue:Ljava/lang/Long;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 3
    :cond_d
    :try_start_d
    invoke-static {}, Lio/bidmachine/core/Utils;->isExternalMemoryAvailable()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_39

    .line 6
    :cond_14
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x100000

    .line 8
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/DeviceInfo;->totalDiskSpaceInMBValue:Ljava/lang/Long;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_38} :catch_39

    return-object v0

    :catch_39
    :goto_39
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isDeviceRooted()Z
    .registers 11

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->isRooted:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    :try_start_b
    const-string v2, "/sbin/su"

    const-string v3, "/system/bin/su"

    const-string v4, "/system/xbin/su"

    const-string v5, "/data/local/xbin/su"

    const-string v6, "/data/local/bin/su"

    const-string v7, "/system/sd/xbin/su"

    const-string v8, "/system/bin/failsafe/su"

    const-string v9, "/data/local/su"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    move v3, v1

    :goto_20
    const/16 v4, 0x8

    if-ge v3, v4, :cond_39

    .line 415
    aget-object v4, v2, v3

    .line 416
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 417
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lio/bidmachine/DeviceInfo;->isRooted:Ljava/lang/Boolean;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_35} :catch_39

    return v0

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :catch_39
    :cond_39
    const/4 v2, 0x0

    .line 424
    :try_start_3a
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "/system/xbin/which"

    const-string v5, "su"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 425
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 426
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v0, v1

    :goto_60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/DeviceInfo;->isRooted:Ljava/lang/Boolean;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_66} :catch_6d
    .catchall {:try_start_3a .. :try_end_66} :catchall_6b

    .line 430
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    move v1, v0

    goto :goto_76

    :catchall_6b
    move-exception v0

    goto :goto_77

    .line 431
    :catch_6d
    :try_start_6d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/bidmachine/DeviceInfo;->isRooted:Ljava/lang/Boolean;
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_6b

    if-eqz v2, :cond_76

    .line 433
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_76
    :goto_76
    return v1

    :goto_77
    if-eqz v2, :cond_7c

    .line 434
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_7c
    throw v0
.end method

.method public final isNetworkInRoaming()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->isNetworkInRoaming$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isTablet()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->isTablet$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final updateHwInfo(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->cpu:Lio/bidmachine/DeviceInfo$Cpu;

    invoke-virtual {v0, p1}, Lio/bidmachine/DeviceInfo$Cpu;->update(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lio/bidmachine/DeviceInfo;->gpu:Lio/bidmachine/DeviceInfo$Gpu;

    invoke-virtual {v0, p1}, Lio/bidmachine/DeviceInfo$Gpu;->update(Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/DeviceInfo;->ram:Lio/bidmachine/DeviceInfo$Ram;

    invoke-virtual {p1}, Lio/bidmachine/DeviceInfo$Ram;->update()V

    return-void
.end method

###### Class io.bidmachine.DeviceInfo.Audio (io.bidmachine.DeviceInfo$Audio)
.class public final Lio/bidmachine/DeviceInfo$Audio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .registers 3

    .line 1
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/media/AudioManager;

    if-eqz v0, :cond_d

    check-cast p1, Landroid/media/AudioManager;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final getVolumeLevel(Landroid/content/Context;)Ljava/lang/Float;
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/DeviceInfo$Audio;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 4
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_21

    .line 6
    invoke-static {p1, v0}, Lads_mobile_sdk/io$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;I)I

    move-result p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    sub-int/2addr v2, p1

    if-nez v2, :cond_2b

    const/4 p1, 0x0

    .line 11
    :goto_26
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2b
    sub-int/2addr v1, p1

    int-to-float p1, v1

    int-to-float v0, v2

    div-float/2addr p1, v0

    goto :goto_26
.end method

.method public final isRingMuted(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/DeviceInfo$Audio;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_d
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_18

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 4
    :cond_18
    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.DeviceInfo.Companion (io.bidmachine.DeviceInfo$Companion)
.class public final Lio/bidmachine/DeviceInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lio/bidmachine/DeviceInfo;->access$getInstance$cp()Lio/bidmachine/DeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    .line 3
    :cond_c
    const-class v0, Lio/bidmachine/DeviceInfo;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_f
    invoke-static {}, Lio/bidmachine/DeviceInfo;->access$getInstance$cp()Lio/bidmachine/DeviceInfo;

    move-result-object v1

    if-nez v1, :cond_21

    new-instance v1, Lio/bidmachine/DeviceInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lio/bidmachine/DeviceInfo;->access$setInstance$cp(Lio/bidmachine/DeviceInfo;)V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1f

    goto :goto_21

    :catchall_1f
    move-exception p1

    goto :goto_23

    .line 8
    :cond_21
    :goto_21
    monitor-exit v0

    return-object v1

    :goto_23
    monitor-exit v0

    throw p1
.end method

###### Class io.bidmachine.DeviceInfo.Cpu (io.bidmachine.DeviceInfo$Cpu)
.class public final Lio/bidmachine/DeviceInfo$Cpu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cpu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/DeviceInfo$Cpu$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/DeviceInfo$Cpu$Companion;

.field public static final KEY_NAME:Ljava/lang/String;

.field public static final KEY_VENDOR:Ljava/lang/String;

.field private static final VALUE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private cache:Lio/bidmachine/q;

.field private name:Ljava/lang/String;

.field private vendor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/DeviceInfo$Cpu$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/DeviceInfo$Cpu$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/DeviceInfo$Cpu;->Companion:Lio/bidmachine/DeviceInfo$Cpu$Companion;

    .line 1
    const-string v0, "cpu_name"

    sput-object v0, Lio/bidmachine/DeviceInfo$Cpu;->KEY_NAME:Ljava/lang/String;

    .line 4
    const-string v0, "cpu_vendor"

    sput-object v0, Lio/bidmachine/DeviceInfo$Cpu;->KEY_VENDOR:Ljava/lang/String;

    .line 6
    const-string v0, ":\\s*(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(\":\\\\s*(.*)\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/DeviceInfo$Cpu;->VALUE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final extract()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$Cpu;->read()V

    .line 2
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->name:Ljava/lang/String;

    .line 5
    :cond_f
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->vendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->vendor:Ljava/lang/String;

    :cond_1b
    return-void
.end method

.method private final findValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lio/bidmachine/DeviceInfo$Cpu;->VALUE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method private final read()V
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/proc/cpuinfo"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_52
    .catchall {:try_start_1 .. :try_end_a} :catchall_4d

    .line 3
    :cond_a
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_43

    .line 5
    :cond_11
    const-string v3, "model name:"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "Hardware:"

    invoke-static {v2, v3, v5, v4, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_35

    .line 8
    :cond_24
    const-string v3, "vendor_id:"

    invoke-static {v2, v3, v5, v4, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 9
    invoke-direct {p0, v2}, Lio/bidmachine/DeviceInfo$Cpu;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/DeviceInfo$Cpu;->vendor:Ljava/lang/String;

    goto :goto_3b

    :catchall_33
    move-exception v0

    goto :goto_47

    .line 10
    :cond_35
    :goto_35
    invoke-direct {p0, v2}, Lio/bidmachine/DeviceInfo$Cpu;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/DeviceInfo$Cpu;->name:Ljava/lang/String;

    .line 16
    :cond_3b
    :goto_3b
    iget-object v2, p0, Lio/bidmachine/DeviceInfo$Cpu;->name:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lio/bidmachine/DeviceInfo$Cpu;->vendor:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_41} :catch_4b
    .catchall {:try_start_a .. :try_end_41} :catchall_33

    if-eqz v2, :cond_a

    .line 22
    :goto_43
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :goto_47
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4e

    :catch_4b
    move-object v0, v1

    goto :goto_52

    :catchall_4d
    move-exception v1

    .line 23
    :goto_4e
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    throw v1

    .line 24
    :catch_52
    :goto_52
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-void
.end method


# virtual methods
.method public final attach$bidmachine_android_sdk_ba_3_8_0(Lio/bidmachine/q;)V
    .registers 3

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$Cpu;->cache:Lio/bidmachine/q;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getVendor()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public final update(Landroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "cache"

    if-eqz v0, :cond_20

    .line 2
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->cache:Lio/bidmachine/q;

    if-nez v0, :cond_18

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_18
    sget-object v3, Lio/bidmachine/DeviceInfo$Cpu;->KEY_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lio/bidmachine/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->name:Ljava/lang/String;

    .line 4
    :cond_20
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->vendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->cache:Lio/bidmachine/q;

    if-nez v0, :cond_30

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_30
    sget-object v3, Lio/bidmachine/DeviceInfo$Cpu;->KEY_VENDOR:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lio/bidmachine/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->vendor:Ljava/lang/String;

    .line 7
    :cond_38
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->vendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_4a

    :cond_49
    return-void

    .line 8
    :cond_4a
    :goto_4a
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$Cpu;->extract()V

    .line 9
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->cache:Lio/bidmachine/q;

    if-nez v0, :cond_55

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_55
    sget-object v3, Lio/bidmachine/DeviceInfo$Cpu;->KEY_NAME:Ljava/lang/String;

    iget-object v4, p0, Lio/bidmachine/DeviceInfo$Cpu;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4}, Lio/bidmachine/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Cpu;->cache:Lio/bidmachine/q;

    if-nez v0, :cond_64

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_65

    :cond_64
    move-object v1, v0

    :goto_65
    sget-object v0, Lio/bidmachine/DeviceInfo$Cpu;->KEY_VENDOR:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/DeviceInfo$Cpu;->vendor:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2}, Lio/bidmachine/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.DeviceInfo.Cpu.Companion (io.bidmachine.DeviceInfo$Cpu$Companion)
.class public final Lio/bidmachine/DeviceInfo$Cpu$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/DeviceInfo$Cpu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$Cpu$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.DeviceInfo.Gpu (io.bidmachine.DeviceInfo$Gpu)
.class public final Lio/bidmachine/DeviceInfo$Gpu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gpu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/DeviceInfo$Gpu$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/DeviceInfo$Gpu$Companion;

.field public static final KEY_NAME:Ljava/lang/String;

.field public static final KEY_VENDOR:Ljava/lang/String;


# instance fields
.field private cache:Lio/bidmachine/q;

.field private name:Ljava/lang/String;

.field private vendor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/DeviceInfo$Gpu$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/DeviceInfo$Gpu$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/DeviceInfo$Gpu;->Companion:Lio/bidmachine/DeviceInfo$Gpu$Companion;

    .line 1
    const-string v0, "gpu_name"

    sput-object v0, Lio/bidmachine/DeviceInfo$Gpu;->KEY_NAME:Ljava/lang/String;

    .line 4
    const-string v0, "gpu_vendor"

    sput-object v0, Lio/bidmachine/DeviceInfo$Gpu;->KEY_VENDOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .registers 11

    const/4 v0, 0x1

    .line 1
    new-array v4, v0, [Landroid/opengl/EGLConfig;

    .line 2
    new-array v7, v0, [I

    const/16 v0, 0xb

    .line 9
    new-array v2, v0, [I

    fill-array-data v2, :array_1e

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 11
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    const/4 p1, 0x0

    .line 12
    aget v0, v7, p1

    if-nez v0, :cond_1b

    const/4 p1, 0x0

    return-object p1

    :cond_1b
    aget-object p1, v4, p1

    return-object p1

    :array_1e
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private final cleanUpEGL(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V
    .registers 6

    if-eqz p1, :cond_16

    .line 1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/DeviceInfo$Gpu;->makeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V

    if-eqz p2, :cond_e

    .line 3
    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    :cond_e
    if-eqz p3, :cond_13

    .line 6
    invoke-static {p1, p3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 8
    :cond_13
    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :cond_16
    return-void
.end method

.method private final createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .registers 7

    .line 1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x2

    const/16 v2, 0x3038

    const/16 v3, 0x3098

    .line 2
    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    const-string p2, "eglCreateContext(\n      \u2026          0\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLSurface;
    .registers 7

    const/16 v0, 0x3056

    const/16 v1, 0x3038

    const/16 v2, 0x3057

    const/16 v3, 0x40

    .line 1
    filled-new-array {v2, v3, v0, v3, v1}, [I

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string p2, "eglCreatePbufferSurface(\u2026eglConfig, attributes, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final extract()V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$Gpu;->initEGLDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_46
    .catchall {:try_start_1 .. :try_end_5} :catchall_3f

    .line 2
    :try_start_5
    invoke-direct {p0, v1}, Lio/bidmachine/DeviceInfo$Gpu;->chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 4
    invoke-direct {p0, v1, v2}, Lio/bidmachine/DeviceInfo$Gpu;->createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLSurface;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_3b
    .catchall {:try_start_5 .. :try_end_f} :catchall_33

    .line 5
    :try_start_f
    invoke-direct {p0, v1, v2}, Lio/bidmachine/DeviceInfo$Gpu;->createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    move-result-object v0

    .line 6
    invoke-direct {p0, v1, v3, v0}, Lio/bidmachine/DeviceInfo$Gpu;->makeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V

    const/16 v2, 0x1f01

    .line 7
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/DeviceInfo$Gpu;->name:Ljava/lang/String;

    const/16 v2, 0x1f00

    .line 8
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/DeviceInfo$Gpu;->vendor:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_26} :catch_2f
    .catchall {:try_start_f .. :try_end_26} :catchall_2a

    move-object v2, v1

    move-object v1, v0

    :goto_28
    move-object v0, v3

    goto :goto_4a

    :catchall_2a
    move-exception v2

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_42

    :catch_2f
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_48

    :catchall_33
    move-exception v2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_42

    :cond_38
    move-object v2, v1

    move-object v1, v0

    goto :goto_4a

    :catch_3b
    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_48

    :catchall_3f
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    .line 13
    :goto_42
    invoke-direct {p0, v0, v3, v1}, Lio/bidmachine/DeviceInfo$Gpu;->cleanUpEGL(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V

    throw v2

    :catch_46
    move-object v1, v0

    move-object v3, v1

    :goto_48
    move-object v2, v0

    goto :goto_28

    .line 12
    :goto_4a
    invoke-direct {p0, v2, v0, v1}, Lio/bidmachine/DeviceInfo$Gpu;->cleanUpEGL(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V

    return-void
.end method

.method private final initEGLDisplay()Landroid/opengl/EGLDisplay;
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x2

    .line 2
    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 3
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 4
    const-string v0, "eglDisplay"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final makeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p2, p3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    return-void
.end method


# virtual methods
.method public final attach$bidmachine_android_sdk_ba_3_8_0(Lio/bidmachine/q;)V
    .registers 3

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$Gpu;->cache:Lio/bidmachine/q;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getVendor()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public final update(Landroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "cache"

    if-eqz v0, :cond_20

    .line 2
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->cache:Lio/bidmachine/q;

    if-nez v0, :cond_18

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_18
    sget-object v3, Lio/bidmachine/DeviceInfo$Gpu;->KEY_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lio/bidmachine/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->name:Ljava/lang/String;

    .line 4
    :cond_20
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->vendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->cache:Lio/bidmachine/q;

    if-nez v0, :cond_30

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_30
    sget-object v3, Lio/bidmachine/DeviceInfo$Gpu;->KEY_VENDOR:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lio/bidmachine/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->vendor:Ljava/lang/String;

    .line 7
    :cond_38
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->vendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_4a

    :cond_49
    return-void

    .line 8
    :cond_4a
    :goto_4a
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$Gpu;->extract()V

    .line 9
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->cache:Lio/bidmachine/q;

    if-nez v0, :cond_55

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_55
    sget-object v3, Lio/bidmachine/DeviceInfo$Gpu;->KEY_NAME:Ljava/lang/String;

    iget-object v4, p0, Lio/bidmachine/DeviceInfo$Gpu;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v4}, Lio/bidmachine/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Gpu;->cache:Lio/bidmachine/q;

    if-nez v0, :cond_64

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_65

    :cond_64
    move-object v1, v0

    :goto_65
    sget-object v0, Lio/bidmachine/DeviceInfo$Gpu;->KEY_VENDOR:Ljava/lang/String;

    iget-object v2, p0, Lio/bidmachine/DeviceInfo$Gpu;->vendor:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2}, Lio/bidmachine/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.DeviceInfo.Gpu.Companion (io.bidmachine.DeviceInfo$Gpu$Companion)
.class public final Lio/bidmachine/DeviceInfo$Gpu$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/DeviceInfo$Gpu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$Gpu$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.DeviceInfo.Ram (io.bidmachine.DeviceInfo$Ram)
.class public final Lio/bidmachine/DeviceInfo$Ram;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ram"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/DeviceInfo$Ram$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/DeviceInfo$Ram$Companion;

.field private static final DIGITS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private freeMemBytes:Ljava/lang/Long;

.field private totalMemBytes:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/DeviceInfo$Ram$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/DeviceInfo$Ram$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/DeviceInfo$Ram;->Companion:Lio/bidmachine/DeviceInfo$Ram$Companion;

    .line 1
    const-string v0, "(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(\"(\\\\d+)\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/DeviceInfo$Ram;->DIGITS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final findValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1
    :cond_4
    sget-object v1, Lio/bidmachine/DeviceInfo$Ram;->DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    return-object v0
.end method

.method private final parseValue(Ljava/lang/String;)Ljava/lang/Long;
    .registers 6

    if-eqz p1, :cond_f

    .line 1
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/16 p1, 0x400

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final getFreeMemBytes()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Ram;->freeMemBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTotalMemBytes()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$Ram;->totalMemBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public final update()V
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/proc/meminfo"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_51
    .catchall {:try_start_1 .. :try_end_a} :catchall_4c

    .line 3
    :cond_a
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_42

    .line 5
    :cond_11
    const-string v3, "MemTotal:"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 6
    invoke-direct {p0, v2}, Lio/bidmachine/DeviceInfo$Ram;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/bidmachine/DeviceInfo$Ram;->parseValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/DeviceInfo$Ram;->totalMemBytes:Ljava/lang/Long;

    goto :goto_3a

    :catchall_26
    move-exception v0

    goto :goto_46

    .line 8
    :cond_28
    const-string v3, "MemAvailable:"

    invoke-static {v2, v3, v5, v4, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 9
    invoke-direct {p0, v2}, Lio/bidmachine/DeviceInfo$Ram;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/bidmachine/DeviceInfo$Ram;->parseValue(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/DeviceInfo$Ram;->freeMemBytes:Ljava/lang/Long;

    .line 12
    :cond_3a
    :goto_3a
    iget-object v2, p0, Lio/bidmachine/DeviceInfo$Ram;->totalMemBytes:Ljava/lang/Long;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lio/bidmachine/DeviceInfo$Ram;->freeMemBytes:Ljava/lang/Long;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_40} :catch_4a
    .catchall {:try_start_a .. :try_end_40} :catchall_26

    if-eqz v2, :cond_a

    .line 18
    :goto_42
    invoke-static {v1}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :goto_46
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4d

    :catch_4a
    move-object v0, v1

    goto :goto_51

    :catchall_4c
    move-exception v1

    .line 19
    :goto_4d
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    throw v1

    .line 20
    :catch_51
    :goto_51
    invoke-static {v0}, Lio/bidmachine/core/Utils;->close(Ljava/io/Closeable;)V

    return-void
.end method

###### Class io.bidmachine.DeviceInfo.Ram.Companion (io.bidmachine.DeviceInfo$Ram$Companion)
.class public final Lio/bidmachine/DeviceInfo$Ram$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/DeviceInfo$Ram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$Ram$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.DeviceInfo.a (io.bidmachine.DeviceInfo$a)
.class public final Lio/bidmachine/DeviceInfo$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$a;->a:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/DeviceType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$a;->a:Lio/bidmachine/DeviceInfo;

    invoke-static {v0}, Lio/bidmachine/DeviceInfo;->access$getAppContext$p(Lio/bidmachine/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/DeviceUtils;->getDeviceType(Landroid/content/Context;)Lio/bidmachine/util/DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$a;->a()Lio/bidmachine/util/DeviceType;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.b (io.bidmachine.DeviceInfo$b)
.class public final Lio/bidmachine/DeviceInfo$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$b;->a:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->a:Lio/bidmachine/DeviceInfo;

    invoke-static {v0}, Lio/bidmachine/DeviceInfo;->access$getAppContext$p(Lio/bidmachine/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/DeviceUtils;->isNetworkRoaming(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.c (io.bidmachine.DeviceInfo$c)
.class public final Lio/bidmachine/DeviceInfo$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$c;->a:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$c;->a:Lio/bidmachine/DeviceInfo;

    invoke-static {v0}, Lio/bidmachine/DeviceInfo;->access$getAppContext$p(Lio/bidmachine/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/DeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.d (io.bidmachine.DeviceInfo$d)
.class public final Lio/bidmachine/DeviceInfo$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/DeviceInfo$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/DeviceInfo$d;

    invoke-direct {v0}, Lio/bidmachine/DeviceInfo$d;-><init>()V

    sput-object v0, Lio/bidmachine/DeviceInfo$d;->a:Lio/bidmachine/DeviceInfo$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/util/DeviceUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.e (io.bidmachine.DeviceInfo$e)
.class public final Lio/bidmachine/DeviceInfo$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/DeviceInfo$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/DeviceInfo$e;

    invoke-direct {v0}, Lio/bidmachine/DeviceInfo$e;-><init>()V

    sput-object v0, Lio/bidmachine/DeviceInfo$e;->a:Lio/bidmachine/DeviceInfo$e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lio/bidmachine/util/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.f (io.bidmachine.DeviceInfo$f)
.class public final Lio/bidmachine/DeviceInfo$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lio/bidmachine/DeviceInfo$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/DeviceInfo$f;

    invoke-direct {v0}, Lio/bidmachine/DeviceInfo$f;-><init>()V

    sput-object v0, Lio/bidmachine/DeviceInfo$f;->a:Lio/bidmachine/DeviceInfo$f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.g (io.bidmachine.DeviceInfo$g)
.class public final Lio/bidmachine/DeviceInfo$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$g;->a:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$g;->a:Lio/bidmachine/DeviceInfo;

    invoke-static {v0}, Lio/bidmachine/DeviceInfo;->access$getAppContext$p(Lio/bidmachine/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/DeviceUtils;->getPhoneNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.h (io.bidmachine.DeviceInfo$h)
.class public final Lio/bidmachine/DeviceInfo$h;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$h;->a:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$h;->a:Lio/bidmachine/DeviceInfo;

    invoke-static {v0}, Lio/bidmachine/DeviceInfo;->access$getAppContext$p(Lio/bidmachine/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/DeviceUtils;->getPhoneMCCMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.i (io.bidmachine.DeviceInfo$i)
.class public final Lio/bidmachine/DeviceInfo$i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$i;->a:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Float;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$i;->a:Lio/bidmachine/DeviceInfo;

    invoke-static {v0}, Lio/bidmachine/DeviceInfo;->access$getAppContext$p(Lio/bidmachine/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/DeviceUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$i;->a()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.j (io.bidmachine.DeviceInfo$j)
.class public final Lio/bidmachine/DeviceInfo$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$j;->a:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$j;->a:Lio/bidmachine/DeviceInfo;

    invoke-static {v0}, Lio/bidmachine/DeviceInfo;->access$getAppContext$p(Lio/bidmachine/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/utils/DeviceUtils;->getScreenDpi(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$j;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.k (io.bidmachine.DeviceInfo$k)
.class public final Lio/bidmachine/DeviceInfo$k;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$k;->a:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$k;->a:Lio/bidmachine/DeviceInfo;

    invoke-static {v0}, Lio/bidmachine/DeviceInfo;->access$getAppContext$p(Lio/bidmachine/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/DeviceUtils;->getPhoneSimOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.DeviceInfo.l (io.bidmachine.DeviceInfo$l)
.class public final Lio/bidmachine/DeviceInfo$l;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/DeviceInfo;


# direct methods
.method public constructor <init>(Lio/bidmachine/DeviceInfo;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$l;->a:Lio/bidmachine/DeviceInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$l;->a:Lio/bidmachine/DeviceInfo;

    invoke-static {v0}, Lio/bidmachine/DeviceInfo;->access$getAppContext$p(Lio/bidmachine/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/util/DeviceUtils;->getPhoneSimCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/DeviceInfo$l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
