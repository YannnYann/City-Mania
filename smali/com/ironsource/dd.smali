###### Class com.ironsource.C3568dd (com.ironsource.dd)
.class public final Lcom/ironsource/dd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Lcom/ironsource/M3;


# direct methods
.method public constructor <init>(JLcom/ironsource/M3;)V
    .registers 5

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ironsource/dd;->a:J

    .line 3
    iput-object p3, p0, Lcom/ironsource/dd;->b:Lcom/ironsource/M3;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/ironsource/M3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    .line 4
    sget-object p3, Lcom/ironsource/M3;->f:Lcom/ironsource/M3;

    .line 5
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/dd;-><init>(JLcom/ironsource/M3;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/dd;->a:J

    return-wide v0
.end method

.method public final b()Lcom/ironsource/M3;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/dd;->b:Lcom/ironsource/M3;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/ironsource/dd;->a:J

    iget-object v2, p0, Lcom/ironsource/dd;->b:Lcom/ironsource/M3;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PacingCappingConfig(timeInterval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " unit="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
