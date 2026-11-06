###### Class org.chromium.net.httpflags.HttpFlagsLoader (org.chromium.net.httpflags.HttpFlagsLoader)
.class public final Lorg/chromium/net/httpflags/HttpFlagsLoader;
.super Ljava/lang/Object;
.source "HttpFlagsLoader.java"


# static fields
.field public static sHttpFlags:Lorg/chromium/net/httpflags/ResolvedFlags;

.field public static final sLock:Ljava/lang/Object;

.field public static sVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/net/httpflags/HttpFlagsLoader;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static getFlagsFileFromProvider(Landroid/content/pm/ApplicationInfo;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerApplicationInfo"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 181
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 182
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "app_httpflags"

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "flags.binarypb"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHttpFlags(Landroid/content/Context;Ljava/lang/String;ZZ)Lorg/chromium/net/httpflags/ResolvedFlags;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "version",
            "isLoadedFromApi",
            "isTelemetryEnabled"
        }
    .end annotation

    .line 115
    sget-object v0, Lorg/chromium/net/httpflags/HttpFlagsLoader;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    sget-object v1, Lorg/chromium/net/httpflags/HttpFlagsLoader;->sVersion:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_19

    .line 118
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getHttpFlags() called multiple times with different versions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_16
    move-exception p0

    goto/16 :goto_8f

    .line 121
    :cond_19
    :goto_19
    sget-object v1, Lorg/chromium/net/httpflags/HttpFlagsLoader;->sHttpFlags:Lorg/chromium/net/httpflags/ResolvedFlags;

    if-eqz v1, :cond_1f

    monitor-exit v0

    return-object v1

    .line 122
    :cond_1f
    sput-object p1, Lorg/chromium/net/httpflags/HttpFlagsLoader;->sVersion:Ljava/lang/String;

    .line 123
    const-string v1, "HttpFlagsLoader#getHttpFlags loading flags"

    .line 124
    invoke-static {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_16

    .line 126
    :try_start_27
    invoke-static {p0}, Lorg/chromium/net/impl/CronetManifest;->shouldReadHttpFlags(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 127
    const-string v2, "HttpFlagsLoader"

    const-string v3, "Not loading HTTP flags because they are disabled in the manifest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_3c

    :catchall_36
    move-exception p0

    goto :goto_84

    .line 130
    :cond_38
    invoke-static {p0}, Lorg/chromium/net/httpflags/HttpFlagsLoader;->load(Landroid/content/Context;)Lorg/chromium/net/httpflags/Flags;

    move-result-object v2

    :goto_3c
    if-eqz v2, :cond_3f

    goto :goto_49

    .line 134
    :cond_3f
    invoke-static {}, Lorg/chromium/net/httpflags/Flags;->newBuilder()Lorg/chromium/net/httpflags/Flags$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/httpflags/Flags;

    .line 135
    :goto_49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {v2, p0, p1, p3}, Lorg/chromium/net/httpflags/ResolvedFlags;->resolve(Lorg/chromium/net/httpflags/Flags;Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/net/httpflags/ResolvedFlags;

    move-result-object p0

    sput-object p0, Lorg/chromium/net/httpflags/HttpFlagsLoader;->sHttpFlags:Lorg/chromium/net/httpflags/ResolvedFlags;

    .line 138
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/ResolvedFlags;->flags()Ljava/util/Map;

    move-result-object p0

    const-string p1, "Cronet_log_me"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/ResolvedFlags$Value;

    if-eqz p0, :cond_7b

    .line 140
    const-string p1, "HttpFlagsLoader"

    const-string p3, "HTTP flags log line (%s): %s"

    if-eqz p2, :cond_6a

    .line 144
    const-string p2, "API"

    goto :goto_6c

    :cond_6a
    const-string p2, "Impl"

    :goto_6c
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/ResolvedFlags$Value;->getStringValue()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 142
    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_7b
    sget-object p0, Lorg/chromium/net/httpflags/HttpFlagsLoader;->sHttpFlags:Lorg/chromium/net/httpflags/ResolvedFlags;
    :try_end_7d
    .catchall {:try_start_27 .. :try_end_7d} :catchall_36

    if-eqz v1, :cond_82

    .line 147
    :try_start_7f
    invoke-virtual {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_16

    return-object p0

    :goto_84
    if-eqz v1, :cond_8e

    .line 123
    :try_start_86
    invoke-virtual {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception p1

    :try_start_8b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    throw p0

    .line 148
    :goto_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_16

    throw p0
.end method

.method public static getProviderApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 153
    const-string v0, "HttpFlagsLoader#getProviderApplicationInfo"

    .line 154
    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 156
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.http.FLAGS_FILE_PROVIDER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x100000

    .line 157
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_29

    .line 165
    const-string p0, "HttpFlagsLoader"

    const-string v1, "Unable to resolve the HTTP flags file provider package. This is expected if the host system is not set up to provide HTTP flags."

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_27

    const/4 p0, 0x0

    if-eqz v0, :cond_26

    .line 173
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_26
    return-object p0

    :catchall_27
    move-exception p0

    goto :goto_33

    .line 172
    :cond_29
    :try_start_29
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_27

    if-eqz v0, :cond_32

    .line 173
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_32
    return-object p0

    :goto_33
    if-eqz v0, :cond_3d

    .line 153
    :try_start_35
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    throw p0
.end method

.method public static load(Landroid/content/Context;)Lorg/chromium/net/httpflags/Flags;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 77
    const-string v0, "HttpFlagsLoader"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Lorg/chromium/net/httpflags/HttpFlagsLoader;->getProviderApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_a

    return-object v1

    .line 79
    :cond_a
    const-string v2, "Found application exporting HTTP flags: %s"

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 81
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p0}, Lorg/chromium/net/httpflags/HttpFlagsLoader;->getFlagsFileFromProvider(Landroid/content/pm/ApplicationInfo;)Ljava/io/File;

    move-result-object p0

    .line 86
    const-string v2, "HTTP flags file path: %s"

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p0}, Lorg/chromium/net/httpflags/HttpFlagsLoader;->loadFlagsFile(Ljava/io/File;)Lorg/chromium/net/httpflags/Flags;

    move-result-object p0

    if-nez p0, :cond_35

    return-object v1

    .line 90
    :cond_35
    const-string v2, "Successfully loaded HTTP flags: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_42} :catch_43

    return-object p0

    :catch_43
    move-exception p0

    .line 94
    const-string v2, "Unable to load HTTP flags file"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static loadFlagsFile(Ljava/io/File;)Lorg/chromium/net/httpflags/Flags;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 189
    const-string v0, "HttpFlagsLoader#loadFlagsFile"

    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 190
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_b} :catch_2e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1a
    .catchall {:try_start_6 .. :try_end_b} :catchall_18

    .line 191
    :try_start_b
    invoke-static {v1}, Lorg/chromium/net/httpflags/Flags;->parseDelimitedFrom(Ljava/io/InputStream;)Lorg/chromium/net/httpflags/Flags;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_1c

    .line 192
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_2e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_1a
    .catchall {:try_start_f .. :try_end_12} :catchall_18

    if-eqz v0, :cond_17

    .line 203
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_17
    return-object v2

    :catchall_18
    move-exception p0

    goto :goto_48

    :catch_1a
    move-exception p0

    goto :goto_26

    :catchall_1c
    move-exception v2

    .line 190
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v1

    :try_start_22
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_25
    throw v2
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_26} :catch_2e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_1a
    .catchall {:try_start_22 .. :try_end_26} :catchall_18

    .line 201
    :goto_26
    :try_start_26
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to read HTTP flags file"

    invoke-direct {v1, v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 193
    :catch_2e
    const-string v1, "HttpFlagsLoader"

    const-string v2, "HTTP flags file `%s` is missing. This is expected if HTTP flags functionality is currently disabled in the host system."

    .line 198
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 195
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_18

    if-eqz v0, :cond_46

    .line 203
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_46
    const/4 p0, 0x0

    return-object p0

    :goto_48
    if-eqz v0, :cond_52

    .line 189
    :try_start_4a
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    throw p0
.end method
