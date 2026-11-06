###### Class com.ironsource.C3699l1 (com.ironsource.l1)
.class public final Lcom/ironsource/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/l1$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/ironsource/mediationsdk/IronSource$a;

.field private final d:Z

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$a;ZZZ)V
    .registers 8

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/l1;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ironsource/l1;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ironsource/l1;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 5
    iput-boolean p4, p0, Lcom/ironsource/l1;->d:Z

    .line 6
    iput-boolean p5, p0, Lcom/ironsource/l1;->e:Z

    .line 7
    iput-boolean p6, p0, Lcom/ironsource/l1;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$a;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_5

    const/4 p4, 0x0

    :cond_5
    move v4, p4

    and-int/lit8 p4, p7, 0x10

    const/4 p8, 0x1

    if-eqz p4, :cond_d

    move v5, p8

    goto :goto_e

    :cond_d
    move v5, p5

    :goto_e
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_18

    move v6, p8

    :goto_13
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    goto :goto_1a

    :cond_18
    move v6, p6

    goto :goto_13

    .line 8
    :goto_1a
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/l1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSource$a;ZZZ)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/o1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/ironsource/n1$v;

    iget-object v2, p0, Lcom/ironsource/l1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/ironsource/n1$v;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/ironsource/n1$x;

    iget-object v2, p0, Lcom/ironsource/l1;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/ironsource/n1$x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/ironsource/n1$a;

    iget-object v2, p0, Lcom/ironsource/l1;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {v1, v2}, Lcom/ironsource/n1$a;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-boolean v1, p0, Lcom/ironsource/l1;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_30

    new-instance v1, Lcom/ironsource/n1$p;

    invoke-direct {v1, v2}, Lcom/ironsource/n1$p;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_30
    iget-boolean v1, p0, Lcom/ironsource/l1;->e:Z

    if-eqz v1, :cond_3c

    new-instance v1, Lcom/ironsource/n1$e;

    invoke-direct {v1, v2}, Lcom/ironsource/n1$e;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3c
    iget-boolean v1, p0, Lcom/ironsource/l1;->f:Z

    if-eqz v1, :cond_48

    new-instance v1, Lcom/ironsource/n1$o;

    invoke-direct {v1, v2}, Lcom/ironsource/n1$o;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    return-object v0
.end method

###### Class com.ironsource.C3699l1.a (com.ironsource.l1$a)
.class public final Lcom/ironsource/l1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/l1$a;

.field public static final b:I = 0x1

.field public static final c:I = 0x1

.field public static final d:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/l1$a;

    invoke-direct {v0}, Lcom/ironsource/l1$a;-><init>()V

    sput-object v0, Lcom/ironsource/l1$a;->a:Lcom/ironsource/l1$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
