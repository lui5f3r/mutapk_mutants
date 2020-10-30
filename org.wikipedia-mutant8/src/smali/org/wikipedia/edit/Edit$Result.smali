.class public Lorg/wikipedia/edit/Edit$Result;
.super Ljava/lang/Object;
.source "Edit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/Edit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private captcha:Lorg/wikipedia/edit/Edit$Captcha;

.field private code:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private newrevid:J

.field private result:Ljava/lang/String;

.field private spamblacklist:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/edit/Edit;

.field private warning:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/wikipedia/edit/Edit;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/wikipedia/edit/Edit$Result;->this$0:Lorg/wikipedia/edit/Edit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method captchaId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Result;->captcha:Lorg/wikipedia/edit/Edit$Captcha;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/edit/Edit$Captcha;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method code()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Result;->code:Ljava/lang/String;

    return-object v0
.end method

.method editSucceeded()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Result;->result:Ljava/lang/String;

    const-string v1, "Success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasCaptchaResponse()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Result;->captcha:Lorg/wikipedia/edit/Edit$Captcha;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasEditErrorCode()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Result;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasSpamBlacklistResponse()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Result;->spamblacklist:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method info()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Result;->info:Ljava/lang/String;

    return-object v0
.end method

.method public newRevId()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lorg/wikipedia/edit/Edit$Result;->newrevid:J

    return-wide v0
.end method

.method spamblacklist()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Result;->spamblacklist:Ljava/lang/String;

    return-object v0
.end method

.method status()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Result;->result:Ljava/lang/String;

    return-object v0
.end method

.method warning()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/wikipedia/edit/Edit$Result;->warning:Ljava/lang/String;

    return-object v0
.end method
