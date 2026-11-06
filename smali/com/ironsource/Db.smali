###### Class com.ironsource.Db (com.ironsource.Db)
.class public final Lcom/ironsource/Db;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Db$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/ironsource/Db$a;

.field public static final d:Ljava/lang/String; = "revenue"

.field public static final e:Ljava/lang/String; = "precision"


# instance fields
.field private final a:D

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/Db$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Db$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Db;->c:Lcom/ironsource/Db$a;

    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .registers 5

    const-string v0, "precision"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ironsource/Db;->a:D

    iput-object p3, p0, Lcom/ironsource/Db;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Db;DLjava/lang/String;ILjava/lang/Object;)Lcom/ironsource/Db;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    .line 3
    iget-wide p1, p0, Lcom/ironsource/Db;->a:D

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    iget-object p3, p0, Lcom/ironsource/Db;->b:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/Db;->a(DLjava/lang/String;)Lcom/ironsource/Db;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lorg/json/JSONObject;)Lcom/ironsource/Db;
    .registers 2

    .line 4
    sget-object v0, Lcom/ironsource/Db;->c:Lcom/ironsource/Db$a;

    invoke-virtual {v0, p0}, Lcom/ironsource/Db$a;->a(Lorg/json/JSONObject;)Lcom/ironsource/Db;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Db;->a:D

    return-wide v0
.end method

.method public final a(DLjava/lang/String;)Lcom/ironsource/Db;
    .registers 5

    .line 2
    const-string v0, "precision"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/Db;

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/Db;-><init>(DLjava/lang/String;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Db;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Db;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Db;->a:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/Db;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/Db;

    iget-wide v3, p0, Lcom/ironsource/Db;->a:D

    iget-wide v5, p1, Lcom/ironsource/Db;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/ironsource/Db;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/Db;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Db;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/Db;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Db;->a:D

    iget-object v2, p0, Lcom/ironsource/Db;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadArmData(revenue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", precision="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.Db.a (com.ironsource.Db$a)
.class public final Lcom/ironsource/Db$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Db;
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
    invoke-direct {p0}, Lcom/ironsource/Db$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/ironsource/Db;
    .registers 5

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_5
    const-string v0, "revenue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 2
    const-string v2, "precision"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v2, Lcom/ironsource/Db;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v0, v1, p1}, Lcom/ironsource/Db;-><init>(DLjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1a

    return-object v2

    :catch_1a
    move-exception p1

    .line 5
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p1}, Lcom/ironsource/If;->a(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method
