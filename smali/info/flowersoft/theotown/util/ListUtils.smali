###### Class info.flowersoft.theotown.util.ListUtils (info.flowersoft.theotown.util.ListUtils)
.class public final Linfo/flowersoft/theotown/util/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mix(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_d

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    .line 19
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 21
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 22
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 24
    :cond_26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_42

    move v3, v0

    :goto_2e
    if-ge v3, p1, :cond_42

    sub-int v4, v3, v0

    int-to-long v4, v4

    add-int/lit8 v6, p1, -0x1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-int/lit8 v6, v1, -0x1

    int-to-long v6, v6

    .line 28
    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 29
    invoke-static {p0, v3, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_42
    return-object p0
.end method
