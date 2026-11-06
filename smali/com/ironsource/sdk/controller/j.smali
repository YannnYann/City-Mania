###### Class com.ironsource.sdk.controller.j (com.ironsource.sdk.controller.j)
.class Lcom/ironsource/sdk/controller/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/ironsource/b6;


# direct methods
.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/sdk/controller/j;Lcom/ironsource/va;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$ma(Lcom/ironsource/sdk/controller/j;Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/b6;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/sdk/controller/j;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/D8;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    const-string v0, "folderPath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 139
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    new-instance v0, Lcom/ironsource/D8;

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildAbsolutePathToDirInCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/D8;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 141
    :cond_16
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing params for folder"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/ironsource/va;Lcom/ironsource/wa;)Lcom/ironsource/Vc;
    .registers 4

    .line 114
    new-instance v0, Lcom/ironsource/sdk/controller/j$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/ironsource/sdk/controller/j$a;-><init>(Lcom/ironsource/sdk/controller/j;Lcom/ironsource/wa;Lcom/ironsource/va;)V

    return-object v0
.end method

.method private a(Lcom/ironsource/va;J)Lorg/json/JSONObject;
    .registers 5

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/va;->e()Lorg/json/JSONObject;

    move-result-object p1

    .line 123
    const-string v0, "result"

    invoke-virtual {p1, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 125
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 126
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 128
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private a(Lcom/ironsource/va;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/va;->e()Lorg/json/JSONObject;

    move-result-object p1

    .line 130
    const-string v0, "errMsg"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 132
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 133
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 135
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/va;->e()Lorg/json/JSONObject;

    move-result-object p1

    .line 116
    const-string v0, "result"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 118
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 119
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 121
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/D8;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "filePath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "fileName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v1, Lcom/ironsource/D8;

    .line 7
    invoke-static {p2, v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->buildAbsolutePathToDirInCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/ironsource/D8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_22
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Missing params for file"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/ironsource/ua;)V
    .registers 12

    .line 1
    new-instance v1, Lcom/ironsource/va;

    invoke-direct {v1, p1}, Lcom/ironsource/va;-><init>(Lorg/json/JSONObject;)V

    .line 2
    new-instance p1, Lcom/ironsource/wa;

    invoke-direct {p1, p2}, Lcom/ironsource/wa;-><init>(Lcom/ironsource/ua;)V

    .line 4
    :try_start_a
    invoke-virtual {v1}, Lcom/ironsource/va;->b()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {v1}, Lcom/ironsource/va;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/ironsource/sdk/controller/j;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/sdk/controller/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ironsource/D8;

    move-result-object v4

    .line 8
    iget-object v2, p0, Lcom/ironsource/sdk/controller/j;->a:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->ensurePathSafety(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x3

    sparse-switch v2, :sswitch_data_fe

    goto :goto_6a

    :sswitch_2a
    const-string v2, "getFiles"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    move p2, v8

    goto :goto_6b

    :catch_34
    move-exception v0

    move-object p2, v0

    goto/16 :goto_ea

    :sswitch_38
    const-string v2, "deleteFile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    move p2, v7

    goto :goto_6b

    :sswitch_42
    const-string v2, "updateAttributesOfFile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    move p2, v6

    goto :goto_6b

    :sswitch_4c
    const-string v2, "getTotalSizeOfFiles"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    move p2, v5

    goto :goto_6b

    :sswitch_56
    const-string v2, "deleteFolder"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    move p2, v3

    goto :goto_6b

    :sswitch_60
    const-string v2, "saveFile"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    const/4 p2, 0x0

    goto :goto_6b

    :cond_6a
    :goto_6a
    const/4 p2, -0x1

    :goto_6b
    if-eqz p2, :cond_ce

    if-eq p2, v7, :cond_bd

    if-eq p2, v3, :cond_ac

    if-eq p2, v8, :cond_9e

    if-eq p2, v5, :cond_90

    if-eq p2, v6, :cond_79

    goto/16 :goto_fc

    .line 50
    :cond_79
    const-string p2, "attributesToUpdate"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 51
    iget-object v0, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual {v0, v4, p2}, Lcom/ironsource/b6;->a(Lcom/ironsource/D8;Lorg/json/JSONObject;)V

    .line 53
    invoke-virtual {v4}, Lcom/ironsource/D8;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 54
    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    return-void

    .line 55
    :cond_90
    iget-object p2, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual {p2, v4}, Lcom/ironsource/b6;->d(Lcom/ironsource/D8;)J

    move-result-wide v2

    .line 56
    invoke-direct {p0, v1, v2, v3}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;J)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    return-void

    .line 57
    :cond_9e
    iget-object p2, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual {p2, v4}, Lcom/ironsource/b6;->c(Lcom/ironsource/D8;)Lorg/json/JSONObject;

    move-result-object p2

    .line 58
    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    return-void

    .line 59
    :cond_ac
    iget-object p2, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual {p2, v4}, Lcom/ironsource/b6;->b(Lcom/ironsource/D8;)V

    .line 61
    invoke-virtual {v4}, Lcom/ironsource/D8;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 62
    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    return-void

    .line 63
    :cond_bd
    iget-object p2, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual {p2, v4}, Lcom/ironsource/b6;->a(Lcom/ironsource/D8;)V

    .line 65
    invoke-virtual {v4}, Lcom/ironsource/D8;->a()Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 66
    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    return-void

    .line 67
    :cond_ce
    const-string p2, "fileUrl"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    const-string p2, "connectionTimeout"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 69
    const-string p2, "readTimeout"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 71
    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lcom/ironsource/wa;)Lcom/ironsource/Vc;

    move-result-object v8

    .line 72
    iget-object v3, p0, Lcom/ironsource/sdk/controller/j;->b:Lcom/ironsource/b6;

    invoke-virtual/range {v3 .. v8}, Lcom/ironsource/b6;->a(Lcom/ironsource/D8;Ljava/lang/String;IILcom/ironsource/Vc;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e9} :catch_34

    return-void

    .line 112
    :goto_ea
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 113
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/ironsource/wa;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)V

    :goto_fc
    return-void

    nop

    :sswitch_data_fe
    .sparse-switch
        -0x7b8fdb67 -> :sswitch_60
        -0x43c59e07 -> :sswitch_56
        -0x12f60ecf -> :sswitch_4c
        0x200a7713 -> :sswitch_42
        0x692721c7 -> :sswitch_38
        0x746c60c1 -> :sswitch_2a
    .end sparse-switch
.end method

###### Class com.ironsource.sdk.controller.j.a (com.ironsource.sdk.controller.j$a)
.class Lcom/ironsource/sdk/controller/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Vc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/j;->a(Lcom/ironsource/va;Lcom/ironsource/wa;)Lcom/ironsource/Vc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/wa;

.field final synthetic b:Lcom/ironsource/va;

.field final synthetic c:Lcom/ironsource/sdk/controller/j;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/j;Lcom/ironsource/wa;Lcom/ironsource/va;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/sdk/controller/j$a;->c:Lcom/ironsource/sdk/controller/j;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/j$a;->a:Lcom/ironsource/wa;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/j$a;->b:Lcom/ironsource/va;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/D8;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/j$a;->a:Lcom/ironsource/wa;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/j$a;->b:Lcom/ironsource/va;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/j$a;->c:Lcom/ironsource/sdk/controller/j;

    invoke-virtual {p1}, Lcom/ironsource/D8;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/ironsource/sdk/controller/j;->-$$Nest$ma(Lcom/ironsource/sdk/controller/j;Lcom/ironsource/va;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/wa;->b(Lcom/ironsource/va;Lorg/json/JSONObject;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 3
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 4
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/D8;Lcom/ironsource/u8;)V
    .registers 5

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/sdk/controller/j$a;->a:Lcom/ironsource/wa;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/j$a;->b:Lcom/ironsource/va;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/j$a;->c:Lcom/ironsource/sdk/controller/j;

    .line 6
    invoke-virtual {p2}, Lcom/ironsource/u8;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v0, p2}, Lcom/ironsource/sdk/controller/j;->-$$Nest$ma(Lcom/ironsource/sdk/controller/j;Lcom/ironsource/va;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/ironsource/wa;->a(Lcom/ironsource/va;Lorg/json/JSONObject;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 10
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 11
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method
