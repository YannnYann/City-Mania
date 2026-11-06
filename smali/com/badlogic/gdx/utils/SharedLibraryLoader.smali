###### Class com.badlogic.gdx.utils.SharedLibraryLoader (com.badlogic.gdx.utils.SharedLibraryLoader)
.class public Lcom/badlogic/gdx/utils/SharedLibraryLoader;
.super Ljava/lang/Object;
.source "SharedLibraryLoader.java"


# static fields
.field public static architecture:Lcom/badlogic/gdx/utils/Architecture;

.field public static bitness:Lcom/badlogic/gdx/utils/Architecture$Bitness;

.field public static is64Bit:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static isARM:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static isAndroid:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static isIos:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static isLinux:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static isMac:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static isWindows:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final loadedLibraries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static os:Lcom/badlogic/gdx/utils/Os;

.field public static final random:Ljava/util/Random;


# instance fields
.field public nativesJar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 41
    sget-object v0, Lcom/badlogic/gdx/utils/Architecture$Bitness;->_32:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    sput-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->bitness:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    .line 42
    sget-object v1, Lcom/badlogic/gdx/utils/Architecture;->x86:Lcom/badlogic/gdx/utils/Architecture;

    sput-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->architecture:Lcom/badlogic/gdx/utils/Architecture;

    .line 45
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Windows"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 46
    sget-object v2, Lcom/badlogic/gdx/utils/Os;->Windows:Lcom/badlogic/gdx/utils/Os;

    sput-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    goto :goto_3c

    .line 47
    :cond_1b
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Linux"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 48
    sget-object v2, Lcom/badlogic/gdx/utils/Os;->Linux:Lcom/badlogic/gdx/utils/Os;

    sput-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    goto :goto_3c

    .line 49
    :cond_2c
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 50
    sget-object v2, Lcom/badlogic/gdx/utils/Os;->MacOsX:Lcom/badlogic/gdx/utils/Os;

    sput-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    .line 52
    :cond_3c
    :goto_3c
    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "arm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_79

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aarch64"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    goto :goto_79

    .line 54
    :cond_57
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "riscv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 55
    sget-object v3, Lcom/badlogic/gdx/utils/Architecture;->RISCV:Lcom/badlogic/gdx/utils/Architecture;

    sput-object v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->architecture:Lcom/badlogic/gdx/utils/Architecture;

    goto :goto_7d

    .line 56
    :cond_68
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "loongarch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 57
    sget-object v3, Lcom/badlogic/gdx/utils/Architecture;->LOONGARCH:Lcom/badlogic/gdx/utils/Architecture;

    sput-object v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->architecture:Lcom/badlogic/gdx/utils/Architecture;

    goto :goto_7d

    .line 53
    :cond_79
    :goto_79
    sget-object v3, Lcom/badlogic/gdx/utils/Architecture;->ARM:Lcom/badlogic/gdx/utils/Architecture;

    sput-object v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->architecture:Lcom/badlogic/gdx/utils/Architecture;

    .line 59
    :cond_7d
    :goto_7d
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "64"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a7

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "armv8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    goto :goto_a7

    .line 61
    :cond_96
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "128"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 62
    sget-object v2, Lcom/badlogic/gdx/utils/Architecture$Bitness;->_128:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    sput-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->bitness:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    goto :goto_ab

    .line 60
    :cond_a7
    :goto_a7
    sget-object v2, Lcom/badlogic/gdx/utils/Architecture$Bitness;->_64:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    sput-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->bitness:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    .line 64
    :cond_ab
    :goto_ab
    const-string v2, "moe.platform.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_b7

    move v2, v4

    goto :goto_b8

    :cond_b7
    move v2, v3

    .line 65
    :goto_b8
    const-string v5, "java.runtime.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d0

    .line 66
    const-string v6, "Android Runtime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 67
    sget-object v5, Lcom/badlogic/gdx/utils/Os;->Android:Lcom/badlogic/gdx/utils/Os;

    sput-object v5, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    .line 68
    sput-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->bitness:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    .line 69
    sput-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->architecture:Lcom/badlogic/gdx/utils/Architecture;

    :cond_d0
    if-nez v2, :cond_ea

    .line 71
    sget-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v5, Lcom/badlogic/gdx/utils/Os;->Android:Lcom/badlogic/gdx/utils/Os;

    if-eq v2, v5, :cond_f2

    sget-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v5, Lcom/badlogic/gdx/utils/Os;->Windows:Lcom/badlogic/gdx/utils/Os;

    if-eq v2, v5, :cond_f2

    sget-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v5, Lcom/badlogic/gdx/utils/Os;->Linux:Lcom/badlogic/gdx/utils/Os;

    if-eq v2, v5, :cond_f2

    sget-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v5, Lcom/badlogic/gdx/utils/Os;->MacOsX:Lcom/badlogic/gdx/utils/Os;

    if-eq v2, v5, :cond_f2

    .line 72
    :cond_ea
    sget-object v2, Lcom/badlogic/gdx/utils/Os;->IOS:Lcom/badlogic/gdx/utils/Os;

    sput-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    .line 73
    sput-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->bitness:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    .line 74
    sput-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->architecture:Lcom/badlogic/gdx/utils/Architecture;

    .line 82
    :cond_f2
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->Windows:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_fa

    move v0, v4

    goto :goto_fb

    :cond_fa
    move v0, v3

    :goto_fb
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isWindows:Z

    .line 87
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->Linux:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_105

    move v0, v4

    goto :goto_106

    :cond_105
    move v0, v3

    :goto_106
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLinux:Z

    .line 92
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->MacOsX:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_110

    move v0, v4

    goto :goto_111

    :cond_110
    move v0, v3

    :goto_111
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isMac:Z

    .line 97
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->IOS:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_11b

    move v0, v4

    goto :goto_11c

    :cond_11b
    move v0, v3

    :goto_11c
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isIos:Z

    .line 102
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->Android:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_126

    move v0, v4

    goto :goto_127

    :cond_126
    move v0, v3

    :goto_127
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isAndroid:Z

    .line 107
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->architecture:Lcom/badlogic/gdx/utils/Architecture;

    sget-object v1, Lcom/badlogic/gdx/utils/Architecture;->ARM:Lcom/badlogic/gdx/utils/Architecture;

    if-ne v0, v1, :cond_131

    move v0, v4

    goto :goto_132

    :cond_131
    move v0, v3

    :goto_132
    sput-boolean v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isARM:Z

    .line 112
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->bitness:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    sget-object v1, Lcom/badlogic/gdx/utils/Architecture$Bitness;->_64:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    if-ne v0, v1, :cond_13b

    move v3, v4

    :cond_13b
    sput-boolean v3, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->is64Bit:Z

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    .line 115
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 396
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_5

    :catchall_5
    :cond_5
    return-void
.end method

.method public static declared-synchronized isLoaded(Ljava/lang/String;)Z
    .registers 3

    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 390
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static declared-synchronized setLoaded(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 386
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadedLibraries:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 387
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p0
.end method


# virtual methods
.method public crc(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_2b

    .line 135
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v1, 0x1000

    .line 136
    new-array v1, v1, [B

    .line 139
    :goto_b
    :try_start_b
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_12
    .catchall {:try_start_b .. :try_end_f} :catchall_1b

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 145
    :catch_12
    invoke-static {p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_20

    :cond_16
    const/4 v3, 0x0

    .line 141
    :try_start_17
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_12
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_b

    :catchall_1b
    move-exception v0

    .line 145
    invoke-static {p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 146
    throw v0

    .line 147
    :goto_20
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/16 p1, 0x10

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 134
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 305
    :try_start_7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    :cond_11
    move-object v0, v1

    :goto_12
    if-eqz v0, :cond_1a

    .line 311
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3b

    .line 315
    :cond_1a
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_51
    .catchall {:try_start_1a .. :try_end_1e} :catchall_4e

    .line 316
    :try_start_1e
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 317
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2a} :catch_49
    .catchall {:try_start_1e .. :try_end_2a} :catchall_46

    const/16 v1, 0x1000

    .line 318
    :try_start_2c
    new-array v1, v1, [B

    .line 320
    :goto_2e
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_32} :catch_44
    .catchall {:try_start_2c .. :try_end_32} :catchall_41

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3c

    .line 328
    invoke-static {p2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 329
    invoke-static {v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3b
    return-object p3

    :cond_3c
    const/4 v3, 0x0

    .line 322
    :try_start_3d
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_44
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_2e

    :catchall_41
    move-exception p1

    :goto_42
    move-object v1, p2

    goto :goto_78

    :catch_44
    move-exception v1

    goto :goto_55

    :catchall_46
    move-exception p1

    move-object v0, v1

    goto :goto_42

    :catch_49
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_55

    :catchall_4e
    move-exception p1

    move-object v0, v1

    goto :goto_78

    :catch_51
    move-exception p2

    move-object v0, v1

    move-object v1, p2

    move-object p2, v0

    .line 325
    :goto_55
    :try_start_55
    new-instance v2, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error extracting file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nTo: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_78
    .catchall {:try_start_55 .. :try_end_78} :catchall_41

    .line 328
    :goto_78
    invoke-static {v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 329
    invoke-static {v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 330
    throw p1
.end method

.method public load(Ljava/lang/String;)V
    .registers 8

    .line 161
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->IOS:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_7

    return-void

    .line 163
    :cond_7
    const-class v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    monitor-enter v0

    .line 164
    :try_start_a
    invoke-static {p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->isLoaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p1

    goto/16 :goto_8d

    .line 165
    :cond_15
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_12

    .line 167
    :try_start_19
    sget-object v2, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v3, Lcom/badlogic/gdx/utils/Os;->Android:Lcom/badlogic/gdx/utils/Os;

    if-ne v2, v3, :cond_25

    .line 168
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_28

    :catchall_23
    move-exception p1

    goto :goto_2d

    .line 170
    :cond_25
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;)V

    .line 171
    :goto_28
    invoke-static {p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->setLoaded(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_23

    .line 177
    :try_start_2b
    monitor-exit v0

    return-void

    .line 173
    :goto_2d
    new-instance v2, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load shared library \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for target: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v4, Lcom/badlogic/gdx/utils/Os;->Android:Lcom/badlogic/gdx/utils/Os;

    if-ne v1, v4, :cond_4a

    const-string v1, "Android"

    goto :goto_82

    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "os.name"

    .line 174
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->architecture:Lcom/badlogic/gdx/utils/Architecture;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->bitness:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-bit"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 177
    :goto_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_2b .. :try_end_8e} :catchall_12

    throw p1
.end method

.method public final loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;
    .registers 4

    .line 377
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->extractFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_d

    const/4 p1, 0x0

    return-object p1

    :catchall_d
    move-exception p1

    return-object p1
.end method

.method public final loadFile(Ljava/lang/String;)V
    .registers 8

    .line 339
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->readFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->crc(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 344
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.io.tmpdir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/libgdx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "user.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, p1, v0, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_45

    goto :goto_99

    :cond_45
    const/4 v3, 0x0

    .line 351
    :try_start_46
    invoke-static {v0, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 352
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {p0, p1, v0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v3
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_57

    if-nez v3, :cond_57

    goto :goto_99

    .line 357
    :catchall_57
    :cond_57
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/.libgdx/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0, p1, v0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_7d

    goto :goto_99

    .line 361
    :cond_7d
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".temp/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0, p1, v0, v3}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9a

    :goto_99
    return-void

    .line 365
    :cond_9a
    new-instance v0, Ljava/io/File;

    const-string v1, "java.library.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void

    .line 371
    :cond_b3
    new-instance p1, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;

    invoke-direct {p1, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 152
    sget-object v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    sget-object v1, Lcom/badlogic/gdx/utils/Os;->Android:Lcom/badlogic/gdx/utils/Os;

    if-ne v0, v1, :cond_7

    return-object p1

    .line 154
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Os;->getLibPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->architecture:Lcom/badlogic/gdx/utils/Architecture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Architecture;->toSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->bitness:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Architecture$Bitness;->toSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->os:Lcom/badlogic/gdx/utils/Os;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Os;->getLibExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final readFile(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7

    .line 181
    const-string v0, "\' in JAR: "

    iget-object v1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    if-nez v1, :cond_37

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_20

    return-object v0

    .line 183
    :cond_20
    new-instance v0, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read file for extraction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_37
    :try_start_37
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 192
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :catch_49
    move-exception v1

    goto :goto_6a

    .line 191
    :cond_4b
    new-instance v1, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_6a} :catch_49

    .line 194
    :goto_6a
    new-instance v2, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->nativesJar:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoadRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
