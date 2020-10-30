.class public final synthetic Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$IRdMK5R6QxuEHLNTnXEJoewdl9E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/captcha/CaptchaHandler;

.field public final synthetic f$1:Lorg/wikipedia/dataclient/WikiSite;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/captcha/CaptchaHandler;Lorg/wikipedia/dataclient/WikiSite;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$IRdMK5R6QxuEHLNTnXEJoewdl9E;->f$0:Lorg/wikipedia/captcha/CaptchaHandler;

    iput-object p2, p0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$IRdMK5R6QxuEHLNTnXEJoewdl9E;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    iput-object p3, p0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$IRdMK5R6QxuEHLNTnXEJoewdl9E;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$IRdMK5R6QxuEHLNTnXEJoewdl9E;->f$0:Lorg/wikipedia/captcha/CaptchaHandler;

    iget-object v1, p0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$IRdMK5R6QxuEHLNTnXEJoewdl9E;->f$1:Lorg/wikipedia/dataclient/WikiSite;

    iget-object v2, p0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$IRdMK5R6QxuEHLNTnXEJoewdl9E;->f$2:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1}, Lorg/wikipedia/captcha/CaptchaHandler;->lambda$new$4$CaptchaHandler(Lorg/wikipedia/dataclient/WikiSite;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
