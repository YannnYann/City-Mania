###### Class com.ironsource.mediationsdk.demandOnly.p (com.ironsource.mediationsdk.demandOnly.p)
.class public interface abstract Lcom/ironsource/mediationsdk/demandOnly/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/demandOnly/p$a;,
        Lcom/ironsource/mediationsdk/demandOnly/p$b;
    }
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method

###### Class com.ironsource.mediationsdk.demandOnly.p.a (com.ironsource.mediationsdk.demandOnly.p$a)
.class public Lcom/ironsource/mediationsdk/demandOnly/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/demandOnly/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/demandOnly/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "plumbus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/p$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/p$a;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class com.ironsource.mediationsdk.demandOnly.p.b (com.ironsource.mediationsdk.demandOnly.p$b)
.class public final Lcom/ironsource/mediationsdk/demandOnly/p$b;
.super Lcom/ironsource/mediationsdk/demandOnly/p$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/demandOnly/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/demandOnly/p$a;-><init>(Ljava/lang/String;)V

    return-void
.end method
