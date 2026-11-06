###### Class com.ironsource.J9 (com.ironsource.J9)
.class public final Lcom/ironsource/J9;
.super Lcom/ironsource/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/J9$a;
    }
.end annotation


# static fields
.field public static final A:Lcom/ironsource/J9$a;


# instance fields
.field private final u:Lcom/ironsource/g0;

.field private final v:Z

.field private final w:Lcom/ironsource/w0;

.field private final x:Lcom/ironsource/L9;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/J9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/J9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/J9;->A:Lcom/ironsource/J9$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/g0;ZLcom/ironsource/w0;Lcom/ironsource/L9;)V
    .registers 26

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    move-object/from16 v2, p4

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
    invoke-virtual {v2}, Lcom/ironsource/L9;->g()Lcom/ironsource/A2;

    move-result-object v6

    const-string v7, "getInterstitialAuctionSettings(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lcom/ironsource/L9;->c()I

    move-result v7

    .line 6
    invoke-virtual {v2}, Lcom/ironsource/L9;->d()I

    move-result v8

    .line 7
    invoke-virtual {v2}, Lcom/ironsource/L9;->f()Z

    move-result v9

    .line 8
    invoke-virtual {v2}, Lcom/ironsource/L9;->b()I

    move-result v10

    .line 10
    new-instance v11, Lcom/ironsource/M0;

    .line 11
    sget-object v12, Lcom/ironsource/M0$a;->a:Lcom/ironsource/M0$a;

    .line 12
    invoke-virtual {v2}, Lcom/ironsource/L9;->g()Lcom/ironsource/A2;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/A2;->j()J

    move-result-wide v13

    .line 13
    invoke-virtual {v2}, Lcom/ironsource/L9;->g()Lcom/ironsource/A2;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ironsource/A2;->b()J

    move-result-wide v15

    const-wide/16 v17, -0x1

    .line 14
    invoke-direct/range {v11 .. v18}, Lcom/ironsource/M0;-><init>(Lcom/ironsource/M0$a;JJJ)V

    .line 19
    invoke-virtual {v2}, Lcom/ironsource/L9;->h()J

    move-result-wide v13

    .line 20
    invoke-virtual {v2}, Lcom/ironsource/L9;->k()Z

    move-result v15

    .line 21
    invoke-virtual {v2}, Lcom/ironsource/L9;->m()Z

    move-result v16

    .line 22
    invoke-virtual {v2}, Lcom/ironsource/L9;->l()Z

    move-result v17

    const/high16 v19, 0x10000

    const/16 v20, 0x0

    move-object v12, v11

    const/4 v11, -0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    .line 23
    invoke-direct/range {v0 .. v20}, Lcom/ironsource/x0;-><init>(Lcom/ironsource/g0;ZLjava/lang/String;Ljava/util/List;Lcom/ironsource/ta;Lcom/ironsource/A2;IIZIILcom/ironsource/M0;JZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    iput-object v1, v0, Lcom/ironsource/J9;->u:Lcom/ironsource/g0;

    .line 25
    iput-boolean v2, v0, Lcom/ironsource/J9;->v:Z

    move-object/from16 v1, p3

    .line 26
    iput-object v1, v0, Lcom/ironsource/J9;->w:Lcom/ironsource/w0;

    move-object/from16 v2, p4

    .line 27
    iput-object v2, v0, Lcom/ironsource/J9;->x:Lcom/ironsource/L9;

    .line 51
    const-string v1, "IS"

    iput-object v1, v0, Lcom/ironsource/J9;->y:Ljava/lang/String;

    .line 52
    const-string v1, "MADU_IS"

    iput-object v1, v0, Lcom/ironsource/J9;->z:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/J9;Lcom/ironsource/g0;ZLcom/ironsource/w0;Lcom/ironsource/L9;ILjava/lang/Object;)Lcom/ironsource/J9;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    .line 2
    iget-object p1, p0, Lcom/ironsource/J9;->u:Lcom/ironsource/g0;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-boolean p2, p0, Lcom/ironsource/J9;->v:Z

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/ironsource/J9;->w:Lcom/ironsource/w0;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/ironsource/J9;->x:Lcom/ironsource/L9;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/J9;->a(Lcom/ironsource/g0;ZLcom/ironsource/w0;Lcom/ironsource/L9;)Lcom/ironsource/J9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/ironsource/L9;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J9;->x:Lcom/ironsource/L9;

    return-object v0
.end method

.method public final B()Lcom/ironsource/w0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J9;->w:Lcom/ironsource/w0;

    return-object v0
.end method

.method public final C()Lcom/ironsource/L9;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J9;->x:Lcom/ironsource/L9;

    return-object v0
.end method

.method public final a(Lcom/ironsource/g0;ZLcom/ironsource/w0;Lcom/ironsource/L9;)Lcom/ironsource/J9;
    .registers 6

    .line 1
    const-string v0, "adProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitCommonData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configs"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/J9;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ironsource/J9;-><init>(Lcom/ironsource/g0;ZLcom/ironsource/w0;Lcom/ironsource/L9;)V

    return-object v0
.end method

.method public b()Lcom/ironsource/g0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J9;->u:Lcom/ironsource/g0;

    return-object v0
.end method

.method public b(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lorg/json/JSONObject;
    .registers 3

    const-string v0, "providerSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "getInterstitialSettings(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J9;->y:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/J9;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/J9;

    iget-object v1, p0, Lcom/ironsource/J9;->u:Lcom/ironsource/g0;

    iget-object v3, p1, Lcom/ironsource/J9;->u:Lcom/ironsource/g0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/ironsource/J9;->v:Z

    iget-boolean v3, p1, Lcom/ironsource/J9;->v:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/ironsource/J9;->w:Lcom/ironsource/w0;

    iget-object v3, p1, Lcom/ironsource/J9;->w:Lcom/ironsource/w0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/ironsource/J9;->x:Lcom/ironsource/L9;

    iget-object p1, p1, Lcom/ironsource/J9;->x:Lcom/ironsource/L9;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/J9;->u:Lcom/ironsource/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ironsource/J9;->v:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/J9;->w:Lcom/ironsource/w0;

    invoke-virtual {v1}, Lcom/ironsource/w0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/J9;->x:Lcom/ironsource/L9;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J9;->z:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/J9;->u:Lcom/ironsource/g0;

    iget-boolean v1, p0, Lcom/ironsource/J9;->v:Z

    iget-object v2, p0, Lcom/ironsource/J9;->w:Lcom/ironsource/w0;

    iget-object v3, p0, Lcom/ironsource/J9;->x:Lcom/ironsource/L9;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InterstitialAdUnitData(adProperties="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isPublisherLoad="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", adUnitCommonData="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", configs="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/J9;->v:Z

    return v0
.end method

.method public final x()Lcom/ironsource/g0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J9;->u:Lcom/ironsource/g0;

    return-object v0
.end method

.method public final y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/J9;->v:Z

    return v0
.end method

.method public final z()Lcom/ironsource/w0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/J9;->w:Lcom/ironsource/w0;

    return-object v0
.end method

###### Class com.ironsource.J9.a (com.ironsource.J9$a)
.class public final Lcom/ironsource/J9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/J9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInterstitialAdUnitData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InterstitialAdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/InterstitialAdUnitData$Companion\n+ 2 AdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/AdUnitData$Companion\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n46#2,10:65\n56#2,5:79\n1563#3:75\n1634#3,3:76\n*S KotlinDebug\n*F\n+ 1 InterstitialAdUnitData.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/data/InterstitialAdUnitData$Companion\n*L\n52#1:65,10\n52#1:79,5\n52#1:75\n52#1:76,3\n*E\n"
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
    invoke-direct {p0}, Lcom/ironsource/J9$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/g0;Lcom/ironsource/ab;Z)Lcom/ironsource/J9;
    .registers 8

    const-string v0, "adProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/x0;->s:Lcom/ironsource/x0$a;

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 14
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

    .line 15
    invoke-virtual {v1}, Lcom/ironsource/S3;->d()Lcom/ironsource/L9;

    move-result-object v0

    :cond_1c
    if-eqz v0, :cond_6d

    if-eqz p2, :cond_2e

    .line 29
    invoke-virtual {p1}, Lcom/ironsource/g0;->e()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {p2, v1, v2}, Lcom/ironsource/ab;->d(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_32

    .line 31
    :cond_2e
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 35
    :cond_32
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->f()Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_45
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 39
    check-cast v3, Lcom/ironsource/Ec;

    .line 40
    invoke-virtual {v3}, Lcom/ironsource/Ec;->f()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v3

    .line 43
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 45
    :cond_59
    invoke-static {}, Lcom/ironsource/ta;->b()Lcom/ironsource/ta;

    move-result-object p2

    const-string v3, "getInstance(...)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v3, Lcom/ironsource/w0;

    invoke-direct {v3, v1, v2, p2}, Lcom/ironsource/w0;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/ta;)V

    .line 47
    new-instance p2, Lcom/ironsource/J9;

    invoke-direct {p2, p1, p3, v3, v0}, Lcom/ironsource/J9;-><init>(Lcom/ironsource/g0;ZLcom/ironsource/w0;Lcom/ironsource/L9;)V

    return-object p2

    .line 73
    :cond_6d
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error getting "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " configurations"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
