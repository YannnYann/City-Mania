###### Class info.flowersoft.theotown.draftloader.ThemeDraftLoader (info.flowersoft.theotown.draftloader.ThemeDraftLoader)
.class public final Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "ThemeDraftLoader.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeDraftLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeDraftLoader.kt\ninfo/flowersoft/theotown/draftloader/ThemeDraftLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1#2:135\n1945#3,3:136\n1945#3,3:139\n*S KotlinDebug\n*F\n+ 1 ThemeDraftLoader.kt\ninfo/flowersoft/theotown/draftloader/ThemeDraftLoader\n*L\n115#1:136,3\n125#1:139,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 16
    const-string v0, "theme"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 14
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->load()Linfo/flowersoft/theotown/draft/ThemeDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/ThemeDraft;
    .registers 64

    move-object/from16 v0, p0

    .line 19
    new-instance v1, Linfo/flowersoft/theotown/draft/ThemeDraft;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draft/ThemeDraft;-><init>()V

    .line 20
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 22
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "base"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    const-class v3, Linfo/flowersoft/theotown/draft/ThemeDraft;

    const-string v4, "dark"

    if-eqz v2, :cond_aa

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_21

    goto/16 :goto_aa

    .line 30
    :cond_21
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/ThemeDraft;

    .line 31
    iget-object v5, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/ThemeDraft;->isDark()Z

    move-result v6

    invoke-virtual {v5, v4, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/draft/ThemeDraft;->setDark(Z)V

    .line 32
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/ThemeDraft;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v5

    const v61, 0x3fffff

    const/16 v62, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, -0x1

    invoke-static/range {v5 .. v62}, Lio/blueflower/stapel2d/gui/Skin;->copy$default(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIIIIILjava/lang/Object;)Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/draft/ThemeDraft;->setSkin(Lio/blueflower/stapel2d/gui/Skin;)V

    goto/16 :goto_133

    .line 26
    :cond_aa
    :goto_aa
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/draft/ThemeDraft;->setDark(Z)V

    .line 27
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/ThemeDraft;->isDark()Z

    move-result v2

    if-eqz v2, :cond_be

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skinDark:Lio/blueflower/stapel2d/gui/Skin;

    :goto_bc
    move-object v4, v2

    goto :goto_c1

    :cond_be
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skinLight:Lio/blueflower/stapel2d/gui/Skin;

    goto :goto_bc

    :goto_c1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v60, 0x3fffff

    const/16 v61, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, -0x1

    invoke-static/range {v4 .. v61}, Lio/blueflower/stapel2d/gui/Skin;->copy$default(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;IIIIIIIIIIIIIIII[I[IIIIIIIIIIILjava/lang/Object;)Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/draft/ThemeDraft;->setSkin(Lio/blueflower/stapel2d/gui/Skin;)V

    .line 35
    :goto_133
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/ThemeDraft;

    if-eqz v2, :cond_147

    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->THEMES:Ljava/util/List;

    const-string v4, "THEMES"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    :cond_147
    iget v2, v1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_155

    .line 37
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->THEMES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    .line 39
    :cond_155
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->THEMES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/ThemeDraft;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadSkin(Lio/blueflower/stapel2d/gui/Skin;Linfo/flowersoft/theotown/draft/ThemeDraft;)V

    return-object v1
.end method

.method public final loadFrame(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I
    .registers 12

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->TOP_LEFT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    if-nez p1, :cond_1e

    return p3

    .line 108
    :cond_1e
    array-length p2, p1

    const/4 p3, 0x0

    if-nez p2, :cond_24

    const/4 p2, 0x1

    goto :goto_25

    :cond_24
    move p2, p3

    :goto_25
    if-nez p2, :cond_2a

    .line 109
    aget p1, p1, p3

    return p1

    .line 108
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Frame "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must define at least one frame"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I
    .registers 12

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->TOP_LEFT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    if-nez p1, :cond_1e

    return p3

    .line 114
    :cond_1e
    array-length p2, p1

    const-string p3, "NinePatch "

    const/16 v0, 0x9

    if-lt p2, v0, :cond_7f

    .line 115
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object p2

    .line 1945
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_37

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_72

    .line 1946
    :cond_37
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    move-object v1, p2

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 115
    aget v2, p1, v1

    div-int/lit8 v4, v1, 0x9

    mul-int/2addr v4, v0

    aget v4, p1, v4

    rem-int/2addr v1, v0

    add-int/2addr v4, v1

    if-ne v2, v4, :cond_54

    goto :goto_3b

    .line 116
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " frames must be consecutive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 118
    :cond_72
    :goto_72
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 p3, 0x0

    aget v0, p1, p3

    const/4 v1, 0x1

    array-length v2, p1

    invoke-virtual {p2, v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Image;->setType(III)V

    .line 119
    aget p1, p1, p3

    return p1

    .line 114
    :cond_7f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must define at least 9 frames"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final loadNinePatches(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;[I)[I
    .registers 12

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->TOP_LEFT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object p1

    if-nez p1, :cond_1e

    return-object p3

    .line 124
    :cond_1e
    array-length p2, p1

    const-string p3, "NinePatch "

    const/16 v0, 0x9

    if-lt p2, v0, :cond_8c

    .line 125
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object p2

    .line 1945
    instance-of v1, p2, Ljava/util/Collection;

    if-eqz v1, :cond_37

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_72

    .line 1946
    :cond_37
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    move-object v1, p2

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 125
    aget v2, p1, v1

    div-int/lit8 v4, v1, 0x9

    mul-int/2addr v4, v0

    aget v4, p1, v4

    rem-int/2addr v1, v0

    add-int/2addr v4, v1

    if-ne v2, v4, :cond_54

    goto :goto_3b

    .line 126
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " frames must be consecutive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 128
    :cond_72
    :goto_72
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 p3, 0x0

    aget v1, p1, p3

    array-length v2, p1

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3, v2}, Lio/blueflower/stapel2d/drawing/Image;->setType(III)V

    .line 130
    array-length p2, p1

    div-int/2addr p2, v0

    new-array v0, p2, [I

    :goto_80
    if-ge p3, p2, :cond_8b

    mul-int/lit8 v1, p3, 0x9

    aget v1, p1, v1

    aput v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_80

    :cond_8b
    return-object v0

    .line 124
    :cond_8c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must define at least 9 frames"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final loadSkin(Lio/blueflower/stapel2d/gui/Skin;Linfo/flowersoft/theotown/draft/ThemeDraft;)V
    .registers 6

    .line 47
    iget-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    const-string v1, "text color"

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    const-string v1, "optColor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    .line 48
    const-string v0, "selected text color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    .line 49
    const-string v0, "secondary text color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    .line 50
    const-string v0, "accent text color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    .line 51
    const-string v0, "red text color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    .line 52
    const-string v0, "green text color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    .line 53
    const-string v0, "yellow text color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    .line 54
    const-string v0, "orange text color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    .line 55
    const-string v0, "background color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    .line 56
    const-string v0, "item background color 0"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg0:Lio/blueflower/stapel2d/drawing/Color;

    .line 57
    const-string v0, "item background color 1"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cItemBg1:Lio/blueflower/stapel2d/drawing/Color;

    .line 58
    const-string v0, "menu background color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    .line 59
    const-string v0, "menu item color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    .line 60
    const-string v0, "menu text color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    .line 61
    const-string v0, "menu title color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cMenuTitle:Lio/blueflower/stapel2d/drawing/Color;

    .line 62
    const-string v0, "window title color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cWindowTitle:Lio/blueflower/stapel2d/drawing/Color;

    .line 63
    const-string v0, "indicator rank color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorRank:Lio/blueflower/stapel2d/drawing/Color;

    .line 64
    const-string v0, "indicator text color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorText:Lio/blueflower/stapel2d/drawing/Color;

    .line 65
    const-string v0, "indicator text green color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    .line 66
    const-string v0, "indicator text red color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextRed:Lio/blueflower/stapel2d/drawing/Color;

    .line 67
    const-string v0, "indicator text yellow color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextYellow:Lio/blueflower/stapel2d/drawing/Color;

    .line 68
    const-string v0, "indicator text uber color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorTextUber:Lio/blueflower/stapel2d/drawing/Color;

    .line 69
    const-string v0, "indicator selection color"

    iget-object v2, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->cIndicatorSelection:Lio/blueflower/stapel2d/drawing/Color;

    .line 72
    const-string v0, "panel frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    .line 73
    const-string v0, "window frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npWindow:I

    .line 74
    const-string v0, "button frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    .line 75
    const-string v0, "button down frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    .line 76
    const-string v0, "list item selected frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npListItemSelected:I

    .line 77
    const-string v0, "list box frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    .line 78
    const-string v0, "notification bar frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npNotificationBar:I

    .line 81
    const-string v0, "list item frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npListItemDefault:I

    .line 82
    const-string v0, "button marked frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonMarked:I

    .line 83
    const-string v0, "progress bar frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npProgressBar:I

    .line 84
    const-string v0, "progress bar filled frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npProgressBarFilled:I

    .line 85
    const-string v0, "rect frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npRect:I

    .line 86
    const-string v0, "rect shadow frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    .line 87
    const-string v0, "white rect bordered frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    .line 88
    const-string v0, "white rect frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    .line 89
    const-string v0, "white rect empty frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    .line 91
    const-string v0, "button gold frame"

    iget-object v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatches(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;[I)[I

    move-result-object v0

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGold:[I

    .line 92
    const-string v0, "button green frame"

    iget-object v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatches(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;[I)[I

    move-result-object v0

    iput-object v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonGreen:[I

    .line 94
    const-string v0, "button blue frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlue:I

    .line 95
    const-string v0, "button blue down frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npButtonBlueDown:I

    .line 96
    const-string v0, "indicator frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadNinePatch(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->npIndicator:I

    .line 99
    const-string v0, "checkbox off frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadFrame(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    .line 100
    const-string v0, "checkbox on frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadFrame(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    .line 101
    const-string v0, "radio off frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadFrame(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    .line 102
    const-string v0, "radio on frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadFrame(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result v0

    iput v0, p1, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    .line 103
    const-string v0, "close button frame"

    iget v1, p1, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    invoke-virtual {p0, v0, p2, v1}, Linfo/flowersoft/theotown/draftloader/ThemeDraftLoader;->loadFrame(Ljava/lang/String;Linfo/flowersoft/theotown/draft/ThemeDraft;I)I

    move-result p2

    iput p2, p1, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    return-void
.end method
