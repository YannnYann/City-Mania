###### Class com.ironsource.C3823re (com.ironsource.re)
.class public final Lcom/ironsource/re;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/M8;
.implements Lcom/ironsource/M8$a;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdkConfigService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SdkConfigService.kt\ncom/ironsource/services/SdkConfigService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1#2:29\n*E\n"
.end annotation


# instance fields
.field private a:Lcom/ironsource/qe;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/ab;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/re;->a:Lcom/ironsource/qe;

    if-eqz v0, :cond_a

    new-instance v1, Lcom/ironsource/ab;

    invoke-direct {v1, v0}, Lcom/ironsource/ab;-><init>(Lcom/ironsource/qe;)V

    return-object v1

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/ironsource/qe;)V
    .registers 3

    const-string v0, "sdkConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/re;->a:Lcom/ironsource/qe;

    return-void
.end method

.method public b()Lcom/ironsource/T9;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/re;->a:Lcom/ironsource/qe;

    if-eqz v0, :cond_a

    new-instance v1, Lcom/ironsource/T9;

    invoke-direct {v1, v0}, Lcom/ironsource/T9;-><init>(Lcom/ironsource/qe;)V

    return-object v1

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/re;->b:Z

    return v0
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/re;->b:Z

    return-void
.end method
