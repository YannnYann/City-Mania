###### Class com.ironsource.adqualitysdk.sdk.i.ViewOnLayoutChangeListenerC0808 (com.ironsource.adqualitysdk.sdk.i.〱)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/〱;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

.field public final synthetic ﾒ:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ἲ;Landroid/view/ViewGroup;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/〱;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/〱;->ﾒ:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_5
    iget-boolean p2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﻐ:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_28

    monitor-exit p1

    if-nez p2, :cond_27

    .line 3
    :try_start_a
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/〱;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ἲ;

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/〱;->ﾒ:Landroid/view/ViewGroup;

    invoke-static {p1, p2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ἲ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ἲ;Landroid/view/ViewGroup;Lcom/ironsource/adqualitysdk/sdk/i/〱;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception p1

    .line 5
    const-string p2, "I/Md1E9vmt4R/Br6R3C61Ar6AOVLcbjYB/o=\n"

    const-string p3, "ZJ9yti4DzrE=\n"

    invoke-static {p2, p3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "XvR/cKIT57Y76WNTsUrhrW/FZX6+VOs=\n"

    const-string p4, "G4YNH9Azjtg=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p2, p3, p1, p4}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_27
    return-void

    :catchall_28
    move-exception p2

    .line 8
    monitor-exit p1

    throw p2
.end method
