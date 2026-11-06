###### Class io.bidmachine.rendering.model.AdElementParams (io.bidmachine.rendering.model.AdElementParams)
.class public final Lio/bidmachine/rendering/model/AdElementParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/bidmachine/rendering/model/AdElementType;

.field public final b:Lio/bidmachine/rendering/model/Resource;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lio/bidmachine/rendering/model/ElementLayoutParams;

.field public final f:Lio/bidmachine/rendering/model/AppearanceParams;

.field public final g:Ljava/util/Map;

.field public final h:Ljava/util/List;

.field public final i:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

.field public final j:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

.field public final k:Ljava/util/List;

.field public final l:Z

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/AdElementType;Ljava/lang/String;Lio/bidmachine/rendering/model/Resource;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/model/AppearanceParams;Ljava/util/Map;Ljava/util/List;Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/model/AdElementType;",
            "Ljava/lang/String;",
            "Lio/bidmachine/rendering/model/Resource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/bidmachine/rendering/model/ElementLayoutParams;",
            "Lio/bidmachine/rendering/model/AppearanceParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/rendering/measurer/MeasurerFactory;",
            ">;",
            "Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;",
            "Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/ScriptConfig;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "adElementType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementLayoutParams"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appearanceParams"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customParams"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/rendering/model/AdElementParams;->a:Lio/bidmachine/rendering/model/AdElementType;

    .line 4
    iput-object p3, p0, Lio/bidmachine/rendering/model/AdElementParams;->b:Lio/bidmachine/rendering/model/Resource;

    .line 5
    iput-object p4, p0, Lio/bidmachine/rendering/model/AdElementParams;->c:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lio/bidmachine/rendering/model/AdElementParams;->d:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lio/bidmachine/rendering/model/AdElementParams;->e:Lio/bidmachine/rendering/model/ElementLayoutParams;

    .line 8
    iput-object p7, p0, Lio/bidmachine/rendering/model/AdElementParams;->f:Lio/bidmachine/rendering/model/AppearanceParams;

    .line 9
    iput-object p8, p0, Lio/bidmachine/rendering/model/AdElementParams;->g:Ljava/util/Map;

    .line 10
    iput-object p9, p0, Lio/bidmachine/rendering/model/AdElementParams;->h:Ljava/util/List;

    .line 11
    iput-object p10, p0, Lio/bidmachine/rendering/model/AdElementParams;->i:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

    .line 12
    iput-object p11, p0, Lio/bidmachine/rendering/model/AdElementParams;->j:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    .line 13
    iput-object p12, p0, Lio/bidmachine/rendering/model/AdElementParams;->k:Ljava/util/List;

    .line 14
    iput-boolean p13, p0, Lio/bidmachine/rendering/model/AdElementParams;->l:Z

    .line 17
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p3, "ENGLISH"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/rendering/model/AdElementParams;->m:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/model/AdElementType;Ljava/lang/String;Lio/bidmachine/rendering/model/Resource;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/model/AppearanceParams;Ljava/util/Map;Ljava/util/List;Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 33

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v6, v2

    goto :goto_b

    :cond_9
    move-object/from16 v6, p3

    :goto_b
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_11

    move-object v7, v2

    goto :goto_13

    :cond_11
    move-object/from16 v7, p4

    :goto_13
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_19

    move-object v8, v2

    goto :goto_1b

    :cond_19
    move-object/from16 v8, p5

    :goto_1b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_26

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v11, v1

    goto :goto_28

    :cond_26
    move-object/from16 v11, p8

    :goto_28
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2e

    move-object v12, v2

    goto :goto_30

    :cond_2e
    move-object/from16 v12, p9

    :goto_30
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_36

    move-object v13, v2

    goto :goto_38

    :cond_36
    move-object/from16 v13, p10

    :goto_38
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3e

    move-object v14, v2

    goto :goto_40

    :cond_3e
    move-object/from16 v14, p11

    :goto_40
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_46

    move-object v15, v2

    goto :goto_48

    :cond_46
    move-object/from16 v15, p12

    :goto_48
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    move/from16 v16, v0

    :goto_4f
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    goto :goto_5d

    :cond_5a
    move/from16 v16, p13

    goto :goto_4f

    .line 19
    :goto_5d
    invoke-direct/range {v3 .. v16}, Lio/bidmachine/rendering/model/AdElementParams;-><init>(Lio/bidmachine/rendering/model/AdElementType;Ljava/lang/String;Lio/bidmachine/rendering/model/Resource;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/rendering/model/ElementLayoutParams;Lio/bidmachine/rendering/model/AppearanceParams;Ljava/util/Map;Ljava/util/List;Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final getAdElementType()Lio/bidmachine/rendering/model/AdElementType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->a:Lio/bidmachine/rendering/model/AdElementType;

    return-object v0
.end method

.method public final getAppearanceParams()Lio/bidmachine/rendering/model/AppearanceParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->f:Lio/bidmachine/rendering/model/AppearanceParams;

    return-object v0
.end method

.method public final getBrokenCreativeDetectorParams()Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->i:Lio/bidmachine/rendering/model/BrokenCreativeDetectorParams;

    return-object v0
.end method

.method public final getCustomParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getCustomParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final getElementLayoutParams()Lio/bidmachine/rendering/model/ElementLayoutParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->e:Lio/bidmachine/rendering/model/ElementLayoutParams;

    return-object v0
.end method

.method public final getEngagedClickParams()Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->j:Lio/bidmachine/rendering/model/engagedclick/EngagedClickParams;

    return-object v0
.end method

.method public final getMeasurerFactoryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/measurer/MeasurerFactory;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->h:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaceholder()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getResource()Lio/bidmachine/rendering/model/Resource;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->b:Lio/bidmachine/rendering/model/Resource;

    return-object v0
.end method

.method public final getScriptsConfig()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/ScriptConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->k:Ljava/util/List;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final isPrerender()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/model/AdElementParams;->l:Z

    return v0
.end method
