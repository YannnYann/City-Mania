###### Class com.ironsource.Jg (com.ironsource.Jg)
.class public interface abstract Lcom/ironsource/Jg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/ironsource/Jg;Lcom/ironsource/Pg;Lcom/ironsource/E;ILjava/lang/Object;)Lcom/ironsource/Hg;
    .registers 5

    if-nez p4, :cond_c

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 1
    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/ironsource/Jg;->a(Lcom/ironsource/Pg;Lcom/ironsource/E;)Lcom/ironsource/Hg;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createWaterfall"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Lcom/ironsource/Pg;Lcom/ironsource/E;)Lcom/ironsource/Hg;
.end method
