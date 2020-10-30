.class public final synthetic Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$8n3InU5jjhe4I0BLJk1EsoVxOUY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/captcha/CaptchaHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/captcha/CaptchaHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$8n3InU5jjhe4I0BLJk1EsoVxOUY;->f$0:Lorg/wikipedia/captcha/CaptchaHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$8n3InU5jjhe4I0BLJk1EsoVxOUY;->f$0:Lorg/wikipedia/captcha/CaptchaHandler;

    check-cast p1, Lorg/wikipedia/captcha/Captcha;

    invoke-virtual {v0, p1}, Lorg/wikipedia/captcha/CaptchaHandler;->lambda$null$2$CaptchaHandler(Lorg/wikipedia/captcha/Captcha;)V

    return-void
.end method
