###### Class info.flowersoft.theotown.city.TransformedCityDrawer (info.flowersoft.theotown.city.TransformedCityDrawer)
.class public final Linfo/flowersoft/theotown/city/TransformedCityDrawer;
.super Ljava/lang/Object;
.source "TransformedCityDrawer.kt"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public final engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public final fsShader:Ljava/lang/String;

.field public shader:Lio/blueflower/stapel2d/drawing/Shader;

.field public final vsShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 3

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 40
    const-string p1, "attribute vec2 vVertex;\nattribute vec4 vColor;\nattribute vec2 vTexCoord;\nattribute vec2 vQuadCoord;\n\nuniform vec2 viewport;\nuniform vec2 offset;\n\nvarying vec4 color;\nvarying vec2 texCoord;\nvarying vec2 quadCoord;\n\nvoid main() {\n    color = vec4(vColor.rgb * vColor.a, vColor.a);\n    texCoord = vTexCoord;\n    quadCoord = vQuadCoord;\n    \n    gl_Position = vec4((vVertex + offset) * viewport + vec2(-1.0, 1.0), 0.0, 1.0);\n}"

    iput-object p1, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->vsShader:Ljava/lang/String;

    .line 62
    const-string p1, "uniform sampler2D texture;\nuniform highp vec4 u_uvs;\nuniform highp float u_depthFactor;\nuniform highp vec2 u_stretch;\n\nvarying lowp vec4 color;\nvarying highp vec2 texCoord;\nvarying highp vec2 quadCoord;\n\nvoid main() {\n    highp vec2 samplePos = quadCoord.xy;\n    \n    // Depth must be <= 1.0 to stay within texture\n    highp float depth = 1.0 / (1.0 + u_depthFactor * samplePos.y);\n    samplePos = (samplePos - vec2(0.5)) * depth * u_stretch + vec2(0.5);\n    \n    highp vec2 coords = mix(u_uvs.xy, u_uvs.zw, samplePos);\n    gl_FragColor = color * texture2D(texture, coords);\n}"

    iput-object p1, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->fsShader:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->shader:Lio/blueflower/stapel2d/drawing/Shader;

    if-eqz v0, :cond_c

    .line 148
    iget-object v1, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->releaseShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->shader:Lio/blueflower/stapel2d/drawing/Shader;

    :cond_c
    return-void
.end method

.method public final draw(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFF)V
    .registers 22

    const-string v1, "engine"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "texture"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->shader:Lio/blueflower/stapel2d/drawing/Shader;

    if-nez v1, :cond_19

    .line 98
    new-instance v1, Lio/blueflower/stapel2d/drawing/Shader;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->vsShader:Ljava/lang/String;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->fsShader:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lio/blueflower/stapel2d/drawing/Shader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->shader:Lio/blueflower/stapel2d/drawing/Shader;

    .line 101
    :cond_19
    iget-object v1, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->shader:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 102
    iget-object v3, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->shader:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "u_uvs"

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v3 .. v8}, Lio/blueflower/stapel2d/drawing/Shader;->setUniform(Ljava/lang/String;FFFF)V

    .line 103
    iget-object v1, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->shader:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "u_depthFactor"

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->getDepthFactor()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lio/blueflower/stapel2d/drawing/Shader;->setUniform(Ljava/lang/String;F)V

    .line 104
    iget-object v1, p0, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->shader:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->getStretchX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->getStretchY()F

    move-result v5

    div-float/2addr v4, v5

    const-string v5, "u_stretch"

    invoke-virtual {v1, v5, v3, v4}, Lio/blueflower/stapel2d/drawing/Shader;->setUniform(Ljava/lang/String;FF)V

    add-float v4, p3, p5

    add-float v5, p4, p6

    const/4 v10, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 106
    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V

    return-void
.end method

.method public final getDepthFactor()F
    .registers 2

    .line 66
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->depthFactor:F

    return v0
.end method

.method public final getStretchX()F
    .registers 4

    .line 72
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->stretchFactor:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_c

    int-to-float v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0

    :cond_c
    return v1
.end method

.method public final getStretchY()F
    .registers 4

    .line 80
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->stretchFactor:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_d

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0

    :cond_d
    return v1
.end method

.method public final transformFromScreen(Lio/blueflower/stapel2d/util/ScreenRect;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 7

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    .line 136
    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    .line 137
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->getDepthFactor()F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float v2, v3, v2

    .line 138
    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p2, v0, v0}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    .line 139
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->getStretchX()F

    move-result v1

    div-float v1, v3, v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->getStretchY()F

    move-result v2

    div-float/2addr v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    .line 140
    invoke-virtual {p2, v0, v0}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    const-string p2, "scl(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final transformToScreen(Lio/blueflower/stapel2d/util/ScreenRect;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .registers 7

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pos"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    .line 122
    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    .line 123
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->getDepthFactor()F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float v2, v3, v2

    .line 124
    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p2, v0, v0}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    div-float/2addr v3, v2

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    .line 125
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->getStretchX()F

    move-result v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/TransformedCityDrawer;->getStretchY()F

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    .line 126
    invoke-virtual {p2, v0, v0}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    const-string p2, "scl(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
