###### Class info.flowersoft.theotown.resources.InternetTime (info.flowersoft.theotown.resources.InternetTime)
.class public Linfo/flowersoft/theotown/resources/InternetTime;
.super Ljava/lang/Object;
.source "InternetTime.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/InternetTime;


# instance fields
.field public connected:Z

.field public lastCheckTime:J

.field public lastInternetTime:J

.field public lastLocalTime:J

.field public lastLookupSuccessful:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/resources/InternetTime;)J
    .registers 3

    .line 19
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/InternetTime;->readServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/resources/InternetTime;Z)Z
    .registers 2

    .line 19
    iput-boolean p1, p0, Linfo/flowersoft/theotown/resources/InternetTime;->connected:Z

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/resources/InternetTime;)J
    .registers 3

    .line 19
    iget-wide v0, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastLocalTime:J

    return-wide v0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/resources/InternetTime;J)J
    .registers 3

    .line 19
    iput-wide p1, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastLocalTime:J

    return-wide p1
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/resources/InternetTime;)J
    .registers 3

    .line 19
    iget-wide v0, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastInternetTime:J

    return-wide v0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/resources/InternetTime;J)J
    .registers 3

    .line 19
    iput-wide p1, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastInternetTime:J

    return-wide p1
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/resources/InternetTime;Z)Z
    .registers 2

    .line 19
    iput-boolean p1, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastLookupSuccessful:Z

    return p1
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/InternetTime;
    .registers 1

    .line 120
    sget-object v0, Linfo/flowersoft/theotown/resources/InternetTime;->instance:Linfo/flowersoft/theotown/resources/InternetTime;

    if-nez v0, :cond_b

    .line 121
    new-instance v0, Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/InternetTime;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/InternetTime;->instance:Linfo/flowersoft/theotown/resources/InternetTime;

    .line 123
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/InternetTime;->instance:Linfo/flowersoft/theotown/resources/InternetTime;

    return-object v0
.end method


# virtual methods
.method public getTime()J
    .registers 5

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    iget-boolean v2, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastLookupSuccessful:Z

    if-eqz v2, :cond_e

    .line 89
    iget-wide v2, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastLocalTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastInternetTime:J

    add-long/2addr v0, v2

    :cond_e
    return-wide v0
.end method

.method public isConnected()Z
    .registers 5

    .line 78
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastCheckTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/resources/InternetTime;->update(Z)V

    .line 82
    :cond_16
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/InternetTime;->connected:Z

    return v0
.end method

.method public final readServerTime()J
    .registers 10

    .line 96
    const-string v0, "Time"

    .line 97
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    .line 99
    const-string v3, "time"

    invoke-static {v3}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_76

    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_76

    .line 102
    :try_start_1c
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 106
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v4, v3, v5

    .line 107
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading time took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, diff is "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_6d} :catch_70
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_6d} :catch_6e

    return-wide v4

    :catch_6e
    move-exception v1

    goto :goto_71

    :catch_70
    move-exception v1

    .line 109
    :goto_71
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v2, v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_76
    return-wide v4
.end method

.method public update(Z)V
    .registers 6

    .line 38
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastCheckTime:J

    .line 41
    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastLookupSuccessful:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Linfo/flowersoft/theotown/resources/InternetTime;->connected:Z

    if-eqz v0, :cond_21

    .line 43
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/resources/InternetTime;->lastLocalTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    goto :goto_32

    :cond_21
    if-eqz p1, :cond_32

    .line 47
    sget-boolean p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->CHECK_TIME_ONLINE:Z

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Linfo/flowersoft/theotown/resources/InternetTime;->connected:Z

    .line 50
    new-instance p1, Linfo/flowersoft/theotown/resources/InternetTime$1;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/resources/InternetTime$1;-><init>(Linfo/flowersoft/theotown/resources/InternetTime;)V

    .line 72
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_32
    :goto_32
    return-void
.end method

###### Class info.flowersoft.theotown.resources.InternetTime.AnonymousClass1 (info.flowersoft.theotown.resources.InternetTime$1)
.class public Linfo/flowersoft/theotown/resources/InternetTime$1;
.super Ljava/lang/Thread;
.source "InternetTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/resources/InternetTime;->update(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/resources/InternetTime;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/resources/InternetTime;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->access$000(Linfo/flowersoft/theotown/resources/InternetTime;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    return-void

    .line 56
    :cond_d
    const-string v2, "time"

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    const-string v3, "tolerance seconds"

    const/16 v4, 0x3c

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    .line 57
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/resources/InternetTime;->access$102(Linfo/flowersoft/theotown/resources/InternetTime;Z)Z

    .line 58
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Linfo/flowersoft/theotown/resources/InternetTime;->access$202(Linfo/flowersoft/theotown/resources/InternetTime;J)J

    .line 59
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-static {v3}, Linfo/flowersoft/theotown/resources/InternetTime;->access$200(Linfo/flowersoft/theotown/resources/InternetTime;)J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    int-to-long v2, v2

    cmp-long v2, v5, v2

    if-gez v2, :cond_46

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->access$200(Linfo/flowersoft/theotown/resources/InternetTime;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/resources/InternetTime;->access$302(Linfo/flowersoft/theotown/resources/InternetTime;J)J

    goto :goto_72

    .line 62
    :cond_46
    iget-object v2, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-static {v2, v0, v1}, Linfo/flowersoft/theotown/resources/InternetTime;->access$302(Linfo/flowersoft/theotown/resources/InternetTime;J)J

    .line 63
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/InternetTime;->access$200(Linfo/flowersoft/theotown/resources/InternetTime;)J

    move-result-wide v2

    iget-object v5, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-static {v5}, Linfo/flowersoft/theotown/resources/InternetTime;->access$300(Linfo/flowersoft/theotown/resources/InternetTime;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InternetTime"

    const-string v3, "Tampering detected"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_72
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-static {v0, v4}, Linfo/flowersoft/theotown/resources/InternetTime;->access$402(Linfo/flowersoft/theotown/resources/InternetTime;Z)Z

    .line 67
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "info.flowersoft.theotown.theotown.time"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 68
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/InternetTime;->access$200(Linfo/flowersoft/theotown/resources/InternetTime;)J

    move-result-wide v1

    const-string v3, "last local time"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 69
    iget-object v1, p0, Linfo/flowersoft/theotown/resources/InternetTime$1;->this$0:Linfo/flowersoft/theotown/resources/InternetTime;

    invoke-static {v1}, Linfo/flowersoft/theotown/resources/InternetTime;->access$300(Linfo/flowersoft/theotown/resources/InternetTime;)J

    move-result-wide v1

    const-string v3, "last internet time"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 70
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    return-void
.end method
