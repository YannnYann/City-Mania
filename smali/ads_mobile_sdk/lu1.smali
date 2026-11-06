###### Class ads_mobile_sdk.lu1 (ads_mobile_sdk.lu1)
.class public final Lads_mobile_sdk/lu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ku1;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 81
    check-cast p1, Lads_mobile_sdk/ju1;

    .line 82
    check-cast p2, Lads_mobile_sdk/gu1;

    .line 84
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 88
    :cond_c
    invoke-virtual {p1}, Lads_mobile_sdk/ju1;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p0, v2, v0}, Lads_mobile_sdk/gu1;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_14

    :cond_2e
    return v1
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Lads_mobile_sdk/ju1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lads_mobile_sdk/ju1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 151
    check-cast p0, Lads_mobile_sdk/ju1;

    .line 152
    check-cast p1, Lads_mobile_sdk/ju1;

    .line 153
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 154
    invoke-virtual {p0}, Lads_mobile_sdk/ju1;->d()Z

    move-result v0

    if-nez v0, :cond_14

    .line 155
    invoke-virtual {p0}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object p0

    .line 157
    :cond_14
    invoke-virtual {p0, p1}, Lads_mobile_sdk/ju1;->a(Lads_mobile_sdk/ju1;)V

    :cond_17
    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 111
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/lu1;->b(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 168
    invoke-static {p1, p2}, Lads_mobile_sdk/lu1;->b(Ljava/lang/Object;Ljava/lang/Object;)Lads_mobile_sdk/ju1;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 36
    check-cast p1, Lads_mobile_sdk/ju1;

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 158
    invoke-static {}, Lads_mobile_sdk/ju1;->b()Lads_mobile_sdk/ju1;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/ju1;->f()Lads_mobile_sdk/ju1;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 26
    check-cast p1, Lads_mobile_sdk/ju1;

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Z
    .registers 2

    .line 41
    check-cast p1, Lads_mobile_sdk/ju1;

    invoke-virtual {p1}, Lads_mobile_sdk/ju1;->d()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 46
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/ju1;

    invoke-virtual {v0}, Lads_mobile_sdk/ju1;->e()V

    return-object p1
.end method

.method public f(Ljava/lang/Object;)Lads_mobile_sdk/gu1$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lads_mobile_sdk/gu1$a<",
            "**>;"
        }
    .end annotation

    .line 31
    check-cast p1, Lads_mobile_sdk/gu1;

    invoke-virtual {p1}, Lads_mobile_sdk/gu1;->a()Lads_mobile_sdk/gu1$a;

    move-result-object p1

    return-object p1
.end method
