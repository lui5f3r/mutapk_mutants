.class final Lorg/wikipedia/captcha/CaptchaResult$1;
.super Ljava/lang/Object;
.source "CaptchaResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/captcha/CaptchaResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/wikipedia/captcha/CaptchaResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/wikipedia/captcha/CaptchaResult$1;->createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/captcha/CaptchaResult;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/captcha/CaptchaResult;
    .locals 1

    .line 41
    new-instance v0, Lorg/wikipedia/captcha/CaptchaResult;

    invoke-direct {v0, p1}, Lorg/wikipedia/captcha/CaptchaResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/wikipedia/captcha/CaptchaResult$1;->newArray(I)[Lorg/wikipedia/captcha/CaptchaResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/wikipedia/captcha/CaptchaResult;
    .locals 0

    .line 46
    new-array p1, p1, [Lorg/wikipedia/captcha/CaptchaResult;

    return-object p1
.end method
