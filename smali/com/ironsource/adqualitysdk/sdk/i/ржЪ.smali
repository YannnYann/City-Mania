###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0383 (com.ironsource.adqualitysdk.sdk.i.চ)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/চ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾇ:Ljava/lang/String;

.field public static final ﾒ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "DUBasUJFuvw/\n"

    const-string v1, "TDUu2Rcx05A=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/চ;->ﾒ:Ljava/lang/String;

    const-string v0, "mI1zcFXdQdiWq0kvEKJR6Lf8LCFxwzTF4ZZ/AVShJZyc5Q==\n"

    const-string v1, "2MQbRCPud6s=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/চ;->ﾇ:Ljava/lang/String;

    return-void
.end method
