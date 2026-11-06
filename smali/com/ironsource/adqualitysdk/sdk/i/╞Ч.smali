###### Class com.ironsource.adqualitysdk.sdk.i.C0079 (com.ironsource.adqualitysdk.sdk.i.Ɨ)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/Ɨ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final ｋ:Ljava/lang/String;


# instance fields
.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ƚ;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "kgGVMGnei+64C4krf9qP8rgdgSdvwZj9qQC3\n"

    const-string v1, "3W/FQgyu6pw=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/Ɨ;->ｋ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer$OnPreparedListener;Lcom/ironsource/adqualitysdk/sdk/i/ƚ;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ɨ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ƚ;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ɨ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ƚ;

    invoke-interface {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ƚ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/Ɨ;Landroid/media/MediaPlayer;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_15

    :catchall_6
    move-exception v0

    .line 3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/Ɨ;->ｋ:Ljava/lang/String;

    const-string v2, "w3cIyT0eUjqmaC7EA1dIIONrH9RvUVUE9GAKxz1bXw==\n"

    const-string v3, "hgV6pk8+O1Q=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 4
    :goto_15
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮋ;->ﾒ:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    .line 5
    check-cast v0, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_1e
    return-void
.end method
