.class public interface abstract Lorg/wikipedia/csrf/CsrfTokenClient$Callback;
.super Ljava/lang/Object;
.source "CsrfTokenClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/csrf/CsrfTokenClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract failure(Ljava/lang/Throwable;)V
.end method

.method public abstract success(Ljava/lang/String;)V
.end method

.method public abstract twoFactorPrompt()V
.end method
