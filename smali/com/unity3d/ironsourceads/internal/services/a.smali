###### Class com.unity3d.ironsourceads.internal.services.a (com.unity3d.ironsourceads.internal.services.a)
.class public interface abstract Lcom/unity3d/ironsourceads/internal/services/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ironsourceads/internal/services/a$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Lcom/unity3d/ironsourceads/internal/services/a;Landroid/content/Context;Lcom/ironsource/u9;ILjava/lang/Object;)Lcom/unity3d/ironsourceads/internal/services/a$a;
    .registers 5

    if-nez p4, :cond_d

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    .line 1
    sget-object p2, Lcom/ironsource/u9;->c:Lcom/ironsource/u9;

    .line 2
    :cond_8
    invoke-interface {p0, p1, p2}, Lcom/unity3d/ironsourceads/internal/services/a;->a(Landroid/content/Context;Lcom/ironsource/u9;)Lcom/unity3d/ironsourceads/internal/services/a$a;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: destroy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/ironsource/s9;)Lcom/unity3d/ironsourceads/internal/services/a$a;
.end method

.method public abstract a(Landroid/content/Context;Lcom/ironsource/u9;)Lcom/unity3d/ironsourceads/internal/services/a$a;
.end method

###### Class com.unity3d.ironsourceads.internal.services.a.AbstractC1069a (com.unity3d.ironsourceads.internal.services.a$a)
.class public abstract Lcom/unity3d/ironsourceads/internal/services/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/internal/services/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ironsourceads/internal/services/a$a$a;,
        Lcom/unity3d/ironsourceads/internal/services/a$a$b;
    }
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
    invoke-direct {p0}, Lcom/unity3d/ironsourceads/internal/services/a$a;-><init>()V

    return-void
.end method

###### Class com.unity3d.ironsourceads.internal.services.a.AbstractC1069a.C1070a (com.unity3d.ironsourceads.internal.services.a$a$a)
.class public final Lcom/unity3d/ironsourceads/internal/services/a$a$a;
.super Lcom/unity3d/ironsourceads/internal/services/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/internal/services/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lcom/unity3d/ironsourceads/internal/services/a$a$a;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/unity3d/ironsourceads/internal/services/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/unity3d/ironsourceads/internal/services/a$a$a;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 3
    const-string p1, ""

    :cond_6
    invoke-direct {p0, p1}, Lcom/unity3d/ironsourceads/internal/services/a$a$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/unity3d/ironsourceads/internal/services/a$a$a;Ljava/lang/String;ILjava/lang/Object;)Lcom/unity3d/ironsourceads/internal/services/a$a$a;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 3
    iget-object p1, p0, Lcom/unity3d/ironsourceads/internal/services/a$a$a;->a:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/unity3d/ironsourceads/internal/services/a$a$a;->a(Ljava/lang/String;)Lcom/unity3d/ironsourceads/internal/services/a$a$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/unity3d/ironsourceads/internal/services/a$a$a;
    .registers 3

    .line 2
    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/ironsourceads/internal/services/a$a$a;

    invoke-direct {v0, p1}, Lcom/unity3d/ironsourceads/internal/services/a$a$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/a$a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/a$a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ironsourceads/internal/services/a$a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ironsourceads/internal/services/a$a$a;

    iget-object v1, p0, Lcom/unity3d/ironsourceads/internal/services/a$a$a;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/unity3d/ironsourceads/internal/services/a$a$a;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/a$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/unity3d/ironsourceads/internal/services/a$a$a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error(errorMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.unity3d.ironsourceads.internal.services.a.AbstractC1069a.b (com.unity3d.ironsourceads.internal.services.a$a$b)
.class public final Lcom/unity3d/ironsourceads/internal/services/a$a$b;
.super Lcom/unity3d/ironsourceads/internal/services/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ironsourceads/internal/services/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/unity3d/ironsourceads/internal/services/a$a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/unity3d/ironsourceads/internal/services/a$a$b;

    invoke-direct {v0}, Lcom/unity3d/ironsourceads/internal/services/a$a$b;-><init>()V

    sput-object v0, Lcom/unity3d/ironsourceads/internal/services/a$a$b;->a:Lcom/unity3d/ironsourceads/internal/services/a$a$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/unity3d/ironsourceads/internal/services/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
