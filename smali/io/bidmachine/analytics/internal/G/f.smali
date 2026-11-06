###### Class io.bidmachine.analytics.internal.G.f (io.bidmachine.analytics.internal.G.f)
.class public abstract Lio/bidmachine/analytics/internal/G/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lio/bidmachine/analytics/internal/g/e;)Lio/bidmachine/analytics/internal/G/e;
    .registers 10

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/G/e;

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e;->d()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e;->f()J

    move-result-wide v3

    .line 5
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e;->a()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e;->e()Lio/bidmachine/analytics/internal/g/e$a;

    move-result-object v6

    invoke-static {v6}, Lio/bidmachine/analytics/internal/G/f;->a(Lio/bidmachine/analytics/internal/g/e$a;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e;->b()Lio/bidmachine/analytics/internal/g/h;

    move-result-object v7

    if-eqz v7, :cond_38

    invoke-static {v7}, Lio/bidmachine/analytics/internal/G/g;->a(Lio/bidmachine/analytics/internal/g/h;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_38

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_38

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    if-nez v7, :cond_3b

    :cond_38
    const/4 v7, 0x0

    new-array v7, v7, [B

    .line 8
    :cond_3b
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e;->g()Z

    move-result v8

    .line 9
    invoke-direct/range {v0 .. v8}, Lio/bidmachine/analytics/internal/G/e;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[BZ)V

    return-object v0
.end method

.method public static final a(Lorg/json/JSONObject;)Lio/bidmachine/analytics/internal/g/e$a;
    .registers 7

    .line 38
    const-string v0, "type"

    const-string v1, "gen"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "pur"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "path"

    const-string v2, "tag"

    if-eqz v0, :cond_37

    .line 41
    new-instance v0, Lio/bidmachine/analytics/internal/g/e$a$b;

    .line 42
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v3, "query"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 45
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x0

    .line 49
    :goto_2c
    const-string v4, "shouldRep"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 50
    invoke-direct {v0, v2, v1, v3, p0}, Lio/bidmachine/analytics/internal/g/e$a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 63
    :cond_37
    new-instance v0, Lio/bidmachine/analytics/internal/g/e$a$a;

    .line 64
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-direct {v0, v2, p0}, Lio/bidmachine/analytics/internal/g/e$a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Lio/bidmachine/analytics/internal/G/e;)Lio/bidmachine/analytics/internal/g/e;
    .registers 11

    .line 10
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/e;->b()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    move-object v8, v0

    goto :goto_1f

    .line 13
    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/e;->b()[B

    move-result-object v2

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/analytics/internal/G/g;->a(Lorg/json/JSONObject;)Lio/bidmachine/analytics/internal/g/h;

    move-result-object v0

    goto :goto_8

    .line 15
    :goto_1f
    new-instance v1, Lio/bidmachine/analytics/internal/g/e;

    .line 16
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/e;->c()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/e;->d()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/e;->f()J

    move-result-wide v4

    .line 19
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/e;->a()Ljava/lang/String;

    move-result-object v6

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/e;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/bidmachine/analytics/internal/G/f;->a(Lorg/json/JSONObject;)Lio/bidmachine/analytics/internal/g/e$a;

    move-result-object v7

    .line 22
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/G/e;->g()Z

    move-result v9

    .line 23
    invoke-direct/range {v1 .. v9}, Lio/bidmachine/analytics/internal/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lio/bidmachine/analytics/internal/g/e$a;Lio/bidmachine/analytics/internal/g/h;Z)V

    return-object v1
.end method

.method public static final a(Lio/bidmachine/analytics/internal/g/e$a;)Lorg/json/JSONObject;
    .registers 6

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    instance-of v1, p0, Lio/bidmachine/analytics/internal/g/e$a$a;

    const-string v2, "path"

    const-string v3, "tag"

    const-string v4, "type"

    if-eqz v1, :cond_25

    .line 27
    const-string v1, "gen"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    check-cast p0, Lio/bidmachine/analytics/internal/g/e$a$a;

    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e$a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e$a$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 32
    :cond_25
    instance-of v1, p0, Lio/bidmachine/analytics/internal/g/e$a$b;

    if-eqz v1, :cond_50

    .line 33
    const-string v1, "pur"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    check-cast p0, Lio/bidmachine/analytics/internal/g/e$a$b;

    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e$a$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e$a$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e$a$b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/g/e$a$b;->c()Z

    move-result p0

    const-string v1, "shouldRep"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_50
    return-object v0
.end method
