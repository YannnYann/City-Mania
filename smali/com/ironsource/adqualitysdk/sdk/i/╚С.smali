###### Class com.ironsource.adqualitysdk.sdk.i.ChoreographerFrameCallbackC0095 (com.ironsource.adqualitysdk.sdk.i.ȑ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/ȑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȑ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 9

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ȑ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Ƭ;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    move-object p1, v0

    move-object v3, p1

    .line 3
    const-string p1, "JeCKZA3pkX0d159a\n"

    const-string p2, "ZITbEWyF+Ak=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string p1, "5NYZOTnVxHrt8QI0MtQ=\n"

    const-string p2, "grdwVVyx5B4=\n"

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    return-void
.end method
