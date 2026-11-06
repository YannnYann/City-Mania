###### Class com.ironsource.Fb (com.ironsource.Fb)
.class public final Lcom/ironsource/Fb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Fb$a;,
        Lcom/ironsource/Fb$b;,
        Lcom/ironsource/Fb$c;,
        Lcom/ironsource/Fb$d;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadGraceResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadGraceResult.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/load/LoadGraceResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1563#2:79\n1634#2,3:80\n*S KotlinDebug\n*F\n+ 1 LoadGraceResult.kt\ncom/unity3d/mediation/internal/ads/controllers/adunits/waterfall/load/LoadGraceResult\n*L\n46#1:79\n46#1:80,3\n*E\n"
.end annotation


# static fields
.field public static final e:Lcom/ironsource/Fb$a;

.field private static final f:Ljava/lang/String; = "graceDuration"

.field private static final g:Ljava/lang/String; = "graceOutcome"

.field private static final h:Ljava/lang/String; = "heldDuration"

.field private static final i:Ljava/lang/String; = "instances"

.field private static final j:Ljava/lang/String; = "id"

.field private static final k:Ljava/lang/String; = "adNetwork"

.field private static final l:Ljava/lang/String; = "showOrderIndex"

.field private static final m:Ljava/lang/String; = "loadOrderIndex"

.field private static final n:Ljava/lang/String; = "revenue"

.field private static final o:Ljava/lang/String; = "precision"

.field private static final p:Ljava/lang/String; = "status"

.field private static final q:Ljava/lang/String; = "delivered"


# instance fields
.field private final a:J

.field private final b:Lcom/ironsource/Fb$b;

.field private final c:J

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/Fb$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/Fb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Fb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Fb;->e:Lcom/ironsource/Fb$a;

    return-void
.end method

.method public constructor <init>(JLcom/ironsource/Fb$b;JLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ironsource/Fb$b;",
            "J",
            "Ljava/util/List<",
            "Lcom/ironsource/Fb$c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "graceOutcome"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instances"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ironsource/Fb;->a:J

    .line 3
    iput-object p3, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    .line 4
    iput-wide p4, p0, Lcom/ironsource/Fb;->c:J

    .line 5
    iput-object p6, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    return-void
.end method

.method private final a(Lcom/ironsource/Fb$c;)D
    .registers 6

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_36

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->n()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.3f"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_36
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public static synthetic a(Lcom/ironsource/Fb;JLcom/ironsource/Fb$b;JLjava/util/List;ILjava/lang/Object;)Lcom/ironsource/Fb;
    .registers 16

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    .line 3
    iget-wide p1, p0, Lcom/ironsource/Fb;->a:J

    :cond_6
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_d

    iget-object p3, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    :cond_d
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_14

    iget-wide p4, p0, Lcom/ironsource/Fb;->c:J

    :cond_14
    move-wide v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_1b

    iget-object p6, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    :cond_1b
    move-object v0, p0

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ironsource/Fb;->a(JLcom/ironsource/Fb$b;JLjava/util/List;)Lcom/ironsource/Fb;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lcom/ironsource/Fb$c;)Lorg/json/JSONObject;
    .registers 6

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adNetwork"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->o()I

    move-result v1

    const-string v2, "showOrderIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->l()I

    move-result v1

    const-string v2, "loadOrderIndex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/ironsource/Fb;->a(Lcom/ironsource/Fb$c;)D

    move-result-wide v1

    const-string v3, "revenue"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "precision"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->p()Lcom/ironsource/Fb$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/Fb$d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    const-string v1, "delivered"

    invoke-virtual {p1}, Lcom/ironsource/Fb$c;->j()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "put(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->a:J

    return-wide v0
.end method

.method public final a(JLcom/ironsource/Fb$b;JLjava/util/List;)Lcom/ironsource/Fb;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/ironsource/Fb$b;",
            "J",
            "Ljava/util/List<",
            "Lcom/ironsource/Fb$c;",
            ">;)",
            "Lcom/ironsource/Fb;"
        }
    .end annotation

    .line 2
    const-string v0, "graceOutcome"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instances"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/Fb;

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/Fb;-><init>(JLcom/ironsource/Fb$b;JLjava/util/List;)V

    return-object v1
.end method

.method public final b()Lcom/ironsource/Fb$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    return-object v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->c:J

    return-wide v0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/Fb$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/Fb;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/Fb;

    iget-wide v3, p0, Lcom/ironsource/Fb;->a:J

    iget-wide v5, p1, Lcom/ironsource/Fb;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    iget-object v3, p1, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-wide v3, p0, Lcom/ironsource/Fb;->c:J

    iget-wide v5, p1, Lcom/ironsource/Fb;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/ironsource/Fb;->d:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public final f()Lcom/ironsource/Fb$b;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    return-object v0
.end method

.method public final g()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->c:J

    return-wide v0
.end method

.method public final h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/Fb$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/Fb;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/ironsource/Fb;->a:J

    const-string v3, "graceDuration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    invoke-virtual {v1}, Lcom/ironsource/Fb$b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "graceOutcome"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Lcom/ironsource/Fb;->c:J

    const-string v3, "heldDuration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 40
    check-cast v3, Lcom/ironsource/Fb$c;

    .line 41
    invoke-direct {p0, v3}, Lcom/ironsource/Fb;->b(Lcom/ironsource/Fb$c;)Lorg/json/JSONObject;

    move-result-object v3

    .line 76
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 77
    :cond_46
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "instances"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb;->a:J

    iget-object v2, p0, Lcom/ironsource/Fb;->b:Lcom/ironsource/Fb$b;

    iget-wide v3, p0, Lcom/ironsource/Fb;->c:J

    iget-object v5, p0, Lcom/ironsource/Fb;->d:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoadGraceResult(graceDurationMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", graceOutcome="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", heldDurationMs="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", instances="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.Fb.a (com.ironsource.Fb$a)
.class public final Lcom/ironsource/Fb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/ironsource/Fb$a;-><init>()V

    return-void
.end method

###### Class com.ironsource.Fb.b (com.ironsource.Fb$b)
.class public final enum Lcom/ironsource/Fb$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/Fb$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ironsource/Fb$b;

.field public static final enum c:Lcom/ironsource/Fb$b;

.field public static final enum d:Lcom/ironsource/Fb$b;

.field public static final enum e:Lcom/ironsource/Fb$b;

.field public static final enum f:Lcom/ironsource/Fb$b;

.field public static final enum g:Lcom/ironsource/Fb$b;

.field private static final synthetic h:[Lcom/ironsource/Fb$b;

.field private static final synthetic i:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x0

    const-string v2, "not_scheduled"

    const-string v3, "NOT_SCHEDULED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->b:Lcom/ironsource/Fb$b;

    .line 2
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x1

    const-string v2, "best_loaded"

    const-string v3, "BEST_LOADED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->c:Lcom/ironsource/Fb$b;

    .line 3
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x2

    const-string v2, "better_loaded_grace_expired"

    const-string v3, "BETTER_LOADED_GRACE_EXPIRED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->d:Lcom/ironsource/Fb$b;

    .line 4
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x3

    const-string v2, "better_loaded_best_failed"

    const-string v3, "BETTER_LOADED_BEST_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->e:Lcom/ironsource/Fb$b;

    .line 5
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x4

    const-string v2, "initial_loaded_grace_expired"

    const-string v3, "INITIAL_LOADED_GRACE_EXPIRED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->f:Lcom/ironsource/Fb$b;

    .line 6
    new-instance v0, Lcom/ironsource/Fb$b;

    const/4 v1, 0x5

    const-string v2, "initial_loaded_best_failed"

    const-string v3, "INITIAL_LOADED_BEST_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$b;->g:Lcom/ironsource/Fb$b;

    invoke-static {}, Lcom/ironsource/Fb$b;->a()[Lcom/ironsource/Fb$b;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Fb$b;->h:[Lcom/ironsource/Fb$b;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Fb$b;->i:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ironsource/Fb$b;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/ironsource/Fb$b;
    .registers 6

    .line 1
    sget-object v0, Lcom/ironsource/Fb$b;->b:Lcom/ironsource/Fb$b;

    sget-object v1, Lcom/ironsource/Fb$b;->c:Lcom/ironsource/Fb$b;

    sget-object v2, Lcom/ironsource/Fb$b;->d:Lcom/ironsource/Fb$b;

    sget-object v3, Lcom/ironsource/Fb$b;->e:Lcom/ironsource/Fb$b;

    sget-object v4, Lcom/ironsource/Fb$b;->f:Lcom/ironsource/Fb$b;

    sget-object v5, Lcom/ironsource/Fb$b;->g:Lcom/ironsource/Fb$b;

    filled-new-array/range {v0 .. v5}, [Lcom/ironsource/Fb$b;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/Fb$b;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/ironsource/Fb$b;->i:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/Fb$b;
    .registers 2

    const-class v0, Lcom/ironsource/Fb$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/Fb$b;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/Fb$b;
    .registers 1

    sget-object v0, Lcom/ironsource/Fb$b;->h:[Lcom/ironsource/Fb$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/Fb$b;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$b;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class com.ironsource.Fb.c (com.ironsource.Fb$c)
.class public final Lcom/ironsource/Fb$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:D

.field private final f:Ljava/lang/String;

.field private final g:Lcom/ironsource/Fb$d;

.field private final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIDLjava/lang/String;Lcom/ironsource/Fb$d;Z)V
    .registers 11

    const-string v0, "instanceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "precision"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Fb$c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Fb$c;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/ironsource/Fb$c;->c:I

    .line 5
    iput p4, p0, Lcom/ironsource/Fb$c;->d:I

    .line 6
    iput-wide p5, p0, Lcom/ironsource/Fb$c;->e:D

    .line 7
    iput-object p7, p0, Lcom/ironsource/Fb$c;->f:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/ironsource/Fb$c;->g:Lcom/ironsource/Fb$d;

    .line 9
    iput-boolean p9, p0, Lcom/ironsource/Fb$c;->h:Z

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Fb$c;Ljava/lang/String;Ljava/lang/String;IIDLjava/lang/String;Lcom/ironsource/Fb$d;ZILjava/lang/Object;)Lcom/ironsource/Fb$c;
    .registers 12

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_6

    .line 3
    iget-object p1, p0, Lcom/ironsource/Fb$c;->a:Ljava/lang/String;

    :cond_6
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_c

    iget-object p2, p0, Lcom/ironsource/Fb$c;->b:Ljava/lang/String;

    :cond_c
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_12

    iget p3, p0, Lcom/ironsource/Fb$c;->c:I

    :cond_12
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_18

    iget p4, p0, Lcom/ironsource/Fb$c;->d:I

    :cond_18
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1e

    iget-wide p5, p0, Lcom/ironsource/Fb$c;->e:D

    :cond_1e
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_24

    iget-object p7, p0, Lcom/ironsource/Fb$c;->f:Ljava/lang/String;

    :cond_24
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_2a

    iget-object p8, p0, Lcom/ironsource/Fb$c;->g:Lcom/ironsource/Fb$d;

    :cond_2a
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_30

    iget-boolean p9, p0, Lcom/ironsource/Fb$c;->h:Z

    :cond_30
    move-object p10, p8

    move p11, p9

    move-object p9, p7

    move-wide p7, p5

    move p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p11}, Lcom/ironsource/Fb$c;->a(Ljava/lang/String;Ljava/lang/String;IIDLjava/lang/String;Lcom/ironsource/Fb$d;Z)Lcom/ironsource/Fb$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;IIDLjava/lang/String;Lcom/ironsource/Fb$d;Z)Lcom/ironsource/Fb$c;
    .registers 21

    .line 2
    const-string v0, "instanceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "precision"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/ironsource/Fb$c;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/ironsource/Fb$c;-><init>(Ljava/lang/String;Ljava/lang/String;IIDLjava/lang/String;Lcom/ironsource/Fb$d;Z)V

    return-object v1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/Fb$c;->c:I

    return v0
.end method

.method public final d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/Fb$c;->d:I

    return v0
.end method

.method public final e()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb$c;->e:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/Fb$c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/Fb$c;

    iget-object v1, p0, Lcom/ironsource/Fb$c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/Fb$c;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/ironsource/Fb$c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/Fb$c;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/ironsource/Fb$c;->c:I

    iget v3, p1, Lcom/ironsource/Fb$c;->c:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lcom/ironsource/Fb$c;->d:I

    iget v3, p1, Lcom/ironsource/Fb$c;->d:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-wide v3, p0, Lcom/ironsource/Fb$c;->e:D

    iget-wide v5, p1, Lcom/ironsource/Fb$c;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lcom/ironsource/Fb$c;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/Fb$c;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object v1, p0, Lcom/ironsource/Fb$c;->g:Lcom/ironsource/Fb$d;

    iget-object v3, p1, Lcom/ironsource/Fb$c;->g:Lcom/ironsource/Fb$d;

    if-eq v1, v3, :cond_4d

    return v2

    :cond_4d
    iget-boolean v1, p0, Lcom/ironsource/Fb$c;->h:Z

    iget-boolean p1, p1, Lcom/ironsource/Fb$c;->h:Z

    if-eq v1, p1, :cond_54

    return v2

    :cond_54
    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/ironsource/Fb$d;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$c;->g:Lcom/ironsource/Fb$d;

    return-object v0
.end method

.method public final h()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Fb$c;->h:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/Fb$c;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ironsource/Fb$c;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ironsource/Fb$c;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/Fb$c;->e:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/Fb$c;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/Fb$c;->g:Lcom/ironsource/Fb$d;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ironsource/Fb$c;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Fb$c;->h:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/Fb$c;->d:I

    return v0
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final n()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Fb$c;->e:D

    return-wide v0
.end method

.method public final o()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/Fb$c;->c:I

    return v0
.end method

.method public final p()Lcom/ironsource/Fb$d;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$c;->g:Lcom/ironsource/Fb$d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/Fb$c;->b:Ljava/lang/String;

    iget v2, p0, Lcom/ironsource/Fb$c;->c:I

    iget v3, p0, Lcom/ironsource/Fb$c;->d:I

    iget-wide v4, p0, Lcom/ironsource/Fb$c;->e:D

    iget-object v6, p0, Lcom/ironsource/Fb$c;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/ironsource/Fb$c;->g:Lcom/ironsource/Fb$d;

    iget-boolean v8, p0, Lcom/ironsource/Fb$c;->h:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "InstanceState(instanceId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adNetwork="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", showOrderIndex="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", loadOrderIndex="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", revenue="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", precision="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", delivered="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.Fb.d (com.ironsource.Fb$d)
.class public final enum Lcom/ironsource/Fb$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/Fb$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/ironsource/Fb$d;

.field public static final enum c:Lcom/ironsource/Fb$d;

.field public static final enum d:Lcom/ironsource/Fb$d;

.field public static final enum e:Lcom/ironsource/Fb$d;

.field private static final synthetic f:[Lcom/ironsource/Fb$d;

.field private static final synthetic g:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/Fb$d;

    const/4 v1, 0x0

    const-string v2, "loading"

    const-string v3, "LOADING"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$d;->b:Lcom/ironsource/Fb$d;

    .line 2
    new-instance v0, Lcom/ironsource/Fb$d;

    const/4 v1, 0x1

    const-string v2, "loaded"

    const-string v3, "LOADED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$d;->c:Lcom/ironsource/Fb$d;

    .line 3
    new-instance v0, Lcom/ironsource/Fb$d;

    const/4 v1, 0x2

    const-string v2, "failed"

    const-string v3, "FAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$d;->d:Lcom/ironsource/Fb$d;

    .line 4
    new-instance v0, Lcom/ironsource/Fb$d;

    const/4 v1, 0x3

    const-string v2, "timedOut"

    const-string v3, "TIMED_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/Fb$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/Fb$d;->e:Lcom/ironsource/Fb$d;

    invoke-static {}, Lcom/ironsource/Fb$d;->a()[Lcom/ironsource/Fb$d;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Fb$d;->f:[Lcom/ironsource/Fb$d;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Fb$d;->g:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ironsource/Fb$d;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lcom/ironsource/Fb$d;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/Fb$d;->b:Lcom/ironsource/Fb$d;

    sget-object v1, Lcom/ironsource/Fb$d;->c:Lcom/ironsource/Fb$d;

    sget-object v2, Lcom/ironsource/Fb$d;->d:Lcom/ironsource/Fb$d;

    sget-object v3, Lcom/ironsource/Fb$d;->e:Lcom/ironsource/Fb$d;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/Fb$d;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/Fb$d;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/ironsource/Fb$d;->g:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/Fb$d;
    .registers 2

    const-class v0, Lcom/ironsource/Fb$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/Fb$d;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/Fb$d;
    .registers 1

    sget-object v0, Lcom/ironsource/Fb$d;->f:[Lcom/ironsource/Fb$d;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/Fb$d;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Fb$d;->a:Ljava/lang/String;

    return-object v0
.end method
