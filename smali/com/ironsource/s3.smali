###### Class com.ironsource.C3830s3 (com.ironsource.s3)
.class public Lcom/ironsource/s3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;-><init>(Lcom/ironsource/c9;Lcom/ironsource/Db;)V

    iput-object v0, p0, Lcom/ironsource/s3;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    if-eqz p1, :cond_3

    return-object p1

    .line 1
    :cond_3
    iget-object p1, p0, Lcom/ironsource/s3;->a:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    return-object p1
.end method
