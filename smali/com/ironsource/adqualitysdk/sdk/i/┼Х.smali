###### Class com.ironsource.adqualitysdk.sdk.i.AbstractC0064 (com.ironsource.adqualitysdk.sdk.i.ŕ)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ŕ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ﾒ:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "u7EHYQ8HiGGWugdhEDG3b5m/A2URBpZvhK0lZAI1jmuF\n"

    const-string v1, "995kAGNF+g4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static ﾒ(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    .line 1
    :try_start_1
    const-string v1, "PBa3vfZuOLNzFLys+Gs+uTIZt6z4dCimPBayqPx1cqgyFqeq93NyhzIbsqPbdTOqORuyvO1KPaU8\nH7a9\n"

    const-string v2, "XXjTz5kHXMs=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_b} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_b} :catch_2e

    .line 2
    :try_start_b
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_10

    goto :goto_11

    :catchall_10
    move-object v1, v0

    .line 3
    :goto_11
    :try_start_11
    const-string v2, "ea+sWeqcomtwqb0=\n"

    const-string v3, "HsrYEITv1go=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    return-object v0
.end method
