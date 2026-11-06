###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibraryKt (info.flowersoft.theotown.scripting.libraries.ScenarioLibraryKt)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibraryKt;
.super Ljava/lang/Object;
.source "ScenarioLibrary.kt"


# direct methods
.method public static final applyToDrafts(Linfo/flowersoft/theotown/city/ScenarioInfo;)V
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object v1

    .line 367
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAllowPluginsType()I

    move-result v2

    .line 368
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getDisabledDraftIds()Ljava/util/Set;

    move-result-object v3

    .line 369
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getEffectiveWhitelistedDraftIds()Ljava/util/Set;

    move-result-object v4

    .line 370
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAllowedPluginIds()Lcom/badlogic/gdx/utils/IntSet;

    move-result-object v5

    .line 371
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/store/PluginUnloader;->apply(ILjava/util/Set;Ljava/util/Set;Lcom/badlogic/gdx/utils/IntSet;Ljava/lang/String;)V

    return-void
.end method
