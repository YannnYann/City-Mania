###### Class io.bidmachine.analytics.internal.f.InterfaceC4113b (io.bidmachine.analytics.internal.f.b)
.class public interface abstract Lio/bidmachine/analytics/internal/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a()Ljava/security/KeyPair;
    .registers 2

    .line 1
    invoke-interface {p0}, Lio/bidmachine/analytics/internal/f/b;->b()Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Ljava/security/KeyPairGenerator;
.end method
