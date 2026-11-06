###### Class info.flowersoft.theotown.resources.WordFilter (info.flowersoft.theotown.resources.WordFilter)
.class public Linfo/flowersoft/theotown/resources/WordFilter;
.super Ljava/lang/Object;
.source "WordFilter.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/WordFilter;


# instance fields
.field public final words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/WordFilter;->words:Ljava/util/List;

    .line 16
    const-string v0, "wordfilter"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 18
    const-string v1, "words"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/JSONUtil;->optArray(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    :goto_17
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 20
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    .line 22
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/WordFilter;->words:Ljava/util/List;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/resources/WordFilter;->unify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_35
    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 80
    sput-object v0, Linfo/flowersoft/theotown/resources/WordFilter;->instance:Linfo/flowersoft/theotown/resources/WordFilter;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/WordFilter;
    .registers 1

    .line 73
    sget-object v0, Linfo/flowersoft/theotown/resources/WordFilter;->instance:Linfo/flowersoft/theotown/resources/WordFilter;

    if-nez v0, :cond_b

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/resources/WordFilter;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/WordFilter;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/WordFilter;->instance:Linfo/flowersoft/theotown/resources/WordFilter;

    .line 76
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/WordFilter;->instance:Linfo/flowersoft/theotown/resources/WordFilter;

    return-object v0
.end method


# virtual methods
.method public isForbidden(Ljava/lang/String;)Z
    .registers 12

    .line 28
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/resources/WordFilter;->unify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 30
    :goto_6
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/WordFilter;->words:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7b

    .line 31
    iget-object v3, p0, Linfo/flowersoft/theotown/resources/WordFilter;->words:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-ne v4, v5, :cond_25

    .line 36
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move v4, v6

    goto :goto_26

    :cond_25
    move v4, v1

    .line 39
    :goto_26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_3c

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v5, v6

    goto :goto_3d

    :cond_3c
    move v5, v1

    .line 44
    :goto_3d
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    :goto_41
    if-ltz v7, :cond_78

    if-eqz v4, :cond_53

    if-eqz v7, :cond_53

    add-int/lit8 v8, v7, -0x1

    .line 46
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_70

    :cond_53
    if-eqz v5, :cond_77

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    if-eq v7, v8, :cond_77

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_70

    goto :goto_77

    :cond_70
    add-int/lit8 v7, v7, 0x1

    .line 50
    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    goto :goto_41

    :cond_77
    :goto_77
    return v6

    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7b
    return v1
.end method

.method public final unify(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 59
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xdf

    const/16 v1, 0x73

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x35

    .line 61
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x33

    const/16 v1, 0x65

    .line 62
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x30

    const/16 v1, 0x6f

    .line 63
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x31

    const/16 v1, 0x6c

    .line 64
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x69

    .line 65
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
