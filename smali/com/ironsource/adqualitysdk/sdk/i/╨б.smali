###### Class com.ironsource.adqualitysdk.sdk.i.C0219 (com.ironsource.adqualitysdk.sdk.i.С)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/С;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ϯ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/С;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/ﭘ;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/С;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    iput-object p1, p2, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ｋ:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/С;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;

    .line 6
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ϯ;->ｋ:Ljava/lang/String;

    return-object p1
.end method
