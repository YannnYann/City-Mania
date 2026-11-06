###### Class com.ironsource.InterfaceC3643hg (com.ironsource.hg)
.class public interface abstract Lcom/ironsource/hg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/ironsource/hg;Ljava/lang/Runnable;JILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_8

    const-wide/16 p2, 0x0

    .line 1
    :cond_8
    invoke-interface {p0, p1, p2, p3}, Lcom/ironsource/hg;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: postReleaseTask"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Runnable;)V
.end method

.method public abstract a(Ljava/lang/Runnable;J)V
.end method
