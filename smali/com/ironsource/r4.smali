###### Class com.ironsource.C3813r4 (com.ironsource.r4)
.class public Lcom/ironsource/r4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/r4$d;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "1.0.6"

.field public static l:Ljava/lang/String; = ""


# instance fields
.field private final a:Lcom/ironsource/B7;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/ironsource/environment/ContextProvider;

.field public g:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgeta(Lcom/ironsource/r4;)Lcom/ironsource/B7;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/r4;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/r4;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputc(Lcom/ironsource/r4;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/ironsource/r4;->c:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fpute(Lcom/ironsource/r4;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/ironsource/r4;->e:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/r4;->j:Z

    .line 16
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->a()Lcom/ironsource/B7;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    .line 17
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r4;->f:Lcom/ironsource/environment/ContextProvider;

    .line 20
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/r4;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 21
    const-string v1, " "

    iput-object v1, p0, Lcom/ironsource/r4;->i:Ljava/lang/String;

    .line 22
    const-string v1, "https://o-crash.mediation.unity3d.com/reporter"

    iput-object v1, p0, Lcom/ironsource/r4;->h:Ljava/lang/String;

    .line 23
    new-instance v1, Lcom/ironsource/p4;

    invoke-direct {v1, v0}, Lcom/ironsource/p4;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/r4-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/ironsource/r4;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "none"

    if-nez p1, :cond_5

    return-object v0

    .line 213
    :cond_5
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_10

    return-object v0

    .line 220
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 221
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_1b

    return-object v0

    :cond_1b
    const/4 v1, 0x1

    .line 225
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 226
    const-string p1, "wifi"

    return-object p1

    :catch_25
    move-exception p1

    goto :goto_32

    :cond_27
    const/4 v1, 0x0

    .line 227
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 228
    const-string p1, "cellular"
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_30} :catch_25

    return-object p1

    :cond_31
    return-object v0

    .line 245
    :goto_32
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/HashSet;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 99
    invoke-virtual {v1}, Lcom/ironsource/r4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ironsource/r4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string v0, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19d

    .line 102
    const-string v0, "CRep"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    iget-object v4, v1, Lcom/ironsource/r4;->c:Ljava/lang/String;

    const-string v5, "String1"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    iget-object v5, v1, Lcom/ironsource/r4;->d:Ljava/lang/String;

    const-string v6, "sId"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {}, Lcom/ironsource/I4;->b()Ljava/util/List;

    move-result-object v0

    .line 107
    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportList size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/P5;

    .line 109
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 111
    invoke-virtual {v0}, Lcom/ironsource/P5;->b()Ljava/lang/String;

    move-result-object v9

    .line 112
    invoke-virtual {v0}, Lcom/ironsource/P5;->e()Ljava/lang/String;

    move-result-object v10

    .line 113
    invoke-virtual {v0}, Lcom/ironsource/P5;->d()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 116
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 119
    :try_start_73
    iget-object v13, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    invoke-interface {v13, v2}, Lcom/ironsource/B7;->o(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v13

    if-eqz v13, :cond_9c

    .line 121
    const-string v14, "availRam"

    iget-object v15, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    .line 123
    invoke-interface {v15, v13}, Lcom/ironsource/B7;->c(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;

    move-result-object v15

    .line 124
    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v14, "lowM"

    iget-object v15, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    .line 128
    invoke-interface {v15, v13}, Lcom/ironsource/B7;->b(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Boolean;

    move-result-object v15

    .line 129
    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v14, "mThreshold"

    iget-object v15, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    .line 132
    invoke-interface {v15, v13}, Lcom/ironsource/B7;->a(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;

    move-result-object v13

    .line 133
    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_9c
    iget-object v13, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    invoke-interface {v13}, Lcom/ironsource/B7;->t()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a9

    .line 138
    const-string v14, "osArch"

    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :cond_a9
    const-string v13, "crashDate"

    invoke-virtual {v12, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v9, "stacktraceCrash"

    invoke-virtual {v12, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v9, "crashType"

    invoke-virtual {v12, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v0, "CrashReporterVersion"

    const-string v9, "1.0.6"

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v0, "SDKVersion"

    const-string v9, "9.6.1"

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v0, "deviceLanguage"

    iget-object v9, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    .line 146
    invoke-interface {v9, v2}, Lcom/ironsource/B7;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 147
    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v0, "appVersion"

    .line 151
    invoke-static {v2, v11}, Lcom/ironsource/M1;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 152
    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v0, "deviceOSVersion"

    iget-object v9, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    .line 156
    invoke-interface {v9}, Lcom/ironsource/B7;->i()Ljava/lang/String;

    move-result-object v9

    .line 157
    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v0, "network"

    invoke-virtual {v12, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v0, "deviceApiLevel"

    iget-object v9, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    .line 161
    invoke-interface {v9}, Lcom/ironsource/B7;->e()I

    move-result v9

    .line 162
    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v0, "deviceModel"

    iget-object v9, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    invoke-interface {v9}, Lcom/ironsource/B7;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v0, "totalRam"

    iget-object v9, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    invoke-interface {v9, v2}, Lcom/ironsource/B7;->r(Landroid/content/Context;)J

    move-result-wide v9

    invoke-virtual {v12, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 166
    const-string v0, "deviceOS"

    iget-object v9, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    invoke-interface {v9}, Lcom/ironsource/B7;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v0, "advertisingId"

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v0, "deviceOEM"

    iget-object v9, v1, Lcom/ironsource/r4;->a:Lcom/ironsource/B7;

    invoke-interface {v9}, Lcom/ironsource/B7;->q()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v0, "systemProperties"

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v9

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v0, "bundleId"

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    invoke-virtual {v12, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    iget-object v0, v1, Lcom/ironsource/r4;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14a

    .line 174
    iget-object v0, v1, Lcom/ironsource/r4;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 175
    const-string v9, "isLimitAdTrackingEnabled"

    invoke-virtual {v12, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_14a
    if-eqz p2, :cond_17b

    .line 179
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17b

    .line 180
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 181
    :cond_156
    :goto_156
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 182
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_162} :catch_17c

    .line 184
    :try_start_162
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_156

    .line 185
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_16f} :catch_170

    goto :goto_156

    :catch_170
    move-exception v0

    .line 188
    :try_start_171
    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_17a} :catch_17c

    goto :goto_156

    :cond_17b
    move-object v8, v12

    .line 199
    :catch_17c
    :cond_17c
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_18b

    .line 200
    const-string v0, "ISCrashReport"

    const-string v8, " Is Empty"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 203
    :cond_18b
    new-instance v0, Ljava/lang/Thread;

    new-instance v9, Lcom/ironsource/r4$c;

    invoke-direct {v9, v1, v8}, Lcom/ironsource/r4$c;-><init>(Lcom/ironsource/r4;Lorg/json/JSONObject;)V

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4d

    .line 208
    :cond_19a
    invoke-static {}, Lcom/ironsource/I4;->a()V

    :cond_19d
    return-void
.end method

.method public static c()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/P5;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static d()Lcom/ironsource/r4;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/r4$d;->a:Lcom/ironsource/r4;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/ironsource/r4;->f:Lcom/ironsource/environment/ContextProvider;

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 6

    .line 90
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/ironsource/r4;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 91
    iget-boolean v0, p0, Lcom/ironsource/r4;->j:Z

    if-eqz v0, :cond_46

    if-eqz p1, :cond_46

    .line 92
    new-instance v0, Lcom/ironsource/q4;

    invoke-direct {v0, p1}, Lcom/ironsource/q4;-><init>(Ljava/lang/Throwable;)V

    .line 93
    new-instance p1, Lcom/ironsource/P5;

    .line 95
    invoke-virtual {v0}, Lcom/ironsource/q4;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Caught_IS_Crash"

    invoke-direct {p1, v0, v1, v2}, Lcom/ironsource/P5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/ironsource/P5;->a()V

    :cond_46
    return-void
.end method

.method public a(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/r4;->f:Lcom/ironsource/environment/ContextProvider;

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4d

    .line 3
    const-string v2, "automation_log"

    const-string v3, "init ISCrashReporter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 5
    iput-object p3, p0, Lcom/ironsource/r4;->i:Ljava/lang/String;

    .line 7
    :cond_18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_20

    .line 8
    iput-object p2, p0, Lcom/ironsource/r4;->h:Ljava/lang/String;

    .line 11
    :cond_20
    iput-object p5, p0, Lcom/ironsource/r4;->d:Ljava/lang/String;

    if-eqz p4, :cond_3d

    .line 14
    new-instance p2, Lcom/ironsource/a;

    invoke-direct {p2, p6}, Lcom/ironsource/a;-><init>(I)V

    .line 15
    invoke-virtual {p2, p7}, Lcom/ironsource/a;->a(Z)Lcom/ironsource/a;

    move-result-object p2

    .line 16
    invoke-virtual {p2, v1}, Lcom/ironsource/a;->b(Z)Lcom/ironsource/a;

    move-result-object p2

    new-instance p3, Lcom/ironsource/r4$a;

    invoke-direct {p3, p0}, Lcom/ironsource/r4$a;-><init>(Lcom/ironsource/r4;)V

    .line 17
    invoke-virtual {p2, p3}, Lcom/ironsource/a;->a(Lcom/ironsource/b;)Lcom/ironsource/a;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 56
    :cond_3d
    invoke-direct {p0, v0, p1}, Lcom/ironsource/r4;->a(Landroid/content/Context;Ljava/util/HashSet;)V

    .line 57
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/ironsource/r4$b;

    invoke-direct {p2, p0, v0, p5}, Lcom/ironsource/r4$b;-><init>(Lcom/ironsource/r4;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 86
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 88
    :cond_4d
    iput-boolean v1, p0, Lcom/ironsource/r4;->j:Z

    .line 89
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "initialized"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "1.0.6"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/r4;->i:Ljava/lang/String;

    return-object v0
.end method

###### Class com.ironsource.C3813r4.a (com.ironsource.r4$a)
.class Lcom/ironsource/r4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/r4;->a(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/r4;


# direct methods
.method public constructor <init>(Lcom/ironsource/r4;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/r4$a;->a:Lcom/ironsource/r4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 5
    array-length v4, v3

    if-lez v4, :cond_13

    .line 7
    const-string v4, "*** Thread Name "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v4, " Thread ID "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v5, " ***\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    array-length v5, v3

    const/4 v6, 0x0

    :goto_61
    if-ge v6, v5, :cond_13

    aget-object v7, v3, v6

    .line 18
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 25
    :cond_82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/r4;->l:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .registers 1

    .line 0
    return-void
.end method

###### Class com.ironsource.C3813r4.b (com.ironsource.r4$b)
.class Lcom/ironsource/r4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/r4;->a(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/r4;


# direct methods
.method public constructor <init>(Lcom/ironsource/r4;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    iput-object p2, p0, Lcom/ironsource/r4$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ironsource/r4$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    invoke-static {v0}, Lcom/ironsource/r4;->-$$Nest$fgeta(Lcom/ironsource/r4;)Lcom/ironsource/B7;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/r4$b;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/ironsource/B7;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 3
    iget-object v1, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    invoke-static {v1, v0}, Lcom/ironsource/r4;->-$$Nest$fputc(Lcom/ironsource/r4;Ljava/lang/String;)V

    goto :goto_1a

    :catch_18
    move-exception v0

    goto :goto_54

    .line 7
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    invoke-static {v0}, Lcom/ironsource/r4;->-$$Nest$fgeta(Lcom/ironsource/r4;)Lcom/ironsource/B7;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/r4$b;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/ironsource/B7;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 9
    iget-object v1, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    invoke-static {v1, v0}, Lcom/ironsource/r4;->-$$Nest$fpute(Lcom/ironsource/r4;Ljava/lang/String;)V

    .line 12
    :cond_31
    iget-object v0, p0, Lcom/ironsource/r4$b;->a:Landroid/content/Context;

    const-string v1, "CRep"

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    const-string v1, "String1"

    iget-object v2, p0, Lcom/ironsource/r4$b;->c:Lcom/ironsource/r4;

    invoke-static {v2}, Lcom/ironsource/r4;->-$$Nest$fgetc(Lcom/ironsource/r4;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    const-string v1, "sId"

    iget-object v2, p0, Lcom/ironsource/r4$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_18

    return-void

    .line 21
    :goto_54
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.C3813r4.c (com.ironsource.r4$c)
.class Lcom/ironsource/r4$c;
.super Lcom/ironsource/s4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/r4;->a(Landroid/content/Context;Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/r4;


# direct methods
.method public constructor <init>(Lcom/ironsource/r4;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/r4$c;->b:Lcom/ironsource/r4;

    invoke-direct {p0, p2}, Lcom/ironsource/s4;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

###### Class com.ironsource.C3813r4.d (com.ironsource.r4$d)
.class Lcom/ironsource/r4$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field static volatile a:Lcom/ironsource/r4;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/r4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/r4;-><init>(Lcom/ironsource/r4-IA;)V

    sput-object v0, Lcom/ironsource/r4$d;->a:Lcom/ironsource/r4;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
