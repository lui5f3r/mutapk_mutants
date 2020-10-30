.class public Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;
.super Lorg/wikipedia/dataclient/mwapi/MwResponse;
.source "CreateAccountResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;
    }
.end annotation


# instance fields
.field private createaccount:Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public hasResult()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;->createaccount:Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;->createaccount:Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public status()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;->createaccount:Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;->status()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public user()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse;->createaccount:Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;

    invoke-virtual {v0}, Lorg/wikipedia/dataclient/mwapi/CreateAccountResponse$Result;->user()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
