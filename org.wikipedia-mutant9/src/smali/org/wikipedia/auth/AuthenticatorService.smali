.class public Lorg/wikipedia/auth/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# instance fields
.field private authenticator:Landroid/accounts/AbstractAccountAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 22
    iget-object p1, p0, Lorg/wikipedia/auth/AuthenticatorService;->authenticator:Landroid/accounts/AbstractAccountAuthenticator;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 15
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 16
    new-instance v0, Lorg/wikipedia/auth/WikimediaAuthenticator;

    invoke-direct {v0, p0}, Lorg/wikipedia/auth/WikimediaAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/wikipedia/auth/AuthenticatorService;->authenticator:Landroid/accounts/AbstractAccountAuthenticator;

    return-void
.end method
