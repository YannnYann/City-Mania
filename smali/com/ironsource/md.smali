###### Class com.ironsource.C3729md (com.ironsource.md)
.class public final Lcom/ironsource/md;
.super Lcom/ironsource/t3;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;ILcom/ironsource/nd;)V
    .registers 8

    const-string v0, "placementName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/ironsource/t3;-><init>(ILjava/lang/String;ZLcom/ironsource/nd;)V

    .line 2
    iput p5, p0, Lcom/ironsource/md;->f:I

    .line 3
    iput-object p4, p0, Lcom/ironsource/md;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/t3;)V
    .registers 5

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/ironsource/t3;->b()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/t3;->d()Z

    move-result v2

    .line 7
    invoke-virtual {p1}, Lcom/ironsource/t3;->a()Lcom/ironsource/nd;

    move-result-object p1

    .line 8
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/ironsource/t3;-><init>(ILjava/lang/String;ZLcom/ironsource/nd;)V

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lcom/ironsource/md;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/md;->f:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/md;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/ironsource/t3;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/md;->e:Ljava/lang/String;

    iget v2, p0, Lcom/ironsource/md;->f:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reward name: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , amount: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
