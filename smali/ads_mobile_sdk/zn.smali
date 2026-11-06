###### Class ads_mobile_sdk.zn (ads_mobile_sdk.zn)
.class public final Lads_mobile_sdk/zn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/x9;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, ".*\\.so$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/zn;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/x9;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lads_mobile_sdk/zn;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/yn;
    .registers 11

    .line 32
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lads_mobile_sdk/zn;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_42

    .line 34
    iget-object v0, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-eqz v0, :cond_3e

    .line 35
    check-cast v0, Lads_mobile_sdk/y9;

    .line 36
    iget-object v0, v0, Lads_mobile_sdk/y9;->a:Lads_mobile_sdk/qt1;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/st1;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/16 v5, 0x1399

    const-string v9, "No lib/"

    invoke-virtual/range {v4 .. v9}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 38
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 40
    :cond_3e
    sget-object v0, Lads_mobile_sdk/yn;->h:Lads_mobile_sdk/yn;

    goto/16 :goto_f7

    .line 42
    :cond_42
    new-instance v1, Lcom/google/common/io/PatternFilenameFilter;

    sget-object v4, Lads_mobile_sdk/zn;->c:Ljava/util/regex/Pattern;

    invoke-direct {v1, v4}, Lcom/google/common/io/PatternFilenameFilter;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d3

    .line 43
    array-length v1, v0

    if-nez v1, :cond_54

    goto/16 :goto_d3

    .line 49
    :cond_54
    :try_start_54
    new-instance v1, Ljava/io/FileInputStream;

    aget-object v0, v0, v3

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5b} :catch_ba

    const/16 v0, 0x14

    .line 50
    :try_start_5d
    new-array v4, v0, [B

    .line 51
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-ne v5, v0, :cond_bc

    const/4 v0, 0x2

    .line 52
    new-array v5, v0, [B

    aput-byte v3, v5, v3

    const/4 v6, 0x1

    aput-byte v3, v5, v6

    const/4 v7, 0x5

    .line 54
    aget-byte v7, v4, v7

    if-ne v7, v0, :cond_7b

    .line 55
    invoke-virtual {p0, v2, v4}, Lads_mobile_sdk/zn;->a(Ljava/lang/String;[B)V

    .line 56
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    goto :goto_b6

    :catchall_78
    move-exception v0

    move-object v4, v0

    goto :goto_c0

    :cond_7b
    const/16 v0, 0x13

    .line 80
    aget-byte v0, v4, v0

    aput-byte v0, v5, v3

    const/16 v0, 0x12

    .line 81
    aget-byte v0, v4, v0

    aput-byte v0, v5, v6

    .line 83
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_b4

    const/16 v5, 0x28

    if-eq v0, v5, :cond_b1

    const/16 v5, 0x3e

    if-eq v0, v5, :cond_ae

    const/16 v5, 0xb7

    if-eq v0, v5, :cond_ab

    const/16 v5, 0xf3

    if-eq v0, v5, :cond_a8

    .line 97
    invoke-virtual {p0, v2, v4}, Lads_mobile_sdk/zn;->a(Ljava/lang/String;[B)V

    .line 98
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    goto :goto_b6

    .line 99
    :cond_a8
    sget-object v0, Lads_mobile_sdk/yn;->g:Lads_mobile_sdk/yn;

    goto :goto_b6

    .line 100
    :cond_ab
    sget-object v0, Lads_mobile_sdk/yn;->e:Lads_mobile_sdk/yn;

    goto :goto_b6

    .line 101
    :cond_ae
    sget-object v0, Lads_mobile_sdk/yn;->f:Lads_mobile_sdk/yn;

    goto :goto_b6

    .line 103
    :cond_b1
    sget-object v0, Lads_mobile_sdk/yn;->c:Lads_mobile_sdk/yn;

    goto :goto_b6

    .line 104
    :cond_b4
    sget-object v0, Lads_mobile_sdk/yn;->d:Lads_mobile_sdk/yn;
    :try_end_b6
    .catchall {:try_start_5d .. :try_end_b6} :catchall_78

    .line 79
    :goto_b6
    :try_start_b6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_f7

    :catch_ba
    move-exception v0

    goto :goto_c9

    .line 118
    :cond_bc
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bf} :catch_ba

    goto :goto_d0

    .line 119
    :goto_c0
    :try_start_c0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c4

    goto :goto_c8

    :catchall_c4
    move-exception v0

    :try_start_c5
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c8
    throw v4
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c9} :catch_ba

    .line 150
    :goto_c9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lads_mobile_sdk/zn;->a(Ljava/lang/String;[B)V

    .line 152
    :goto_d0
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    goto :goto_f7

    .line 153
    :cond_d3
    :goto_d3
    iget-object v0, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-eqz v0, :cond_f5

    .line 154
    check-cast v0, Lads_mobile_sdk/y9;

    .line 155
    iget-object v0, v0, Lads_mobile_sdk/y9;->a:Lads_mobile_sdk/qt1;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/st1;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/16 v5, 0x1399

    const-string v9, "No .so"

    invoke-virtual/range {v4 .. v9}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 157
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 159
    :cond_f5
    sget-object v0, Lads_mobile_sdk/yn;->h:Lads_mobile_sdk/yn;

    .line 160
    :goto_f7
    sget-object v1, Lads_mobile_sdk/yn;->h:Lads_mobile_sdk/yn;

    if-ne v0, v1, :cond_1ab

    .line 161
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "i686"

    const-string v4, "armv71"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 162
    sget-object v5, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    invoke-virtual {v5}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11f

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    goto :goto_153

    :cond_11f
    const-wide/16 v5, 0x0

    const/16 v7, 0x7e8

    .line 167
    :try_start_123
    const-class v0, Landroid/os/Build;

    const-string v8, "SUPPORTED_ABIS"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_14c

    .line 169
    array-length v8, v0

    if-lez v8, :cond_14c

    .line 170
    aget-object v5, v0, v3
    :try_end_138
    .catch Ljava/lang/NoSuchFieldException; {:try_start_123 .. :try_end_138} :catch_13b
    .catch Ljava/lang/IllegalAccessException; {:try_start_123 .. :try_end_138} :catch_139

    goto :goto_153

    :catch_139
    move-exception v0

    goto :goto_13d

    :catch_13b
    move-exception v0

    goto :goto_145

    .line 177
    :goto_13d
    iget-object v3, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-eqz v3, :cond_14c

    .line 178
    invoke-virtual {v3, v7, v5, v6, v0}, Lads_mobile_sdk/x9;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    goto :goto_14c

    .line 179
    :goto_145
    iget-object v3, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-eqz v3, :cond_14c

    .line 180
    invoke-virtual {v3, v7, v5, v6, v0}, Lads_mobile_sdk/x9;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 187
    :cond_14c
    :goto_14c
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v5, :cond_151

    goto :goto_153

    .line 190
    :cond_151
    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 191
    :goto_153
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 192
    const-string v0, "Empty dev arch"

    invoke-virtual {p0, v0, v2}, Lads_mobile_sdk/zn;->a(Ljava/lang/String;[B)V

    .line 193
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    goto :goto_1ab

    .line 194
    :cond_161
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a9

    const-string v0, "x86"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_170

    goto :goto_1a9

    .line 196
    :cond_170
    const-string v0, "x86_64"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 197
    sget-object v0, Lads_mobile_sdk/yn;->f:Lads_mobile_sdk/yn;

    goto :goto_1ab

    .line 198
    :cond_17b
    const-string v0, "arm64-v8a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 199
    sget-object v0, Lads_mobile_sdk/yn;->e:Lads_mobile_sdk/yn;

    goto :goto_1ab

    .line 200
    :cond_186
    const-string v0, "armeabi-v7a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a6

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_195

    goto :goto_1a6

    .line 202
    :cond_195
    const-string v0, "riscv64"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 203
    sget-object v0, Lads_mobile_sdk/yn;->g:Lads_mobile_sdk/yn;

    goto :goto_1ab

    .line 205
    :cond_1a0
    invoke-virtual {p0, v5, v2}, Lads_mobile_sdk/zn;->a(Ljava/lang/String;[B)V

    .line 206
    sget-object v0, Lads_mobile_sdk/yn;->b:Lads_mobile_sdk/yn;

    goto :goto_1ab

    .line 207
    :cond_1a6
    :goto_1a6
    sget-object v0, Lads_mobile_sdk/yn;->c:Lads_mobile_sdk/yn;

    goto :goto_1ab

    .line 208
    :cond_1a9
    :goto_1a9
    sget-object v0, Lads_mobile_sdk/yn;->d:Lads_mobile_sdk/yn;

    .line 209
    :cond_1ab
    :goto_1ab
    iget-object v1, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-eqz v1, :cond_1cf

    .line 210
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    check-cast v1, Lads_mobile_sdk/y9;

    .line 211
    iget-object v1, v1, Lads_mobile_sdk/y9;->a:Lads_mobile_sdk/qt1;

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/st1;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/16 v3, 0x139a

    invoke-virtual/range {v2 .. v7}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 212
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 213
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    :cond_1cf
    return-object v0
.end method

.method public final a(Ljava/lang/String;[B)V
    .registers 10

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "os.arch:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->OS_ARCH:Lcom/google/common/base/StandardSystemProperty;

    invoke-virtual {v1}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :try_start_1a
    const-class v2, Landroid/os/Build;

    const-string v3, "SUPPORTED_ABIS"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_3a

    .line 11
    const-string v3, "supported_abis:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1a .. :try_end_3a} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_3a} :catch_3a

    .line 18
    :catch_3a
    :cond_3a
    const-string v2, "CPU_ABI:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";CPU_ABI2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_62

    .line 21
    const-string v2, "ELF:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    if-eqz p1, :cond_6f

    .line 24
    const-string p2, "dbg:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_6f
    iget-object p1, p0, Lads_mobile_sdk/zn;->b:Lads_mobile_sdk/x9;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast p1, Lads_mobile_sdk/y9;

    .line 27
    iget-object p1, p1, Lads_mobile_sdk/y9;->a:Lads_mobile_sdk/qt1;

    .line 28
    move-object v1, p1

    check-cast v1, Lads_mobile_sdk/st1;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/16 v2, 0xfa7

    invoke-virtual/range {v1 .. v6}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 30
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    return-void
.end method
