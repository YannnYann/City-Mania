###### Class com.ironsource.adqualitysdk.sdk.i.ViewOnLayoutChangeListenerC3509v (com.ironsource.adqualitysdk.sdk.i.v)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/B;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/B;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/v;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/B;

    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/B;->ｋ(Landroid/view/View;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    return-void

    :catchall_6
    move-exception p1

    .line 3
    const-string p2, "ciInIymZA65FJSY4DY8=\n"

    const-string p3, "JEtCVGj9cOY=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "6gttlvFXYVuPFnG14g5nQNs6d5jtEG0=\n"

    const-string p4, "r3kf+YN3CDU=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p2, p3, p1, p4}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
