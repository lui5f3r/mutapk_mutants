.class public interface abstract Lorg/wikipedia/login/LoginClient$LoginCallback;
.super Ljava/lang/Object;
.source "LoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/login/LoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginCallback"
.end annotation


# virtual methods
.method public abstract error(Ljava/lang/Throwable;)V
.end method

.method public abstract passwordResetPrompt(Ljava/lang/String;)V
.end method

.method public abstract success(Lorg/wikipedia/login/LoginResult;)V
.end method

.method public abstract twoFactorPrompt(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method
