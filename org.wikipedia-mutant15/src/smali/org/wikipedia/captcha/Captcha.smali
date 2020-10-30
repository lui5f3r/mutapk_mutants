.class public Lorg/wikipedia/captcha/Captcha;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "Captcha.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/captcha/Captcha$FancyCaptchaReload;
    }
.end annotation


# instance fields
.field private fancycaptchareload:Lorg/wikipedia/captcha/Captcha$FancyCaptchaReload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>()V

    return-void
.end method


# virtual methods
.method captchaId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/wikipedia/captcha/Captcha;->fancycaptchareload:Lorg/wikipedia/captcha/Captcha$FancyCaptchaReload;

    invoke-virtual {v0}, Lorg/wikipedia/captcha/Captcha$FancyCaptchaReload;->index()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
