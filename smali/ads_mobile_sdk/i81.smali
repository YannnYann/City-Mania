###### Class ads_mobile_sdk.i81 (ads_mobile_sdk.i81)
.class public abstract Lads_mobile_sdk/i81;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lads_mobile_sdk/h81;)Landroid/webkit/WebResourceResponse;
    .registers 13

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/h81;->c:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Content-Type"

    invoke-static {v4, v5, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_2e

    :cond_2d
    move-object v1, v3

    :goto_2e
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_3b

    :cond_3a
    move-object v4, v3

    :goto_3b
    const-string v0, "text/html"

    const-string v1, "UTF-8"

    if-eqz v4, :cond_be

    .line 9
    const-string v5, ";"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 10
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_60

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_61

    :cond_60
    move-object v5, v3

    :goto_61
    if-eqz v5, :cond_6e

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 12
    const-string v8, "/"

    invoke-static {v5, v8, v6, v7, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    move-object v0, v5

    .line 19
    :cond_6e
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    .line 39
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_94

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 40
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "charset="

    invoke-static {v6, v7, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_76

    goto :goto_95

    :cond_94
    move-object v5, v3

    .line 41
    :goto_95
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_be

    .line 43
    const-string v2, "="

    invoke-static {v5, v2, v5}, Lkotlin/text/StringsKt__StringsKt;->substringAfter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_be

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_be

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "toUpperCase(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_be

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_c1

    :cond_be
    move-object v6, v0

    move-object v7, v1

    goto :goto_c3

    :cond_c1
    move-object v6, v0

    move-object v7, v2

    .line 48
    :goto_c3
    iget-object v0, p0, Lads_mobile_sdk/h81;->b:Ljava/lang/String;

    if-eqz v0, :cond_d2

    .line 49
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ce

    goto :goto_d2

    .line 50
    :cond_ce
    iget-object v0, p0, Lads_mobile_sdk/h81;->b:Ljava/lang/String;

    :goto_d0
    move-object v9, v0

    goto :goto_d5

    .line 51
    :cond_d2
    :goto_d2
    const-string v0, "OK"

    goto :goto_d0

    .line 56
    :goto_d5
    new-instance v5, Landroid/webkit/WebResourceResponse;

    .line 57
    iget v8, p0, Lads_mobile_sdk/h81;->a:I

    .line 58
    iget-object v10, p0, Lads_mobile_sdk/h81;->c:Ljava/util/Map;

    .line 59
    iget-object p0, p0, Lads_mobile_sdk/h81;->d:Lads_mobile_sdk/p53;

    if-eqz p0, :cond_e6

    .line 60
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lads_mobile_sdk/p53;->a:[B

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_e6
    move-object v11, v3

    .line 61
    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v5
.end method
