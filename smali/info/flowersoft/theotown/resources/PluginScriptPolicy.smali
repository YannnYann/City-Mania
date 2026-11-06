###### Class info.flowersoft.theotown.resources.PluginScriptPolicy (info.flowersoft.theotown.resources.PluginScriptPolicy)
.class public final Linfo/flowersoft/theotown/resources/PluginScriptPolicy;
.super Ljava/lang/Object;
.source "PluginScriptPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPluginScriptPolicy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginScriptPolicy.kt\ninfo/flowersoft/theotown/resources/PluginScriptPolicy\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,138:1\n221#2,2:139\n1745#3:141\n1820#3,3:142\n2199#3,2:146\n1#4:145\n460#5,7:148\n*S KotlinDebug\n*F\n+ 1 PluginScriptPolicy.kt\ninfo/flowersoft/theotown/resources/PluginScriptPolicy\n*L\n65#1:139,2\n100#1:141\n100#1:142,3\n107#1:146,2\n121#1:148,7\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/resources/PluginScriptPolicy;

.field public static final lastPolicies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/resources/PluginPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final policies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/resources/PluginPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static running:Z

.field public static final undecidedPlugins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->INSTANCE:Linfo/flowersoft/theotown/resources/PluginScriptPolicy;

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->undecidedPlugins:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->policies:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->lastPolicies:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final begin()V
    .registers 3

    .line 52
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->load()V

    .line 53
    sget-object v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->lastPolicies:Ljava/util/Map;

    sget-object v1, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->policies:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->running:Z

    return-void
.end method

.method public final end()V
    .registers 7

    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->running:Z

    .line 63
    sget-object v1, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->undecidedPlugins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 65
    sget-object v1, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->policies:Ljava/util/Map;

    .line 221
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/resources/PluginPolicy;

    .line 66
    sget-object v4, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->lastPolicies:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/resources/PluginPolicy;

    if-eqz v4, :cond_40

    .line 67
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getPrivileged()Z

    move-result v2

    invoke-virtual {v4}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getPrivileged()Z

    move-result v5

    if-eq v2, v5, :cond_40

    const/4 v2, 0x1

    goto :goto_41

    :cond_40
    move v2, v0

    :goto_41
    if-eqz v4, :cond_45

    if-eqz v2, :cond_12

    .line 69
    :cond_45
    sget-object v2, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->undecidedPlugins:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_4b
    return-void
.end method

.method public final getPolicies()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Linfo/flowersoft/theotown/resources/PluginPolicy;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->policies:Ljava/util/Map;

    return-object v0
.end method

.method public final getSsp()Linfo/flowersoft/theotown/util/SSP;
    .registers 4

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "plugin-policies.pref"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public final getUndecidedPlugins()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->undecidedPlugins:Ljava/util/Set;

    return-object v0
.end method

.method public final isAllowedToLoadScripts(Linfo/flowersoft/theotown/draft/Draft;)Z
    .registers 14

    const-string v0, "draft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-boolean v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->running:Z

    if-eqz v0, :cond_80

    .line 118
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isExternalPlugin()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    return v1

    .line 120
    :cond_11
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->parentFile:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "toString(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v0, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->policies:Ljava/util/Map;

    .line 460
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5f

    .line 122
    new-instance v2, Linfo/flowersoft/theotown/resources/PluginPolicy;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v11}, Linfo/flowersoft/theotown/resources/PluginPolicy;-><init>(Ljava/lang/String;Ljava/util/List;ZZZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/resources/PluginPolicy;->setPresent(Z)V

    .line 124
    sget-object v1, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->lastPolicies:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/resources/PluginPolicy;

    if-eqz v4, :cond_44

    invoke-virtual {v4}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getAllowed()Z

    move-result v4

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    :goto_45
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/resources/PluginPolicy;->setAllowed(Z)V

    .line 125
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/resources/PluginPolicy;

    if-eqz v1, :cond_55

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getChangeTimeMS()J

    move-result-wide v4

    goto :goto_59

    :cond_55
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    :goto_59
    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/resources/PluginPolicy;->setChangeTimeMS(J)V

    .line 463
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_5f
    check-cast v2, Linfo/flowersoft/theotown/resources/PluginPolicy;

    .line 130
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getIds()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getPrivileged()Z

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result p1

    or-int/2addr p1, v0

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/resources/PluginPolicy;->setPrivileged(Z)V

    .line 134
    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getAllowed()Z

    move-result p1

    return p1

    .line 116
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tried to load draft outside of loading context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final load()V
    .registers 17

    .line 79
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->getSsp()Linfo/flowersoft/theotown/util/SSP;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 80
    sget-object v1, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->policies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 81
    const-string v1, "policies"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/util/SSP$Reader;->getArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 82
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_52

    .line 83
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 84
    const-string v5, "path"

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    sget-object v5, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->policies:Ljava/util/Map;

    new-instance v6, Linfo/flowersoft/theotown/resources/PluginPolicy;

    .line 86
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    const-string v8, "allowed"

    invoke-virtual {v4, v8, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 88
    const-string v8, "privileged"

    invoke-virtual {v4, v8, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 89
    const-string v8, "time"

    const-wide/16 v12, 0x0

    invoke-virtual {v4, v8, v12, v13}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const/16 v14, 0xa

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 85
    invoke-direct/range {v6 .. v15}, Linfo/flowersoft/theotown/resources/PluginPolicy;-><init>(Ljava/lang/String;Ljava/util/List;ZZZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_52
    return-void
.end method

.method public final save()V
    .registers 9

    .line 99
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->getSsp()Linfo/flowersoft/theotown/util/SSP;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 100
    sget-object v1, Linfo/flowersoft/theotown/resources/PluginScriptPolicy;->policies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1745
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1820
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1821
    check-cast v3, Linfo/flowersoft/theotown/resources/PluginPolicy;

    .line 101
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 102
    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "path"

    invoke-virtual {v4, v6, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    .line 103
    const-string v5, "allowed"

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getAllowed()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    .line 104
    const-string v5, "privileged"

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getPrivileged()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    .line 105
    const-string v5, "time"

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/PluginPolicy;->getChangeTimeMS()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;J)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    .line 1821
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 107
    :cond_5c
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 2199
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 107
    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_65

    .line 100
    :cond_75
    const-string v2, "policies"

    invoke-interface {v0, v2, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putArray(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONArray;)V

    .line 109
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    return-void
.end method
