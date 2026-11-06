###### Class org.chromium.net.ThreadStatsUid (org.chromium.net.ThreadStatsUid)
.class public Lorg/chromium/net/ThreadStatsUid;
.super Ljava/lang/Object;
.source "ThreadStatsUid.java"


# static fields
.field private static final sClearThreadStatsUid:Ljava/lang/reflect/Method;

.field private static final sSetThreadStatsUid:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    const-class v0, Landroid/net/TrafficStats;

    :try_start_2
    const-string v1, "setThreadStatsUid"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/chromium/net/ThreadStatsUid;->sSetThreadStatsUid:Ljava/lang/reflect/Method;

    .line 30
    const-string v1, "clearThreadStatsUid"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/ThreadStatsUid;->sClearThreadStatsUid:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to get TrafficStats methods"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 4

    .line 50
    const-string v0, "TrafficStats.clearThreadStatsUid failed"

    :try_start_2
    sget-object v1, Lorg/chromium/net/ThreadStatsUid;->sClearThreadStatsUid:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_b} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v1

    goto :goto_10

    :catch_e
    move-exception v1

    goto :goto_16

    .line 54
    :goto_10
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 52
    :goto_16
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static set(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 39
    const-string v0, "TrafficStats.setThreadStatsUid failed"

    :try_start_2
    sget-object v1, Lorg/chromium/net/ThreadStatsUid;->sSetThreadStatsUid:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_10} :catch_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    goto :goto_15

    :catch_13
    move-exception p0

    goto :goto_1b

    .line 43
    :goto_15
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 41
    :goto_1b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
