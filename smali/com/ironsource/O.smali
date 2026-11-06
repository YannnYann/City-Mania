###### Class com.ironsource.O (com.ironsource.O)
.class public final Lcom/ironsource/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/O$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/ironsource/O$a;

.field public static final g:Ljava/lang/String; = "0"

.field public static final h:Ljava/lang/String; = "0"

.field public static final i:Ljava/lang/String; = "0"

.field public static final j:Ljava/lang/String; = "0"


# instance fields
.field private final a:Lcom/ironsource/R9;

.field private b:Lcom/ironsource/W7;

.field private c:Ljava/lang/String;

.field private d:Lcom/ironsource/o0;

.field private e:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/O$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/O$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/O;->f:Lcom/ironsource/O$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/R9;)V
    .registers 6

    const-string v0, "adInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/O;->a:Lcom/ironsource/R9;

    .line 9
    sget-object p1, Lcom/ironsource/W7;->c:Lcom/ironsource/W7;

    iput-object p1, p0, Lcom/ironsource/O;->b:Lcom/ironsource/W7;

    .line 10
    const-string p1, "0"

    iput-object p1, p0, Lcom/ironsource/O;->c:Ljava/lang/String;

    .line 11
    sget-object p1, Lcom/ironsource/o0;->a:Lcom/ironsource/o0;

    iput-object p1, p0, Lcom/ironsource/O;->d:Lcom/ironsource/o0;

    .line 12
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ironsource/O;->e:D

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/O;Lcom/ironsource/R9;ILjava/lang/Object;)Lcom/ironsource/O;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 3
    iget-object p1, p0, Lcom/ironsource/O;->a:Lcom/ironsource/R9;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ironsource/O;->a(Lcom/ironsource/R9;)Lcom/ironsource/O;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/R9;)Lcom/ironsource/O;
    .registers 3

    .line 2
    const-string v0, "adInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/O;

    invoke-direct {v0, p1}, Lcom/ironsource/O;-><init>(Lcom/ironsource/R9;)V

    return-object v0
.end method

.method public final a()Lcom/ironsource/R9;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O;->a:Lcom/ironsource/R9;

    return-object v0
.end method

.method public final a(D)V
    .registers 3

    .line 7
    iput-wide p1, p0, Lcom/ironsource/O;->e:D

    return-void
.end method

.method public final a(Lcom/ironsource/W7;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/ironsource/O;->b:Lcom/ironsource/W7;

    return-void
.end method

.method public final a(Lcom/ironsource/o0;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/ironsource/O;->d:Lcom/ironsource/o0;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/ironsource/O;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/ironsource/mediationsdk/IronSource$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O;->a:Lcom/ironsource/R9;

    invoke-virtual {v0}, Lcom/ironsource/R9;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object v0

    .line 2
    :cond_b
    iget-object v0, p0, Lcom/ironsource/O;->a:Lcom/ironsource/R9;

    invoke-virtual {v0}, Lcom/ironsource/R9;->n()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object v0

    .line 3
    :cond_16
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/O;->a:Lcom/ironsource/R9;

    invoke-virtual {v0}, Lcom/ironsource/R9;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lcom/ironsource/R9;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O;->a:Lcom/ironsource/R9;

    return-object v0
.end method

.method public final e()Lcom/ironsource/W7;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O;->b:Lcom/ironsource/W7;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/O;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 3
    :cond_a
    invoke-virtual {p0}, Lcom/ironsource/O;->c()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/ironsource/O;

    invoke-virtual {p1}, Lcom/ironsource/O;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/O;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/O;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 5
    invoke-virtual {p0}, Lcom/ironsource/O;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/O;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v3

    if-ne v1, v3, :cond_57

    .line 6
    invoke-virtual {p0}, Lcom/ironsource/O;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/O;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 7
    iget-object v1, p0, Lcom/ironsource/O;->b:Lcom/ironsource/W7;

    iget-object v3, p1, Lcom/ironsource/O;->b:Lcom/ironsource/W7;

    if-ne v1, v3, :cond_57

    .line 8
    iget-object v1, p0, Lcom/ironsource/O;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/O;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 9
    iget-object v1, p0, Lcom/ironsource/O;->d:Lcom/ironsource/o0;

    iget-object p1, p1, Lcom/ironsource/O;->d:Lcom/ironsource/o0;

    if-ne v1, p1, :cond_57

    return v0

    :cond_57
    return v2
.end method

.method public final f()Lcom/ironsource/o0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O;->d:Lcom/ironsource/o0;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O;->a:Lcom/ironsource/R9;

    invoke-virtual {v0}, Lcom/ironsource/R9;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "0"

    :cond_a
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/O;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/O;->g()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/ironsource/O;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/O;->i()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/ironsource/O;->b:Lcom/ironsource/W7;

    .line 6
    iget-object v5, p0, Lcom/ironsource/O;->c:Ljava/lang/String;

    .line 7
    iget-object v6, p0, Lcom/ironsource/O;->d:Lcom/ironsource/o0;

    .line 8
    iget-wide v7, p0, Lcom/ironsource/O;->e:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/O;->a:Lcom/ironsource/R9;

    invoke-virtual {v0}, Lcom/ironsource/R9;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final j()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/O;->e:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/O;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ironsource/O;->c:Ljava/lang/String;

    const-string v2, "advertiserBundleId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/ironsource/O;->b:Lcom/ironsource/W7;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "adProvider"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ironsource/O;->d:Lcom/ironsource/o0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "adStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    iget-wide v1, p0, Lcom/ironsource/O;->e:D

    double-to-long v1, v1

    const-string v3, "lastStatusUpdateTimeStamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/ironsource/O;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adUnitId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/ironsource/O;->b()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSource$a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adFormat"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/ironsource/O;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "instanceId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.ironsource.O.a (com.ironsource.O$a)
.class public final Lcom/ironsource/O$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/O;
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
    invoke-direct {p0}, Lcom/ironsource/O$a;-><init>()V

    return-void
.end method
