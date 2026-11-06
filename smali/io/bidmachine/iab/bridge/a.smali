###### Class io.bidmachine.iab.bridge.a (io.bidmachine.iab.bridge.a)
.class public abstract Lio/bidmachine/iab/bridge/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/iab/utils/Base32;

.field public static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lio/bidmachine/iab/utils/Base32;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/Base32;-><init>()V

    sput-object v0, Lio/bidmachine/iab/bridge/a;->a:Lio/bidmachine/iab/utils/Base32;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/util/Pair;
    .registers 4

    .line 63
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 64
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lio/bidmachine/iab/mraid/MraidWebView;)V
    .registers 2

    if-nez p0, :cond_3

    goto :goto_9

    .line 53
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->getController()Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-result-object p0

    if-nez p0, :cond_a

    :goto_9
    return-void

    .line 57
    :cond_a
    const-string v0, "nativeStorage.fireErrorEvent(\'internal error\');"

    invoke-virtual {p0, v0}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;)V
    .registers 7

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_8f

    .line 5
    :cond_c
    :try_start_c
    sget-object v0, Lio/bidmachine/iab/bridge/a;->a:Lio/bidmachine/iab/utils/Base32;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/iab/utils/Base32;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lio/bidmachine/iab/bridge/a;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 7
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_8f

    .line 10
    :cond_2f
    sget-boolean v1, Lio/bidmachine/iab/bridge/a;->b:Z

    if-nez v1, :cond_3e

    if-eqz p0, :cond_36

    goto :goto_3e

    :cond_36
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_3c
    move-exception p1

    goto :goto_87

    .line 11
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 12
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 14
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5f

    .line 16
    invoke-static {p0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;)V

    return-void

    .line 19
    :cond_5f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    if-nez v1, :cond_78

    if-eqz p1, :cond_72

    goto :goto_78

    .line 21
    :cond_72
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_78
    :goto_78
    const-string v1, "fireReadDefaultsSuccessEvent"

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {p0, v1, p1, v0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_c .. :try_end_86} :catchall_3c

    return-void

    .line 32
    :goto_87
    invoke-static {p0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 33
    const-string p0, "NativeStorage"

    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public static a(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "UTF-8"

    .line 34
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_74

    .line 38
    :cond_d
    :try_start_d
    sget-object v1, Lio/bidmachine/iab/bridge/a;->a:Lio/bidmachine/iab/utils/Base32;

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/bidmachine/iab/utils/Base32;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 40
    invoke-static {p1}, Lio/bidmachine/iab/bridge/a;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 41
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_74

    .line 44
    :cond_37
    sget-boolean v0, Lio/bidmachine/iab/bridge/a;->b:Z

    if-nez v0, :cond_46

    if-eqz p0, :cond_3e

    goto :goto_46

    :cond_3e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_44
    move-exception p1

    goto :goto_6c

    .line 45
    :cond_46
    :goto_46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 48
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6b
    .catchall {:try_start_d .. :try_end_6b} :catchall_44

    return-void

    .line 51
    :goto_6c
    invoke-static {p0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 52
    const-string p0, "NativeStorage"

    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_74
    return-void
.end method

.method public static a(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p0, :cond_3

    goto :goto_9

    .line 58
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->getController()Lio/bidmachine/iab/mraid/MraidWebViewController;

    move-result-object p0

    if-nez p0, :cond_a

    :goto_9
    return-void

    .line 62
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeStorage."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/iab/mraid/MraidWebViewController;->injectJs(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_27

    .line 65
    invoke-virtual {p0}, Lio/bidmachine/iab/mraid/MraidWebView;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_27

    :cond_10
    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 70
    array-length v2, p1

    move v3, v1

    :goto_15
    if-ge v3, v2, :cond_26

    aget-object v4, p1, v3

    .line 71
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 72
    invoke-static {p0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;)V

    return v0

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_26
    return v1

    .line 73
    :cond_27
    :goto_27
    invoke-static {p0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;)V

    return v0
.end method

.method public static b(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;)V
    .registers 7

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_af

    :cond_c
    const/4 v0, 0x0

    .line 7
    :try_start_d
    sget-object v1, Lio/bidmachine/iab/bridge/a;->a:Lio/bidmachine/iab/utils/Base32;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/iab/utils/Base32;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-boolean v2, Lio/bidmachine/iab/bridge/a;->b:Z

    if-nez v2, :cond_2a

    if-eqz p0, :cond_20

    goto :goto_2a

    :cond_20
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_26
    move-exception p1

    move-object v1, v0

    goto/16 :goto_a1

    .line 9
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 10
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 11
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_44

    .line 12
    :cond_40
    invoke-virtual {v2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :goto_44
    if-eqz v3, :cond_97

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_97

    .line 17
    :cond_4d
    invoke-virtual {v2, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_51
    .catchall {:try_start_d .. :try_end_51} :catchall_26

    .line 18
    :try_start_51
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_95

    const/16 v0, 0x2000

    .line 19
    :try_start_58
    new-array v0, v0, [B

    if-eqz v1, :cond_6a

    .line 22
    :goto_5c
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_6a

    const/4 v4, 0x0

    .line 23
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5c

    :catchall_68
    move-exception p1

    goto :goto_93

    .line 26
    :cond_6a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 27
    array-length v3, v0

    if-lez v3, :cond_89

    .line 28
    sget-boolean v3, Lio/bidmachine/iab/bridge/a;->b:Z

    if-nez v3, :cond_7e

    if-eqz p1, :cond_78

    goto :goto_7e

    :cond_78
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_7e
    :goto_7e
    const-string v3, "fireReadFileSuccessEvent"

    const/4 v4, 0x2

    .line 32
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {p0, v3, p1, v0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c

    .line 38
    :cond_89
    invoke-static {p0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;)V
    :try_end_8c
    .catchall {:try_start_58 .. :try_end_8c} :catchall_68

    .line 44
    :goto_8c
    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    .line 45
    invoke-static {v2}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :goto_93
    move-object v0, v2

    goto :goto_a1

    :catchall_95
    move-exception p1

    goto :goto_a1

    .line 46
    :cond_97
    :goto_97
    :try_start_97
    invoke-static {p0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;)V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_26

    .line 72
    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    .line 73
    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    return-void

    .line 74
    :goto_a1
    :try_start_a1
    invoke-static {p0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 75
    const-string p0, "NativeStorage"

    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_b0

    .line 77
    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    .line 78
    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_af
    return-void

    :catchall_b0
    move-exception p0

    .line 79
    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    .line 80
    invoke-static {v0}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    .line 81
    throw p0
.end method

.method public static b(Lio/bidmachine/iab/mraid/MraidWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "UTF-8"

    .line 82
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_74

    :cond_d
    const/4 v1, 0x0

    .line 87
    :try_start_e
    sget-object v2, Lio/bidmachine/iab/bridge/a;->a:Lio/bidmachine/iab/utils/Base32;

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/bidmachine/iab/utils/Base32;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 89
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 90
    sget-boolean v0, Lio/bidmachine/iab/bridge/a;->b:Z

    if-nez v0, :cond_3f

    if-eqz p0, :cond_37

    goto :goto_3f

    :cond_37
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_3d
    move-exception p1

    goto :goto_66

    .line 91
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 93
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_5c

    :cond_56
    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    move-object v1, p1

    .line 95
    :goto_5c
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5f
    .catchall {:try_start_e .. :try_end_5f} :catchall_3d

    .line 101
    :cond_5f
    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->flush(Ljava/io/Flushable;)V

    .line 102
    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    return-void

    .line 103
    :goto_66
    :try_start_66
    invoke-static {p0}, Lio/bidmachine/iab/bridge/a;->a(Lio/bidmachine/iab/mraid/MraidWebView;)V

    .line 104
    const-string p0, "NativeStorage"

    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/MraidLog;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_75

    .line 106
    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->flush(Ljava/io/Flushable;)V

    .line 107
    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_74
    return-void

    :catchall_75
    move-exception p0

    .line 108
    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->flush(Ljava/io/Flushable;)V

    .line 109
    invoke-static {v1}, Lio/bidmachine/iab/utils/Utils;->close(Ljava/io/Closeable;)V

    .line 110
    throw p0
.end method
