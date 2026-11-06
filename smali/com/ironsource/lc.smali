###### Class com.ironsource.C3710lc (com.ironsource.lc)
.class public final Lcom/ironsource/lc;
.super Lcom/ironsource/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/lc$a;
    }
.end annotation


# static fields
.field public static final z:Lcom/ironsource/lc$a;


# instance fields
.field private final u:Lcom/ironsource/g0;

.field private final v:Lcom/ironsource/w0;

.field private final w:Lcom/ironsource/Wb;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/lc$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/lc$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/lc;->z:Lcom/ironsource/lc$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;)V
    .registers 25

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "adProperties"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adUnitCommonData"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "configs"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {v0}, Lcom/ironsource/w0;->f()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/w0;->d()Ljava/util/List;

    move-result-object v4

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/w0;->e()Lcom/ironsource/ta;

    move-result-object v5

    .line 4
    invoke-virtual {v2}, Lcom/ironsource/Wb;->d()Lcom/ironsource/A2;

    move-result-object v6

    .line 5
    invoke-virtual {v2}, Lcom/ironsource/Wb;->b()I

    move-result v7

    .line 6
    invoke-virtual {v2}, Lcom/ironsource/Wb;->c()J

    move-result-wide v8

    const/16 v10, 0x3e8

    int-to-long v10, v10

    div-long/2addr v8, v10

    long-to-int v8, v8

    .line 7
    invoke-virtual {v2}, Lcom/ironsource/Wb;->a()Z

    move-result v9

    .line 8
    invoke-virtual {v2}, Lcom/ironsource/Wb;->f()I

    move-result v10

    .line 10
    new-instance v12, Lcom/ironsource/M0;

    move-object v11, v12

    .line 11
    sget-object v12, Lcom/ironsource/M0$a;->a:Lcom/ironsource/M0$a;

    .line 12
    invoke-virtual {v2}, Lcom/ironsource/Wb;->d()Lcom/ironsource/A2;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/A2;->j()J

    move-result-wide v13

    .line 13
    invoke-virtual {v2}, Lcom/ironsource/Wb;->d()Lcom/ironsource/A2;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ironsource/A2;->b()J

    move-result-wide v15

    const-wide/16 v17, -0x1

    .line 14
    invoke-direct/range {v11 .. v18}, Lcom/ironsource/M0;-><init>(Lcom/ironsource/M0$a;JJJ)V

    .line 19
    invoke-virtual {v2}, Lcom/ironsource/Wb;->h()J

    move-result-wide v13

    .line 20
    invoke-virtual {v2}, Lcom/ironsource/Wb;->i()Z

    move-result v15

    .line 21
    invoke-virtual {v2}, Lcom/ironsource/Wb;->k()Z

    move-result v16

    .line 22
    invoke-virtual {v2}, Lcom/ironsource/Wb;->j()Z

    move-result v17

    const/high16 v19, 0x10000

    const/16 v20, 0x0

    const/4 v2, 0x1

    move-object v12, v11

    const/4 v11, -0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    .line 23
    invoke-direct/range {v0 .. v20}, Lcom/ironsource/x0;-><init>(Lcom/ironsource/g0;ZLjava/lang/String;Ljava/util/List;Lcom/ironsource/ta;Lcom/ironsource/A2;IIZIILcom/ironsource/M0;JZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    iput-object v1, v0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    move-object/from16 v1, p2

    .line 25
    iput-object v1, v0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    move-object/from16 v2, p3

    .line 26
    iput-object v2, v0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    .line 49
    const-string v1, "NA"

    iput-object v1, v0, Lcom/ironsource/lc;->x:Ljava/lang/String;

    .line 50
    const-string v1, "MADU_NT"

    iput-object v1, v0, Lcom/ironsource/lc;->y:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/lc;Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;ILjava/lang/Object;)Lcom/ironsource/lc;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    .line 2
    iget-object p1, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/lc;->a(Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;)Lcom/ironsource/lc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/ironsource/w0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    return-object v0
.end method

.method public final B()Lcom/ironsource/Wb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    return-object v0
.end method

.method public final a(Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;)Lcom/ironsource/lc;
    .registers 5

    .line 1
    const-string v0, "adProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitCommonData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/lc;

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/lc;-><init>(Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;)V

    return-object v0
.end method

.method public b()Lcom/ironsource/g0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    return-object v0
.end method

.method public b(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;
    .registers 3

    const-string v0, "providerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getNativeAdSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "getNativeAdSettings(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->x:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/lc;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/lc;

    iget-object v1, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    iget-object v3, p1, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    iget-object v3, p1, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    iget-object p1, p1, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    invoke-virtual {v1}, Lcom/ironsource/w0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->y:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    iget-object v1, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    iget-object v2, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NativeAdUnitData(adProperties="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adUnitCommonData="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", configs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lcom/ironsource/g0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->u:Lcom/ironsource/g0;

    return-object v0
.end method

.method public final y()Lcom/ironsource/w0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->v:Lcom/ironsource/w0;

    return-object v0
.end method

.method public final z()Lcom/ironsource/Wb;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/lc;->w:Lcom/ironsource/Wb;

    return-object v0
.end method

###### Class com.ironsource.C3710lc.a (com.ironsource.lc$a)
.class public final Lcom/ironsource/lc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeAdUnitData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/NativeAdUnitData$Companion\n+ 2 AdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/AdUnitData$Companion\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n46#2,10:61\n56#2,5:75\n1563#3:71\n1634#3,3:72\n*S KotlinDebug\n*F\n+ 1 NativeAdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/NativeAdUnitData$Companion\n*L\n49#1:61,10\n49#1:75,5\n49#1:71\n49#1:72,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/lc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/g0;Lcom/ironsource/ab;)Lcom/ironsource/lc;
    .registers 7

    const-string v0, "adProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/x0;->s:Lcom/ironsource/x0$a;

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 13
    invoke-virtual {p2}, Lcom/ironsource/qe;->d()Lcom/ironsource/Ue;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/ironsource/Ue;->c()Lcom/ironsource/S3;

    move-result-object v1

    goto :goto_16

    :cond_15
    move-object v1, v0

    :goto_16
    if-eqz v1, :cond_1c

    .line 14
    invoke-virtual {v1}, Lcom/ironsource/S3;->e()Lcom/ironsource/Wb;

    move-result-object v0

    :cond_1c
    if-eqz v0, :cond_6d

    if-eqz p2, :cond_2e

    .line 27
    invoke-virtual {p1}, Lcom/ironsource/g0;->e()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {p2, v1, v2}, Lcom/ironsource/ab;->d(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_32

    .line 29
    :cond_2e
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 33
    :cond_32
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->f()Ljava/lang/String;

    move-result-object v1

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 37
    check-cast v3, Lcom/ironsource/Ec;

    .line 38
    invoke-virtual {v3}, Lcom/ironsource/Ec;->f()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v3

    .line 41
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 43
    :cond_59
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object p2

    const-string v3, "getInstance(...)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/ironsource/w0;

    invoke-direct {v3, v1, v2, p2}, Lcom/ironsource/w0;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/ta;)V

    .line 45
    new-instance p2, Lcom/ironsource/lc;

    invoke-direct {p2, p1, v3, v0}, Lcom/ironsource/lc;-><init>(Lcom/ironsource/g0;Lcom/ironsource/w0;Lcom/ironsource/Wb;)V

    return-object p2

    .line 70
    :cond_6d
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " configurations"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
