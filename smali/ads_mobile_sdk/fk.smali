###### Class ads_mobile_sdk.fk (ads_mobile_sdk.fk)
.class public final Lads_mobile_sdk/fk;
.super Lads_mobile_sdk/jj3;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/Map;

.field public final g:Landroid/content/Context;

.field public final h:Lads_mobile_sdk/fl3;

.field public final i:Lads_mobile_sdk/ts3;

.field public final j:J

.field public final k:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Ljava/util/Map;Landroid/content/Context;Lads_mobile_sdk/fl3;Lads_mobile_sdk/na;Lads_mobile_sdk/ts3;)V
    .registers 15

    .line 64
    sget-object v0, Lads_mobile_sdk/lq0;->r:Lads_mobile_sdk/lq0;

    .line 67
    invoke-virtual {p7, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object v6

    .line 68
    const-string v2, "djHg9vieI/9LROlIGz8vnOthg7fM6e9YIS42gpsHPrs90458Aocnnr5o3fsdj+hF"

    const-string v3, "hM7HRLowFCruS7CMm0mWhsf8pMiXDgYsYJI/8i6Gz90="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/jj3;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/xf;Lads_mobile_sdk/yw1;Lads_mobile_sdk/qr3;)V

    .line 74
    iput-object p4, v1, Lads_mobile_sdk/fk;->g:Landroid/content/Context;

    .line 75
    iput-object p3, v1, Lads_mobile_sdk/fk;->f:Ljava/util/Map;

    .line 76
    iput-object p5, v1, Lads_mobile_sdk/fk;->h:Lads_mobile_sdk/fl3;

    .line 77
    iput-object p7, v1, Lads_mobile_sdk/fk;->i:Lads_mobile_sdk/ts3;

    .line 78
    invoke-virtual {p6}, Lads_mobile_sdk/na;->K()J

    move-result-wide p1

    iput-wide p1, v1, Lads_mobile_sdk/fk;->j:J

    .line 79
    invoke-virtual {p6}, Lads_mobile_sdk/na;->O()J

    move-result-wide p1

    iput-wide p1, v1, Lads_mobile_sdk/fk;->k:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Lads_mobile_sdk/xf;)V
    .registers 10

    .line 83
    iget-object v0, p0, Lads_mobile_sdk/fk;->g:Landroid/content/Context;

    iget-object v1, p0, Lads_mobile_sdk/fk;->h:Lads_mobile_sdk/fl3;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 86
    const-string v0, "E"

    const/4 v1, 0x1

    .line 91
    :try_start_21
    iget-object v2, p0, Lads_mobile_sdk/fk;->f:Ljava/util/Map;

    const-string v3, "gs"

    .line 92
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_6f

    .line 93
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_39

    .line 94
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 95
    :cond_39
    iget-wide v3, p0, Lads_mobile_sdk/fk;->j:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/fh;

    if-eqz v2, :cond_6f

    .line 98
    invoke-virtual {v2}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_6f

    .line 99
    invoke-virtual {v2}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 100
    invoke-virtual {v2}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v0
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_5f} :catch_68
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_21 .. :try_end_5f} :catch_60
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_5f} :catch_6f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_21 .. :try_end_5f} :catch_6f

    goto :goto_6f

    .line 106
    :catch_60
    iget-object v2, p0, Lads_mobile_sdk/fk;->i:Lads_mobile_sdk/ts3;

    sget-object v3, Lads_mobile_sdk/lq0;->G:Lads_mobile_sdk/lq0;

    invoke-virtual {v2, v3}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_6f

    .line 107
    :catch_68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 115
    :catch_6f
    :cond_6f
    :goto_6f
    const-string v2, "E"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 117
    :try_start_77
    iget-object v2, p0, Lads_mobile_sdk/fk;->f:Ljava/util/Map;

    const-string v3, "ai"

    .line 118
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_a4

    .line 120
    iget-wide v3, p0, Lads_mobile_sdk/fk;->k:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_91} :catch_9d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_77 .. :try_end_91} :catch_95
    .catch Ljava/lang/ClassCastException; {:try_start_77 .. :try_end_91} :catch_a4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_77 .. :try_end_91} :catch_a4

    if-nez v3, :cond_a4

    move-object v0, v2

    goto :goto_a4

    .line 128
    :catch_95
    iget-object v2, p0, Lads_mobile_sdk/fk;->i:Lads_mobile_sdk/ts3;

    sget-object v3, Lads_mobile_sdk/lq0;->H:Lads_mobile_sdk/lq0;

    invoke-virtual {v2, v3}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_a4

    .line 129
    :catch_9d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :catch_a4
    :cond_a4
    :goto_a4
    const/4 v2, 0x5

    .line 136
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x6

    .line 137
    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Long;

    .line 138
    monitor-enter p2

    const/4 v4, 0x4

    .line 139
    :try_start_b0
    aget-object v4, p1, v4

    .line 141
    instance-of v5, v4, [B

    if-eqz v5, :cond_d3

    .line 142
    check-cast v4, [B

    .line 143
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/io/BaseEncoding;->lowerCase()Lcom/google/common/io/BaseEncoding;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 144
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 146
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/16 v5, 0xb

    .line 147
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    goto :goto_d5

    :catchall_d1
    move-exception p1

    goto :goto_128

    .line 151
    :cond_d3
    check-cast v4, Ljava/lang/String;

    :goto_d5
    const/4 v5, 0x0

    .line 154
    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Long;

    .line 155
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lads_mobile_sdk/xf;->L(J)Lads_mobile_sdk/xf;

    move-result-object v5

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    .line 156
    invoke-virtual {v5, v1}, Lads_mobile_sdk/xf;->j(Ljava/lang/String;)Lads_mobile_sdk/xf;

    move-result-object v1

    const/4 v5, 0x2

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/String;

    .line 157
    invoke-virtual {v1, v5}, Lads_mobile_sdk/xf;->d(Ljava/lang/String;)Lads_mobile_sdk/xf;

    move-result-object v1

    const/4 v5, 0x3

    aget-object p1, p1, v5

    check-cast p1, Ljava/lang/String;

    .line 158
    invoke-virtual {v1, p1}, Lads_mobile_sdk/xf;->g(Ljava/lang/String;)Lads_mobile_sdk/xf;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v4}, Lads_mobile_sdk/xf;->e(Ljava/lang/String;)Lads_mobile_sdk/xf;

    move-result-object p1

    .line 160
    invoke-virtual {p1, v0}, Lads_mobile_sdk/xf;->h(Ljava/lang/String;)V

    if-eqz v2, :cond_113

    .line 163
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10e

    sget-object p1, Lads_mobile_sdk/rh;->c:Lads_mobile_sdk/rh;

    goto :goto_110

    .line 164
    :cond_10e
    sget-object p1, Lads_mobile_sdk/rh;->b:Lads_mobile_sdk/rh;

    .line 165
    :goto_110
    invoke-virtual {p2, p1}, Lads_mobile_sdk/xf;->c(Lads_mobile_sdk/rh;)V

    :cond_113
    if-eqz v3, :cond_126

    .line 170
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-static {p1}, Lads_mobile_sdk/rh;->a(I)Lads_mobile_sdk/rh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/rh;

    .line 171
    invoke-virtual {p2, p1}, Lads_mobile_sdk/xf;->b(Lads_mobile_sdk/rh;)V

    .line 174
    :cond_126
    monitor-exit p2

    return-void

    .line 175
    :goto_128
    monitor-exit p2
    :try_end_129
    .catchall {:try_start_b0 .. :try_end_129} :catchall_d1

    throw p1
.end method
