###### Class com.ironsource.C3634h7 (com.ironsource.h7)
.class public Lcom/ironsource/h7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x3a98

.field private static final b:Ljava/lang/String; = "GET"

.field private static final c:Ljava/lang/String; = "POST"

.field private static final d:Ljava/lang/String; = "UTF-8"

.field public static final e:Ljava/lang/String; = "ERROR:"

.field private static final f:Ljava/lang/String; = "Bad Request - 400"

.field private static final g:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static bridge synthetic -$$Nest$sma(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sma(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/h7;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smb(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/h7;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ironsource/h7;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/j7;
    .registers 8

    const/4 v0, 0x0

    .line 52
    :try_start_1
    invoke-static {p0}, Lcom/ironsource/h7;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_63
    .catchall {:try_start_1 .. :try_end_5} :catchall_5f

    .line 53
    :try_start_5
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_5c
    .catchall {:try_start_5 .. :try_end_10} :catchall_59

    .line 55
    :try_start_10
    invoke-static {p1, v1}, Lcom/ironsource/h7;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 57
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_4c

    .line 63
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_4a
    .catchall {:try_start_10 .. :try_end_29} :catchall_48

    .line 64
    :try_start_29
    invoke-static {p1}, Lcom/ironsource/h7;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 66
    new-instance v2, Lcom/ironsource/j7$b;

    invoke-direct {v2, v0}, Lcom/ironsource/j7$b;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_3d
    .catchall {:try_start_29 .. :try_end_34} :catchall_38

    .line 75
    invoke-static {v1, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v2

    :catchall_38
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_94

    :catch_3d
    move-exception v0

    goto :goto_6a

    .line 76
    :cond_3f
    :try_start_3f
    new-instance v0, Lcom/ironsource/j7$a$c;

    invoke-direct {v0}, Lcom/ironsource/j7$a$c;-><init>()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_3d
    .catchall {:try_start_3f .. :try_end_44} :catchall_38

    .line 83
    invoke-static {v1, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v0

    :catchall_48
    move-exception p1

    goto :goto_94

    :catch_4a
    move-exception p1

    goto :goto_67

    .line 84
    :cond_4c
    :try_start_4c
    new-instance v2, Lcom/ironsource/j7$a$b;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/ironsource/j7$a$b;-><init>(ILjava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_4a
    .catchall {:try_start_4c .. :try_end_55} :catchall_48

    .line 99
    invoke-static {v1, p0, v0}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v2

    :catchall_59
    move-exception p1

    move-object v1, v0

    goto :goto_94

    :catch_5c
    move-exception p1

    move-object v1, v0

    goto :goto_67

    :catchall_5f
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    goto :goto_94

    :catch_63
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    move-object v1, p0

    :goto_67
    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    .line 100
    :goto_6a
    :try_start_6a
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 101
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception while sending request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 102
    new-instance v2, Lcom/ironsource/j7$a$a;

    invoke-direct {v2, v0}, Lcom/ironsource/j7$a$a;-><init>(Ljava/lang/Exception;)V
    :try_end_90
    .catchall {:try_start_6a .. :try_end_90} :catchall_38

    .line 104
    invoke-static {v1, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v2

    :goto_94
    invoke-static {v1, p0, v0}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    .line 105
    throw p1
.end method

.method private static a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    :goto_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 116
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p0, 0x0

    :cond_1a
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ironsource/h7;->a(Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_57
    .catchall {:try_start_1 .. :try_end_c} :catchall_53

    const/16 v1, 0x3a98

    .line 5
    :try_start_e
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 6
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 7
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 10
    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    .line 12
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_39

    if-eqz p1, :cond_35

    .line 16
    const-string v1, "Bad Request - 400"

    invoke-interface {p1, v1}, Lcom/ironsource/mediationsdk/p$c;->a(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2f} :catch_33
    .catchall {:try_start_e .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception p1

    move-object v1, v0

    goto :goto_6a

    :catch_33
    move-exception p1

    goto :goto_59

    .line 27
    :cond_35
    :goto_35
    invoke-static {v0, p0, v0}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v0

    .line 28
    :cond_39
    :try_start_39
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_47} :catch_33
    .catchall {:try_start_39 .. :try_end_47} :catchall_30

    .line 29
    :try_start_47
    invoke-static {p1}, Lcom/ironsource/h7;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_51
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4f

    .line 34
    invoke-static {v0, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v1

    :catchall_4f
    move-exception v1

    goto :goto_6d

    :catch_51
    move-exception v1

    goto :goto_5b

    :catchall_53
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    goto :goto_6a

    :catch_57
    move-exception p1

    move-object p0, v0

    :goto_59
    move-object v1, p1

    move-object p1, v0

    .line 35
    :goto_5b
    :try_start_5b
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_66

    .line 38
    invoke-static {v0, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-object v0

    :catchall_66
    move-exception v1

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_6a
    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    :goto_6d
    invoke-static {v0, p0, p1}, Lcom/ironsource/h7;->a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    .line 39
    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/p$c;)Ljava/lang/String;
    .registers 3

    .line 41
    invoke-static {p0, p1}, Lcom/ironsource/h7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/j7;

    move-result-object p0

    .line 42
    instance-of p1, p0, Lcom/ironsource/j7$a;

    if-eqz p1, :cond_19

    .line 43
    check-cast p0, Lcom/ironsource/j7$a;

    .line 44
    invoke-interface {p0}, Lcom/ironsource/j7$a;->b()Z

    move-result p1

    if-nez p1, :cond_17

    .line 45
    invoke-interface {p0}, Lcom/ironsource/j7$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/ironsource/mediationsdk/p$c;->a(Ljava/lang/String;)V

    :cond_17
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_19
    check-cast p0, Lcom/ironsource/j7$b;

    .line 51
    invoke-virtual {p0}, Lcom/ironsource/j7$b;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V
    .registers 6

    if-eqz p0, :cond_28

    .line 119
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_28

    :catch_6
    move-exception p0

    .line 121
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 122
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception while closing output stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_28
    :goto_28
    if-eqz p1, :cond_2d

    .line 126
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2d
    if-eqz p2, :cond_55

    .line 130
    :try_start_2f
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_55

    :catch_33
    move-exception p0

    .line 132
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 133
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception while closing reader "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 107
    invoke-virtual {v0, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 109
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/i7;)V
    .registers 5

    .line 40
    sget-object v0, Lcom/ironsource/h7;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ironsource/h7$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/h7$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/i7;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    .line 3
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 5
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 7
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-object p0
.end method

###### Class com.ironsource.C3634h7.a (com.ironsource.h7$a)
.class Lcom/ironsource/h7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/h7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/i7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/i7;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/i7;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/h7$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/h7$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/h7$a;->c:Lcom/ironsource/i7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_2
    iget-object v2, p0, Lcom/ironsource/h7$a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/ironsource/h7;->-$$Nest$smb(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_4e
    .catchall {:try_start_2 .. :try_end_8} :catchall_4a

    .line 2
    :try_start_8
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_47
    .catchall {:try_start_8 .. :try_end_c} :catchall_44

    .line 3
    :try_start_c
    iget-object v4, p0, Lcom/ironsource/h7$a;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/ironsource/h7;->-$$Nest$sma(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_1c

    :cond_1b
    move v5, v0

    :goto_1c
    if-nez v5, :cond_3e

    .line 8
    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid response code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sending request"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    goto :goto_3e

    :catchall_3a
    move-exception v0

    goto :goto_7b

    :catch_3c
    move-exception v4

    goto :goto_51

    .line 11
    :cond_3e
    :goto_3e
    iget-object v4, p0, Lcom/ironsource/h7$a;->c:Lcom/ironsource/i7;

    invoke-interface {v4, v5}, Lcom/ironsource/i7;->a(Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_43} :catch_3c
    .catchall {:try_start_c .. :try_end_43} :catchall_3a

    goto :goto_77

    :catchall_44
    move-exception v0

    move-object v3, v1

    goto :goto_7b

    :catch_47
    move-exception v4

    move-object v3, v1

    goto :goto_51

    :catchall_4a
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_7b

    :catch_4e
    move-exception v4

    move-object v2, v1

    move-object v3, v2

    .line 18
    :goto_51
    :try_start_51
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 19
    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception while sending request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 20
    iget-object v4, p0, Lcom/ironsource/h7$a;->c:Lcom/ironsource/i7;

    invoke-interface {v4, v0}, Lcom/ironsource/i7;->a(Z)V
    :try_end_77
    .catchall {:try_start_51 .. :try_end_77} :catchall_3a

    .line 17
    :goto_77
    invoke-static {v3, v2, v1}, Lcom/ironsource/h7;->-$$Nest$sma(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    return-void

    .line 22
    :goto_7b
    invoke-static {v3, v2, v1}, Lcom/ironsource/h7;->-$$Nest$sma(Ljava/io/OutputStream;Ljava/net/HttpURLConnection;Ljava/io/BufferedReader;)V

    .line 23
    throw v0
.end method
