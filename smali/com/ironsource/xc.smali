###### Class com.ironsource.C3931xc (com.ironsource.xc)
.class public final Lcom/ironsource/xc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/mf;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/ironsource/W7;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/mf;Ljava/lang/String;Lcom/ironsource/W7;Ljava/lang/String;)V
    .registers 6

    const-string v0, "recordType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "advertiserBundleId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInstanceId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/xc;->a:Lcom/ironsource/mf;

    .line 3
    iput-object p2, p0, Lcom/ironsource/xc;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ironsource/xc;->c:Lcom/ironsource/W7;

    .line 5
    iput-object p4, p0, Lcom/ironsource/xc;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/Ob;)Lcom/ironsource/h1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/Ob<",
            "Lcom/ironsource/xc;",
            "Lcom/ironsource/h1;",
            ">;)",
            "Lcom/ironsource/h1;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/ironsource/Ob;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/h1;

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/xc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/ironsource/W7;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/xc;->c:Lcom/ironsource/W7;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/xc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/ironsource/mf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/xc;->a:Lcom/ironsource/mf;

    return-object v0
.end method
