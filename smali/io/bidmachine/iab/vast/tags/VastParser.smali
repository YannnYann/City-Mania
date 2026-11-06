###### Class io.bidmachine.iab.vast.tags.VastParser (io.bidmachine.iab.vast.tags.VastParser)
.class public Lio/bidmachine/iab/vast/tags/VastParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static parseVast(Ljava/io/InputStream;)Lio/bidmachine/iab/vast/tags/VastTag;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    if-eqz p0, :cond_46

    .line 31
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 32
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 35
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_40

    :goto_17
    const/4 v3, 0x3

    if-eq p0, v3, :cond_3f

    if-eq p0, v2, :cond_3f

    .line 41
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v3, 0x2

    if-eq p0, v3, :cond_28

    .line 42
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_17

    .line 45
    :cond_28
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 46
    const-string v3, "VAST"

    invoke-static {p0, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 47
    new-instance p0, Lio/bidmachine/iab/vast/tags/VastTag;

    invoke-direct {p0, v0}, Lio/bidmachine/iab/vast/tags/VastTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object p0

    .line 49
    :cond_3a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_17

    :cond_3f
    return-object v1

    .line 50
    :cond_40
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0

    .line 51
    :cond_46
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method

.method public static parseVast(Ljava/lang/String;)Lio/bidmachine/iab/vast/tags/VastTag;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xmlData"
        }
    .end annotation

    .line 1
    const-string v0, "VastXmlParser"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    const/4 v1, 0x0

    .line 7
    :try_start_9
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_2e
    .catchall {:try_start_9 .. :try_end_1a} :catchall_2c

    .line 8
    :try_start_1a
    invoke-static {v2}, Lio/bidmachine/iab/vast/tags/VastParser;->parseVast(Ljava/io/InputStream;)Lio/bidmachine/iab/vast/tags/VastTag;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_29
    .catchall {:try_start_1a .. :try_end_1e} :catchall_27

    .line 15
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    move-exception v1

    .line 18
    invoke-static {v0, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_27
    move-exception p0

    goto :goto_39

    :catch_29
    move-exception p0

    move-object v1, v2

    goto :goto_2f

    :catchall_2c
    move-exception p0

    goto :goto_38

    :catch_2e
    move-exception p0

    .line 19
    :goto_2f
    :try_start_2f
    invoke-static {v0, p0}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_2c

    :goto_38
    move-object v2, v1

    :goto_39
    if-eqz v2, :cond_43

    .line 24
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception v1

    .line 27
    invoke-static {v0, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :cond_43
    :goto_43
    throw p0

    .line 30
    :cond_44
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method
