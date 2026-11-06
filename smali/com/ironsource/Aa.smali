###### Class com.ironsource.Aa (com.ironsource.Aa)
.class public final Lcom/ironsource/Aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonExtension.kt\ncom/ironsource/mediationsdk/utilities/JsonExtensionKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1232#2,2:40\n1740#3,3:42\n*S KotlinDebug\n*F\n+ 1 JsonExtension.kt\ncom/ironsource/mediationsdk/utilities/JsonExtensionKt\n*L\n19#1:40,2\n28#1:42,3\n*E\n"
.end annotation


# static fields
.field private static final a:I = 0x64


# direct methods
.method private static final a(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 7

    .line 51
    instance-of v0, p0, Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_13

    check-cast p0, Lorg/json/JSONObject;

    check-cast p1, Lorg/json/JSONObject;

    add-int/2addr p2, v1

    invoke-static {p0, p1, p2}, Lcom/ironsource/Aa;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;I)Z

    move-result p0

    return p0

    .line 52
    :cond_13
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_25

    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_25

    check-cast p0, Lorg/json/JSONArray;

    check-cast p1, Lorg/json/JSONArray;

    add-int/2addr p2, v1

    invoke-static {p0, p1, p2}, Lcom/ironsource/Aa;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Z

    move-result p0

    return p0

    .line 53
    :cond_25
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_40

    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_40

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, v2, p0

    if-nez p0, :cond_3e

    return v1

    :cond_3e
    const/4 p0, 0x0

    return p0

    .line 54
    :cond_40
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .registers 3

    const-string v0, "lhs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/ironsource/Aa;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Z

    move-result p0

    return p0
.end method

.method private static final a(Lorg/json/JSONArray;Lorg/json/JSONArray;I)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 30
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    const/16 v1, 0x64

    if-le p2, v1, :cond_15

    return v3

    .line 33
    :cond_15
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    .line 48
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_2b

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_4b

    .line 49
    :cond_2b
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    move-object v2, v1

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 50
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2, p2}, Lcom/ironsource/Aa;->a(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_2f

    return v3

    :cond_4b
    :goto_4b
    return v0
.end method

.method public static final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 3

    const-string v0, "lhs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/ironsource/Aa;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;I)Z

    move-result p0

    return p0
.end method

.method private static final a(Lorg/json/JSONObject;Lorg/json/JSONObject;I)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 3
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    :cond_10
    const/16 v1, 0x64

    if-le p2, v1, :cond_15

    return v3

    .line 6
    :cond_15
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "keys(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2, p2}, Lcom/ironsource/Aa;->a(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_26

    :cond_47
    return v3

    :cond_48
    return v0
.end method
