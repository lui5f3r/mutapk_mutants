.class Lorg/wikipedia/captcha/Captcha$FancyCaptchaReload;
.super Ljava/lang/Object;
.source "Captcha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/captcha/Captcha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FancyCaptchaReload"
.end annotation


# instance fields
.field private index:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method index()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/wikipedia/captcha/Captcha$FancyCaptchaReload;->index:Ljava/lang/String;

    return-object v0
.end method
