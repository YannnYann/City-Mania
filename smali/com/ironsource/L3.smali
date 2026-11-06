###### Class com.ironsource.L3 (com.ironsource.L3)
.class public final Lcom/ironsource/L3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/L3$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/ironsource/N3;


# direct methods
.method public constructor <init>(ZLcom/ironsource/N3;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ironsource/L3;->a:Z

    iput-object p2, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/ironsource/N3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 2
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/ironsource/L3;-><init>(ZLcom/ironsource/N3;)V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/L3;ZLcom/ironsource/N3;ILjava/lang/Object;)Lcom/ironsource/L3;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    .line 3
    iget-boolean p1, p0, Lcom/ironsource/L3;->a:Z

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/L3;->a(ZLcom/ironsource/N3;)Lcom/ironsource/L3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ZLcom/ironsource/N3;)Lcom/ironsource/L3;
    .registers 4

    .line 2
    new-instance v0, Lcom/ironsource/L3;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/L3;-><init>(ZLcom/ironsource/N3;)V

    return-object v0
.end method

.method public final a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L3;->a:Z

    return v0
.end method

.method public final b()Lcom/ironsource/N3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    return-object v0
.end method

.method public final c()Lcom/ironsource/N3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L3;->a:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_e

    :cond_6
    sget-object v1, Lcom/ironsource/L3$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_e
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_19
    const-string v0, "Max ad cap reached"

    return-object v0

    .line 5
    :cond_1c
    const-string v0, "In pacing mode"

    return-object v0

    .line 6
    :cond_1f
    const-string v0, "Placement delivery is false"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/L3;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/L3;

    iget-boolean v1, p0, Lcom/ironsource/L3;->a:Z

    iget-boolean v3, p1, Lcom/ironsource/L3;->a:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    iget-object p1, p1, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    if-eq v1, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L3;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/L3;->a:Z

    iget-object v1, p0, Lcom/ironsource/L3;->b:Lcom/ironsource/N3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CappingStatus(isCapped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " reason="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.L3.a (com.ironsource.L3$a)
.class public final synthetic Lcom/ironsource/L3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/L3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/N3;->values()[Lcom/ironsource/N3;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/ironsource/N3;->c:Lcom/ironsource/N3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/ironsource/N3;->a:Lcom/ironsource/N3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/ironsource/N3;->b:Lcom/ironsource/N3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lcom/ironsource/L3$a;->a:[I

    return-void
.end method
