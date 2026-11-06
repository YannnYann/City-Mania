###### Class com.ironsource.C3724m8 (com.ironsource.m8)
.class public Lcom/ironsource/m8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/p8;


# direct methods
.method public constructor <init>(Lcom/ironsource/p8;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/m8;->a:Lcom/ironsource/p8;

    return-void
.end method


# virtual methods
.method public receiveMessageFromExternal(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/m8;->a:Lcom/ironsource/p8;

    invoke-virtual {v0, p1}, Lcom/ironsource/p8;->handleMessageFromAd(Ljava/lang/String;)V

    return-void
.end method
