###### Class ads_mobile_sdk.ud0 (ads_mobile_sdk.ud0)
.class public abstract Lads_mobile_sdk/ud0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/util/LinkedHashMap;
    .registers 3

    .line 132
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    if-ge p0, v1, :cond_8

    add-int/lit8 p0, p0, 0x1

    goto :goto_18

    :cond_8
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_15

    int-to-float p0, p0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr p0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p0, v1

    float-to-int p0, p0

    goto :goto_18

    :cond_15
    const p0, 0x7fffffff

    .line 133
    :goto_18
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Z
    .registers 4

    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_9

    return v2

    .line 57
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 58
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eq p0, v0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v2
.end method

.method public static b(I)Ljava/util/List;
    .registers 2

    if-nez p0, :cond_5

    .line 47
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 49
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method
