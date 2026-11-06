###### Class io.bidmachine.media3.exoplayer.video.spherical.Projection (io.bidmachine.media3.exoplayer.video.spherical.Projection)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/Projection;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;,
        Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;
    }
.end annotation


# instance fields
.field public final leftMesh:Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;

.field public final rightMesh:Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;

.field public final singleMesh:Z

.field public final stereoMode:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;I)V
    .registers 3

    .line 181
    invoke-direct {p0, p1, p1, p2}, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;I)V
    .registers 4

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;->leftMesh:Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 194
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;->rightMesh:Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;

    .line 195
    iput p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;->stereoMode:I

    if-ne p1, p2, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 196
    :goto_e
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;->singleMesh:Z

    return-void
.end method

.method public static createEquirectangular(FIIFFI)Lio/bidmachine/media3/exoplayer/video/spherical/Projection;
    .registers 39

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    const/4 v8, 0x1

    if-lez v6, :cond_12

    move v6, v8

    goto :goto_13

    :cond_12
    const/4 v6, 0x0

    .line 89
    :goto_13
    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    if-lt v1, v8, :cond_1a

    move v6, v8

    goto :goto_1b

    :cond_1a
    const/4 v6, 0x0

    .line 90
    :goto_1b
    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    if-lt v2, v8, :cond_22

    move v6, v8

    goto :goto_23

    :cond_22
    const/4 v6, 0x0

    .line 91
    :goto_23
    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    cmpl-float v6, v3, v5

    if-lez v6, :cond_32

    const/high16 v6, 0x43340000    # 180.0f

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_32

    move v6, v8

    goto :goto_33

    :cond_32
    const/4 v6, 0x0

    .line 92
    :goto_33
    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    cmpl-float v5, v4, v5

    if-lez v5, :cond_42

    const/high16 v5, 0x43b40000    # 360.0f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_42

    move v5, v8

    goto :goto_43

    :cond_42
    const/4 v5, 0x0

    .line 93
    :goto_43
    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    float-to-double v5, v3

    .line 96
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v3, v5

    float-to-double v4, v4

    .line 97
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    int-to-float v5, v1

    div-float v5, v3, v5

    int-to-float v6, v2

    div-float v6, v4, v6

    add-int/lit8 v9, v2, 0x1

    mul-int/lit8 v10, v9, 0x2

    const/4 v11, 0x2

    add-int/2addr v10, v11

    mul-int/2addr v10, v1

    mul-int/lit8 v12, v10, 0x3

    .line 104
    new-array v12, v12, [F

    mul-int/2addr v10, v11

    .line 105
    new-array v10, v10, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_69
    if-ge v13, v1, :cond_11d

    int-to-float v7, v13

    mul-float/2addr v7, v5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v3, v16

    sub-float v7, v7, v17

    add-int/lit8 v8, v13, 0x1

    int-to-float v11, v8

    mul-float/2addr v11, v5

    sub-float v11, v11, v17

    const/4 v1, 0x0

    :goto_7a
    if-ge v1, v9, :cond_116

    move/from16 v17, v3

    move/from16 p4, v4

    const/4 v3, 0x2

    const/4 v4, 0x0

    :goto_82
    if-ge v4, v3, :cond_108

    if-nez v4, :cond_8a

    move v3, v7

    :goto_87
    move/from16 v18, v5

    goto :goto_8c

    :cond_8a
    move v3, v11

    goto :goto_87

    :goto_8c
    int-to-float v5, v1

    mul-float/2addr v5, v6

    const v19, 0x40490fdb    # (float)Math.PI

    add-float v19, v5, v19

    div-float v20, p4, v16

    move/from16 v21, v5

    sub-float v5, v19, v20

    add-int/lit8 v19, v14, 0x1

    move/from16 v20, v6

    move/from16 v22, v7

    float-to-double v6, v0

    move-wide/from16 v23, v6

    float-to-double v5, v5

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v25, v25, v23

    move-wide/from16 v27, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    move-wide/from16 v31, v5

    mul-double v5, v25, v29

    double-to-float v3, v5

    neg-float v3, v3

    aput v3, v12, v14

    add-int/lit8 v3, v14, 0x2

    .line 126
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v6, v23, v5

    double-to-float v5, v6

    aput v5, v12, v19

    add-int/lit8 v5, v14, 0x3

    .line 127
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v23

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v6, v6, v23

    double-to-float v6, v6

    aput v6, v12, v3

    add-int/lit8 v3, v15, 0x1

    div-float v6, v21, p4

    .line 129
    aput v6, v10, v15

    add-int/lit8 v6, v15, 0x2

    add-int v7, v13, v4

    int-to-float v7, v7

    mul-float v7, v7, v18

    div-float v7, v7, v17

    .line 130
    aput v7, v10, v3

    if-nez v1, :cond_e9

    if-eqz v4, :cond_ee

    :cond_e9
    if-ne v1, v2, :cond_fb

    const/4 v3, 0x1

    if-ne v4, v3, :cond_fb

    :cond_ee
    const/4 v3, 0x3

    .line 134
    invoke-static {v12, v14, v12, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x6

    const/4 v3, 0x2

    .line 141
    invoke-static {v10, v15, v10, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x4

    goto :goto_fe

    :cond_fb
    const/4 v3, 0x2

    move v14, v5

    move v15, v6

    :goto_fe
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v22

    goto/16 :goto_82

    :cond_108
    move/from16 v18, v5

    move/from16 v20, v6

    move/from16 v22, v7

    add-int/lit8 v1, v1, 0x1

    move/from16 v4, p4

    move/from16 v3, v17

    goto/16 :goto_7a

    :cond_116
    move/from16 v1, p1

    move v13, v8

    const/4 v8, 0x1

    const/4 v11, 0x2

    goto/16 :goto_69

    .line 154
    :cond_11d
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v12, v10, v3}, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    .line 156
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;

    new-instance v2, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;

    filled-new-array {v0}, [Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;-><init>([Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    move/from16 v0, p5

    invoke-direct {v1, v2, v0}, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;-><init>(Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-object v1
.end method

.method public static createEquirectangular(I)Lio/bidmachine/media3/exoplayer/video/spherical/Projection;
    .registers 7

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v0, 0x42480000    # 50.0f

    const/16 v1, 0x24

    const/16 v2, 0x48

    move v5, p0

    .line 60
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/video/spherical/Projection;->createEquirectangular(FIIFFI)Lio/bidmachine/media3/exoplayer/video/spherical/Projection;

    move-result-object p0

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.video.spherical.Projection.Mesh (io.bidmachine.media3.exoplayer.video.spherical.Projection$Mesh)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/spherical/Projection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mesh"
.end annotation


# instance fields
.field public final subMeshes:[Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;


# direct methods
.method public varargs constructor <init>([Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;)V
    .registers 2

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;

    return-void
.end method


# virtual methods
.method public getSubMesh(I)Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;
    .registers 3

    .line 247
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSubMeshCount()I
    .registers 2

    .line 242
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;

    array-length v0, v0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.video.spherical.Projection.SubMesh (io.bidmachine.media3.exoplayer.video.spherical.Projection$SubMesh)
.class public final Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/spherical/Projection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubMesh"
.end annotation


# instance fields
.field public final mode:I

.field public final textureCoords:[F

.field public final textureId:I

.field public final vertices:[F


# direct methods
.method public constructor <init>(I[F[FI)V
    .registers 11

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;->textureId:I

    .line 218
    array-length p1, p2

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    array-length p1, p3

    int-to-long v2, p1

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 221
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;->vertices:[F

    .line 222
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;->textureCoords:[F

    .line 223
    iput p4, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;->mode:I

    return-void
.end method


# virtual methods
.method public getVertexCount()I
    .registers 2

    .line 228
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/spherical/Projection$SubMesh;->vertices:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method
