###### Class info.flowersoft.theotown.city.ScenarioInfo (info.flowersoft.theotown.city.ScenarioInfo)
.class public final Linfo/flowersoft/theotown/city/ScenarioInfo;
.super Ljava/lang/Object;
.source "ScenarioInfo.kt"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScenarioInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenarioInfo.kt\ninfo/flowersoft/theotown/city/ScenarioInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n2199#2,2:189\n2199#2,2:191\n2199#2,2:193\n2199#2,2:195\n2199#2,2:197\n2199#2,2:199\n*S KotlinDebug\n*F\n+ 1 ScenarioInfo.kt\ninfo/flowersoft/theotown/city/ScenarioInfo\n*L\n97#1:189,2\n98#1:191,2\n165#1:193,2\n168#1:195,2\n174#1:197,2\n181#1:199,2\n*E\n"
.end annotation


# instance fields
.field public allowBuyMoney:Z

.field public allowLoans:Z

.field public allowPluginsType:I

.field public author:Ljava/lang/String;

.field public final disabledDraftIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public grantAchievements:Z

.field public id:Ljava/lang/String;

.field public minVersion:I

.field public final requiredStorePlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public final whitelistedDraftIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final whitelistedStorePlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->id:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->title:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->text:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->author:Ljava/lang/String;

    const/4 v0, 0x3

    .line 44
    iput v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowPluginsType:I

    .line 50
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->disabledDraftIds:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedDraftIds:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->requiredStorePlugins:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedStorePlugins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAllowBuyMoney()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowBuyMoney:Z

    return v0
.end method

.method public final getAllowLoans()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowLoans:Z

    return v0
.end method

.method public final getAllowPluginsType()I
    .registers 2

    .line 44
    iget v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowPluginsType:I

    return v0
.end method

.method public final getAllowedPluginIds()Lcom/badlogic/gdx/utils/IntSet;
    .registers 4

    .line 96
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    .line 97
    iget-object v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->requiredStorePlugins:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 97
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    goto :goto_d

    .line 98
    :cond_21
    iget-object v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedStorePlugins:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 98
    invoke-virtual {v2}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    goto :goto_29

    :cond_3d
    return-object v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisabledDraftIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->disabledDraftIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getEffectiveWhitelistedDraftIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedDraftIds:Ljava/util/Set;

    const-string v1, "f7d93056-c4de-4384-b919-4c419ce6dffe"

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt___SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getGrantAchievements()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->grantAchievements:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinVersion()I
    .registers 2

    .line 38
    iget v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->minVersion:I

    return v0
.end method

.method public final getRequiredStorePlugins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->requiredStorePlugins:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getWhitelistedDraftIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedDraftIds:Ljava/util/Set;

    return-object v0
.end method

.method public final getWhitelistedStorePlugins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedStorePlugins:Ljava/util/List;

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5

    .line 103
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->disabledDraftIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedDraftIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->requiredStorePlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedStorePlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    :goto_17
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_175

    .line 110
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_170

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "nextString(...)"

    sparse-switch v1, :sswitch_data_176

    goto/16 :goto_170

    :sswitch_2e
    const-string v1, "min version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_170

    .line 115
    :cond_38
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->minVersion:I

    goto :goto_17

    .line 110
    :sswitch_3f
    const-string v1, "req store plugins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_170

    .line 135
    :cond_49
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 136
    :goto_4c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 137
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->requiredStorePlugins:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_4c

    .line 141
    :cond_63
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_17

    .line 110
    :sswitch_67
    const-string v1, "allow plugins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_170

    .line 116
    :cond_71
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowPluginsType:I

    goto :goto_17

    .line 110
    :sswitch_78
    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_170

    .line 112
    :cond_82
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->title:Ljava/lang/String;

    goto :goto_17

    .line 110
    :sswitch_8c
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_170

    .line 113
    :cond_96
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->text:Ljava/lang/String;

    goto/16 :goto_17

    .line 110
    :sswitch_a1
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto/16 :goto_170

    .line 111
    :cond_ab
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->id:Ljava/lang/String;

    goto/16 :goto_17

    .line 110
    :sswitch_b6
    const-string v1, "allow loans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_170

    .line 132
    :cond_c0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowLoans:Z

    goto/16 :goto_17

    .line 110
    :sswitch_c8
    const-string v1, "whitelisted ids"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto/16 :goto_170

    .line 125
    :cond_d2
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 126
    :goto_d5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedDraftIds:Ljava/util/Set;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d5

    .line 129
    :cond_e8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_17

    .line 110
    :sswitch_ed
    const-string v1, "white store plugins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    goto/16 :goto_170

    .line 144
    :cond_f7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 145
    :goto_fa
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 146
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedStorePlugins:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_fa

    .line 150
    :cond_111
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_17

    .line 110
    :sswitch_116
    const-string v1, "disabled ids"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11f

    goto :goto_170

    .line 118
    :cond_11f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 119
    :goto_122
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->disabledDraftIds:Ljava/util/Set;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_122

    .line 122
    :cond_135
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_17

    .line 110
    :sswitch_13a
    const-string v1, "author"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_143

    goto :goto_170

    .line 114
    :cond_143
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->author:Ljava/lang/String;

    goto/16 :goto_17

    .line 110
    :sswitch_14e
    const-string v1, "achievements"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_157

    goto :goto_170

    .line 133
    :cond_157
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->grantAchievements:Z

    goto/16 :goto_17

    .line 110
    :sswitch_15f
    const-string v1, "allow buy money"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_168

    goto :goto_170

    .line 131
    :cond_168
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowBuyMoney:Z

    goto/16 :goto_17

    .line 152
    :cond_170
    :goto_170
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_17

    :cond_175
    return-void

    :sswitch_data_176
    .sparse-switch
        -0x7bc3c971 -> :sswitch_15f
        -0x62d8a8dc -> :sswitch_14e
        -0x53d2de75 -> :sswitch_13a
        -0x3aa340ec -> :sswitch_116
        -0x37756056 -> :sswitch_ed
        -0x36fe8942 -> :sswitch_c8
        -0x1b14ca14 -> :sswitch_b6
        0xd1b -> :sswitch_a1
        0x36452d -> :sswitch_8c
        0x6942258 -> :sswitch_78
        0x26865dc9 -> :sswitch_67
        0x27c91b5f -> :sswitch_3f
        0x5e01ed0a -> :sswitch_2e
    .end sparse-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5

    .line 157
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 159
    const-string v0, "title"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->title:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 160
    const-string v0, "text"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->text:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 161
    const-string v0, "author"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->author:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 162
    const-string v0, "min version"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->minVersion:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 163
    const-string v0, "allow plugins"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowPluginsType:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 164
    const-string v0, "disabled ids"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    .line 165
    iget-object v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->disabledDraftIds:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_57

    .line 166
    :cond_67
    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 167
    const-string v0, "whitelisted ids"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    .line 168
    iget-object v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedDraftIds:Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_7c

    .line 169
    :cond_8c
    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 170
    const-string v0, "allow buy money"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowBuyMoney:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 171
    const-string v0, "allow loans"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowLoans:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 172
    const-string v0, "achievements"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->grantAchievements:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 173
    const-string v0, "req store plugins"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    .line 174
    iget-object v1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->requiredStorePlugins:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 175
    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 176
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 177
    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_c2

    .line 179
    :cond_d8
    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 180
    const-string v0, "white store plugins"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->whitelistedStorePlugins:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ed
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 182
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 183
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 184
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_ed

    .line 186
    :cond_103
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public final setAllowBuyMoney(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowBuyMoney:Z

    return-void
.end method

.method public final setAllowLoans(Z)V
    .registers 2

    .line 78
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowLoans:Z

    return-void
.end method

.method public final setAllowPluginsType(I)V
    .registers 2

    .line 44
    iput p1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->allowPluginsType:I

    return-void
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->author:Ljava/lang/String;

    return-void
.end method

.method public final setGrantAchievements(Z)V
    .registers 2

    .line 83
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->grantAchievements:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public final setMinVersion(I)V
    .registers 2

    .line 38
    iput p1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->minVersion:I

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->text:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Linfo/flowersoft/theotown/city/ScenarioInfo;->title:Ljava/lang/String;

    return-void
.end method
