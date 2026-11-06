###### Class com.ironsource.C5 (com.ironsource.C5)
.class public Lcom/ironsource/C5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final e:Ljava/lang/String; = "euid"

.field static final f:Ljava/lang/String; = "esat"

.field static final g:Ljava/lang/String; = "esfr"

.field static final h:I = 0x1


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private final d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ironsource/C5;-><init>(IJLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(IJLorg/json/JSONObject;)V
    .registers 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/ironsource/C5;->c:I

    .line 27
    iput p1, p0, Lcom/ironsource/C5;->a:I

    .line 28
    iput-wide p2, p0, Lcom/ironsource/C5;->b:J

    if-nez p4, :cond_11

    .line 30
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :cond_11
    iput-object p4, p0, Lcom/ironsource/C5;->d:Lorg/json/JSONObject;

    .line 32
    const-string p1, "euid"

    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_26

    .line 33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    :cond_26
    const-string p1, "esat"

    invoke-virtual {p4, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 36
    invoke-virtual {p4, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ironsource/C5;->c:I

    return-void

    .line 38
    :cond_35
    iget p2, p0, Lcom/ironsource/C5;->c:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .registers 5

    .line 2
    new-instance v0, Lcom/ironsource/t4$a;

    invoke-direct {v0}, Lcom/ironsource/t4$a;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/t4$a;->a()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/ironsource/C5;-><init>(IJLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/D5;JLorg/json/JSONObject;)V
    .registers 5

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/D5;->c()I

    move-result p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/C5;-><init>(IJLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/D5;->c()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/C5;-><init>(ILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/C5;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 2
    iput p1, p0, Lcom/ironsource/C5;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 8
    const-string v0, "esfr"

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget p1, p0, Lcom/ironsource/C5;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ironsource/C5;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "esat"

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/C5;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    .line 3
    :try_start_4
    iget-object v0, p0, Lcom/ironsource/C5;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    .line 6
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 7
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/C5;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/C5;->a:I

    return v0
.end method

.method public d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/C5;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    return v0

    .line 4
    :cond_f
    check-cast p1, Lcom/ironsource/C5;

    .line 6
    iget v1, p0, Lcom/ironsource/C5;->a:I

    iget v2, p1, Lcom/ironsource/C5;->a:I

    if-ne v1, v2, :cond_31

    iget-wide v1, p0, Lcom/ironsource/C5;->b:J

    iget-wide v3, p1, Lcom/ironsource/C5;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_31

    iget v1, p0, Lcom/ironsource/C5;->c:I

    iget v2, p1, Lcom/ironsource/C5;->c:I

    if-ne v1, v2, :cond_31

    iget-object v1, p0, Lcom/ironsource/C5;->d:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/ironsource/C5;->d:Lorg/json/JSONObject;

    .line 9
    invoke-static {v1, p1}, Lcom/ironsource/Aa;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x1

    return p1

    :cond_31
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lcom/ironsource/C5;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lcom/ironsource/C5;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/ironsource/C5;->d:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lcom/ironsource/C5;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"eventId\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/C5;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"timestamp\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/C5;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lcom/ironsource/C5;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
