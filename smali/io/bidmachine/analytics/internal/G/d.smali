###### Class io.bidmachine.analytics.internal.G.d (io.bidmachine.analytics.internal.G.d)
.class public abstract Lio/bidmachine/analytics/internal/G/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/bidmachine/analytics/internal/g/d;)Lio/bidmachine/analytics/internal/G/c;
    .registers 11

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    new-array v0, v1, [B

    :goto_d
    move-object v8, v0

    goto :goto_22

    .line 4
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_d

    .line 6
    :goto_22
    new-instance v2, Lio/bidmachine/analytics/internal/G/c;

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/d;->c()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/d;->d()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/d;->e()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/d;->f()J

    move-result-wide v6

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/d;->b()Lio/bidmachine/analytics/internal/g/h;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-static {p0}, Lio/bidmachine/analytics/internal/G/g;->a(Lio/bidmachine/analytics/internal/g/h;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_51

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    if-nez p0, :cond_4f

    goto :goto_51

    :cond_4f
    :goto_4f
    move-object v9, p0

    goto :goto_54

    :cond_51
    :goto_51
    new-array p0, v1, [B

    goto :goto_4f

    .line 13
    :goto_54
    invoke-direct/range {v2 .. v9}, Lio/bidmachine/analytics/internal/G/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B[B)V

    return-object v2
.end method

.method public static final a(Lio/bidmachine/analytics/internal/G/c;)Lio/bidmachine/analytics/internal/g/d;
    .registers 10

    .line 14
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/c;->a()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_d

    .line 15
    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_b
    move-object v7, v0

    goto :goto_22

    .line 17
    :cond_d
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/c;->a()[B

    move-result-object v2

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/analytics/internal/I/g;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    goto :goto_b

    .line 19
    :goto_22
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/c;->b()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    :goto_2a
    move-object v8, v0

    goto :goto_41

    .line 22
    :cond_2c
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/c;->b()[B

    move-result-object v2

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/analytics/internal/G/g;->a(Lorg/json/JSONObject;)Lio/bidmachine/analytics/internal/g/h;

    move-result-object v0

    goto :goto_2a

    .line 24
    :goto_41
    new-instance v1, Lio/bidmachine/analytics/internal/g/d;

    .line 25
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/c;->d()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/c;->e()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/c;->f()J

    move-result-wide v5

    .line 29
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/analytics/internal/g/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lio/bidmachine/analytics/internal/g/h;)V

    return-object v1
.end method
