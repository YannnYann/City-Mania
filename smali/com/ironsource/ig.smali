###### Class com.ironsource.InterfaceC3660ig (com.ironsource.ig)
.class public interface abstract Lcom/ironsource/ig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/ig$a;,
        Lcom/ironsource/ig$b;,
        Lcom/ironsource/ig$c;,
        Lcom/ironsource/ig$d;,
        Lcom/ironsource/ig$e;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/ironsource/ig$a;)V
.end method

.method public abstract cancel()V
.end method

###### Class com.ironsource.InterfaceC3660ig.a (com.ironsource.ig$a)
.class public interface abstract Lcom/ironsource/ig$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

###### Class com.ironsource.InterfaceC3660ig.b (com.ironsource.ig$b)
.class public final Lcom/ironsource/ig$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/ig$b;->b:J

    return-wide v0
.end method

.method public final a(J)V
    .registers 3

    .line 2
    iput-wide p1, p0, Lcom/ironsource/ig$b;->b:J

    return-void
.end method

.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/ig$b;->a:J

    return-wide v0
.end method

.method public final b(J)V
    .registers 3

    .line 2
    iput-wide p1, p0, Lcom/ironsource/ig$b;->a:J

    return-void
.end method

###### Class com.ironsource.InterfaceC3660ig.c (com.ironsource.ig$c)
.class public interface abstract Lcom/ironsource/ig$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Lcom/ironsource/ig$b;)Lcom/ironsource/ig;
.end method

###### Class com.ironsource.InterfaceC3660ig.d (com.ironsource.ig$d)
.class public final Lcom/ironsource/ig$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ig$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/ig$b;)Lcom/ironsource/ig;
    .registers 6

    const-string v0, "timerConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/ig$e;

    new-instance v1, Lcom/ironsource/kg;

    invoke-virtual {p1}, Lcom/ironsource/ig$b;->b()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/ironsource/kg;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/ironsource/ig$e;-><init>(Lcom/ironsource/kg;)V

    return-object v0
.end method

###### Class com.ironsource.InterfaceC3660ig.e (com.ironsource.ig$e)
.class final Lcom/ironsource/ig$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/ig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/kg;


# direct methods
.method public constructor <init>(Lcom/ironsource/kg;)V
    .registers 3

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/ig$e;->a:Lcom/ironsource/kg;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/ig$a;)V
    .registers 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/ig$e;->a:Lcom/ironsource/kg;

    .line 2
    new-instance v1, Lcom/ironsource/ig$e$a;

    invoke-direct {v1, p1}, Lcom/ironsource/ig$e$a;-><init>(Lcom/ironsource/ig$a;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/ironsource/kg;->a(Lcom/ironsource/kg$a;)V

    return-void
.end method

.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ig$e;->a:Lcom/ironsource/kg;

    invoke-virtual {v0}, Lcom/ironsource/kg;->e()V

    return-void
.end method

###### Class com.ironsource.InterfaceC3660ig.e.a (com.ironsource.ig$e$a)
.class public final Lcom/ironsource/ig$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/kg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/ig$e;->a(Lcom/ironsource/ig$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/ig$a;


# direct methods
.method public constructor <init>(Lcom/ironsource/ig$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/ig$e$a;->a:Lcom/ironsource/ig$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/ig$e$a;->a:Lcom/ironsource/ig$a;

    invoke-interface {v0}, Lcom/ironsource/ig$a;->a()V

    return-void
.end method
