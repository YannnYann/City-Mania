###### Class io.bidmachine.iab.mraid.MraidJsValidator (io.bidmachine.iab.mraid.MraidJsValidator)
.class public interface abstract Lio/bidmachine/iab/mraid/MraidJsValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract checkParamsForCommand(Ljava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "command",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isValidCommand(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation
.end method

.method public abstract removePrefix(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandUrl"
        }
    .end annotation
.end method
