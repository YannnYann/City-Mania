###### Class com.ironsource.C3691kb (com.ironsource.kb)
.class public final Lcom/ironsource/kb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/kb$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/mb;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/ironsource/mb;

    sget-object v1, Lcom/ironsource/z7;->a:Lcom/ironsource/z7;

    invoke-virtual {v1}, Lcom/ironsource/z7;->a()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ironsource/mb;-><init>(Ljava/util/UUID;Lcom/ironsource/kb;)V

    iput-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/kb;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/kb;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/kb;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0, p1}, Lcom/ironsource/Ca;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/ironsource/kb;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/kb;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .registers 3

    .line 3
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0, p1}, Lcom/ironsource/mb;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->f()V

    return-void
.end method

.method public final a(Lcom/ironsource/ob;)V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0, p1}, Lcom/ironsource/mb;->a(Lcom/ironsource/ob;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/ironsource/lb$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->k()Lcom/ironsource/lb$a;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->l()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->n()V

    return-void
.end method

###### Class com.ironsource.C3691kb.a (com.ironsource.kb$a)
.class public final Lcom/ironsource/kb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/kb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ironsource/kb;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/kb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/kb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/ironsource/kb$a;->a:Lcom/ironsource/kb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/ob;)Lcom/ironsource/kb$a;
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/kb$a;->a:Lcom/ironsource/kb;

    invoke-virtual {v0, p1}, Lcom/ironsource/kb;->a(Lcom/ironsource/ob;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/ironsource/kb$a;
    .registers 3

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb$a;->a:Lcom/ironsource/kb;

    invoke-static {v0, p1}, Lcom/ironsource/kb;->a(Lcom/ironsource/kb;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a()Lcom/ironsource/kb;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/ironsource/kb$a;->a:Lcom/ironsource/kb;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/ironsource/kb$a;
    .registers 3

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb$a;->a:Lcom/ironsource/kb;

    invoke-static {v0, p1}, Lcom/ironsource/kb;->b(Lcom/ironsource/kb;Ljava/lang/String;)V

    return-object p0
.end method
