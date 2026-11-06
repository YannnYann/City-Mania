###### Class io.bidmachine.iab.vast.processor.VastProcessor (io.bidmachine.iab.vast.processor.VastProcessor)
.class public Lio/bidmachine/iab/vast/processor/VastProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/iab/vast/VastRequest;

.field public final b:Lio/bidmachine/iab/vast/processor/VastMediaPicker;

.field public final c:I

.field public final d:Ljava/util/Stack;

.field public e:I


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastMediaPicker;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vastRequest",
            "mediaPicker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/iab/vast/VastRequest;",
            "Lio/bidmachine/iab/vast/processor/VastMediaPicker<",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/iab/vast/processor/VastProcessor;-><init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastMediaPicker;I)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/iab/vast/VastRequest;Lio/bidmachine/iab/vast/processor/VastMediaPicker;I)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->e:I

    .line 14
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->a:Lio/bidmachine/iab/vast/VastRequest;

    .line 15
    iput-object p2, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->b:Lio/bidmachine/iab/vast/processor/VastMediaPicker;

    .line 16
    iput p3, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->c:I

    .line 17
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->d:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/iab/vast/tags/InLineAdTag;)Landroid/util/Pair;
    .registers 8

    .line 370
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->getCreativeTagList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 374
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/iab/vast/tags/CreativeTag;

    if-nez v2, :cond_20

    goto :goto_11

    .line 379
    :cond_20
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/CreativeTag;->getCreativeContentTag()Lio/bidmachine/iab/vast/tags/CreativeContentTag;

    move-result-object v2

    .line 380
    instance-of v3, v2, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    if-eqz v3, :cond_11

    .line 381
    check-cast v2, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 382
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->getMediaFileTagList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 383
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 384
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 385
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 390
    :cond_4f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_56

    return-object v0

    .line 393
    :cond_56
    iget-object p1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->b:Lio/bidmachine/iab/vast/processor/VastMediaPicker;

    .line 394
    invoke-virtual {p1, v1}, Lio/bidmachine/iab/vast/processor/VastMediaPicker;->pickVideo(Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_5f

    return-object p1

    .line 398
    :cond_5f
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/tags/VastTag;Lio/bidmachine/iab/vast/processor/a;)Lio/bidmachine/iab/vast/processor/VastProcessorResult;
    .registers 9

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_6
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/VastTag;->getAdTagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_ab

    .line 3
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/VastTag;->getAdTagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/iab/vast/tags/AdTag;

    if-eqz v2, :cond_a7

    .line 4
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/AdTag;->getAdContentTag()Lio/bidmachine/iab/vast/tags/AdContentTag;

    move-result-object v3

    if-eqz v3, :cond_a7

    .line 6
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/AdTag;->getAdContentTag()Lio/bidmachine/iab/vast/tags/AdContentTag;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lio/bidmachine/iab/vast/tags/InLineAdTag;

    if-eqz v3, :cond_5c

    .line 8
    move-object v3, v2

    check-cast v3, Lio/bidmachine/iab/vast/tags/InLineAdTag;

    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/processor/VastProcessor;->b(Lio/bidmachine/iab/vast/tags/InLineAdTag;)Lio/bidmachine/iab/vast/processor/VastProcessorResult;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->hasVastAd()Z

    move-result v4

    if-eqz v4, :cond_38

    return-object v3

    .line 12
    :cond_38
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/bidmachine/iab/vast/processor/VastProcessor;->a(Ljava/util/List;)V

    if-eqz p1, :cond_54

    .line 14
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->b()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 15
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->getVastSpecError()Lio/bidmachine/iab/vast/VastSpecError;

    move-result-object v3

    if-eqz v3, :cond_4e

    goto :goto_50

    .line 19
    :cond_4e
    sget-object v3, Lio/bidmachine/iab/vast/VastSpecError;->UNKNOWN:Lio/bidmachine/iab/vast/VastSpecError;

    .line 20
    :goto_50
    invoke-virtual {v0, p1, v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V

    goto :goto_a4

    .line 26
    :cond_54
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->getVastSpecError()Lio/bidmachine/iab/vast/VastSpecError;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/VastSpecError;)V

    goto :goto_a4

    .line 29
    :cond_5c
    instance-of v3, v2, Lio/bidmachine/iab/vast/tags/WrapperAdTag;

    if-eqz v3, :cond_a4

    invoke-virtual {p3}, Lio/bidmachine/iab/vast/processor/a;->c()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 30
    move-object v3, v2

    check-cast v3, Lio/bidmachine/iab/vast/tags/WrapperAdTag;

    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/processor/VastProcessor;->a(Lio/bidmachine/iab/vast/tags/WrapperAdTag;)Lio/bidmachine/iab/vast/processor/VastProcessorResult;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->hasVastAd()Z

    move-result v4

    if-eqz v4, :cond_74

    return-object v3

    .line 34
    :cond_74
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/bidmachine/iab/vast/processor/VastProcessor;->a(Ljava/util/List;)V

    if-eqz p1, :cond_96

    .line 36
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->b()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 37
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->getVastSpecError()Lio/bidmachine/iab/vast/VastSpecError;

    move-result-object v3

    if-eqz v3, :cond_8a

    goto :goto_8c

    .line 41
    :cond_8a
    sget-object v3, Lio/bidmachine/iab/vast/VastSpecError;->UNKNOWN:Lio/bidmachine/iab/vast/VastSpecError;

    .line 42
    :goto_8c
    invoke-virtual {v0, p1, v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V

    goto :goto_9b

    .line 47
    :cond_90
    sget-object v3, Lio/bidmachine/iab/vast/VastSpecError;->WRAPPER_RESPONSE_NO_AD:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V

    goto :goto_9b

    .line 50
    :cond_96
    sget-object v3, Lio/bidmachine/iab/vast/VastSpecError;->WRAPPER_RESPONSE_NO_AD:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, v3}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/VastSpecError;)V

    :goto_9b
    if-nez v1, :cond_a4

    .line 53
    invoke-virtual {p3}, Lio/bidmachine/iab/vast/processor/a;->b()Z

    move-result v3

    if-nez v3, :cond_a4

    goto :goto_b8

    .line 58
    :cond_a4
    :goto_a4
    invoke-virtual {p0, v2}, Lio/bidmachine/iab/vast/processor/VastProcessor;->b(Lio/bidmachine/iab/vast/tags/AdContentTag;)V

    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 61
    :cond_ab
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->getVastSpecError()Lio/bidmachine/iab/vast/VastSpecError;

    move-result-object p2

    if-nez p2, :cond_b8

    if-eqz p1, :cond_b8

    .line 62
    sget-object p2, Lio/bidmachine/iab/vast/VastSpecError;->WRAPPER_RESPONSE_NO_AD:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V

    :cond_b8
    :goto_b8
    return-object v0
.end method

.method public a(Lio/bidmachine/iab/vast/tags/WrapperAdTag;)Lio/bidmachine/iab/vast/processor/VastProcessorResult;
    .registers 11

    .line 63
    new-instance v0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;-><init>()V

    .line 64
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/processor/VastProcessor;->b()Z

    move-result v1

    const-string v2, "VastProcessor"

    if-eqz v1, :cond_22

    .line 65
    iget v1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "VAST wrapping exceeded max limit of %d"

    invoke-static {v2, v3, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->EXCEEDED_WRAPPER_LIMIT:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V

    return-object v0

    .line 70
    :cond_22
    iget v1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->e:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->e:I

    .line 71
    iget-object v1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->d:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/WrapperAdTag;->getVastAdTagUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_45

    .line 74
    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "VASTAdTagURI is null or empty"

    invoke-static {v2, v3, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->BAD_URI:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V

    return-object v0

    .line 79
    :cond_45
    new-instance v1, Lio/bidmachine/iab/vast/processor/a;

    invoke-direct {v1, p1}, Lio/bidmachine/iab/vast/processor/a;-><init>(Lio/bidmachine/iab/vast/tags/VastXmlTag;)V

    const/4 v5, 0x0

    .line 82
    :try_start_4b
    new-instance v6, Ljava/net/URL;

    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/WrapperAdTag;->getVastAdTagUri()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 84
    move-object v7, v6

    check-cast v7, Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_92

    const/16 v1, 0xcc

    if-eq v7, v1, :cond_85

    .line 112
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->BAD_URI:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V

    return-object v0

    :catchall_6d
    move-exception p1

    goto/16 :goto_150

    :catch_70
    move-exception v1

    goto/16 :goto_104

    :catch_73
    move-exception v1

    goto/16 :goto_117

    :catch_76
    move-exception v1

    goto/16 :goto_12a

    :catch_79
    move-exception v1

    goto/16 :goto_12a

    :catch_7c
    move-exception v1

    goto/16 :goto_12a

    :catch_7f
    move-exception v1

    goto/16 :goto_12a

    :catch_82
    move-exception v1

    goto/16 :goto_13d

    .line 113
    :cond_85
    const-string v1, "Wrapper response code: 204"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->WRAPPER_RESPONSE_NO_AD:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V

    return-object v0

    .line 115
    :cond_92
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 116
    invoke-static {v5}, Lio/bidmachine/iab/vast/tags/VastParser;->parseVast(Ljava/io/InputStream;)Lio/bidmachine/iab/vast/tags/VastTag;

    move-result-object v6

    if-nez v6, :cond_b4

    .line 118
    const-string v1, "Invalid Vast"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->XML_VALIDATE:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V
    :try_end_a8
    .catch Ljava/net/MalformedURLException; {:try_start_4b .. :try_end_a8} :catch_82
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4b .. :try_end_a8} :catch_7f
    .catch Ljava/net/SocketTimeoutException; {:try_start_4b .. :try_end_a8} :catch_7c
    .catch Ljava/net/UnknownHostException; {:try_start_4b .. :try_end_a8} :catch_79
    .catch Ljavax/net/ssl/SSLException; {:try_start_4b .. :try_end_a8} :catch_76
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_a8} :catch_73
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_a8} :catch_70
    .catchall {:try_start_4b .. :try_end_a8} :catchall_6d

    if-eqz v5, :cond_14f

    .line 161
    :try_start_aa
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_ae

    return-object v0

    :catch_ae
    move-exception p1

    .line 164
    invoke-static {v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14f

    .line 165
    :cond_b4
    :try_start_b4
    invoke-virtual {v6}, Lio/bidmachine/iab/vast/tags/VastTag;->hasAd()Z

    move-result v7

    if-nez v7, :cond_d2

    .line 166
    const-string v1, "Vast has no ad"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->WRAPPER_RESPONSE_NO_AD:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V
    :try_end_c6
    .catch Ljava/net/MalformedURLException; {:try_start_b4 .. :try_end_c6} :catch_82
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b4 .. :try_end_c6} :catch_7f
    .catch Ljava/net/SocketTimeoutException; {:try_start_b4 .. :try_end_c6} :catch_7c
    .catch Ljava/net/UnknownHostException; {:try_start_b4 .. :try_end_c6} :catch_79
    .catch Ljavax/net/ssl/SSLException; {:try_start_b4 .. :try_end_c6} :catch_76
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c6} :catch_73
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c6} :catch_70
    .catchall {:try_start_b4 .. :try_end_c6} :catchall_6d

    if-eqz v5, :cond_14f

    .line 204
    :try_start_c8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cc

    return-object v0

    :catch_cc
    move-exception p1

    .line 207
    invoke-static {v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14f

    .line 208
    :cond_d2
    :try_start_d2
    invoke-virtual {v6}, Lio/bidmachine/iab/vast/tags/VastTag;->getAdTagList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v3, :cond_f2

    invoke-virtual {v1}, Lio/bidmachine/iab/vast/processor/a;->a()Z

    move-result v3

    if-nez v3, :cond_f2

    .line 209
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->GENERAL_WRAPPER:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V
    :try_end_e7
    .catch Ljava/net/MalformedURLException; {:try_start_d2 .. :try_end_e7} :catch_82
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d2 .. :try_end_e7} :catch_7f
    .catch Ljava/net/SocketTimeoutException; {:try_start_d2 .. :try_end_e7} :catch_7c
    .catch Ljava/net/UnknownHostException; {:try_start_d2 .. :try_end_e7} :catch_79
    .catch Ljavax/net/ssl/SSLException; {:try_start_d2 .. :try_end_e7} :catch_76
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_e7} :catch_73
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e7} :catch_70
    .catchall {:try_start_d2 .. :try_end_e7} :catchall_6d

    if-eqz v5, :cond_14f

    .line 242
    :try_start_e9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_ed

    return-object v0

    :catch_ed
    move-exception p1

    .line 245
    invoke-static {v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14f

    .line 246
    :cond_f2
    :try_start_f2
    invoke-virtual {p0, p1, v6, v1}, Lio/bidmachine/iab/vast/processor/VastProcessor;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/tags/VastTag;Lio/bidmachine/iab/vast/processor/a;)Lio/bidmachine/iab/vast/processor/VastProcessorResult;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v4}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Z)V
    :try_end_f9
    .catch Ljava/net/MalformedURLException; {:try_start_f2 .. :try_end_f9} :catch_82
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f2 .. :try_end_f9} :catch_7f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f2 .. :try_end_f9} :catch_7c
    .catch Ljava/net/UnknownHostException; {:try_start_f2 .. :try_end_f9} :catch_79
    .catch Ljavax/net/ssl/SSLException; {:try_start_f2 .. :try_end_f9} :catch_76
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f9} :catch_73
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f9} :catch_70
    .catchall {:try_start_f2 .. :try_end_f9} :catchall_6d

    if-eqz v5, :cond_103

    .line 276
    :try_start_fb
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_ff

    return-object v1

    :catch_ff
    move-exception p1

    .line 279
    invoke-static {v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_103
    return-object v1

    .line 280
    :goto_104
    :try_start_104
    invoke-static {v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->XML_PARSING:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V
    :try_end_10c
    .catchall {:try_start_104 .. :try_end_10c} :catchall_6d

    if-eqz v5, :cond_14f

    .line 286
    :try_start_10e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_111} :catch_112

    goto :goto_14f

    :catch_112
    move-exception p1

    .line 289
    invoke-static {v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14f

    .line 290
    :goto_117
    :try_start_117
    invoke-static {v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->BAD_URI:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V
    :try_end_11f
    .catchall {:try_start_117 .. :try_end_11f} :catchall_6d

    if-eqz v5, :cond_14f

    .line 300
    :try_start_121
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_124} :catch_125

    goto :goto_14f

    :catch_125
    move-exception p1

    .line 303
    invoke-static {v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14f

    .line 304
    :goto_12a
    :try_start_12a
    invoke-static {v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->BAD_URI:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V
    :try_end_132
    .catchall {:try_start_12a .. :try_end_132} :catchall_6d

    if-eqz v5, :cond_14f

    .line 318
    :try_start_134
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_137} :catch_138

    goto :goto_14f

    :catch_138
    move-exception p1

    .line 321
    invoke-static {v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14f

    .line 322
    :goto_13d
    :try_start_13d
    invoke-static {v2, v1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->BAD_URI:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V
    :try_end_145
    .catchall {:try_start_13d .. :try_end_145} :catchall_6d

    if-eqz v5, :cond_14f

    .line 340
    :try_start_147
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14a} :catch_14b

    goto :goto_14f

    :catch_14b
    move-exception p1

    .line 343
    invoke-static {v2, p1}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14f
    :goto_14f
    return-object v0

    :goto_150
    if-eqz v5, :cond_15a

    .line 344
    :try_start_152
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_155} :catch_156

    goto :goto_15a

    :catch_156
    move-exception v0

    .line 347
    invoke-static {v2, v0}, Lio/bidmachine/iab/vast/VastLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    :cond_15a
    :goto_15a
    throw p1
.end method

.method public final a()Ljava/util/ArrayList;
    .registers 5

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    iget-object v1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_30

    .line 367
    :cond_e
    iget-object v1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/iab/vast/tags/AdContentTag;

    if-eqz v2, :cond_14

    .line 368
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/AdContentTag;->getErrorUrlList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 369
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/AdContentTag;->getErrorUrlList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_14

    :cond_30
    :goto_30
    return-object v0
.end method

.method public final a(Lio/bidmachine/iab/vast/tags/AdContentTag;)Ljava/util/ArrayList;
    .registers 5

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->getCreativeTagList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_31

    .line 355
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/iab/vast/tags/CreativeTag;

    if-nez v1, :cond_1f

    goto :goto_10

    .line 359
    :cond_1f
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/CreativeTag;->getCreativeContentTag()Lio/bidmachine/iab/vast/tags/CreativeContentTag;

    move-result-object v1

    .line 360
    instance-of v2, v1, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;

    if-eqz v2, :cond_10

    .line 361
    check-cast v1, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;

    .line 362
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;->getCompanionTagList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_10

    :cond_31
    :goto_31
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    .line 418
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->a:Lio/bidmachine/iab/vast/VastRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/VastRequest;->fireErrorUrls(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;)V
    .registers 5

    .line 410
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;->getCompanionTagList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 412
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/CompanionTag;->hasCreative()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_8

    .line 415
    :cond_1b
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/CompanionTag;->getCompanionClickTrackingList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 417
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_25
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 6

    if-eqz p2, :cond_3d

    .line 399
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3d

    .line 402
    :cond_9
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 403
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/iab/vast/TrackingEvent;

    .line 404
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_33

    .line 406
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 407
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final b(Lio/bidmachine/iab/vast/tags/InLineAdTag;)Lio/bidmachine/iab/vast/processor/VastProcessorResult;
    .registers 16

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/processor/VastProcessor;->a(Lio/bidmachine/iab/vast/tags/InLineAdTag;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_16

    .line 5
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->XML_VALIDATE:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V

    return-object v0

    .line 6
    :cond_16
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_24

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_24

    .line 7
    sget-object v1, Lio/bidmachine/iab/vast/VastSpecError;->BAD_FILE:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/VastSpecError;)V

    return-object v0

    .line 9
    :cond_24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lio/bidmachine/iab/vast/TrackingEvent;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 13
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v7, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->d:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_dc

    .line 16
    iget-object v7, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->d:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4e
    :goto_4e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_dc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/iab/vast/tags/AdContentTag;

    if-nez v9, :cond_5d

    goto :goto_4e

    .line 20
    :cond_5d
    invoke-virtual {v9}, Lio/bidmachine/iab/vast/tags/AdContentTag;->getImpressionUrlList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_6a

    .line 21
    invoke-virtual {v9}, Lio/bidmachine/iab/vast/tags/AdContentTag;->getImpressionUrlList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    :cond_6a
    invoke-virtual {v9}, Lio/bidmachine/iab/vast/tags/AdContentTag;->getCreativeTagList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_b2

    .line 25
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_74
    :goto_74
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/bidmachine/iab/vast/tags/CreativeTag;

    if-nez v11, :cond_83

    goto :goto_74

    .line 29
    :cond_83
    invoke-virtual {v11}, Lio/bidmachine/iab/vast/tags/CreativeTag;->getCreativeContentTag()Lio/bidmachine/iab/vast/tags/CreativeContentTag;

    move-result-object v11

    .line 30
    instance-of v12, v11, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    if-eqz v12, :cond_a8

    .line 31
    check-cast v11, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 32
    invoke-virtual {v11}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->getVideoClicksTag()Lio/bidmachine/iab/vast/tags/VideoClicksTag;

    move-result-object v12

    if-eqz v12, :cond_a0

    .line 33
    invoke-virtual {v12}, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->getClickTrackingUrlList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_a0

    .line 34
    invoke-virtual {v12}, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->getClickTrackingUrlList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_a0
    invoke-virtual {v11}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v11

    .line 38
    invoke-virtual {p0, v5, v11}, Lio/bidmachine/iab/vast/processor/VastProcessor;->a(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_74

    .line 40
    :cond_a8
    instance-of v12, v11, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;

    if-eqz v12, :cond_74

    .line 43
    check-cast v11, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;

    invoke-virtual {p0, v4, v11}, Lio/bidmachine/iab/vast/processor/VastProcessor;->a(Ljava/util/List;Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;)V

    goto :goto_74

    .line 48
    :cond_b2
    invoke-virtual {v9}, Lio/bidmachine/iab/vast/tags/AdContentTag;->getExtensionTagList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4e

    .line 50
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_bc
    :goto_bc
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/bidmachine/iab/vast/tags/ExtensionTag;

    .line 51
    instance-of v11, v10, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    if-eqz v11, :cond_d2

    if-nez v8, :cond_bc

    .line 53
    move-object v8, v10

    check-cast v8, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    goto :goto_bc

    .line 55
    :cond_d2
    instance-of v11, v10, Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;

    if-eqz v11, :cond_bc

    .line 56
    check-cast v10, Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bc

    .line 63
    :cond_dc
    new-instance v7, Lio/bidmachine/iab/vast/processor/VastAd;

    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    invoke-direct {v7, v9, v1}, Lio/bidmachine/iab/vast/processor/VastAd;-><init>(Lio/bidmachine/iab/vast/tags/LinearCreativeTag;Lio/bidmachine/iab/vast/tags/MediaFileTag;)V

    .line 64
    invoke-virtual {v7, v2}, Lio/bidmachine/iab/vast/processor/VastAd;->d(Ljava/util/ArrayList;)V

    .line 65
    invoke-virtual {p0}, Lio/bidmachine/iab/vast/processor/VastProcessor;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v1}, Lio/bidmachine/iab/vast/processor/VastAd;->c(Ljava/util/ArrayList;)V

    .line 66
    invoke-virtual {v7, v3}, Lio/bidmachine/iab/vast/processor/VastAd;->a(Ljava/util/ArrayList;)V

    .line 67
    invoke-virtual {v7, v4}, Lio/bidmachine/iab/vast/processor/VastAd;->setWrapperCompanionClickTrackingUrlList(Ljava/util/ArrayList;)V

    .line 68
    invoke-virtual {v7, v5}, Lio/bidmachine/iab/vast/processor/VastAd;->a(Ljava/util/EnumMap;)V

    .line 69
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/processor/VastProcessor;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v7, p1}, Lio/bidmachine/iab/vast/processor/VastAd;->b(Ljava/util/ArrayList;)V

    .line 70
    invoke-virtual {v7, v8}, Lio/bidmachine/iab/vast/processor/VastAd;->a(Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;)V

    .line 71
    invoke-virtual {v7, v6}, Lio/bidmachine/iab/vast/processor/VastAd;->setAdVerificationsExtensionList(Ljava/util/List;)V

    .line 73
    invoke-virtual {v0, v7}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/processor/VastAd;)V

    return-object v0
.end method

.method public b(Lio/bidmachine/iab/vast/tags/AdContentTag;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1a

    .line 78
    :cond_9
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p1, :cond_1a

    .line 80
    iget-object v1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final b()Z
    .registers 3

    .line 74
    iget v0, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->e:I

    iget v1, p0, Lio/bidmachine/iab/vast/processor/VastProcessor;->c:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public process(Ljava/lang/String;)Lio/bidmachine/iab/vast/processor/VastProcessorResult;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "xmlData"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VastProcessor"

    const-string v2, "process"

    invoke-static {v1, v2, v0}, Lio/bidmachine/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lio/bidmachine/iab/vast/processor/VastProcessorResult;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;-><init>()V

    .line 6
    :try_start_f
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastParser;->parseVast(Ljava/lang/String;)Lio/bidmachine/iab/vast/tags/VastTag;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_2d

    if-eqz p1, :cond_27

    .line 11
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/VastTag;->hasAd()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_27

    .line 15
    :cond_1c
    new-instance v0, Lio/bidmachine/iab/vast/processor/a;

    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lio/bidmachine/iab/vast/processor/VastProcessor;->a(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/tags/VastTag;Lio/bidmachine/iab/vast/processor/a;)Lio/bidmachine/iab/vast/processor/VastProcessorResult;

    move-result-object p1

    return-object p1

    .line 16
    :cond_27
    :goto_27
    sget-object p1, Lio/bidmachine/iab/vast/VastSpecError;->XML_VALIDATE:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/VastSpecError;)V

    return-object v0

    .line 17
    :catch_2d
    sget-object p1, Lio/bidmachine/iab/vast/VastSpecError;->XML_PARSING:Lio/bidmachine/iab/vast/VastSpecError;

    invoke-virtual {v0, p1}, Lio/bidmachine/iab/vast/processor/VastProcessorResult;->a(Lio/bidmachine/iab/vast/VastSpecError;)V

    return-object v0
.end method
