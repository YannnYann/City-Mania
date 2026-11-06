###### Class com.ironsource.Ye (com.ironsource.Ye)
.class public final Lcom/ironsource/Ye;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Ye$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/e6;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/o7;)V
    .registers 4

    const-string v0, "applicationLifecycleService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/Ye$a;

    invoke-direct {v0, p0}, Lcom/ironsource/Ye$a;-><init>(Lcom/ironsource/Ye;)V

    .line 2
    new-instance v1, Lcom/ironsource/e6;

    invoke-direct {v1, p1, v0}, Lcom/ironsource/e6;-><init>(Lcom/ironsource/o7;Lcom/ironsource/Xe;)V

    iput-object v1, p0, Lcom/ironsource/Ye;->a:Lcom/ironsource/e6;

    return-void
.end method

###### Class com.ironsource.Ye.a (com.ironsource.Ye$a)
.class final Lcom/ironsource/Ye$a;
.super Lcom/ironsource/Xe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/Ye;


# direct methods
.method public constructor <init>(Lcom/ironsource/Ye;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/Ye$a;->b:Lcom/ironsource/Ye;

    invoke-direct {p0}, Lcom/ironsource/Xe;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->b(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    :try_start_5
    const-string v1, "duration"

    invoke-virtual {p0}, Lcom/ironsource/Xe;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_20

    :catch_f
    move-exception v1

    .line 5
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 6
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 8
    :goto_20
    new-instance v1, Lcom/ironsource/C5;

    sget-object v2, Lcom/ironsource/D5;->g:Lcom/ironsource/D5;

    invoke-direct {v1, v2, v0}, Lcom/ironsource/C5;-><init>(Lcom/ironsource/D5;Lorg/json/JSONObject;)V

    .line 9
    sget-object v0, Lcom/ironsource/jd;->P:Lcom/ironsource/jd;

    invoke-virtual {v0, v1}, Lcom/ironsource/r3;->a(Lcom/ironsource/C5;)V

    return-void
.end method
