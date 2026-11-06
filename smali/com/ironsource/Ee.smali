###### Class com.ironsource.Ee (com.ironsource.Ee)
.class public interface abstract Lcom/ironsource/Ee;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Ee$a;,
        Lcom/ironsource/Ee$b;
    }
.end annotation

###### Class com.ironsource.Ee.a (com.ironsource.Ee$a)
.class public final Lcom/ironsource/Ee$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Ee;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/se;


# direct methods
.method public constructor <init>(Lcom/ironsource/se;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ee$a;->a:Lcom/ironsource/se;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Ee$a;Lcom/ironsource/se;ILjava/lang/Object;)Lcom/ironsource/Ee$a;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 3
    iget-object p1, p0, Lcom/ironsource/Ee$a;->a:Lcom/ironsource/se;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ironsource/Ee$a;->a(Lcom/ironsource/se;)Lcom/ironsource/Ee$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/se;)Lcom/ironsource/Ee$a;
    .registers 3

    .line 2
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/Ee$a;

    invoke-direct {v0, p1}, Lcom/ironsource/Ee$a;-><init>(Lcom/ironsource/se;)V

    return-object v0
.end method

.method public final a()Lcom/ironsource/se;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ee$a;->a:Lcom/ironsource/se;

    return-object v0
.end method

.method public final b()Lcom/ironsource/se;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ee$a;->a:Lcom/ironsource/se;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/Ee$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/Ee$a;

    iget-object v1, p0, Lcom/ironsource/Ee$a;->a:Lcom/ironsource/se;

    iget-object p1, p1, Lcom/ironsource/Ee$a;->a:Lcom/ironsource/se;

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
    iget-object v0, p0, Lcom/ironsource/Ee$a;->a:Lcom/ironsource/se;

    invoke-virtual {v0}, Lcom/ironsource/se;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ee$a;->a:Lcom/ironsource/se;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure(error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.Ee.b (com.ironsource.Ee$b)
.class public final Lcom/ironsource/Ee$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Ee;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/Ae;


# direct methods
.method public constructor <init>(Lcom/ironsource/Ae;)V
    .registers 3

    const-string v0, "sdkInitResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Ee$b;Lcom/ironsource/Ae;ILjava/lang/Object;)Lcom/ironsource/Ee$b;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 3
    iget-object p1, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ironsource/Ee$b;->a(Lcom/ironsource/Ae;)Lcom/ironsource/Ee$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/ironsource/Ae;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    return-object v0
.end method

.method public final a(Lcom/ironsource/Ae;)Lcom/ironsource/Ee$b;
    .registers 3

    .line 2
    const-string v0, "sdkInitResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/Ee$b;

    invoke-direct {v0, p1}, Lcom/ironsource/Ee$b;-><init>(Lcom/ironsource/Ae;)V

    return-object v0
.end method

.method public final b()Lcom/ironsource/Ae;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/Ee$b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/Ee$b;

    iget-object v1, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    iget-object p1, p1, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

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
    iget-object v0, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ee$b;->a:Lcom/ironsource/Ae;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success(sdkInitResponse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
