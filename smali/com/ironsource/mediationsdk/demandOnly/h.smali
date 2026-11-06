###### Class com.ironsource.mediationsdk.demandOnly.h (com.ironsource.mediationsdk.demandOnly.h)
.class public interface abstract Lcom/ironsource/mediationsdk/demandOnly/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/demandOnly/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/demandOnly/h$a;,
        Lcom/ironsource/mediationsdk/demandOnly/h$b;,
        Lcom/ironsource/mediationsdk/demandOnly/h$c;,
        Lcom/ironsource/mediationsdk/demandOnly/h$d;
    }
.end annotation


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Z
.end method

.method public abstract e()Ljava/lang/String;
.end method

###### Class com.ironsource.mediationsdk.demandOnly.h.a (com.ironsource.mediationsdk.demandOnly.h$a)
.class public abstract Lcom/ironsource/mediationsdk/demandOnly/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/demandOnly/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/demandOnly/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/ironsource/mediationsdk/demandOnly/h$a;->c:Z

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/ironsource/mediationsdk/logger/IronSourceError;
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$a;->c:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$a;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class com.ironsource.mediationsdk.demandOnly.h.b (com.ironsource.mediationsdk.demandOnly.h$b)
.class public final Lcom/ironsource/mediationsdk/demandOnly/h$b;
.super Lcom/ironsource/mediationsdk/demandOnly/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/demandOnly/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Landroid/app/Activity;

.field private final f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;Z)V
    .registers 8

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p3, p5, p6}, Lcom/ironsource/mediationsdk/demandOnly/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->d:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->e:Landroid/app/Activity;

    .line 6
    iput-object p4, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_b

    const/4 p6, 0x0

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/demandOnly/h$b;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/q$a;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/q$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/demandOnly/q$a;->a(Lcom/ironsource/mediationsdk/demandOnly/h;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public final g()Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$b;->f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    return-object v0
.end method

###### Class com.ironsource.mediationsdk.demandOnly.h.c (com.ironsource.mediationsdk.demandOnly.h$c)
.class public final Lcom/ironsource/mediationsdk/demandOnly/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/demandOnly/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDemandOnlyLoadParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DemandOnlyLoadParams.kt\ncom/ironsource/mediationsdk/demandOnly/DemandOnlyLoadParams$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/mediationsdk/demandOnly/h$b;
    .registers 8

    .line 7
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->e:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->d:Z

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/mediationsdk/demandOnly/h$b;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b:Landroid/app/Activity;

    return-object p0
.end method

.method public final a(Landroid/app/Activity;Landroid/app/Activity;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .registers 3

    if-nez p1, :cond_3

    move-object p1, p2

    .line 3
    :cond_3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b:Landroid/app/Activity;

    return-object p0
.end method

.method public final a(Lcom/ironsource/mediationsdk/IronSource$a;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .registers 3

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$a;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->f:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerLayout;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->d:Z

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/ironsource/mediationsdk/demandOnly/h$c;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/ironsource/mediationsdk/demandOnly/h$d;
    .registers 7

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/h$d;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/ironsource/mediationsdk/demandOnly/h$c;->d:Z

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/demandOnly/h$d;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

###### Class com.ironsource.mediationsdk.demandOnly.h.d (com.ironsource.mediationsdk.demandOnly.h$d)
.class public final Lcom/ironsource/mediationsdk/demandOnly/h$d;
.super Lcom/ironsource/mediationsdk/demandOnly/h$a;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/demandOnly/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p3, p4, p5}, Lcom/ironsource/mediationsdk/demandOnly/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$d;->d:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ironsource/mediationsdk/demandOnly/h$d;->e:Landroid/app/Activity;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_5

    const/4 p4, 0x0

    :cond_5
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_b

    const/4 p5, 0x0

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/demandOnly/h$d;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/q$b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$d;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/q$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/demandOnly/q$b;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$d;->e:Landroid/app/Activity;

    return-object v0
.end method
