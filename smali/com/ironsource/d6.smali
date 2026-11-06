###### Class com.ironsource.CallableC3560d6 (com.ironsource.d6)
.class Lcom/ironsource/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/ironsource/h5;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "FileWorkerThread"

.field private static final e:Ljava/lang/String; = "X-Android-Protocols"

.field private static final f:Ljava/lang/String; = "http/1.1,h2"


# instance fields
.field private final a:Lcom/ironsource/g5;

.field private final b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/ironsource/g5;Ljava/lang/String;J)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 3
    iput-object p2, p0, Lcom/ironsource/d6;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/ironsource/d6;->c:J

    return-void
.end method


# virtual methods
.method public a([BLjava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/ironsource/h5;
    .registers 10

    const-string v1, "FileWorkerThread"

    .line 11
    iget-wide v2, p0, Lcom/ironsource/d6;->c:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    const-wide/16 v2, 0x1

    .line 13
    iput-wide v2, p0, Lcom/ironsource/d6;->c:J

    :cond_e
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v4, v2

    :goto_11
    int-to-long v2, v4

    .line 17
    iget-wide v5, p0, Lcom/ironsource/d6;->c:J

    cmp-long v2, v2, v5

    const/16 v8, 0x3f1

    if-gez v2, :cond_46

    .line 19
    iget-object v0, p0, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 21
    invoke-virtual {v0}, Lcom/ironsource/g5;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 23
    invoke-virtual {v0}, Lcom/ironsource/g5;->a()I

    move-result v5

    iget-object v0, p0, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 24
    invoke-virtual {v0}, Lcom/ironsource/g5;->c()I

    move-result v6

    iget-object v0, p0, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 25
    invoke-virtual {v0}, Lcom/ironsource/g5;->f()Z

    move-result v7

    move-object v2, p0

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/ironsource/d6;->a(Ljava/lang/String;IIIZ)Lcom/ironsource/h5;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/ironsource/h5;->b()I

    move-result v3

    const/16 v5, 0x3f0

    if-eq v3, v5, :cond_43

    if-eq v3, v8, :cond_43

    :goto_41
    move-object v3, v0

    goto :goto_48

    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_46
    move-object v2, p0

    goto :goto_41

    :goto_48
    if-eqz v3, :cond_ff

    .line 42
    invoke-virtual {v3}, Lcom/ironsource/h5;->a()[B

    move-result-object v0

    if-eqz v0, :cond_ff

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/ironsource/d6;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    invoke-virtual {v5}, Lcom/ironsource/g5;->b()Lcom/ironsource/D8;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 45
    invoke-virtual {v6}, Lcom/ironsource/g5;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "tmp_"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/ironsource/d6;->a:Lcom/ironsource/g5;

    .line 48
    invoke-virtual {v4}, Lcom/ironsource/g5;->b()Lcom/ironsource/D8;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    :try_start_97
    invoke-virtual {v3}, Lcom/ironsource/h5;->a()[B

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/ironsource/d6;->a([BLjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_ad

    const/16 v0, 0x3ee

    .line 53
    invoke-virtual {v3, v0}, Lcom/ironsource/h5;->a(I)V

    return-object v3

    :catch_a7
    move-exception v0

    goto :goto_b9

    :catch_a9
    move-exception v0

    goto :goto_d7

    :catch_ab
    move-exception v0

    goto :goto_f3

    .line 54
    :cond_ad
    invoke-virtual {p0, v4, v0}, Lcom/ironsource/d6;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ff

    const/16 v0, 0x3f6

    .line 55
    invoke-virtual {v3, v0}, Lcom/ironsource/h5;->a(I)V
    :try_end_b8
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_b8} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_b8} :catch_a9
    .catch Ljava/lang/Error; {:try_start_97 .. :try_end_b8} :catch_a7

    return-object v3

    .line 67
    :goto_b9
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d1

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    const/16 v0, 0x3fb

    .line 71
    invoke-virtual {v3, v0}, Lcom/ironsource/h5;->a(I)V

    goto :goto_ff

    .line 72
    :goto_d7
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ef

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_ef
    invoke-virtual {v3, v8}, Lcom/ironsource/h5;->a(I)V

    goto :goto_ff

    .line 77
    :goto_f3
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0x3fa

    .line 78
    invoke-virtual {v3, v0}, Lcom/ironsource/h5;->a(I)V

    :cond_ff
    :goto_ff
    return-object v3
.end method

.method public a(Ljava/lang/String;IIIZ)Lcom/ironsource/h5;
    .registers 12

    .line 79
    const-string v0, "FileWorkerThread"

    new-instance v1, Lcom/ironsource/h5;

    invoke-direct {v1}, Lcom/ironsource/h5;-><init>()V

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 86
    invoke-virtual {v1, p1}, Lcom/ironsource/h5;->a(Ljava/lang/String;)V

    const/16 p1, 0x3ef

    .line 87
    invoke-virtual {v1, p1}, Lcom/ironsource/h5;->a(I)V

    return-object v1

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 93
    :try_start_18
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 99
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_26
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_26} :catch_bc
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_26} :catch_b8
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_26} :catch_b4
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_26} :catch_b0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_ad
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_26} :catch_aa
    .catchall {:try_start_18 .. :try_end_26} :catchall_a6

    .line 100
    :try_start_26
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/net/MalformedURLException; {:try_start_26 .. :try_end_2b} :catch_47
    .catch Ljava/net/URISyntaxException; {:try_start_26 .. :try_end_2b} :catch_44
    .catch Ljava/net/SocketTimeoutException; {:try_start_26 .. :try_end_2b} :catch_41
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2b} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_3b
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_2b} :catch_38
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    if-eqz p5, :cond_52

    .line 103
    :try_start_2d
    const-string p5, "X-Android-Protocols"

    const-string v5, "http/1.1,h2"

    invoke-virtual {v4, p5, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_34} :catch_4a
    .catch Ljava/net/MalformedURLException; {:try_start_2d .. :try_end_34} :catch_47
    .catch Ljava/net/URISyntaxException; {:try_start_2d .. :try_end_34} :catch_44
    .catch Ljava/net/SocketTimeoutException; {:try_start_2d .. :try_end_34} :catch_41
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_34} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_34} :catch_3b
    .catch Ljava/lang/Error; {:try_start_2d .. :try_end_34} :catch_38
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_52

    :catchall_35
    move-exception p2

    goto/16 :goto_18c

    :catch_38
    move-exception p2

    goto/16 :goto_c0

    :catch_3b
    move-exception p2

    goto/16 :goto_fd

    :catch_3e
    move-exception p2

    goto/16 :goto_125

    :catch_41
    move-exception p2

    goto/16 :goto_139

    :catch_44
    move-exception p2

    goto/16 :goto_14d

    :catch_47
    move-exception p2

    goto/16 :goto_161

    :catch_4a
    move-exception p5

    .line 105
    :try_start_4b
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v5

    invoke-virtual {v5, p5}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 108
    :cond_52
    :goto_52
    invoke-virtual {v4, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 109
    invoke-virtual {v4, p4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 111
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 112
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 p3, 0xc8

    if-lt v3, p3, :cond_74

    const/16 p3, 0x190

    if-lt v3, p3, :cond_68

    goto :goto_74

    .line 120
    :cond_68
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 121
    invoke-virtual {p0, v2}, Lcom/ironsource/d6;->a(Ljava/io/InputStream;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/ironsource/h5;->a([B)V

    goto :goto_9a

    .line 122
    :cond_74
    :goto_74
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " RESPONSE CODE: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " URL: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ATTEMPT: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/net/MalformedURLException; {:try_start_4b .. :try_end_98} :catch_47
    .catch Ljava/net/URISyntaxException; {:try_start_4b .. :try_end_98} :catch_44
    .catch Ljava/net/SocketTimeoutException; {:try_start_4b .. :try_end_98} :catch_41
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_98} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_98} :catch_3b
    .catch Ljava/lang/Error; {:try_start_4b .. :try_end_98} :catch_38
    .catchall {:try_start_4b .. :try_end_98} :catchall_35

    const/16 v3, 0x3f3

    :goto_9a
    if-eqz v2, :cond_a2

    .line 157
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_a2

    :catchall_a0
    move-exception p2

    goto :goto_e5

    .line 160
    :cond_a2
    :goto_a2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_a0

    goto :goto_f5

    :catchall_a6
    move-exception p2

    move-object v4, v2

    goto/16 :goto_18c

    :catch_aa
    move-exception p2

    move-object v4, v2

    goto :goto_c0

    :catch_ad
    move-exception p2

    move-object v4, v2

    goto :goto_fd

    :catch_b0
    move-exception p2

    move-object v4, v2

    goto/16 :goto_125

    :catch_b4
    move-exception p2

    move-object v4, v2

    goto/16 :goto_139

    :catch_b8
    move-exception p2

    move-object v4, v2

    goto/16 :goto_14d

    :catch_bc
    move-exception p2

    move-object v4, v2

    goto/16 :goto_161

    .line 169
    :goto_c0
    :try_start_c0
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    const/16 v3, 0x3fb

    .line 171
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_da

    .line 172
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_c0 .. :try_end_da} :catchall_35

    :cond_da
    if-eqz v2, :cond_df

    .line 178
    :try_start_dc
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_df
    if-eqz v4, :cond_f5

    .line 181
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e4
    .catchall {:try_start_dc .. :try_end_e4} :catchall_a0

    goto :goto_f5

    .line 163
    :goto_e5
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 164
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 167
    :cond_f5
    :goto_f5
    invoke-virtual {v1, p1}, Lcom/ironsource/h5;->a(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, v3}, Lcom/ironsource/h5;->a(I)V

    goto/16 :goto_18b

    .line 182
    :goto_fd
    :try_start_fd
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 183
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_115

    .line 184
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_115
    .catchall {:try_start_fd .. :try_end_115} :catchall_35

    :cond_115
    const/16 p2, 0x3f1

    if-eqz v2, :cond_11f

    .line 197
    :try_start_119
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_11f

    :catchall_11d
    move-exception p3

    goto :goto_175

    :cond_11f
    :goto_11f
    if-eqz v4, :cond_185

    .line 200
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_124
    .catchall {:try_start_119 .. :try_end_124} :catchall_11d

    goto :goto_185

    .line 209
    :goto_125
    :try_start_125
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_12c
    .catchall {:try_start_125 .. :try_end_12c} :catchall_35

    const/16 p2, 0x3fa

    if-eqz v2, :cond_133

    .line 227
    :try_start_130
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_133
    if-eqz v4, :cond_185

    .line 230
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_138
    .catchall {:try_start_130 .. :try_end_138} :catchall_11d

    goto :goto_185

    .line 231
    :goto_139
    :try_start_139
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_140
    .catchall {:try_start_139 .. :try_end_140} :catchall_35

    const/16 p2, 0x3f0

    if-eqz v2, :cond_147

    .line 252
    :try_start_144
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_147
    if-eqz v4, :cond_185

    .line 255
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14c
    .catchall {:try_start_144 .. :try_end_14c} :catchall_11d

    goto :goto_185

    .line 256
    :goto_14d
    :try_start_14d
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_154
    .catchall {:try_start_14d .. :try_end_154} :catchall_35

    const/16 p2, 0x3f2

    if-eqz v2, :cond_15b

    .line 280
    :try_start_158
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_15b
    if-eqz v4, :cond_185

    .line 283
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_160
    .catchall {:try_start_158 .. :try_end_160} :catchall_11d

    goto :goto_185

    .line 284
    :goto_161
    :try_start_161
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_168
    .catchall {:try_start_161 .. :try_end_168} :catchall_35

    const/16 p2, 0x3ec

    if-eqz v2, :cond_16f

    .line 311
    :try_start_16c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_16f
    if-eqz v4, :cond_185

    .line 314
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_174
    .catchall {:try_start_16c .. :try_end_174} :catchall_11d

    goto :goto_185

    .line 203
    :goto_175
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 204
    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 207
    :cond_185
    :goto_185
    invoke-virtual {v1, p1}, Lcom/ironsource/h5;->a(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1, p2}, Lcom/ironsource/h5;->a(I)V

    :goto_18b
    return-object v1

    :goto_18c
    if-eqz v2, :cond_194

    .line 315
    :try_start_18e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_194

    :catchall_192
    move-exception p3

    goto :goto_19a

    :cond_194
    :goto_194
    if-eqz v4, :cond_1aa

    .line 318
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_199
    .catchall {:try_start_18e .. :try_end_199} :catchall_192

    goto :goto_1aa

    .line 321
    :goto_19a
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 322
    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 325
    :cond_1aa
    :goto_1aa
    invoke-virtual {v1, p1}, Lcom/ironsource/h5;->a(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, v3}, Lcom/ironsource/h5;->a(I)V

    .line 327
    throw p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/io/InputStream;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    .line 5
    new-array v2, v1, [B

    :goto_9
    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    .line 7
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 9
    :cond_15
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/d6;->a()Lcom/ironsource/h5;

    move-result-object v0

    return-object v0
.end method
