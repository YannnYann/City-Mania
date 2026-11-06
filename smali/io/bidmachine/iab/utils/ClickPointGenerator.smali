###### Class io.bidmachine.iab.utils.ClickPointGenerator (io.bidmachine.iab.utils.ClickPointGenerator)
.class public final Lio/bidmachine/iab/utils/ClickPointGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/utils/ClickPointGenerator$Companion;,
        Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/iab/utils/ClickPointGenerator$Companion;

.field public static final Default:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/bidmachine/iab/utils/ClickPointGenerator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/iab/utils/ClickPointGenerator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/iab/utils/ClickPointGenerator;->Companion:Lio/bidmachine/iab/utils/ClickPointGenerator$Companion;

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lio/bidmachine/iab/utils/ClickPointGenerator;->Default:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final generate(Lio/bidmachine/rendering/model/ClickArea;Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;)Landroid/graphics/PointF;
    .registers 6

    const-string v0, "clickArea"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distribution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/ClickArea;->getSeed()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    goto :goto_1f

    :cond_1a
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    :goto_1f
    invoke-interface {p2, v2, p1}, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;->calculate(Ljava/util/Random;Lio/bidmachine/rendering/model/ClickArea;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.iab.utils.ClickPointGenerator.Companion (io.bidmachine.iab.utils.ClickPointGenerator$Companion)
.class public final Lio/bidmachine/iab/utils/ClickPointGenerator$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/ClickPointGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/iab/utils/ClickPointGenerator$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.iab.utils.ClickPointGenerator.Distribution (io.bidmachine.iab.utils.ClickPointGenerator$Distribution)
.class public interface abstract Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/ClickPointGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Distribution"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;,
        Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;
    }
.end annotation


# virtual methods
.method public abstract calculate(Ljava/util/Random;Lio/bidmachine/rendering/model/ClickArea;)Landroid/graphics/PointF;
.end method

###### Class io.bidmachine.iab.utils.ClickPointGenerator.Distribution.Legacy (io.bidmachine.iab.utils.ClickPointGenerator$Distribution$Legacy)
.class public final Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Legacy"
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;->INSTANCE:Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Random;FF)F
    .registers 14

    .line 1
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const v2, 0x186a0

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    rem-long/2addr v8, v2

    add-long/2addr v8, v4

    long-to-double v2, v8

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/4 p1, -0x2

    int-to-double v4, p1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const p1, 0x3ecccccd    # 0.4f

    cmpg-float v2, p1, p3

    if-gtz v2, :cond_4d

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_4d

    float-to-double p1, p2

    mul-double/2addr v0, p1

    float-to-double p1, p3

    add-double/2addr v0, p1

    :goto_4b
    move-wide v2, v0

    goto :goto_5e

    :cond_4d
    cmpg-float p1, p3, p1

    float-to-double v2, p3

    if-gez p1, :cond_58

    float-to-double p1, p2

    mul-double/2addr v0, v0

    div-double/2addr p1, v0

    add-double v0, v2, p1

    goto :goto_4b

    :cond_58
    float-to-double p1, p2

    mul-double/2addr v0, v0

    div-double/2addr p1, v0

    sub-double v0, v2, p1

    goto :goto_4b

    :goto_5e
    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 9
    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(DDD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public calculate(Ljava/util/Random;Lio/bidmachine/rendering/model/ClickArea;)Landroid/graphics/PointF;
    .registers 6

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickArea"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 2
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickArea;->getSpread()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickArea;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p1, v1, v2}, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;->a(Ljava/util/Random;FF)F

    move-result v1

    .line 3
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickArea;->getSpread()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickArea;->getCenter()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v2, p2}, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Legacy;->a(Ljava/util/Random;FF)F

    move-result p1

    .line 4
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

###### Class io.bidmachine.iab.utils.ClickPointGenerator.Distribution.Uniform (io.bidmachine.iab.utils.ClickPointGenerator$Distribution$Uniform)
.class public final Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uniform"
.end annotation


# static fields
.field public static final INSTANCE:Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;

    invoke-direct {v0}, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;-><init>()V

    sput-object v0, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;->INSTANCE:Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/Random;FF)F
    .registers 8

    sub-float/2addr p2, p3

    float-to-double v0, p2

    .line 1
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide p1

    float-to-double v2, p3

    mul-double/2addr p1, v2

    const/4 p3, 0x2

    int-to-double v2, p3

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public calculate(Ljava/util/Random;Lio/bidmachine/rendering/model/ClickArea;)Landroid/graphics/PointF;
    .registers 6

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickArea"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 2
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickArea;->getCenter()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickArea;->getSpread()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, p1, v1, v2}, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;->a(Ljava/util/Random;FF)F

    move-result v1

    .line 3
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickArea;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lio/bidmachine/rendering/model/ClickArea;->getSpread()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v2, p2}, Lio/bidmachine/iab/utils/ClickPointGenerator$Distribution$Uniform;->a(Ljava/util/Random;FF)F

    move-result p1

    .line 4
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
