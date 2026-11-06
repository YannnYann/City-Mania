###### Class io.bidmachine.util.network.NetworkUtils (io.bidmachine.util.network.NetworkUtils)
.class public final Lio/bidmachine/util/network/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkUtils.kt\nio/bidmachine/util/network/NetworkUtils\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,116:1\n107#2:117\n79#2,22:118\n*S KotlinDebug\n*F\n+ 1 NetworkUtils.kt\nio/bidmachine/util/network/NetworkUtils\n*L\n57#1:117\n57#1:118,22\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/util/network/NetworkUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/util/network/NetworkUtils;

    invoke-direct {v0}, Lio/bidmachine/util/network/NetworkUtils;-><init>()V

    sput-object v0, Lio/bidmachine/util/network/NetworkUtils;->INSTANCE:Lio/bidmachine/util/network/NetworkUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final appendQueryParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    .line 88
    :cond_11
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_21

    .line 92
    :cond_3d
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "parse(url).buildUpon().a\u2026     }.build().toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final disconnectSafely(Ljava/net/HttpURLConnection;)V
    .registers 1

    .line 26
    invoke-static {p0}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static final findEndpoint(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14

    const-string v0, "nextUrl"

    const-string v1, "urlString"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 34
    :try_start_8
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/net/HttpURLConnection;

    const/4 v4, 0x0

    .line 36
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 37
    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 38
    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_e1

    .line 40
    :try_start_22
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_36

    const-string v5, "url.toString()"

    packed-switch p1, :pswitch_data_e6

    .line 73
    :pswitch_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_36

    .line 79
    invoke-static {v3}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-object p1

    :catchall_36
    move-object v1, v3

    goto/16 :goto_e1

    .line 47
    :pswitch_39
    :try_start_39
    const-string p1, "Location"

    invoke-virtual {v3, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d6

    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_49

    goto/16 :goto_d6

    .line 51
    :cond_49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/bidmachine/util/Utils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_61

    .line 52
    invoke-static {v3}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    .line 53
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4, v6, v1}, Lio/bidmachine/util/network/NetworkUtils;->findEndpoint$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_5d
    .catchall {:try_start_39 .. :try_end_5d} :catchall_36

    .line 79
    invoke-static {v3}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-object p0

    .line 54
    :cond_61
    :try_start_61
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_36

    if-nez v5, :cond_cf

    .line 56
    :try_start_6c
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "URL(url, nextUrl).toString()"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    move v8, v4

    move v9, v8

    :goto_82
    if-gt v8, v5, :cond_a7

    if-nez v9, :cond_88

    move v10, v8

    goto :goto_89

    :cond_88
    move v10, v5

    .line 124
    :goto_89
    invoke-interface {v2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    .line 57
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v10

    if-gtz v10, :cond_97

    move v10, v7

    goto :goto_98

    :cond_97
    move v10, v4

    :goto_98
    if-nez v9, :cond_a1

    if-nez v10, :cond_9e

    move v9, v7

    goto :goto_82

    :cond_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_82

    :cond_a1
    if-nez v10, :cond_a4

    goto :goto_a7

    :cond_a4
    add-int/lit8 v5, v5, -0x1

    goto :goto_82

    :cond_a7
    :goto_a7
    add-int/2addr v5, v7

    .line 139
    invoke-interface {v2, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 117
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_bd

    .line 58
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_b9} :catch_c8
    .catchall {:try_start_6c .. :try_end_b9} :catchall_36

    .line 79
    invoke-static {v3}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-object p1

    .line 65
    :cond_bd
    :try_start_bd
    invoke-static {v3}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    .line 66
    invoke-static {v2, v4, v6, v1}, Lio/bidmachine/util/network/NetworkUtils;->findEndpoint$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_c4
    .catchall {:try_start_bd .. :try_end_c4} :catchall_36

    .line 79
    invoke-static {v3}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-object p0

    .line 63
    :catch_c8
    :try_start_c8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_36

    .line 79
    invoke-static {v3}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-object p1

    .line 68
    :cond_cf
    :try_start_cf
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_36

    .line 79
    invoke-static {v3}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-object p1

    .line 49
    :cond_d6
    :goto_d6
    :try_start_d6
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_36

    .line 79
    invoke-static {v3}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-object p1

    :catchall_e1
    :goto_e1
    invoke-static {v1}, Lio/bidmachine/util/network/NetworkUtilsKt;->disconnectSafely(Ljava/net/HttpURLConnection;)V

    return-object p0

    nop

    :pswitch_data_e6
    .packed-switch 0x12d
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_2b
        :pswitch_39
        :pswitch_2b
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method public static synthetic findEndpoint$default(Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_6

    const/16 p1, 0x1f4

    .line 31
    :cond_6
    invoke-static {p0, p1}, Lio/bidmachine/util/network/NetworkUtils;->findEndpoint(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
