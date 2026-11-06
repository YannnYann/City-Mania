###### Class com.ironsource.InterfaceC3561d7 (com.ironsource.d7)
.class public interface abstract Lcom/ironsource/d7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/d7$a;
    }
.end annotation


# virtual methods
.method public a(Lcom/ironsource/e7;)V
    .registers 3

    .line 0
    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

###### Class com.ironsource.InterfaceC3561d7.a (com.ironsource.d7$a)
.class public final Lcom/ironsource/d7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/d7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/d7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/a7;


# direct methods
.method public constructor <init>(Lcom/ironsource/a7;)V
    .registers 3

    const-string v0, "failure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/d7$a;->a:Lcom/ironsource/a7;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/d7$a;Lcom/ironsource/a7;ILjava/lang/Object;)Lcom/ironsource/d7$a;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 3
    iget-object p1, p0, Lcom/ironsource/d7$a;->a:Lcom/ironsource/a7;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ironsource/d7$a;->a(Lcom/ironsource/a7;)Lcom/ironsource/d7$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/ironsource/a7;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/d7$a;->a:Lcom/ironsource/a7;

    return-object v0
.end method

.method public final a(Lcom/ironsource/a7;)Lcom/ironsource/d7$a;
    .registers 3

    .line 2
    const-string v0, "failure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/d7$a;

    invoke-direct {v0, p1}, Lcom/ironsource/d7$a;-><init>(Lcom/ironsource/a7;)V

    return-object v0
.end method

.method public a(Lcom/ironsource/e7;)V
    .registers 3

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/d7$a;->a:Lcom/ironsource/a7;

    invoke-interface {p1, v0}, Lcom/ironsource/e7;->a(Lcom/ironsource/a7;)V

    return-void
.end method

.method public final b()Lcom/ironsource/a7;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/d7$a;->a:Lcom/ironsource/a7;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/d7$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/d7$a;

    iget-object v1, p0, Lcom/ironsource/d7$a;->a:Lcom/ironsource/a7;

    iget-object p1, p1, Lcom/ironsource/d7$a;->a:Lcom/ironsource/a7;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/d7$a;->a:Lcom/ironsource/a7;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/d7$a;->a:Lcom/ironsource/a7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure(failure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
