###### Class com.ironsource.C3916wf (com.ironsource.wf)
.class public final Lcom/ironsource/wf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/t7;
.implements Lcom/ironsource/t7$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/wf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShowCountHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowCountHandler.kt\ncom/ironsource/services/capping/showcount/ShowCountHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1#2:83\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/t4;

.field private final b:Lcom/ironsource/U8;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/tf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/t4;Lcom/ironsource/U8;)V
    .registers 4

    const-string v0, "currentTimeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceDataRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/wf;->a:Lcom/ironsource/t4;

    .line 3
    iput-object p2, p0, Lcom/ironsource/wf;->b:Lcom/ironsource/U8;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/ironsource/wf;->c:Ljava/util/Map;

    return-void
.end method

.method private final a(Lcom/ironsource/tf;Ljava/lang/String;)Z
    .registers 7

    .line 8
    invoke-direct {p0, p2}, Lcom/ironsource/wf;->c(Ljava/lang/String;)Lcom/ironsource/wf$a;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/ironsource/wf$a;->f()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 11
    invoke-virtual {p2}, Lcom/ironsource/wf$a;->d()I

    move-result p2

    invoke-virtual {p1}, Lcom/ironsource/tf;->a()I

    move-result p1

    if-lt p2, p1, :cond_25

    .line 12
    iget-object p1, p0, Lcom/ironsource/wf;->a:Lcom/ironsource/t4;

    invoke-interface {p1}, Lcom/ironsource/t4;->a()J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-gez p1, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    return v1
.end method

.method private final c(Ljava/lang/String;)Lcom/ironsource/wf$a;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/wf;->a:Lcom/ironsource/t4;

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/ironsource/wf;->b:Lcom/ironsource/U8;

    invoke-interface {v2, p1}, Lcom/ironsource/U8;->a(Ljava/lang/String;)I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/ironsource/wf;->b:Lcom/ironsource/U8;

    invoke-interface {v3, p1}, Lcom/ironsource/U8;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 4
    new-instance v3, Lcom/ironsource/wf$a;

    invoke-direct {v3, v2, v0, v1, p1}, Lcom/ironsource/wf$a;-><init>(IJLjava/lang/Long;)V

    return-object v3
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ironsource/L3;
    .registers 6

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/wf;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/tf;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_18

    new-instance p1, Lcom/ironsource/L3;

    invoke-direct {p1, v2, v3, v1, v3}, Lcom/ironsource/L3;-><init>(ZLcom/ironsource/N3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 4
    :cond_18
    invoke-direct {p0, v0, p1}, Lcom/ironsource/wf;->a(Lcom/ironsource/tf;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 5
    new-instance p1, Lcom/ironsource/L3;

    sget-object v0, Lcom/ironsource/N3;->b:Lcom/ironsource/N3;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lcom/ironsource/L3;-><init>(ZLcom/ironsource/N3;)V

    return-object p1

    .line 7
    :cond_27
    new-instance p1, Lcom/ironsource/L3;

    invoke-direct {p1, v2, v3, v1, v3}, Lcom/ironsource/L3;-><init>(ZLcom/ironsource/N3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/ironsource/N3;Lcom/ironsource/r7;)Ljava/lang/Object;
    .registers 5

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cappingType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "cappingConfig"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p3}, Lcom/ironsource/r7;->c()Ljava/lang/Object;

    move-result-object p2

    .line 14
    invoke-static {p2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_29

    check-cast p2, Lcom/ironsource/tf;

    if-eqz p2, :cond_22

    .line 15
    iget-object p3, p0, Lcom/ironsource/wf;->c:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_22
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18
    :cond_29
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :cond_38
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/tf;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/wf;->c:Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 10

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/wf;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/tf;

    if-nez v0, :cond_10

    return-void

    .line 3
    :cond_10
    invoke-direct {p0, p1}, Lcom/ironsource/wf;->c(Ljava/lang/String;)Lcom/ironsource/wf$a;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/ironsource/wf$a;->d()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_30

    .line 7
    invoke-virtual {v1}, Lcom/ironsource/wf$a;->e()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/ironsource/wf$a;->f()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2c

    :cond_2a
    const-wide/16 v6, 0x0

    :goto_2c
    cmp-long v2, v4, v6

    if-ltz v2, :cond_47

    .line 9
    :cond_30
    invoke-virtual {v1}, Lcom/ironsource/wf$a;->e()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/ironsource/tf;->b()Lcom/ironsource/M3;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v3, v2}, Lcom/ironsource/M3;->a(Lcom/ironsource/M3;Ljava/lang/Integer;ILjava/lang/Object;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 10
    iget-object v0, p0, Lcom/ironsource/wf;->b:Lcom/ironsource/U8;

    invoke-interface {v0, v4, v5, p1}, Lcom/ironsource/U8;->a(JLjava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v1, v0}, Lcom/ironsource/wf$a;->a(I)V

    .line 15
    :cond_47
    invoke-virtual {v1}, Lcom/ironsource/wf$a;->d()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/ironsource/wf$a;->a(I)V

    .line 16
    iget-object v0, p0, Lcom/ironsource/wf;->b:Lcom/ironsource/U8;

    invoke-virtual {v1}, Lcom/ironsource/wf$a;->d()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/U8;->a(ILjava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.C3916wf.a (com.ironsource.wf$a)
.class public final Lcom/ironsource/wf$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/wf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(IJLjava/lang/Long;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ironsource/wf$a;->a:I

    .line 3
    iput-wide p2, p0, Lcom/ironsource/wf$a;->b:J

    .line 4
    iput-object p4, p0, Lcom/ironsource/wf$a;->c:Ljava/lang/Long;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/wf$a;IJLjava/lang/Long;ILjava/lang/Object;)Lcom/ironsource/wf$a;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    .line 3
    iget p1, p0, Lcom/ironsource/wf$a;->a:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-wide p2, p0, Lcom/ironsource/wf$a;->b:J

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    iget-object p4, p0, Lcom/ironsource/wf$a;->c:Ljava/lang/Long;

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/wf$a;->a(IJLjava/lang/Long;)Lcom/ironsource/wf$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/wf$a;->a:I

    return v0
.end method

.method public final a(IJLjava/lang/Long;)Lcom/ironsource/wf$a;
    .registers 6

    .line 2
    new-instance v0, Lcom/ironsource/wf$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ironsource/wf$a;-><init>(IJLjava/lang/Long;)V

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    .line 4
    iput p1, p0, Lcom/ironsource/wf$a;->a:I

    return-void
.end method

.method public final a(J)V
    .registers 3

    .line 5
    iput-wide p1, p0, Lcom/ironsource/wf$a;->b:J

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/ironsource/wf$a;->c:Ljava/lang/Long;

    return-void
.end method

.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/wf$a;->b:J

    return-wide v0
.end method

.method public final c()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/wf$a;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public final d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/wf$a;->a:I

    return v0
.end method

.method public final e()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/wf$a;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/wf$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/wf$a;

    iget v1, p0, Lcom/ironsource/wf$a;->a:I

    iget v3, p1, Lcom/ironsource/wf$a;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/ironsource/wf$a;->b:J

    iget-wide v5, p1, Lcom/ironsource/wf$a;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/ironsource/wf$a;->c:Ljava/lang/Long;

    iget-object p1, p1, Lcom/ironsource/wf$a;->c:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    return v2

    :cond_27
    return v0
.end method

.method public final f()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/wf$a;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lcom/ironsource/wf$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/wf$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/wf$a;->c:Ljava/lang/Long;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget v0, p0, Lcom/ironsource/wf$a;->a:I

    iget-wide v1, p0, Lcom/ironsource/wf$a;->b:J

    iget-object v3, p0, Lcom/ironsource/wf$a;->c:Ljava/lang/Long;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ShowCountCappingInfo(currentNumberOfShows="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", currentTime="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", currentTimeThreshold="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
