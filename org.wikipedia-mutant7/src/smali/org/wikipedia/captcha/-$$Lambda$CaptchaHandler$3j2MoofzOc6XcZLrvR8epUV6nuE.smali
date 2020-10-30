.class public final synthetic Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$3j2MoofzOc6XcZLrvR8epUV6nuE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$3j2MoofzOc6XcZLrvR8epUV6nuE;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onUrlClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/captcha/-$$Lambda$CaptchaHandler$3j2MoofzOc6XcZLrvR8epUV6nuE;->f$0:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/wikipedia/captcha/CaptchaHandler;->lambda$new$0(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
