.class public Lorg/wikipedia/captcha/CaptchaResult;
.super Lorg/wikipedia/edit/EditResult;
.source "CaptchaResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/captcha/CaptchaResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final captchaId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/wikipedia/captcha/CaptchaResult$1;

    invoke-direct {v0}, Lorg/wikipedia/captcha/CaptchaResult$1;-><init>()V

    sput-object v0, Lorg/wikipedia/captcha/CaptchaResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/EditResult;-><init>(Landroid/os/Parcel;)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Failure"

    .line 14
    invoke-direct {p0, v0}, Lorg/wikipedia/edit/EditResult;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaptchaId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaUrl(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index.php"

    invoke-virtual {p1, v1}, Lorg/wikipedia/dataclient/WikiSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?title=Special:Captcha/image&wpCaptchaId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lorg/wikipedia/edit/EditResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 34
    iget-object p2, p0, Lorg/wikipedia/captcha/CaptchaResult;->captchaId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
