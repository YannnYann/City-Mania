###### Class com.ironsource.Ec (com.ironsource.Ec)
.class public final Lcom/ironsource/Ec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkSettings.kt\ncom/unity3d/sdk/internal/init/response/NetworkSettings\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n11228#2:97\n11563#2,3:98\n1285#3,2:101\n1299#3,4:103\n*S KotlinDebug\n*F\n+ 1 NetworkSettings.kt\ncom/unity3d/sdk/internal/init/response/NetworkSettings\n*L\n40#1:97\n40#1:98,3\n41#1:101,2\n41#1:103,4\n*E\n"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lorg/json/JSONObject;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private k:Lcom/ironsource/Ec;

.field private final l:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$6sQIO2X8R-tuzf9w0nmHHnLlH1c(Lcom/ironsource/Ec;)Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/Ec;->a(Lcom/ironsource/Ec;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 9

    const-string v0, "providerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ec;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/ironsource/Ec;->b:Ljava/lang/String;

    .line 5
    const-string v0, "providerLoadName"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "optString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/Ec;->c:Ljava/lang/String;

    .line 9
    const-string v1, "providerDefaultInstance"

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/Ec;->d:Ljava/lang/String;

    .line 11
    const-string p1, "providerNetworkKey"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_36

    check-cast p1, Ljava/lang/String;

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :goto_37
    iput-object p1, p0, Lcom/ironsource/Ec;->e:Ljava/lang/String;

    .line 14
    const-string p1, "application"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Ec;->f:Lorg/json/JSONObject;

    .line 17
    invoke-static {}, Lcom/unity3d/mediation/LevelPlay$AdFormat;->values()[Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object p1

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_4e
    if-ge v4, v2, :cond_5c

    aget-object v5, p1, v4

    .line 77
    invoke-static {v5}, Lcom/ironsource/If;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 138
    :cond_5c
    new-instance p1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 140
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 141
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 142
    const-string v5, "adFormats"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_90

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_95

    .line 143
    :cond_90
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 204
    :cond_95
    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    .line 205
    :cond_99
    iput-object p1, p0, Lcom/ironsource/Ec;->g:Ljava/util/Map;

    .line 231
    const-string p1, "spId"

    const-string v1, "0"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/Ec;->h:Ljava/lang/String;

    .line 232
    const-string p1, "adSourceName"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/Ec;->i:Ljava/lang/String;

    .line 233
    const-string p1, "mpis"

    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ironsource/Ec;->j:Z

    .line 237
    new-instance p1, Lcom/ironsource/Ec$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/ironsource/Ec$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/Ec;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Ec;->l:Lkotlin/Lazy;

    return-void
.end method

.method private static final a(Lcom/ironsource/Ec;)Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 14

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    .line 3
    iget-object v1, p0, Lcom/ironsource/Ec;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/ironsource/Ec;->c:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/ironsource/Ec;->d:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/ironsource/Ec;->e:Ljava/lang/String;

    .line 7
    iget-object v5, p0, Lcom/ironsource/Ec;->f:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/ironsource/Ec;->k:Lcom/ironsource/Ec;

    const/4 v7, 0x0

    if-eqz v6, :cond_14

    iget-object v6, v6, Lcom/ironsource/Ec;->f:Lorg/json/JSONObject;

    goto :goto_15

    :cond_14
    move-object v6, v7

    :goto_15
    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 8
    invoke-virtual {p0}, Lcom/ironsource/Ec;->m()Lorg/json/JSONObject;

    move-result-object v6

    iget-object v8, p0, Lcom/ironsource/Ec;->k:Lcom/ironsource/Ec;

    if-eqz v8, :cond_26

    invoke-virtual {v8}, Lcom/ironsource/Ec;->m()Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_27

    :cond_26
    move-object v8, v7

    :goto_27
    invoke-static {v6, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 9
    invoke-virtual {p0}, Lcom/ironsource/Ec;->e()Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, p0, Lcom/ironsource/Ec;->k:Lcom/ironsource/Ec;

    if-eqz v9, :cond_38

    invoke-virtual {v9}, Lcom/ironsource/Ec;->e()Lorg/json/JSONObject;

    move-result-object v9

    goto :goto_39

    :cond_38
    move-object v9, v7

    :goto_39
    invoke-static {v8, v9}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 10
    invoke-virtual {p0}, Lcom/ironsource/Ec;->d()Lorg/json/JSONObject;

    move-result-object v9

    iget-object v10, p0, Lcom/ironsource/Ec;->k:Lcom/ironsource/Ec;

    if-eqz v10, :cond_4a

    invoke-virtual {v10}, Lcom/ironsource/Ec;->d()Lorg/json/JSONObject;

    move-result-object v10

    goto :goto_4b

    :cond_4a
    move-object v10, v7

    :goto_4b
    invoke-static {v9, v10}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 11
    invoke-virtual {p0}, Lcom/ironsource/Ec;->g()Lorg/json/JSONObject;

    move-result-object v10

    iget-object v11, p0, Lcom/ironsource/Ec;->k:Lcom/ironsource/Ec;

    if-eqz v11, :cond_5b

    invoke-virtual {v11}, Lcom/ironsource/Ec;->g()Lorg/json/JSONObject;

    move-result-object v7

    :cond_5b
    invoke-static {v10, v7}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v12, v9

    move-object v9, v7

    move-object v7, v8

    move-object v8, v12

    .line 12
    invoke-direct/range {v0 .. v9}, Lcom/ironsource/mediationsdk/model/NetworkSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 23
    iget-boolean v1, p0, Lcom/ironsource/Ec;->j:Z

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setIsMultipleInstances(Z)V

    .line 24
    iget-object v1, p0, Lcom/ironsource/Ec;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/ironsource/Ec;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->setAdSourceNameForEvents(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/ironsource/Ec;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ec;->k:Lcom/ironsource/Ec;

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final d()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->g:Ljava/util/Map;

    const-string v1, "banner"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/Ec;->f:Lorg/json/JSONObject;

    .line 2
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mergeJsons(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->g:Ljava/util/Map;

    const-string v1, "interstitial"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/Ec;->f:Lorg/json/JSONObject;

    .line 2
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mergeJsons(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    return-object v0
.end method

.method public final g()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->g:Ljava/util/Map;

    const-string v1, "nativeAd"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/Ec;->f:Lorg/json/JSONObject;

    .line 2
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mergeJsons(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Lorg/json/JSONObject;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->g:Ljava/util/Map;

    const-string v1, "rewarded"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 2
    iget-object v1, p0, Lcom/ironsource/Ec;->f:Lorg/json/JSONObject;

    .line 3
    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "mergeJsons(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ec;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Ec;->j:Z

    return v0
.end method

###### Class com.ironsource.Ec$$ExternalSyntheticLambda0 (com.ironsource.Ec$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Ec$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Ec;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Ec;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ec$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/Ec;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/Ec$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/Ec;

    invoke-static {v0}, Lcom/ironsource/Ec;->$r8$lambda$6sQIO2X8R-tuzf9w0nmHHnLlH1c(Lcom/ironsource/Ec;)Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    return-object v0
.end method
