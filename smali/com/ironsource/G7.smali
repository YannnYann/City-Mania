###### Class com.ironsource.G7 (com.ironsource.G7)
.class public interface abstract Lcom/ironsource/G7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/G7$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/ironsource/G7$a;)V
.end method

###### Class com.ironsource.G7.a (com.ironsource.G7$a)
.class public Lcom/ironsource/G7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/G7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/G7$a;->b:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/ironsource/G7$a;->c:I

    .line 7
    iput-object p1, p0, Lcom/ironsource/G7$a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;IZLjava/lang/Exception;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;IZ",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/ironsource/G7$a;->a:Ljava/util/ArrayList;

    .line 10
    iput-boolean p3, p0, Lcom/ironsource/G7$a;->b:Z

    .line 11
    iput-object p4, p0, Lcom/ironsource/G7$a;->d:Ljava/lang/Exception;

    .line 12
    iput p2, p0, Lcom/ironsource/G7$a;->c:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ironsource/G7$a;
    .registers 6

    .line 3
    new-instance v0, Lcom/ironsource/G7$a;

    iget-object v1, p0, Lcom/ironsource/G7$a;->a:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/ironsource/G7$a;->b:Z

    iget-object v3, p0, Lcom/ironsource/G7$a;->d:Ljava/lang/Exception;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/ironsource/G7$a;-><init>(Ljava/util/ArrayList;IZLjava/lang/Exception;)V

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)Lcom/ironsource/G7$a;
    .registers 6

    .line 1
    new-instance v0, Lcom/ironsource/G7$a;

    iget-object v1, p0, Lcom/ironsource/G7$a;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ironsource/G7$a;->c:I

    iget-boolean v3, p0, Lcom/ironsource/G7$a;->b:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/ironsource/G7$a;-><init>(Ljava/util/ArrayList;IZLjava/lang/Exception;)V

    return-object v0
.end method

.method public a(Z)Lcom/ironsource/G7$a;
    .registers 6

    .line 2
    new-instance v0, Lcom/ironsource/G7$a;

    iget-object v1, p0, Lcom/ironsource/G7$a;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/ironsource/G7$a;->c:I

    iget-object v3, p0, Lcom/ironsource/G7$a;->d:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/ironsource/G7$a;-><init>(Ljava/util/ArrayList;IZLjava/lang/Exception;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .line 4
    iget-boolean v0, p0, Lcom/ironsource/G7$a;->b:Z

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ironsource/G7$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/G7$a;->d:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    const-string v0, ""

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/C5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/G7$a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/G7$a;->b:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventSendResult{success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ironsource/G7$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ironsource/G7$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/G7$a;->d:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
