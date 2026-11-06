###### Class com.ironsource.C3551cf (com.ironsource.cf)
.class public final Lcom/ironsource/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/df;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/ironsource/df;->d:Lcom/ironsource/df;

    invoke-virtual {v0}, Lcom/ironsource/df;->c()I

    move-result v0

    .line 10
    const-string v1, "mode"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 12
    sget-object v0, Lcom/ironsource/df;->b:Lcom/ironsource/df$a;

    invoke-virtual {v0, p1}, Lcom/ironsource/df$a;->a(I)Lcom/ironsource/df;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/cf;->a:Lcom/ironsource/df;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/df;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/cf;->a:Lcom/ironsource/df;

    return-object v0
.end method
